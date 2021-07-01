{ pkgs, ... }:

{
  programs.bash = 
  {
    enable = true;

    sessionVariables = {
      EDITOR = "nvim";
      LESSHST = "/dev/null";
      PATH = "$PATH:/home/ashley/scripts:/home/ashley/vm";
    };
    shellOptions = [
      "autocd"
    ];
    shellAliases = {
      sudo   = "doas";
      update = "update-system.sh";
      hms    = "home-manager switch";
      build  = "nix-build -E '((import <nixpkgs> {}).callPackage (import ./default.nix) { })'";
      myip   = "curl ipinfo.io/ip && echo";
      ports  = "netstat -tulanp";
      untar  = "tar zxvf";
      mktar  = "tar cvfz";
      sha    = "shasum -a 256";
      ls     = "ls --color";
      la     = "ls -la";
      lh     = "ls -lh";
      lah    = "ls -lah";
      lm     = "ls -t -1";
      lt     = "du -hd 1";
      cp     = "cp -iv";
      mv     = "mv -iv";
      rm     = "rm -v";
      yt     = "youtube-dl --add-metadata -f 'bestvideo[height<=?1440]+bestaudio/best'";
      yta    = "yt -x -f bestaudio/best";
      sdn    = "power.sh";
      newqc  = "qemu-img create -f qcow2";
      monero = "monero-wallet-cli --log-file /dev/null";
    };
    initExtra = ''
      set -o vi
      bind -m vi-insert 'Control-l: clear-screen'
      PS1="\n\[\033[1;36m\]\w \$\[\033[0m\] "
    '';
  };

}
