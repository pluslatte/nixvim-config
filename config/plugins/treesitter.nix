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
        rust
        vim
        xml
        yaml
      ];
      settings = {
        highlight.enable = true;
      };
    };
  };
}
