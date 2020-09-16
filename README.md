* Clone to .vim of home dir
<pre>
git clone git@github.com:clydewu/clyvundle.git .vim
</pre>
* Link .vimrc
<pre>
ln -s ~/.vim/vimrc ~/.vimrc
</pre>
* Intall plugin of vim
  * Shell command
  <pre>
  vim +PluginInstall +qall
  </pre>
  * Or command in vim
  <pre>
  :PluginInstall
  </pre>
* Build YouCompleteMe
  * Linux
  <pre>
  sudo aptitude install build-essential cmake vim python3-dev
  ~/.vim/bundle/YouCompleteMe/install.py
  </pre>
  * OSX
  <pre>
  ~/.vim/bundle/YouCompleteMe/install.py --clang-completer
  </pre>
