{ pkgs, ... }:

{
  packages = pkgs: {
    discord = pkgs.discord.overrideAttrs (oldAttrs: {
      withOpenASAR = true;
      withVencord = true;
    });
  };
}
