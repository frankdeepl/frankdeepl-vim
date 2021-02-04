# How to install vimrc on Linux/Mac OS

### 1. Create vimrc file

All of configuration of vim is done in file ~/.vimrc. You can download vimrc file directly and replace it.
```
cd ~
touch .vimrc
vim .vimrc
```

### 2. Plugin list
The .vimrc file has been configured with some plugins, so this document shows how to download and prepare the plugins.
The list of plugin:
```
Plugin 'VundleVim/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdtree'
Plugin 'Yggdroot/indentLine'
Plugin 'tell-k/vim-autopep8'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
```
#### 2.1.Vundle
#### 2.1.1 Prepare the folder
```
cd ~
mkdir .vim
cd .vim
mkdir bundle

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

```
cd ~
cd .vim
mkdir colors

mv path/wombat256mod.vim ~/.vim/colors/
```


#### 2.1.2 Install Plugins
#### 2.1.2.1 Manually
* Go to the folder: cd ~/.vim/bundle/ 
* Run the command as below:
```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/Yggdroot/indentLine.git
git clone https://github.com/tell-k/vim-autopep8.git
git clone https://github.com/jiangmiao/auto-pairs.git
git clone https://github.com/scrooloose/nerdcommenter.git
git clone https://github.com/ycm-core/YouCompleteMe.git
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git
git clone https://github.com/tomtom/tlib_vim.git
git clone https://github.com/garbas/vim-snipmate.git
```

#### 2.1.2.1 Automatically
* Open the vimrc file: vim ~/.vimrc
* Run the command: PluginInstall
