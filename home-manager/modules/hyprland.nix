{ config, pkgs, ... }:
{
	wayland.windowManager.hyprland = {
		enable = true;
		xwayland.enable = true;

		settings = {
			"$mainMod" = "SUPER";

			monitor = ",2560x1440@170,auto,auto";

			env = [
				"XCURSOR_THEME,default"
				"XCURSOR_SIZE,16"
			];

			debug = {
				disable_logs = false;
				enable_stdout_logs = true;
			};

			
			input = {
				follow_mouse = 1;

				sensitivity = 0; # -1.0 - 1.0, 0 means no modification.
			};

			master = {
				new_on_active = true;
			};


			misc = {
				animate_manual_resizes = true;
				animate_mouse_windowdragging = true;
				enable_swallow = true;
				render_ahead_of_time = false;
				disable_hyprland_logo = true;
			};

			bind = [
				"$mainMod, Return, exec, kitty"
				"$mainMod, M, exit,"
				"$mainMod, D, exec, rofi -show drun"

				# Move focus with mainMod + arrow keys
				"$mainMod, left,  movefocus, l"
				"$mainMod, right, movefocus, r"
				"$mainMod, up,    movefocus, u"
				"$mainMod, down,  movefocus, d"

				# Moving windows
				"$mainMod SHIFT, left,  swapwindow, l"
				"$mainMod SHIFT, right, swapwindow, r"
				"$mainMod SHIFT, up,    swapwindow, u"
				"$mainMod SHIFT, down,  swapwindow, d"

				# Window resizing                     X  Y
				"$mainMod CTRL, left,  resizeactive, -60 0"
				"$mainMod CTRL, right, resizeactive,  60 0"
				"$mainMod CTRL, up,    resizeactive,  0 -60"
				"$mainMod CTRL, down,  resizeactive,  0  60"

				# Switch workspaces with mainMod + [0-9]
				"$mainMod, 1, workspace, 1"
				"$mainMod, 2, workspace, 2"
				"$mainMod, 3, workspace, 3"
				"$mainMod, 4, workspace, 4"
				"$mainMod, 5, workspace, 5"
				"$mainMod, 6, workspace, 6"
				"$mainMod, 7, workspace, 7"
				"$mainMod, 8, workspace, 8"
				"$mainMod, 9, workspace, 9"
				"$mainMod, 0, workspace, 10"

				# Move active window to a workspace with mainMod + SHIFT + [0-9]
				"$mainMod SHIFT, 1, movetoworkspacesilent, 1"
				"$mainMod SHIFT, 2, movetoworkspacesilent, 2"
				"$mainMod SHIFT, 3, movetoworkspacesilent, 3"
				"$mainMod SHIFT, 4, movetoworkspacesilent, 4"
				"$mainMod SHIFT, 5, movetoworkspacesilent, 5"
				"$mainMod SHIFT, 6, movetoworkspacesilent, 6"
				"$mainMod SHIFT, 7, movetoworkspacesilent, 7"
				"$mainMod SHIFT, 8, movetoworkspacesilent, 8"
				"$mainMod SHIFT, 9, movetoworkspacesilent, 9"
				"$mainMod SHIFT, 0, movetoworkspacesilent, 10"
			];
		};
	};
}
