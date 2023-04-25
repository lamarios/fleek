{ pkgs, misc, ... }: {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors
  # home manager options available here: https://nix-community.github.io/home-manager/options.html
  
  programs.zsh.enableAutosuggestions=true;
  programs.zsh.oh-my-zsh.enable=true;
 
}
