" lowdown -T ms test.md| groff -ms -T pdf > test.md.pdf
" zathura test.md.pdf &

function CompileMarkdown()
	silent execute '!lowdown -T ms ' . expand('%:p') . '|groff -ms -T pdf > ' . expand('%:p') . '.pdf'
endfunction
function EnableMarkdown()
	call CompileMarkdown()
	silent execute '!zathura ' . expand('%:p') . '.pdf &'
	autocmd BufWritePost *.md call CompileMarkdown()
endfunction

command Automd call EnableMarkdown()
