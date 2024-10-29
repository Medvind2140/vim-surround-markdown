# vim-surround-markdown
Simple plugin - Tagging of markdown code blocks!

![vim-surround-markdown](https://github.com/user-attachments/assets/63fe592f-308c-4c8d-bc3c-bdee3442656f)

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

