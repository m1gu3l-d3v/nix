{ config, pkgs, ... }:

{
  # Bootloader configuration
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Networking settings
  networking.hostName = "nixos"; # Define your hostname.
  networking.networkmanager.enable = true; # Enable NetworkManager for network management.
  # networking.wireless.enable = true; # Uncomment to enable wireless support via wpa_supplicant.

  # Time zone setting
  time.timeZone = "America/Lima";

  # Internationalization settings
  i18n.defaultLocale = "es_MX.UTF-8";
  console.keyMap = "la-latin1";

  # Allow unfree packages from nixpkgs
  nixpkgs.config.allowUnfree = true;

  # Display manager configuration
  services.displayManager.sddm.enable = true;

  # For wecam
  hardware.mwProCapture.enable = true;
  
  # Default terminal
  environment.sessionVariables.TERMINAL = [ "alacritty" ];
}
