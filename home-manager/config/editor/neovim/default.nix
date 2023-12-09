{ config,
  pkgs,
  lib,
  ... }: 

{
  programs.neovim = {
  enable = true;
  extraConfig = lib.fileContents ../../../../../nvim/init.vim;
  plugins = [
  pkgs.vimPlugins.nvim-tree-lua
  {
    plugin = pkgs.vimPlugins.vim-startify;
    config = "let g:startify_change_to_vcs_root = 0";
  }
 ];
};


}