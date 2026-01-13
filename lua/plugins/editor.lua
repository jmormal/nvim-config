return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = false, -- Make sure this is false so they stay hidden
          hide_dotfiles = false,
          hide_gitignored = true, -- This hides everything in your .gitignore!

          -- If you want to be EXTRA specific (even if not in gitignore):
          hide_by_pattern = {
            "*.aux",
            "*.bbl",
            "*.bcf",
            "*.blg",
            "*.fls",
            "*.fdb_latexmk",
            "*.log",
            "*.out",
            "*.run.xml",
            "*.synctex.gz",
            "*.toc",
            "*.lof",
            "*.lot",
          },
        },
      },
    },
  },
}
