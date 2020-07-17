#!/usr/bin/env bash

sway_config_file=$HOME/.config/sway/colorscheme
sway_themes_dir=$HOME/sources/base16-sway/themes
sway_theme_file=$sway_themes_dir/base16-$BASE16_THEME.config

if ![ -f $sway_config_file ] && [ -f "$sway_theme_file" ]; then
  cp "$sway_theme_file" "$sway_config_file"
  echo 'Sway theme updated'
fi
