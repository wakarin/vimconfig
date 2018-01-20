""""""""""""""""""""""""""""""
"dein setting
""""""""""""""""""""""""""""""
if &compatible
	set nocompatible
endif

let s:dein_dir = expand('~/.config/nvim/dein')

set runtimepath+=~/.config/nvim/dein/repos/github.com/Shougo/dein.vim

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	let g:rc_dir = expand('~/.config/nvim/rc')
	let s:toml = g:rc_dir . '/dein.toml'
	let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'
	let s:python_toml = g:rc_dir . '/dein_python.toml'

	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})
	call dein#load_toml(s:python_toml, {'lazy': 1})


	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif
