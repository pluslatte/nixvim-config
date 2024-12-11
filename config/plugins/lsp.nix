{
  plugins = {
    cmp-nvim-lsp.enable = true;
    fidget.enable = true;
    lsp = {
      enable = true;
      servers = {
        clangd.enable = true;
        rust_analyzer.enable = true;
        nixd.enable = true;
      };
    };
  };
}
