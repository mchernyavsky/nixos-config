{ ... }:

{
  programs = {
    java.enable       = true;
    vim.defaultEditor = true;

    zsh = {
      enable                    = true;
      enableAutosuggestions     = true;
      syntaxHighlighting.enable = true;
    };
  };
}
