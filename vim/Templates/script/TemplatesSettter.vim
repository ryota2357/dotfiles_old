command! Set :call SetTemplateFunc()

let s:TemplateDirectory = "~/dotfiles/vim/Templates/souce/"

function! SetTemplateFunc() abort
	let l:ext = expand('%:e')
	if l:ext == 'cpp'
        normal ggVGd
        call OutputFileText_template(ext)
        let l:pos = line(".")
        call cursor(pos-3, 5)
    elseif l:ext == 'sh'
        call OutputFileText_template(ext)
    elseif l:ext == 'md'
        call OutputFileText_template(ext)
    elseif l:ext == 'py'
        normal ggVGd
    else
		echo 'error : Do not have template file of this file type.'
	endif

endfunction

function! OutputFileText_template(file) abort
    let l:filename = expand(s:TemplateDirectory . a:file . ".txt")
    let l:i = 0
    for line in readfile(l:filename)
        call append(l:i, line)
        let l:i = l:i + 1
    endfor
endfunction
