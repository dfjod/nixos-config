{
	programs.bash = {
		enable = true;
		shellAliases = let
			flakeDir = "~/nixos-config";
		in {
			rb = "sudo nixos-rebuild switch --flake ${flakeDir}";

			hms = "home-manager switch --flake ${flakeDir}";

			ff = "fastfetch";
		};
	};
}
