{ pkgs, misc, ... }: {
   home.shellAliases = {
    chamber-iluma = "aws-vault exec iluma -- chamber";
    
    chamber-iluma-staging = "aws-vault exec iluma-staging -- chamber";
    
    fleeks = "cd ~/.local/share/fleek";
    };
}
