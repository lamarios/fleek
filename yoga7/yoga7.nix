{ pkgs, misc, ... }: {
  # DO NOT EDIT: This file is managed by fleek. Manual changes will be overwritten.
    home.username = "logit";
    home.homeDirectory = "/home/logit";
    programs.git = {
        enable = true;
        aliases = {
            pushall = "!git remote | xargs -L1 git push --all";
            graph = "log --decorate --oneline --graph";
            add-nowhitespace = "!git diff -U0 -w --no-color | git apply --cached --ignore-whitespace --unidiff-zero -";
        };
        userName = "logit";
        userEmail = "paul@logit.global";
        extraConfig = {
            feature.manyFiles = true;
            init.defaultBranch = "main";
            gpg.format = "ssh";
        };

        signing = {
            key = "~/.ssh/id_rsa";
            signByDefault = builtins.stringLength "~/.ssh/id_rsa" > 0;
        };

        lfs.enable = true;
        ignores = [ ".direnv" "result" ];
  };
}
