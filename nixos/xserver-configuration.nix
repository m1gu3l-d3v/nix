{ config, pkgs, ... }:

{
  services.xserver = {
    enable = true;
    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        i3blocks
        i3lock
      ];
    };
    xkb = {
      layout = "latam";  # Keyboard layout for X server
      variant = "";      # Variant, if any
      options = "grp:alt_shift_toggle";  # Options, e.g., to toggle layouts
    };
  };
}
