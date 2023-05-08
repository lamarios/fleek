{ pkgs, misc, config, ... }: {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors
  # home manager options available here: https://nix-community.github.io/home-manager/options.html
 
  programs.zsh.enableAutosuggestions=true;

  programs.zsh.sessionVariables = {
   ZSH_DISABLE_COMPFIX="true";
  };
  

  xdg.userDirs = {
   enable = true;
   createDirectories = false;
   desktop = "";
   download = "dl";
   documents = "doc";
   music = "doc/mzk";
   pictures = "pix";
   publicShare = "pub";
   templates = "tpl";
   videos = "pix/vid";
  }; 
}
