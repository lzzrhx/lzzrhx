return {
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
      {
        'L3MON4D3/LuaSnip',
        build = (function()
          if vim.fn.has 'win32' == 1 or vim.fn.executable 'make' == 0 then
            return
          end
          return 'make install_jsregexp'
        end)(),
        dependencies = {
        },
      },
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-nvim-lsp-signature-help',
    },
    config = function()
      local cmp = require 'cmp'
      local luasnip = require 'luasnip'
      luasnip.config.setup {}
      cmp.setup {
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = 'menu,menuone,noselect' },
        mapping = cmp.mapping.preset.insert {
          ['<Up>'] = function(fallback)
            if cmp.visible() then
              if cmp.get_selected_entry() then
                cmp.select_prev_item()
              else
                cmp.abort()
              end
            else
              fallback()
            end
          end,
          ['<Down>'] = function(fallback)
            if cmp.visible() then
              local entries = cmp.get_entries()
              if entries[#entries] == cmp.get_selected_entry() then
                cmp.abort()
              else
                cmp.select_next_item()
              end
            else
              fallback()
            end
          end,
          ['<Esc>'] = function(fallback)
            if cmp.visible() then
              cmp.abort()
            end
            fallback()
          end,
          ['<CR>'] = cmp.mapping.confirm { select = true },
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
        },
        sources = {
          { name = 'lazydev', group_index = 0, },
          { name = 'nvim_lsp' },
          { name = 'luasnip' },
          { name = 'path' },
          { name = 'nvim_lsp_signature_help' },
        },
      }
    end,
  },
}
