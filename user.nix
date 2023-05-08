{ pkgs, misc, config, ... }: {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors
  # home manager options available here: https://nix-community.github.io/home-manager/options.html
 
  programs.zsh.enableAutosuggestions=true;

  programs.zsh.sessionVariables = {
   ZSH_DISABLE_COMPFIX="true";
  };

  programs.firefox = {
    profiles.paul = {
      search = {
        default = "DuckDuckGo";
        force = true;
      };
      settings = {
         "identity.sync.tokenserver.uri" = "https://ff-sync.ftpix.com/1.0/sync/1.5";
      };
    };

  };
  

  xdg.userDirs = {
   enable = true;
   createDirectories = false;
   desktop = "$HOME";
   download = "$HOME/dl";
   documents = "$HOME/doc";
   music = "$HOME/doc/mzk";
   pictures = "$HOME/pix";
   publicShare = "$HOME/pub";
   templates = "$HOME/tpl";
   videos = "$HOME/pix/vid";
  }; 
}
