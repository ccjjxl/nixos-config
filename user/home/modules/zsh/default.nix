{pkgs, lib, opt-config,  ... }:

{
	programs.zsh = {
		enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    autocd = true;
    syntaxHighlighting.enable = true;
		shellAliases = {
			ls = "eza --color=always --icons --group-directories-first";
      la = "eza --color=always --icons --group-directories-first --all";
      ll = "eza --color=always --icons --group-directories-first --all --long";
      l = "ll";
		};
		initContent = lib.mkMerge [

		(''
		'')
		];
	};
}
