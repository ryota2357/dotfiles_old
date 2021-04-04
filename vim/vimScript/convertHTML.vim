command! HtmlMode call ConvertHTMLStart()
command! HtmlModeEnd call ConvertHTMLEnd()
command! HtmlReplace call ReplaceEsc()

function! ConvertHTMLStart() abort
	nmap p :call Insert_tag("p")<CR>
	nmap h2 :call Insert_tag("h2")<CR>
	nmap h3 :call Insert_tag("h3")<CR>
	nmap li :call Insert_tag("li")<CR>
	nmap si :call Insert_tag("site")<CR>

	nmap ds :call Input_stag("div")<CR>
	nmap de :call Input_etag("div")<CR>

	nmap bqs :call Input_stag("blockquote")<CR>
	nmap bqe :call Input_etag("blockquote")<CR>

	nmap prs :call append(line(".")-1,'<pre class='.'"prettyprint lang-XX"'.'>')<CR>
	nmap pre :call Input_etag("pre")<CR>

	nmap cs :call Input_stag("code")<CR>
	nmap ce :call Input_etag("code")<CR>

	nmap uls :call Input_stag("ul")<CR>
	nmap ule :call Input_etag("ul")<CR>

	nmap br :call append(line(".")-1,"<br>")<CR>

	nmap a :call Set_a_tag()<CR>
endfunction

function! ConvertHTMLEnd() abort
	nunmap p
	nunmap h2
	nunmap h3
	nunmap li
	nunmap ds
	nunmap de
	nunmap bqs
	nunmap bqe
	nunmap prs
	nunmap pre
	nunmap cs
	nunmap ce
	nunmap uls
	nunmap ule
	nunmap br
	nunmap a
endfunction


function! ReplaceEsc()
	:%s/&/\&amp;/g
	:%s/</\&lt;/g
	:%s/>/\&gt;/g
endfunction

function! Insert_tag(name) abort
	let l:cline = getline(".")
    call setline(line("."), "<".a:name.">".l:cline."</".a:name.">")
endfunction

function! Input_stag(name) abort
	call append(line(".")-1, "<".a:name.">")
endfunction

function! Input_etag(name) abort
	call append(line("."), "</".a:name.">")
endfunction

function! Set_a_tag() abort
	let l:cline = getline(".")
    call setline(line("."), "<a href=\"".l:cline."\">"."</a>")
endfunction
