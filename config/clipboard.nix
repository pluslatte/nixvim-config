{
  # Sync clipboard between OS and Neovim
  clipboard = {
    providers = {
      wl-copy.enable = true; # For Wayland
      xsel.enable = true; # For X11
    };

    register = "unnamedplus";
  };
}
