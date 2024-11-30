{ config, pkgs, ... }:

{
  # User configuration
  users.users.mike = {
    isNormalUser = true;
    description = "mike";
    extraGroups = [ "networkmanager" "wheel" ]; # Add user to networkmanager and wheel groups
    packages = with pkgs; [];
  };
}
