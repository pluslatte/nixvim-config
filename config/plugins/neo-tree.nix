{
  plugins = {
    neo-tree = {
      enable = true;
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
