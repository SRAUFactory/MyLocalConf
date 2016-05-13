set number
highlight Pmenu ctermbg=4
highlight PmenuSel ctermbg=1
highlight PMenuSbar ctermbg=4
set runtimepath+=~/.vim/bundle/neobundle.vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'vim-jp/vim-go-extra'
NeoBundle 'fatih/vim-go'

call neobundle#end()
filetype plugin indent on
NeoBundleCheck

" MEMO:$GOPATHがなければ手動でパス指定
if $GOPATH != ''
	" golintの実行パスを追加
	execute "set rtp+=" . globpath($GOPATH, "src/github.com/golang/lint/misc/vim")
	" syntastic設定
	let g:syntastic_go_checkers = ['go', 'golint', 'govet']
endif

"保存時に自動で:Fmtをかける（syntasticと関係ない）
augroup GO
	autocmd!
	autocmd BufWritePre *.go Fmt
augroup END
