#!/usr/bin/env bash
# shellcheck disable=SC1091,SC2154
# shellcheck source=../lib/theme-env.sh
source "${THPM_THEME_ENV:-$HOME/.local/share/thpm/lib/theme-env.sh}"

output_file="$HOME/.config/omarchy/current/theme/vencord.theme.css"
possible_paths=(
    "$HOME/.config/Vencord/themes"
    "$HOME/.config/vesktop/themes"
    "$HOME/.config/Equicord/themes"
    "$HOME/.config/equibop/themes"
    "$HOME/.var/app/com.discordapp.Discord/config/Vencord/themes"
    "$HOME/.var/app/dev.vencord.Vesktop/config/vesktop/themes"
    "$HOME/.var/app/io.github.equicord.equibop/config/equibop/themes"
)

create_dynamic_theme() {

cat > "$output_file" << EOF
    /**
    * @name Match System
    * @author @bypass_
    * @version 0.1.0
    * @description Match your current system theme.
    * @source https://github.com/imbypass/base16-Discord
    **/
    @import url("https://imbypass.github.io/base16-discord/omarchy-discord.theme.css");

    :root {
        --color00: #${primary_background};
        --color01: #${primary_background};
        --color02: #${primary_background};
        --color03: #${normal_white};
        --color04: #${bright_white};
        --color05: #${bright_white};
        --color06: #${bright_white};
        --color07: #${bright_white};
        --color08: #${normal_red};
        --color09: #${normal_yellow};
        --color10: #${bright_yellow};
        --color11: #${normal_green};
        --color12: #${normal_cyan};
        --color13: #${normal_blue};
        --color14: #${normal_magenta};
        --color15: #${normal_yellow};
    }
EOF
}

install_theme() {
    local path file

    for path in "${possible_paths[@]}"; do
        if [[ -d "$path" ]]; then
            cp -f "$output_file" "$path/vencord.theme.css"

            for file in "$path"/*; do
                if [[ -f "$file" ]]; then
                    touch "$file"
                fi
            done
        fi
    done
}

create_dynamic_theme
install_theme
success "Discord theme updated!"
exit 0
