{ pkgs, ... }: {
	nixpkgs.config = {
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
		vim

		# Desktop apps
		kitty
		firefox
		rofi-wayland

		# CLI utils
		git
		htop
		fastfetch

		# Wayland stuff
		xwayland

		# WMs and stuff
		hyprland

		# Other
		home-manager
	];
}
