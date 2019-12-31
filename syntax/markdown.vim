" Vim syntax file
" Language:     Markdown
" Maintainer:   Michael Gilchrist <michaelgilch@gmail.com>
" Filenames:    *.md, *.markdown

if exists("b:current_syntax")
    finish
endif

echom "TEST: michaelgilch/vim-github-markdown loaded"

syntax region mdH1 matchgroup=mdHeadingDelimiter start="^\s*#"      end="#*\s*$" keepend oneline
syntax region mdH2 matchgroup=mdHeadingDelimiter start="^\s*##"     end="#*\s*$" keepend oneline
syntax region mdH3 matchgroup=mdHeadingDelimiter start="^\s*###"    end="#*\s*$" keepend oneline
syntax region mdH4 matchgroup=mdHeadingDelimiter start="^\s*####"   end="#*\s*$" keepend oneline
syntax region mdH5 matchgroup=mdHeadingDelimiter start="^\s*#####"  end="#*\s*$" keepend oneline
syntax region mdH6 matchgroup=mdHeadingDelimiter start="^\s*######" end="#*\s*$" keepend oneline

syntax match mdHeadingUnderline "^[=-]\+$" contained
syntax match mdH1 "^.\+\n=\+$" contains=mdHeadingUnderline
syntax match mdH2 "^.\+\n-\+$" contains=mdHeadingUnderline


highlight link mdHeadingDelimiter   Delimiter
highlight link mdHeadingUnderline   Delimiter
highlight link mdH1                 Title
highlight link mdH2                 Title
highlight link mdH3                 Title
highlight link mdH4                 Title
highlight link mdH5                 Title
highlight link mdH6                 Title

let b:current_syntax = "markdown"
