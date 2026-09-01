{
  plugins.scrollview = {
    enable = true;
    settings = {
      excluded_filetypes = ["neo-tree"];
      signs_on_startup = ["diagnostics" "search" "conflicts" "cursor"];
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
  '';
}
