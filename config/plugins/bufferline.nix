{
  plugins = {
    bufferline = {
      enable = true;
      settings.options = {
        # mini.bufremove keeps the window layout intact, so neo-tree never
        # ends up as the last window (which would quit nvim via
        # close_if_last_window). wipeout (not delete): :bdelete leaves
        # buffer-local autocmds behind, which breaks vim-css-color when the
        # buffer number is reused (E121: b:css_color_pat).
        close_command.__raw = ''
          function(bufnr)
            require("mini.bufremove").wipeout(bufnr, false)
          end
        '';
        right_mouse_command.__raw = ''
          function(bufnr)
            require("mini.bufremove").wipeout(bufnr, false)
          end
        '';
      };
    };
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>bC";
      action.__raw = ''function() require("mini.bufremove").wipeout(0, true) end'';
      options = {
        desc = "Force close this buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>bc";
      action.__raw = ''function() require("mini.bufremove").wipeout(0, false) end'';
      options = {
        desc = "Close this buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>bh";
      action = "<cmd>BufferLineCyclePrev<CR>";
      options = {
        desc = "Select <- Buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>bl";
      action = "<cmd>BufferLineCycleNext<CR>";
      options = {
        desc = "Select -> Buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>ba";
      action = "<cmd>BufferLineCloseOthers<CR>";
      options = {
        desc = "Close all buffer except this";
      };
    }
  ];
}
