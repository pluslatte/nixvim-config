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

    cursorline = true;
    expandtab = true;
    hlsearch = true;
    ignorecase = true;
    inccommand = "split";
    number = true;
    mouse = "a";

    # Sets how neovim will display certain whitespace characters in the editor
    #  See `:help 'list'`
    #  See `:help 'listchars'`
    list = true;
    # "__raw" here means that this field is raw lua code
    listchars.__raw = "{ tab = '» ', trail = '·', nbsp = '␣' }";

    scrolloff = 10;
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
