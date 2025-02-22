#                     _      _        _     
#    __ _ _ _ ___ ___| |_ __| |  _ _ (_)_ __
#   / _` | '_/ -_) -_)  _/ _` |_| ' \| \ \ /
#   \__, |_| \___\___|\__\__,_(_)_||_|_/_\_\
#   |___/                                   

# GREETD - a system login and authentication
#          daemon designed for Wayland
#          display managers

{ pkgs, ... }: 

{
  services.greetd = {
    enable = true;

    settings = {
      default_session = let
        tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
        width = "50";
        timeFormat = "[ %B %Y, %A %d --- %I:%M %p ]";
        greeting = "Welcome, user!";
        passwordChar = "#";
        session = "Hyprland";
      in
      {
        command = ''
          ${tuigreet} \
          --width ${width} \
          --time --time-format "${timeFormat}" \
          --greeting "${greeting}" \
          --asterisks --asterisks-char "${passwordChar}" \
          --cmd ${session}
        '';

        user = "greeter";
      };
    };
  };
}
