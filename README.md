dotfiles
========

My personal dotfiles, managed by git and rcm.

Installation
------------

1. [Install RCM](https://github.com/thoughtbot/rcm).
2. [Install the Powerline fonts](https://github.com/Lokaltog/powerline-fonts).
3. In zsh, clone this repo and cd in.

   ```
   git clone git@github.com:justingallagher/dotfiles.git
   cd dotfiles;
   ```
4. Use RCM to create the appropriate symlinks.

   ```
   export RCRC=`pwd`/rcrc;
   lsrc -d .;
   rcup -d . -v;
   ```
5. Install Antigen

   ```
   git submodule update --init --recursive
   ```
6. Restart your terminal to allow antigen to install your modules.
7. Open vim, and run:

   ```
   :PluginInstall
   ```
