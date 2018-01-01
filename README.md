# vimrc
vimの設定  
設定自体は.vimrcにコメントとして書いている  
~カレントディレクトリにこのファイル構成で置けば良い~  
カレントディレクトリにcloneし以下の操作を行う
## .vimrc
~/.bashrcに  
alias vim = 'vim -u ~/vimrc/.vimrc'  
を追加し.vimrcの参照先を指定

## .vim(済)
.vimrcの  
set runtimepath+=~/vimrc/.vim  
で.vimの参照先をを指定(してある)
