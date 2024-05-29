{ pkgs, config, ... }: {
  environment.systemPackages = with pkgs; [
    pulseaudio
  ];
  
  services.pipewire = {
    enable = true;
    
    audio.enable = true;
    pulse.enable = true;

    alsa.enable = true;
    alsa.support32Bit = true;
    
    wireplumber.enable = true;
  };
  
  security.rtkit.enable = true;
  
  sound.enable = false;
  hardware.pulseaudio.enable = false;

  hardware.bluetooth.enable = true;
  hardware.bluetooth.powerOnBoot = true;
  services.blueman.enable = true;
  
  services = {
    udev.packages = with pkgs; [
      android-udev-rules
    ];
    geoclue2.enable = true;
  };
}
