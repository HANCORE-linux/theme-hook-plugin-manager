#!/usr/bin/env bash
# shellcheck disable=SC1091,SC2154
# shellcheck source=../lib/theme-env.sh
source "${THPM_THEME_ENV:-$HOME/.local/share/thpm/lib/theme-env.sh}"

output_file="$HOME/.config/omarchy/current/theme/vencord-system24.theme.css"
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
    local bg_1 bg_2 bg_3 bg_4
    local text_5 accent_5
    local red_4 red_5 green_4 green_5 blue_4 blue_5 yellow_4 yellow_5 purple_4 purple_5

    bg_1="$(change_shade "$primary_background" 30)"
    bg_2="$(change_shade "$primary_background" 18)"
    bg_3="$(change_shade "$primary_background" 8)"
    bg_4="$primary_background"
    text_5="$(change_shade "$bright_black" -35)"
    accent_5="$(change_shade "$normal_blue" -25)"
    red_4="$(change_shade "$normal_red" -18)"
    red_5="$(change_shade "$normal_red" -34)"
    green_4="$(change_shade "$normal_green" -18)"
    green_5="$(change_shade "$normal_green" -34)"
    blue_4="$(change_shade "$normal_blue" -18)"
    blue_5="$(change_shade "$normal_blue" -34)"
    yellow_4="$(change_shade "$normal_yellow" -18)"
    yellow_5="$(change_shade "$normal_yellow" -34)"
    purple_4="$(change_shade "$normal_magenta" -18)"
    purple_5="$(change_shade "$normal_magenta" -34)"

    cat > "$output_file" << EOF
/**
 * @name Omarchy System24
 * @description System24 Discord theme using the current Omarchy colors.toml palette.
 * @author OldJobobo, refact0r
 * @version 0.1.0
 * @website https://github.com/refact0r/system24
 * @source https://github.com/refact0r/system24
 */

@import url("https://refact0r.github.io/system24/build/system24.css");

body {
    --font: 'DM Mono';
    --code-font: 'DM Mono';
    font-weight: 300;
    letter-spacing: 0;

    --gap: 12px;
    --divider-thickness: 4px;
    --border-thickness: 2px;
    --border-hover-transition: 0.2s ease;

    --animations: on;
    --list-item-transition: 0.2s ease;
    --dms-icon-svg-transition: 0.4s ease;

    --top-bar-height: var(--gap);
    --top-bar-button-position: titlebar;
    --top-bar-title-position: off;
    --subtle-top-bar-title: off;

    --custom-window-controls: off;
    --window-control-size: 14px;

    --custom-dms-icon: hide;
    --dms-icon-svg-url: url('');
    --dms-icon-svg-size: 90%;
    --dms-icon-color-before: var(--icon-subtle);
    --dms-icon-color-after: var(--white);
    --custom-dms-background: color;
    --dms-background-image-url: url('');
    --dms-background-image-size: cover;
    --dms-background-color: linear-gradient(70deg, var(--blue-2), var(--purple-2), var(--red-2));

    --background-image: off;
    --background-image-url: url('');

    --transparency-tweaks: off;
    --remove-bg-layer: off;
    --panel-blur: off;
    --blur-amount: 12px;
    --bg-floating: var(--bg-3);

    --small-user-panel: on;
    --unrounding: on;
    --custom-spotify-bar: on;
    --ascii-titles: on;
    --ascii-loader: system24;

    --panel-labels: on;
    --label-color: var(--text-muted);
    --label-font-weight: 500;
}

:root {
    --colors: on;

    --text-0: #${primary_background};
    --text-1: #${bright_white};
    --text-2: #${primary_foreground};
    --text-3: #${normal_white};
    --text-4: #${bright_black};
    --text-5: #${text_5};

    --bg-1: #${bg_1};
    --bg-2: #${bg_2};
    --bg-3: #${bg_3};
    --bg-4: #${bg_4};
    --hover: rgba(${rgb_bright_black}, 0.12);
    --active: rgba(${rgb_bright_black}, 0.22);
    --active-2: rgba(${rgb_bright_black}, 0.32);
    --message-hover: rgba(${rgb_normal_black}, 0.18);

    --accent-1: #${bright_blue};
    --accent-2: #${normal_blue};
    --accent-3: #${normal_blue};
    --accent-4: #${bright_blue};
    --accent-5: #${accent_5};
    --accent-new: var(--red-2);
    --mention: linear-gradient(to right, color-mix(in hsl, var(--accent-2), transparent 90%) 40%, transparent);
    --mention-hover: linear-gradient(to right, color-mix(in hsl, var(--accent-2), transparent 95%) 40%, transparent);
    --reply: linear-gradient(to right, color-mix(in hsl, var(--text-3), transparent 90%) 40%, transparent);
    --reply-hover: linear-gradient(to right, color-mix(in hsl, var(--text-3), transparent 95%) 40%, transparent);

    --online: #${normal_green};
    --dnd: #${normal_red};
    --idle: #${normal_yellow};
    --streaming: #${normal_magenta};
    --offline: var(--text-4);

    --border-light: var(--hover);
    --border: var(--active);
    --border-hover: var(--accent-2);
    --button-border: rgba(${rgb_bright_white}, 0.1);

    --red-1: #${bright_red};
    --red-2: #${normal_red};
    --red-3: #${normal_red};
    --red-4: #${red_4};
    --red-5: #${red_5};

    --green-1: #${bright_green};
    --green-2: #${normal_green};
    --green-3: #${normal_green};
    --green-4: #${green_4};
    --green-5: #${green_5};

    --blue-1: #${bright_blue};
    --blue-2: #${normal_blue};
    --blue-3: #${normal_blue};
    --blue-4: #${blue_4};
    --blue-5: #${blue_5};

    --yellow-1: #${bright_yellow};
    --yellow-2: #${normal_yellow};
    --yellow-3: #${normal_yellow};
    --yellow-4: #${yellow_4};
    --yellow-5: #${yellow_5};

    --purple-1: #${bright_magenta};
    --purple-2: #${normal_magenta};
    --purple-3: #${normal_magenta};
    --purple-4: #${purple_4};
    --purple-5: #${purple_5};
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
success "Discord System24 theme updated!"
exit 0
