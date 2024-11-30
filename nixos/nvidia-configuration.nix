{ config, pkgs, ... }:

{
  # Accept NVIDIA license
  nixpkgs.config = {
    nvidia.acceptLicense = true;
  };

  # Enable OpenGL
  hardware.opengl = {
    enable = true;
    driSupport = true;
    # driSupport32Bit = true; # Uncomment if you need 32-bit DRI support
  };

  # Load NVIDIA driver for Xorg and Wayland
  services.xserver.videoDrivers = [ "nvidia" ];

  # NVIDIA-specific hardware settings
  hardware.nvidia = {
    # ModeSetting is required
    modesetting.enable = true;

    # NVIDIA power management (Experimental, can cause issues)
    powerManagement = {
      enable = false;
      finegrained = false;
    };

    open = false;

    # Use legacy NVIDIA drivers (adjust as needed)
    package = config.boot.kernelPackages.nvidiaPackages.legacy_470;
  };
}
