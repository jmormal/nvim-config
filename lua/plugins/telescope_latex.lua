return {
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      defaults = {
        file_ignore_patterns = {
          "%.aux",
          "%.bbl",
          "%.bcf",
          "%.blg",
          "%.fls",
          "%.fdb_latexmk",
          "%.log",
          "%.out",
          "%.run.xml",
          "%.synctex.gz",
          "%.toc",
          "%.pdf", -- Optional: hide PDFs from search too
        },
      },
    },
  },
}
