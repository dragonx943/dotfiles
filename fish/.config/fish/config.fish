if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /opt/homebrew/Caskroom/miniconda/base/bin/conda
    eval /opt/homebrew/Caskroom/miniconda/base/bin/conda "shell.fish" "hook" $argv | source
else
    if test -f "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
        . "/opt/homebrew/Caskroom/miniconda/base/etc/fish/conf.d/conda.fish"
    else
        set -x PATH "/opt/homebrew/Caskroom/miniconda/base/bin" $PATH
    end
end
# <<< conda initialize <<<

# https://github.com/starship/starship
starship init fish | source

# disable greeting
set -g fish_greeting

# disable new line
# set SPACEFISH_PROMPT_ADD_NEWLINE false

# aliases
alias startLatex="conda activate latex && latexocr"
alias spotifyFix="spicetify update && spicetify restore backup apply"

# exa
command -q exa; and alias la="eza -abghl --git --color=automatic"
command -q exa; and alias ll="eza -bghl --git --color=automatic"
fish_add_path /Users/amogh/.spicetify
