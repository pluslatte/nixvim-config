{
  opts = {
    breakindent = true;
    clipboard = {
      providers = {
        wl-copy.enable = true; # For Wayland
        xsel.enable = true; # For X11
      };

      # Sync clipboard between OS and Neovim
      register = "unnamedplus";
    };
    expandtab = true;
    ignorecase = true;
    number = true;
    mouse = "a";
    shiftwidth = 2;
    showmode = false;
    signcolumn = "yes";
    smartcase = true;
    splitright = true;
    splitbelow = true;
    tabstop = 2;
    timeoutlen = 300;
    undofile = true;
    updatetime = 250;
  };
}
