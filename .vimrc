set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'fatih/vim-go'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck
