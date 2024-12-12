{
  plugins = {
    which-key = {
      enable = true;

      settings = {
        spec = [
          {
            __unkeyed-1 = "<Leader>b";
            group = "Buffers";
          }
          {
            __unkeyed-2 = "gx";
            desc = "Opens filepath or URI";
          }
        ];
      };
    };
  };
}
