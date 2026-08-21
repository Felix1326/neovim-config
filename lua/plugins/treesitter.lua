return {
  "nvim-treesitter/nvim-treesitter",
  -- Note: branch = "main" is default now, so you don't explicitly need to declare it
  build = ":TSUpdate",
  
  -- Use `init` to set up native features immediately on startup
  init = function()
    -- 1. MODERN HIGHLIGHTING & INDENTATION
    -- The old plugin passed highlight = { enable = true } into setup().
    -- Now, we let Neovim natively start treesitter when entering a file.
    vim.api.nvim_create_autocmd("FileType", {
      callback = function()
        pcall(vim.treesitter.start)
        
        -- Enables native tree-sitter based indentation
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,

  config = function()
    local ts = require("nvim-treesitter")

    -- 2. MODERN REPLACEMENT FOR `ensure_installed`
    -- Old way: passing a table into setup() would constantly reinstall things on startup.
    -- New way: Define your desired list, check what's already built, and install the rest.
    local ensure_installed = { "lua", "vim", "vimdoc", "query", "bash", "markdown","rust","cpp","cmake", "python" }
    local installed = require("nvim-treesitter.config").get_installed()
    
    local to_install = vim.iter(ensure_installed)
      :filter(function(lang) return not vim.tbl_contains(installed, lang) end)
      :totable()

    if #to_install > 0 then
      ts.install(to_install)
    end
  end,
}
