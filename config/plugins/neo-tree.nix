{
  plugins = {
    neo-tree = {
      enable = true;

      keymaps = [
        {
          key = "<Leader>e";
          action = "<cmd>Neotree toggle<cr>";
          options = {
            desc = "Toggle NeoTree";
          };
        }
      ];
    };
    web-devicons.enable = true;
  };
}
