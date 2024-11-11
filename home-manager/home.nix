{ config, pkgs, ... }: {
	imports = [
		./bash.nix
		./modules/bundle.nix
	];	

	home = {
		username = "davis";
		homeDirectory = "/home/davis";
		stateVersion = "24.05";
	};
}
