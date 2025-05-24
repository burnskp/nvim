return {
  'saghen/blink.cmp',
  dependencies = {
    'Kaiser-Yang/blink-cmp-avante',
    'fang2hou/blink-copilot',
  },
  version = '1.*',
  opts = {
    keymap = { preset = 'super-tab' },
    completion = { documentation = { auto_show = false } },
    signature = { enabled = true },
    sources = {
      default = { 'copilot', 'avante', 'snippets', 'lsp', 'path', 'buffer' },
      providers = {
        avante = {
          module = 'blink-cmp-avante',
          name = 'Avante',
          opts = {
          }
        },
        copilot = {
          name = "copilot",
          module = "blink-copilot",
          score_offset = 100,
          async = true,
        },
      },
    },
  },
  opts_extend = { "sources.default" }
}
