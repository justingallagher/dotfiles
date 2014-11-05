dotfiles
========

My personal dotfiles, managed by git and rcm.

Installation
------------

1. [Install RCM](https://github.com/thoughtbot/rcm).
2. In zsh, clone this repo and cd in.
```
git clone https://github.com/justingallagher/dotfiles.git;
cd dotfiles;
```
3. Use RCM to create the appropriate symlinks.
```
export RCRC=`pwd`/rcrc;
lsrc -d .;
rcup -d . -v;
```
