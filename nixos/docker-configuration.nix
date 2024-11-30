{ config, pkgs, ... }:

{
  virtualisation.docker.enable = true;
  users.users.mike.extraGroups = [ "docker" ];
}
