{
  plugins.scrollview = {
    enable = true;
    settings = {
      excluded_filetypes = [ "neo-tree" ];
      signs_on_startup = [
        "diagnostics"
        "search"
        "conflicts"
        "cursor"
      ];
    };
  };

  # Cursor sign defaults to Identifier (red in gruvbox), which reads like an
  # error; use gruvbox fg1 instead.
  highlightOverride.ScrollViewCursor = {
    fg = "#ebdbb2";
  };

  # gitsigns integration is a contrib module, not a built-in sign group;
  # listing it in signs_on_startup does nothing.
  extraConfigLua = ''
    require("scrollview.contrib.gitsigns").setup()

    -- The contrib module recomputes gitsigns scrollbar data only for buffers
    -- visible at the moment GitSignsUpdate fires, and wipes the data of every
    -- other previously-active buffer. gitsigns does not re-fire the event on
    -- BufEnter, so re-entering a hidden buffer shows no git signs on the
    -- scrollbar until the next edit. Re-emit the event ourselves; the contrib
    -- callback reads hunks from gitsigns' cache, so this is cheap.
    vim.api.nvim_create_autocmd({ "BufEnter", "WinEnter" }, {
      group = vim.api.nvim_create_augroup("ScrollViewGitsignsResync", { clear = true }),
      callback = function()
        vim.schedule(function()
          vim.api.nvim_exec_autocmds("User", { pattern = "GitSignsUpdate" })
        end)
      end,
    })
  '';
}
