{
  plugins = {
    neo-tree = {
      enable = true;
      settings = {
        close_if_last_window = true;
        window = {
          width = 24;
        };
        filesystem = {
          filtered_items = {
            visible = true;
            hide_dotfiles = false;
            hide_gitignored = false;
          };
        };
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
