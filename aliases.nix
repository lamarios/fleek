{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
   home.shellAliases = {
    chamber-iluma = "aws-vault exec iluma -- chamber";
    
    chamber-iluma-staging = "aws-vault exec iluma-staging -- chamber";
    
    fleeks = "cd ~/.local/share/fleek";
    
    nx = "NIXPKGS_ALLOW_UNFREE=1 nix-shell -p";
    };
}
