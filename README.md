# vim-surround-markdown
[vim-surround-markdown.webm](https://github.com/user-attachments/assets/b21808aa-2499-40fc-954b-be9693ea8b4c)
Simple plugin - Tagging of markdown code blocks!

## Usage

1. Select the text you want to surround in visual mode.
2. Press `Sq`.
3. Enter the language for the code block when prompted.

The selected text will be surrounded with Markdown code block tags for the specified language.

## Installation
Use https://github.com/junegunn/vim-plug

In your .vimrc

```code
call plug#begin()
    Plug '~/.vim/plugged/vim-surround-markdown'
```

```code
:source ~/.vimrc
```

Note! Only tested on Vi IMproved 9.1

