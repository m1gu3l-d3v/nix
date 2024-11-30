{ config, pkgs, ... }:

{
  programs.xfconf.enable = true;
  programs.thunar.enable = true;
  services.tumbler.enable = true;
  programs.thunar.plugins = with pkgs.xfce; [
    thunar-volman
    thunar-media-tags-plugin
    #thunar-archive-plugin
  ];
  services.gvfs.enable = true;
}
