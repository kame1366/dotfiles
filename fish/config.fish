if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias ll 'eza -la --icons'
alias cat 'bat'
alias g 'git'
alias vim 'nvim'
uv generate-shell-completion fish | source
