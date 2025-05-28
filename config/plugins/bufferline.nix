{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>bC";
      action = "<cmd>Neotree close<CR><cmd>bd!<CR>";
      options = {
        desc = "Force close this buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>bc";
      action = "<cmd>Neotree close<CR><cmd>bd<CR>";
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
