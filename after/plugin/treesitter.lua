require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "c", "lua", "vim", "vimdoc", "query",
                       "python", "javascript", "typescript", "tsx",
                       "html", "css", "json", "yaml", "toml", "cmake",
                       "bash", "cpp", "rust", "go", "java", "latex",
                       "php", "ruby", "scss", "vue", "yaml", "c_sharp",
                       "elixir", "haskell", "dart", "svelte", "dockerfile",
                       "astro", "arduino", "diff", "dot", "gitignore",
                       "groovy", "hcl", "sql", "terraform",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  refactor = {
    highlight_definitions = {
      enable = true,
      -- Set to false if you have an `updatetime` of ~100.
      clear_on_cursor_move = true,
    },
    smart_rename = {
      enable = true,
      -- Assign keymaps to false to disable them, e.g. `smart_rename = false`.
      keymaps = {
        smart_rename = "grr",
      },
    },
    navigation = {
      enable = true,
      -- Assign keymaps to false to disable them, e.g. `goto_definition = false`.
      keymaps = {
        goto_next_usage = "<a-*>",
        goto_previous_usage = "<a-(>",
      },
    },
  },
}
