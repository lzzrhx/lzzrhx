return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        { path = '${3rd}/luv/library', words = { 'vim%.uv' } },
      },
    },
  },
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', opts = {} },
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      'hrsh7th/cmp-nvim-lsp',
      { 'j-hui/fidget.nvim', opts = { progress = { display = { done_icon = "✓", progress_icon = { "dots_scrolling" } } }, notification = { window = { winblend = 0 } } } },
    },
    config = function()
      -- Setup diagnostic display (:help vim.diagnostic.Opts)
      vim.diagnostic.config {
        severity_sort = true,
        update_in_insert = false, 
        float = { source = 'if_many', severity = { min = vim.diagnostic.severity.WARN }, header = '', },
        underline = { severity = { min = vim.diagnostic.severity.WARN } },
        signs = {
          severity = { min = vim.diagnostic.severity.WARN },
          text = {
            [vim.diagnostic.severity.ERROR] = '!›',
            [vim.diagnostic.severity.WARN] = '››',
            [vim.diagnostic.severity.INFO] = 'i›',
            [vim.diagnostic.severity.HINT] = '?›',
          }
        },
        virtual_text = false,
        -- {
        --   source = 'if_many',
        --   spacing = 2,
        --   prefix ='■', 
        --   severity = { vim.diagnostic.severity.ERROR }
        -- },
      }

      -- Set capabilities
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      -- Set enabled servers (:h lspconfig-all)
      -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
      local servers = {
        -- Lua:
        lua_ls = {
          settings = {
            Lua = {
              -- runtime = { version = 'Lua 5.4' },
              completion = { callSnippet = 'Replace', },
              diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },
        -- C / C++:
        clangd = {},
        -- Odin:
        ols = {},
        -- Python:
        pyright = {},
        -- C#:
        csharp_ls = {},
        -- Java:
        jdtls = {},
        -- GLSL:
        glsl_analyzer = {},
        -- Tex:
        texlab = {},
        -- Zig:
        -- zls = {},
        -- Rust:
        -- rust_analyzer = {},
        -- Go:
        -- gopls = {},
      }

      -- Ensure required servers and tools are installed
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        'stylua', -- Used to format Lua code
      })
      require('mason-tool-installer').setup { ensure_installed = ensure_installed }
      require('mason-lspconfig').setup {
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      }
    end,
  },
}
