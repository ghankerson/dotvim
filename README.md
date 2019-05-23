Now using vim-plug and really happy with this setup.

When starting on a new machine  you must pre-install Vim Plug.

<code>
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
</code>

Then inside vim run
<code>
:PlugInstall
</code>

See https://github.com/junegunn/vim-plug  for details and options.

I am using a handful or so plugins that I really like.

* Vim Plug - easy enough to manage plugins without even having to look at docuumntation
* Multiple Cursors - love being able to do this sans mouse  just control n!
* Fugitive -  best Git integration for Vim I have found.
* Vroom - Run Ruby tests within Vim (nned a way to do this with Jest)
* VimCompletesMe - Autocomplete with tab the way I link it.
* Airline - generates a great-looking bash prompt.
* Promptline - great looking prompt lines for each buffer.
* PaperColor my favorite vim theme

Then I have a few .vimrc settings: 
* Set the leader to spacebar.
* Syntax highlighting on.
* Autoread to re-read changed files
* Indentation 
* Keyboard shorcuts for Fugitive.vim
* A command mapped to Leader J to format json files
* Automatically yank/copy to the clipboard
 
