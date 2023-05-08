{ config, pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
  nixpkgs = {
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      
    };
  };

  
  # managed by fleek, modify ~/.fleek.yml to change installed packages
  
  # packages are just installed (no configuration applied)
  # programs are installed and configuration applied to dotfiles
  home.packages = [
    # user selected packages
    pkgs.k9s
    pkgs.kubectl
    pkgs.aws-vault
    pkgs.chamber
    pkgs.awscli2
    pkgs.postgresql
    pkgs.newman
    pkgs.s-tui
    pkgs.stress
    pkgs.neofetch
    pkgs.helm
    pkgs.gnomeExtensions.transparent-top-bar-adjustable-transparency
    pkgs.gnomeExtensions.tailscale-status
    pkgs.gnomeExtensions.gtile
    pkgs.gnomeExtensions.power-profile-switcher
    pkgs.gnomeExtensions.ideapad-controls
    pkgs.gnomeExtensions.screen-rotate
    pkgs.gnomeExtensions.clipboard-indicator
    pkgs.noisetorch
    pkgs.jetbrains.idea-ultimate
    pkgs.android-studio
    pkgs.android-tools
    pkgs.bundletool
    pkgs.btop
    pkgs.nodejs-16_x
    pkgs.postman
    # Fleek Bling
    pkgs.git
    pkgs.htop
    pkgs.github-cli
    pkgs.glab
    (pkgs.nerdfonts.override { fonts = [ "FiraCode" ]; })
  ];
  fonts.fontconfig.enable = true; 
  home.stateVersion =
    "22.11"; # To figure this out (in-case it changes) you can comment out the line and see what version it expected.
  programs.home-manager.enable = true;
}
