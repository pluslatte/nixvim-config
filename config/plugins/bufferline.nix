{
  plugins = {
    bufferline.enable = true;
    web-devicons.enable = true;
  };

  keymaps = [
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
      key = "<Leader>bh<CR>";
      action = "<cmd>BufferLineCyclePrev";
      options = {
        desc = "Select <- Buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>bl<CR>";
      action = "<cmd>BufferLineCycleNext";
      options = {
        desc = "Select -> Buffer";
      };
    }
    {
      mode = "n";
      key = "<Leader>ba<CR>";
      action = "<cmd>BufferLineCloseOthers";
      options = {
        desc = "Close all buffer except this";
      };
    }
  ];
}
