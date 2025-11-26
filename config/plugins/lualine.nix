{ pkgs, ... }:
let
  # Workaround for upstream lualine.nvim plugin force-pushing destroying everything...
  pinnedLualine = pkgs.vimUtils.buildVimPlugin {
    pname = "lualine.nvim";
    version = "2025-11-23";
    src = pkgs.fetchFromGitHub {
      owner = "nvim-lualine";
      repo = "lualine.nvim";
      rev = "47f91c416daef12db467145e16bed5bbfe00add8";
      hash = "sha256-OpLZH+sL5cj2rcP5/T+jDOnuxd1QWLHCt2RzloffZOA=";
    };
  };
in
{
  plugins.lualine = {
    enable = true;
    package = pinnedLualine;
  };
}
