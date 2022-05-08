if status is-interactive
    fish_add_path /home/linuxbrew/.linuxbrew/bin $HOME/.krew/bin $HOME/.cargo/bin $HOME/.local/bin
    starship init fish | source
    abbr ll lsd -la
    abbr fc micro ~/.config/fish/config.fish     
    abbr cat bat -p
    abbr sc micro ~/.ssh/config
    abbr rm-ids "rm *:Zone.Identifier"
    abbr start explorer.exe
    abbr maip http -pb ifconfig.me
    # I couldn't find a way to permanently set ulimit in WSL. but this works
    ulimit -Sn 65535
end

function fish_user_key_bindings
    bind \t complete-and-search
    bind \cH backward-kill-path-component
    bind \[3\;5~ kill-word
end

# https://stackoverflow.com/questions/71502585/how-to-open-a-tab-pane-in-the-same-directory-in-windows-terminal-with-fish-shell/71502586#71502586
function storePathForWindowsTerminal --on-variable PWD
    if test -n "$WT_SESSION"
      printf "\e]9;9;%s\e\\" (wslpath -w "$PWD")
    end
end
