{ pkgs, ... }:

{
  # Configuración general del sistema
  environment.systemPackages = with pkgs; [
    zsh
    # Otros paquetes que necesites
  ];

  # Configuración del usuario
  users.users.mike = {
    isNormalUser = true;
    shell = pkgs.zsh;
    # Aquí puedes añadir otras configuraciones del usuario
  };

  # Configuración de zsh para todos los usuarios
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
  };

  # Otros ajustes del sistema
  # ...
}
