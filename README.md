# neovim_config
## require
python  
node.js

## 設定
export XDG_BASE_HOME='~/.config'  
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh  
sh ./installer.sh ~/.config/nvim/dein  

### rust
rustup update  
rustup component add rls-preview --toolchain nightly  
rustup component add rust-analysis --toolchain nightly  
rustup component add rust-src --toolchain nightly  
https://blog.foresta.me/posts/nvim_and_lsp_for_rust/  
