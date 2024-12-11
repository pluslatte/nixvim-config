{ pkgs, ... }: {
  # Import all your configuration modules here
  imports = [ 
    ./colorschemes.nix
    ./globals.nix
    ./opts.nix
    ./plugins
  ];
}
