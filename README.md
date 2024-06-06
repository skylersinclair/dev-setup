## Symlinks
To use this repo, clone it then link the files here to the local ones on your machine using:

 - `ln -s ~/SOME/DIR/dev-setup/.vimrc ~/.vimrc`
 - `ln -s ~/SOME/DIR/dev-setup/.tmux.conf ~/.tmux.conf`
 
You need to delete any previous .slate/.vimrc/.tmux.conf files before making this alias. The ln -s command creates a link between the directory you refer to normally (ex \~/.vimrc) and where the file actually is (\~/dev-setup/.vimrc). If you make changes to the ~/.vimrc file, you're actually editing the file in the dev-setup folder, so you won't have any syncing problems between two files (there's only one file with two directory locations).

## Vim
My vim plugin manager is https://github.com/junegunn/vim-plug

The first time you use it you have to install it, aka

`curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

NOTE: DO NOT use the neovim curl if you don't use neovim! You will likely get a "PlugInstall is not a valid command" error if you've done this, go back to the [installation instructions](https://github.com/junegunn/vim-plug?tab=readme-ov-file#installation)) part of the README and grab the right install.
    
after it's installed, open any document using vim and type `:PlugInstall`. The plugins will auto install, and then if you reopen a file in vim you should be good to go.

## Tmux
You can install tmux via `brew install tmux`. Then make a new session via `tmux new -s session_name`. Reattach later via `tmux a -t session_name`.

## Windows Management (Rectangle, previously Slate)
I used to use Slate, but it's way too old and pretty much unsupported now. I now use [Rectangle](https://rectangleapp.com/), pretty much straight out of the box. No config file necessary.

For those of you still using slate:

If you upgrade your mac os and slate stops working, you can debug by manually removing then adding slate to the security and privacy > privacy > accessibility settings as described [here](https://github.com/jigish/slate/issues/405).

NOTE: Slate behaves badly (at least for me) when I'm running phone emulators on android studio. Once I've quit android studio, it goes back to acting normally.

## Github Actions
[Github actions](https://docs.github.com/en/actions/learn-github-actions/understanding-github-actions) are workflows that spin up on a github server when triggered by an action (pushing a branch, creating a PR, etc). In June 2022, free github accounts get [2000 minutes of server time a month](https://docs.github.com/en/billing/managing-billing-for-github-actions/about-billing-for-github-actions).

This is a workflow that runs two separate jobs, one for linting and one for running all tests via pytest. While individual repos have more specific needs, this is an excellent go to for starters.

## Git Pre Commit Hooks
[Pre commit hooks](https://pre-commit.com/#pre-commit-configyaml---hooks) are checks that are run automatically before you commit changes to your git branch, used to maintain code quality and style. The pre commit hooks are set up in `.pre-commit-config.yaml`. Post installing and running pre commit hooks, remember to run `pre-commit autoupdate` every once and a while to update the versions of the repos you're drawing from (flake8, black, etc).

I personally like running [black](https://github.com/psf/black) with their built in 88 character line length cutoff to format my code and [flake8](https://flake8.pycqa.org/en/latest/) to lint during my pre commit hook steps to keep me accountable.


## Bash
Why don't I have a .bashrc here? Gotta add that... :p
