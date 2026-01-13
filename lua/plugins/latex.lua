return {
  -- 1. VimTeX Configuration
  {
    "lervag/vimtex",
    lazy = false, -- VimTeX is an exception; it needs to load immediately
    init = function()
      -- Use Zathura as the PDF viewer
      vim.g.vimtex_view_method = "zathura"

      -- Compile continuously with latexmk
      vim.g.vimtex_compiler_method = "latexmk"

      -- (Optional) Hide the scratch buffer if you don't like clutter
      -- vim.g.vimtex_quickfix_mode = 0
    end,
  },

  -- 2. LSP Configuration (TexLab)
  -- LazyVim uses nvim-lspconfig, so we extend it here
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        texlab = {
          settings = {
            texlab = {
              build = {
                onSave = true, -- Auto-build on save if you prefer that over VimTeX's continuous mode
              },
              chktex = {
                onOpenAndSave = true, -- Check for linting errors
              },
            },
          },
        },
      },
    },
  },
}
