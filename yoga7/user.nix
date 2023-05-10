{ pkgs, misc, ... }: {
  # This file will never be modified by fleek
  # configs mentioned here must be listed in ~/fleek.yml #programs array or you will get errors
  dconf.settings = {
    "org/gnome/shell"={
      enabled-extensions=["appindicatorsupport@rgcjonas.gmail.com" "transparent-top-bar@ftpix.com" "tailscale-status@maxgallup.github.com" "gTile@vibou" "clipboard-indicator@tudmotu.com" "ideapad-controls@azzamalsharafi.gmail.com" "screen-rotate@shyzus.github.io" "power-profile-switcher@eliapasquali.github.io"];
    };
  };
 
}
