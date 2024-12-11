{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };

  keymaps = [
    {
      mode = "n";
      key = "<Leader>bc";
      action = "<cmd>bd<CR>";
      options = {
        desc = "Close this buffer";
        group = "Buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>bh";
      action = "<cmd>BufferLineCyclePrev";
      options = {
        desc = "Select <- Buffer";
        group = "Buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>bl";
      action = "<cmd>BufferLineCycleNext";
      options = {
        desc = "Select -> Buffer";
        group = "Buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>ba";
      action = "<cmd>BufferLineCloseOthers";
      options = {
        desc = "Close all buffer except this";
      };
    }
  ];
}
