{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "dot";
  home.homeDirectory = /Users/dot;


  programs = {
    # zsh = import ./zsh.nix;
    # qutebrowser = import ./qutebrowser.nix;
    # neomutt = import ./email/neomutt.nix;
    # notmuch = import ./email/notmuch.nix;
    # mbsync = import ./email/mbsync.nix;
    # khal = import ./calendar/khal.nix;
    # mpv = import ./mpv.nix;
    # zk = import ./zk/zk.nix;
    # yt-dlp = {
    #   enable = true;
    #   settings = {
    #     sub-lang = "en.*";
    #   };
    # };
    # # spotify-player = {
    # #   enable = true;
    # # };
    # # taskwarrior = {
    # #   enable = true;
    # #   dataLocation = "/home/dot/.config/task";
    # #   package = pkgs.taskwarrior3;
    # # };
    # # vdirsyncer = {
    # #   enable = true;
    # # };
    kitty = {
      enable = true;
      shellIntegration.enableZshIntegration = true;
      font = {
        name = "Meslo Nerd Font";
        size = 13;
      };
      theme = "Catppuccin-Mocha";
      settings = {
        enable_audio_bell = false;
        dynamic_background_opacity = true;
      };
    };
    # pidgin = {
    #   enable = true;
    #   plugins = with pkgs.pidginPackages; [
    #     # pkgs.pidginPackages.tdlib-purple #broken
    #     purple-discord
    #     purple-facebook
    #     purple-signald
    #   ];
    # };
    # tmux = {
    #   enable = true;
    #   terminal = "tmux-256color";
    #   plugins = with pkgs;
    #     [
    #       tmuxPlugins.vim-tmux-navigator
    #       tmuxPlugins.catppuccin
    #     ];
    #   extraConfig = ''
    #     set -g @catppuccin_flavour 'mocha'
    #     set-option -sg escape-time 10
    #     set-option -sa terminal-features ',xterm-kitty:RGB'
    #     set-window-option -g  mode-keys vi
    #     bind-key -T copy-mode-vi v send -X begin-selection
    #     bind-key -T copy-mode-vi V send -X select-line
    #     bind-key -T copy-mode-vi y send -X copy-pipe-and-cancel 'xclip -in -selection clipboard'
    #   '';
    # };
    # fzf = {
    #   enable = true;
    #   enableZshIntegration = true;
    # };
    # git = {
    #   enable = true;
    #   userEmail = "stuff@dottie.me";
    #   userName = "dotrosedotnet";
    # };
  };


  home.packages = with pkgs; [
    lazygit
    mpv
    sops
  ];

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "24.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
