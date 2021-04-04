:command! -nargs=? C call CompileInCommandMode()

function! CompileInCommandMode() abort
    w
    let l:ext = expand("%:e")
    !clear
    if l:ext == "cpp"
        !clang++ -std=c++17 -stdlib=libc++ -Wall -O2 -I/usr/local/include %
        echo "-- Compaled!! --  [./a.out]"
    elseif l:ext == "py"
        !python3 %
    else
        echo "Compale command not found [type: " . l:ext . "]"
    endif
endfunction
