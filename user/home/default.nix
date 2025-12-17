
{ config, pkgs, ... }:


{
	home.username ="ccjjxl";
	home.homeDirectory ="/home/ccjjxl";



 	imports = [
    ./modules
  ];

	home.packages = with pkgs;[
		fzf
		eza
		bat
		yazi
		zoxide
		fd
		ripgrep
		jq
	];

	programs.starship = {
    enable = true;
    # 自定义配置
    settings = {
      add_newline = false;
		};
	};



  home.stateVersion = "24.05";

}
