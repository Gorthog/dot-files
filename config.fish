if status is-interactive
    fish_add_path /opt/homebrew/bin
    abbr ll lsd -la
    abbr fc code ~/.config/fish/config.fish
    abbr cat bat -p
    starship init fish | source
end
