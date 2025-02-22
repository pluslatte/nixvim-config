{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        json
        lua
        nix
        markdown
        markdown_inline
        regex
        rust
        vim
        xml
        yaml
      ];
      settings = {
        highlight = {
          additional_vim_regex_highlighting = true;
          enable = true;
        };
        indent = {
          enable = true;
        };
      };
    };
    # treesitter-context.enable = true;
  };
}
