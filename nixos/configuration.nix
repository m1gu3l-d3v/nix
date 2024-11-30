{ config, pkgs, ... }:

{
  # Import the results of the hardware scan and other configurations
  imports =
    [
      ./hardware-configuration.nix
      ./nvidia-configuration.nix
      ./xserver-configuration.nix
      ./fonts-configuration.nix
      ./user-configuration.nix
      ./packages-configuration.nix
      ./general-configuration.nix
      ./pipewire-configuration.nix
      ./cups-configuration.nix
      ./zsh-configuration.nix
      ./thunar-configuration.nix
      ./systemd-configuration.nix
      ./docker-configuration.nix
      #./i3-configuration.nix
      #./pip-configuration.nix
    ];

  # State version of the system
  system.stateVersion = "24.05"; # Did you read the comment?
}
