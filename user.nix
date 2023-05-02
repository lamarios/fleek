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
   createDirectories = true;
   desktop = "${config.home.homeDirectory}";
   download = "${config.home.homeDirectory}/dl";
   documents = "${config.home.homeDirectory}/doc";
   music = "${config.home.homeDirectory}/doc/mzk";
   pictures = "${config.home.homeDirectory}/pix";
   publicShare = "${config.home.homeDirectory}/pub";
   templates = "${config.home.homeDirectory}/tpl";
   videos = "${config.home.homeDirectory}";
  }; 
}
