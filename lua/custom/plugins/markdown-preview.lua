return {
  "iamcco/markdown-preview.nvim",
  -- Works well with `marksman` LSP.
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function() vim.fn["mkdp#util#install"]() end,
}
