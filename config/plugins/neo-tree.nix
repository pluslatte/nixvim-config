{
  plugins = {
    neo-tree = {
      enable = true;
      window = {
        width = 24;
      };
    };
    web-devicons.enable = true;
  };

  keymaps = [
    {
      key = "<Leader>e";
      action = "<cmd>Neotree toggle<cr>";
      options = {
        desc = "Toggle NeoTree";
      };
    }
  ];
}
