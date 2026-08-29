# ==========================================
# 1. ALIASES
# ==========================================
alias cat = bat
alias la = ls -a
alias ll = ls -l
alias .. = cd ..
alias ... = cd ../..
alias y = rish -c yazi
# ==========================================
# 2. COLOR PALETTE & THEME
# ==========================================
let custom_palette = {
    bg: "#000000"
    fg: "#cdd6f4"
    cursor: "#89b4fa"
    
    c0: "#1e2a44"
    c1: "#313a5f"
    c2: "#40507a"
    c3: "#5169a0"
    c4: "#6080c5"
    c5: "#7494d4"
    c6: "#89b4fa"
    c7: "#a4c2f4"
    
    c8: "#2b3b64"
    c9: "#4564a8"
    c10: "#5b7cc0"
    c11: "#7394d6"
    c12: "#89b4fa"
    c13: "#a6c2f7"
    c14: "#c0d6f9"
    c15: "#e1ebff"
}

# $env.config terinisialisasi
$env.config = ($env.config? | default {})

# colors
$env.config.color_config = {
    separator: $custom_palette.c3
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: $custom_palette.c6, attr: "b" }
    empty: $custom_palette.c4
    bool: $custom_palette.c11
    int: $custom_palette.c13
    filesize: $custom_palette.c12
    duration: $custom_palette.c10
    date: $custom_palette.c5
    range: $custom_palette.c3
    float: $custom_palette.c13
    string: $custom_palette.c7
    nothing: $custom_palette.c1
    binary: $custom_palette.c9
    "cell-path": $custom_palette.fg # Benerin tanda petik di sini
    row_index: { fg: $custom_palette.c6, attr: "b" }
    record: $custom_palette.fg
    list: $custom_palette.fg
    block: $custom_palette.fg
    hints: $custom_palette.c3
    search_result: { fg: $custom_palette.bg, bg: $custom_palette.c6 }

    # Syntax Highlighting
    shape_and: $custom_palette.c5
    shape_binary: $custom_palette.c5
    shape_block: $custom_palette.c4
    shape_bool: $custom_palette.c11
    shape_closure: $custom_palette.c6
    shape_custom: $custom_palette.c7
    shape_datetime: $custom_palette.c5
    shape_directory: $custom_palette.c6
    shape_external: $custom_palette.c14
    shape_external_resolved: $custom_palette.c6
    shape_externalarg: $custom_palette.c7
    shape_filepath: $custom_palette.c12
    shape_flag: $custom_palette.c11
    shape_float: $custom_palette.c13
    shape_garbage: { fg: $custom_palette.c15, bg: $custom_palette.c1 }
    shape_glob_conversion: $custom_palette.c6
    shape_globpattern: $custom_palette.c12
    shape_int: $custom_palette.c13
    shape_internalcall: $custom_palette.c6
    shape_keyword: $custom_palette.c5
    shape_list: $custom_palette.c6
    shape_literal: $custom_palette.c4
    shape_match_pattern: $custom_palette.c7
    shape_matching_brackets: { attr: "u" }
    shape_nothing: $custom_palette.c1
    shape_operator: $custom_palette.c3
    shape_or: $custom_palette.c5
    shape_pipe: $custom_palette.c5
    shape_range: $custom_palette.c3
    shape_record: $custom_palette.c6
    shape_redirection: $custom_palette.c5
    shape_signature: $custom_palette.c6
    shape_string: $custom_palette.c7
    shape_string_interpolation: $custom_palette.c14
    shape_table: $custom_palette.c4
    shape_variable: $custom_palette.c13
    shape_vardecl: $custom_palette.c13
}

# General UI settings
$env.config.show_banner = false
$env.config.table.mode = 'light'
$env.config.render_right_prompt_on_last_line = true

# ==========================================
# KEYBINDINGS CTRL+R
# ==========================================
$env.config.keybindings = ($env.config.keybindings? | default [] | append [
  {
    name: custom_fzf_file_search
    modifier: control
    keycode: char_r
    mode: [emacs, vi_insert]
    event: { 
      send: executehostcommand
      cmd: "nvim-path"
    }
  }
])

