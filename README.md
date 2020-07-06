To use this repo, clone it then link the files here to the local ones on your machine using:

 - ln -s ~/dev-setup/.slate ~/.slate
 - ln -s ~/dev-setup/.vimrc ~/.vimrc
 - ln -s ~/dev-setup/.tmux.conf ~/.tmux.conf
 
You need to delete any previous .slate/.vimrc/.tmux.conf files before making this alias. The ln -s command creates a link between the directory you refer to normally (ex ~/.vimrc) and where the file actually is (~/dev-setup/.vimrc). If you make changes to the ~/.vimrc file, you're actually editing the file in the dev-setup folder, so you won't have any syncing problems between two files (there's only one file with two directory locations).

My vim plugin manager is https://github.com/junegunn/vim-plug
