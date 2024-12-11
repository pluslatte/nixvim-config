{
  plugins = {
    neo-tree = {
      enable = true;
      window = {
        width = 20;
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
