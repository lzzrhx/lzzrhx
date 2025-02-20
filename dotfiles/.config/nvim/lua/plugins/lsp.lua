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
      { 'j-hui/fidget.nvim', opts = { progress = { display = { done_icon = "✓", progress_icon = { "dots_scrolling" } } }, notification = { window = { winblend = 0 } } } },
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          -- This function resolves a difference between neovim nightly (version 0.11) and stable (version 0.10)
          ---@param client vim.lsp.Client
          ---@param method vim.lsp.protocol.Method
          ---@param bufnr? integer some lsp support methods only in specific files
          ---@return boolean
          local function client_supports_method(client, method, bufnr)
            if vim.fn.has 'nvim-0.11' == 1 then
              return client:supports_method(method, bufnr)
            else
              return client.supports_method(method, { bufnr = bufnr })
            end
          end
        end,
      })

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

      -- Set enabled servers
      local servers = {
        clangd = {},
        csharp_ls = {},
        pyright = {},
        lua_ls = {
          settings = {
            Lua = {
              completion = { callSnippet = 'Replace', },
              diagnostics = { disable = { 'missing-fields' } },
            },
          },
        },
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
