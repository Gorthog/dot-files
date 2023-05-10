brew bundle

curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
fisher install PatrickF1/fzf.fish evanlucas/fish-kubectl-completions
cp config.fish ~/.config/fish
cp .gitconfig ~
cp starship.toml ~/.config
