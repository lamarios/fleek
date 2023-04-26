{
  description = "Fleek Configuration";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    # Home manager
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";

    # Fleek
    fleek.url = "github:ublue-os/fleek";

  };

  outputs = { nixpkgs, home-manager, fleek, ... }@inputs: {

    # Available through 'home-manager --flake .#your-username@your-hostname'
    homeConfigurations = {
    
      "xendit@yoga7" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config

        modules = [ 
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./yoga7/yoga7.nix
          ./yoga7/user.nix
          # self-manage fleek
          {
           home.packages = [
            fleek.packages.x86_64-linux.default
          ];
          }

        ];
      };
      
      "gz@yoga7" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config

        modules = [ 
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./yoga7/yoga7.nix
          ./yoga7/user.nix
          # self-manage fleek
          {
           home.packages = [
            fleek.packages.x86_64-linux.default
          ];
          }

        ];
      };
      
      "gz@office-pc" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = { inherit inputs; }; # Pass flake inputs to our config

        modules = [ 
          ./home.nix 
          ./path.nix
          ./shell.nix
          ./user.nix
          ./aliases.nix
          ./programs.nix
          # Host Specific configs
          ./office-pc/office-pc.nix
          ./office-pc/user.nix
          # self-manage fleek
          {
           home.packages = [
            fleek.packages.x86_64-linux.default
          ];
          }

        ];
      };
      
    };
  };
}
