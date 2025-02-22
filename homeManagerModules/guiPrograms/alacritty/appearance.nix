{ ... }:

{
  fonts.fontconfig.enable = true;

  programs.alacritty.settings = {
    window = {
      decorations = "None";
      dynamic_padding = true;
      padding = { x = 16; y = 16; };
    };
    
    cursor.style = {
      shape = "Block";
      blinking = "Never";
    };

    font = {
      size = 12;

      normal = {
        family = "JetBrainsMono Nerd Font";
        style = "Regular";
      };
    };
  };
}
