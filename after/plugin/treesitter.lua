require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query",
                       "python", "javascript", "typescript", "tsx",
                       "html", "css", "json", "yaml", "toml", "cmake",
                       "bash", "cpp", "rust", "go", "java", "latex",
                       "php", "ruby", "scss", "vue", "yaml", "c_sharp",
                       "elixir", "haskell", "dart", "svelte", "dockerfile",
                       "astro", "arduino", "diff", "dot", "gitignore",
                       "groovy", "hcl", "sql", "terraform",},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
