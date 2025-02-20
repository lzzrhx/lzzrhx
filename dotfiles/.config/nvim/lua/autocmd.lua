-- Show LSP diagnostic floating window under the cursor
vim.api.nvim_create_autocmd({ "CursorHold" }, {
  group = vim.api.nvim_create_augroup("float_diagnostic_cursor", { clear = true }),
  callback = function ()
    vim.diagnostic.open_float(nil, {focus=false, scope="cursor"})
  end
})

-- Return to last cursor position when opening file
vim.api.nvim_create_autocmd('BufRead', {
  callback = function(opts)
    vim.api.nvim_create_autocmd('BufWinEnter', {
      once = true,
      buffer = opts.buf,
      callback = function()
        local ft = vim.bo[opts.buf].filetype
        local last_known_line = vim.api.nvim_buf_get_mark(opts.buf, '"')[1]
        if
          not (ft:match('commit') and ft:match('rebase'))
          and last_known_line > 1
          and last_known_line <= vim.api.nvim_buf_line_count(opts.buf)
        then
          vim.api.nvim_feedkeys([[g`"]], 'nx', false)
        end
      end,
    })
  end,
})

-- Auto create dir on file save, in case the dir does not exist
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  group = vim.api.nvim_create_augroup("auto_create_dir", { clear = true }),
  callback = function(event)
    if event.match:match("^%w%w+:[\\/][\\/]") then
      return
    end
    local file = vim.uv.fs_realpath(event.match) or event.match
    vim.fn.mkdir(vim.fn.fnamemodify(file, ":p:h"), "p")
  end,
})

-- Highlight yanked text
vim.api.nvim_create_autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

 -- Auto resize splits on window resize
 vim.api.nvim_create_autocmd({ "VimResized" }, {
   group = vim.api.nvim_create_augroup("resize_splits", { clear = true }),
   callback = function()
     local current_tab = vim.fn.tabpagenr()
     vim.cmd("tabdo wincmd =")
     vim.cmd("tabnext " .. current_tab)
   end,
 })

-- Disable autoformatting for newline in comments
vim.api.nvim_create_autocmd('BufEnter', { pattern = '', command = 'set fo-=cro' })

-- Set indentation to 2 spaces for certain files
vim.api.nvim_create_autocmd('Filetype', { pattern = { 'xml', 'html', 'xhtml', 'css', 'scss', 'javascript', 'typescript', 'yaml', 'lua' }, command = 'setlocal tabstop=2' })

