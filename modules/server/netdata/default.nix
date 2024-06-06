{ pkgs, ... }: {
  services.netdata = {
    enable = true;
    enableAnalyticsReporting = false;
    deadlineBeforeStopSec = 240;

    # plugin dir

    # settings

  };
}
