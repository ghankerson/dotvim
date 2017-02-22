Move the .vimrc and .gvimrc files into the .vim directory:<code>mv .vimrc ~/.vim/vimrc
<code>mv .gvimrc ~/.vim/gvimrc</code>

Create symbolic links so that ~/.vimrc points to the ~/.vim/vimrc file: <code> ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc</code>

Install plugins as submodulesWith pathogen installed, it’s now possible to keep the files for each plugin together, which means that every plugin can be kept in its own git repository. The best way to do this is to use git submodules, which are designed especially for the purpose of keeping git repositories within a git repository.To install the fugitive plugin as a git submodule, take the following steps:<code>cd ~/.vim
mkdir ~/.vim/bundle
git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive
git add .
git commit -m "Install Fugitive.vim bundle as a submodule."</code>

Installing your Vim environment on another machineOnce your vim configuration is under version control, it’s quite straightforward to import your settings to any machine that has git installed. If you followed the instructions above to put your vimrc and plugins in a dotvim directory, then you can follow these steps to synchronise them to another machine:
<code>
cd ~
git clone http://github.com/username/dotvim.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule init
git submodule update
</code>
As Marcin Kulik points out in the comments below, the last two git commands can be rolled in to one: <code>git submodule update --init</code>.

Upgrading a plugin bundle
At some point in the future, the fugitive plugin might be updated. To fetch the latest changes, go into the fugitive repository, and pull the latest version:
<code>
cd ~/.vim/bundle/fugitive
git pull origin master
</code>

Upgrading all bundled plugins
You can use the foreach command to execute any shell script in from the root of all submodule directories. To update to the latest version of each plugin bundle, run the following: <code> git submodule foreach git pull origin master</code>
