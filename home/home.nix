{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./librewolf.nix
  ];

  home.username = "insearchofname";
  home.homeDirectory = "/home/insearchofname";

  programs.bash = {
    enable = true;
    initExtra = ''
      [[ $- != *i* ]] && return

      alias ls='eza -la --color=always --group-directories-first'
      alias ll='eza -alF --color=always --group-directories-first'
      alias la='eza -A --color=always'
      alias grep='grep --color=auto'
      alias cls='clear'
      alias rebuild='cd ~/nixos-config && sudo nixos-rebuild switch --flake .#nixos'

      export EDITOR=nano
      export VISUAL=nano
      export HISTCONTROL=ignoredups:erasedups
      shopt -s histappend

      PROMPT_COMMAND="PS1_GIT_BRANCH=\$(git branch --show-current 2>/dev/null)"

      ORANGE="\[$(tput setaf 216)\]"
      DARK_RED="\[$(tput setaf 160)\]"
      RUST="\[$(tput setaf 202)\]"
      MAUVE="\[$(tput setaf 131)\]"
      RESET="\[$(tput sgr0)\]"

      if [ -n "$PS1_GIT_BRANCH" ]; then
        GIT_PART="($ORANGE$PS1_GIT_BRANCH$RESET)"
      else
        GIT_PART=""
      fi

      PS1="$ORANGE\u$DARK_RED@$RUST\h $MAUVE\w $RESET$GIT_PART\n> "
    '';
  };

  home.stateVersion = "26.05";
}
