{
  plugins = {
    telescope = {
      # Fuzzy Finder
      enable = true;
      extensions = {
        fzf-native.enable = true;
        ui-select.enable = true;
      };
    };
  };

  keymaps = [
    {
      key = "<leader>sh";
      mode = "n";
      action = "help_tags";
      options = {
        desc = "[S]earch [H]elp";
      };
    }
    {
      key = "<leader>sk";
      mode = "n";
      action = "keymaps";
      options = {
        desc = "[S]earch [K]eymaps";
      };
    }
    {
      key = "<leader>sf";
      mode = "n";
      action = "find_files";
      options = {
        desc = "[S]earch [F]iles";
      };
    }
    {
      key = "<leader>ss";
      mode = "n";
      action = "builtin";
      options = {
        desc = "[S]earch [S]elect Telescope";
      };
    }
    {
      key = "<leader>sw";
      mode = "n";
      action = "grep_string";
      options = {
        desc = "[S]earch current [W]ord";
      };
    }
    {
      key = "<leader>sg";
      mode = "n";
      action = "live_grep";
      options = {
        desc = "[S]earch by [G]rep";
      };
    }
    {
      key = "<leader>sd";
      mode = "n";
      action = "diagnostics";
      options = {
        desc = "[S]earch [D]iagnostics";
      };
    }
    {
      key = "<leader>sr";
      mode = "n";
      action = "resume";
      options = {
        desc = "[S]earch [R]esume";
      };
    }
    {
      key = "<leader>s";
      mode = "n";
      action = "oldfiles";
      options = {
        desc = "[S]earch Recent Files ('.' for repeat)";
      };
    }
    {
      key = "<leader><leader>";
      mode = "n";
      action = "buffers";
      options = {
        desc = "[ ] Find existing buffers";
      };
    }
  ];
}
