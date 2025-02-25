
if status is-interactive
    set --local AUTOJUMP_INIT "/share/autojump/autojump.fish"

    if test -f "$HOMEBREW_PREFIX$AUTOJUMP_INIT"
        source "$HOMEBREW_PREFIX$AUTOJUMP_INIT"
    else if  test -f "$HOME/.autojump$AUTOJUMP_INIT"
        source "$HOME/.autojump$AUTOJUMP_INIT"
    else if  test -f "/usr/share/autojump$AUTOJUMP_INIT"
        source "/usr/share/autojump$AUTOJUMP_INIT"
    else if  test -f "/usr/local/share/autojump$AUTOJUMP_INIT"
        source "/usr/local/share/autojump$AUTOJUMP_INIT"
    else if test -f "$AUTOJUMP_INIT"
        source "$AUTOJUMP_INIT"
    end
end
