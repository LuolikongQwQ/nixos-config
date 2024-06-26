{ config, lib, pkgs, ... }:

{
  users.users = {
    fulanawa = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" "incus-admin" "libvirtd" "adbusers" ];
      openssh.authorizedKeys.keys = [
        "ecdsa-sha2-nistp256 AAAAE2VjZHNhLXNoYTItbmlzdHAyNTYAAAAIbmlzdHAyNTYAAABBBFBA2XcSCmDWWVW3zDEqhscHNaLDWpFQsmGCInj1zWU9/AHA556oNchsCYKTfY+NEj9V3siTsluhyPc963SQju4= local@fulanawa"
      ];
    };
  };
}
