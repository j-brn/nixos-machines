{ pkgs, ... }: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;

    shellAliases = {
      ls = "exa";
      find = "fd";
      grep = "rg";
      cat = "bat --plain --pager=none";
      ".." = "cd ..";
    };

    oh-my-zsh = {
      enable = false;
      plugins = [ "git" "sudo" ];
    };

    initExtra = ''
      eval "$(direnv hook zsh)"

      if [ -f "$HOME/.p10k.zsh" ]; then
        source "$HOME/.p10k.zsh"
      fi

      source ${pkgs.zsh-powerlevel10k}/share/zsh-powerlevel10k/powerlevel10k.zsh-theme

      function t {
         cd $(mktemp -d $XDG_RUNTIME_DIR/$1.XXXX)
      }
      unsetopt share_history
    '';
  };
}
