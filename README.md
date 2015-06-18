# vim

Set up my vim configuration with: 

```shell
sudo apt-get install vim -y
sudo apt-get install git -y 
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
git clone https://github.com/nelsonauner/vim.git ~/.
cp ~/vim/_vimrc ~/.vimrc
vi ~/.vimrc
:so %
:PluginInstall
```

And you should be good to go
