if status is-interactive
    fish_add_path /home/linuxbrew/.linuxbrew/bin $HOME/.krew/bin
    starship init fish | source
    abbr ll lsd -la
    abbr fc micro ~/.config/fish/config.fish     
    abbr cat bat -p
    abbr sc micro ~/.ssh/config
end
