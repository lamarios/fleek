{ pkgs, misc, config, lib, ... }:
let
  # ...
  nixgl = import <nixgl> {} ;
  nixGLWrap = pkg: pkgs.runCommand "${pkg.name}-nixgl-wrapper" {} ''
    mkdir $out
    ln -s ${pkg}/* $out
    rm $out/bin
    mkdir $out/bin
    for bin in ${pkg}/*; do
     wrapped_bin=$out/bin/$(basename $bin)
     echo "exec ${lib.getExe nixgl.auto.nixGLDefault} $bin \"\$@\"" > $wrapped_bin
     chmod +x $wrapped_bin
    done
  '';
in {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors
  # home manager options available here: https://nix-community.github.io/home-manager/options.html
 
  programs.zsh.enableAutosuggestions=true;

  programs.zsh.sessionVariables = {
   ZSH_DISABLE_COMPFIX="true";
  };

  programs.firefox = {
    package = (nixGLWrap pkgs.firefox).override = {};
    profiles.paul = {
      search = {
        default = "DuckDuckGo";
        force = true;
        engines = {
            "Nix Packages" = {
              urls = [{
                template = "https://search.nixos.org/packages";
                params = [
                  { name = "type"; value = "packages"; }
                  { name = "query"; value = "{searchTerms}"; }
                ];
              }];
          
              icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
              definedAliases = [ "@np" ];
            };
          
            "NixOS Wiki" = {
              urls = [{ template = "https://nixos.wiki/index.php?search={searchTerms}"; }];
              iconUpdateURL = "https://nixos.wiki/favicon.png";
              updateInterval = 24 * 60 * 60 * 1000; # every day
              definedAliases = [ "@nw" ];
            };
          
            "Bing".metaData.hidden = true;
            "Google".metaData.alias = "@g"; # builtin engines only support specifying one additional alias
          };
      };

      settings = {
         "identity.sync.tokenserver.uri" = "https://ff-sync.ftpix.com/1.0/sync/1.5";
         "browser.tabs.firefox-view" = false;
         "extensions.pocket.enabled" = false;
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
