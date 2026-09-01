{ pkgs, ... }:
{
  plugins = {
    treesitter = {
      enable = true;
      grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
        bash
        c
        cpp
        css
        html
        javascript
        json
        lua
        nix
        markdown
        markdown_inline
        regex
        rust
        toml
        tsx
        typescript
        vim
        xml
        yaml
      ];
      settings = {
        highlight = {
          additional_vim_regex_highlighting = false;
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
