# Environment Variables
$env.EDITOR = "hx"

# Optional
$env.TERM = "xterm-256color"
$env.COLORTERM = "truecolor"

# FZF Theme Options
$env.FZF_DEFAULT_OPTS = "
  --color=bg+:#1e2a44,bg:#000000,spinner:#89b4fa,hl:#89b4fa
  --color=fg:#cdd6f4,header:#89b4fa,info:#cdd6f4,pointer:#89b4fa
  --color=marker:#89b4fa,fg+:#ffffff,prompt:#89b4fa,hl+:#89b4fa
  --color=border:#40507a,preview-border:#89b4fa
  --border=none
  --margin=0,0
  --padding=1,3
  --layout=reverse
  --info=inline-right
  --pointer='⟨⟩'
  --marker='⟨⟩'
"
# disable keybind
$env.FZF_CTRL_T_COMMAND = ""
$env.FZF_CTRL_R_COMMAND = ""
$env.FZF_ALT_C_COMMAND = ""


$env.LSI_THEME_PATH = $"($env.HOME)/.config/yazi/theme.toml"
source ~/.config/nushell/lsi.nu
