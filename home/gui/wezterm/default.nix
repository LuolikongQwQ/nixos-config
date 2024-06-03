{ pkgs, ... }: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      local wezterm = require 'wezterm'
      local config = {}
      
      config.enable_scroll_bar = true
      
      config.initial_cols = 80
      config.initial_rows = 20
      
      config.font_size = 16
      config.font = wezterm.font_with_fallback {
        'JetBrainsMonoNL Nerd Font Mono',
        'Source Han Sans HW'
      }
      -- TODO: config.color_scheme -> wezterm.colorSchemes
      
      config.color_scheme = 'Catppuccin Mocha'
      
      config.window_frame = {
        font = wezterm.font {
          family = 'JetBrainsMono Mono'
        },
        font_size = 14
      }
      -- launch menu
      -- TODO: add ssh
      -- config.launch_menu = {
      --   {
      --      lable = "name",
      --      args = {
      --       'wezterm', 'connect', 'name',
      --     },
      --   },
      -- }
      -- config.ssh_domains = {
      --   {
      --     name = "name",
      --     remote_address = "localhost,127.0.0.1",
      --     username = "fulanawa",
      --     multiplexing = "None",
      --     ssh_option = {
      --       identityfile = "~/.ssh/fulanawa"
      --     },
      --   },
      -- }
      config.set_environment_variables = {
        LANG="C.utf8"
      }
      return config
    '';
    enableBashIntegration = true;
  };
}
