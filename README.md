* Clone to .vim of home dir
<pre>
git clone git@github.com:clydewu/clyvundle.git .vim
</pre>
* Link .vimrc
<pre>
ln -s .vimrc clyvundle/vimrc
</pre>
* Intall plugin of vim
** Shell command
<pre>
vim +PluginInstall +qall
</pre>
** Or command in vim
<pre>
:PluginInstall
</pre>
* Install python-dev
<pre>
sudo aptitude install python2.7-dev
</pre>
* Build YouCompleteMe
** Linux
<pre>
~/.vim/bundle/YouCompleteMe/install.sh
</pre>
** OSX
<pre>
~/.vim/bundle/YouCompleteMe/install.sh --clang-completer
</pre>
