[global]
    monitor = 0
    follow = none
    geometry = "400x5-10+10"
    origin = bottom-right
    offset = 10x10
    shrink = yes
    transparency = 10
    padding = 10
    horizontal_padding = 20
    frame_width = 0
    frame_color = "#33B5E5"
    separator_height = 10
    separator_color = "#00000000"
    sort = yes
    idle_threshold = 0
    font = Monospace 10
    line_height = 0
    markup = full
    format = "<b>%s</b>\n%b"
    alignment = left
    show_age_threshold = 60
    word_wrap = yes
    ellipsize = middle
    ignore_newline = no
    stack_duplicates = true
    hide_duplicate_count = false
    show_indicators = yes
    icon_position = left
    max_icon_size = 128
    sticky_history = yes
    history_length = 20
    dmenu = dmenu -p dunst:
    browser = xdg-open
    always_run_script = false
    title = Dunst
    class = Dunst
    startup_notification = false
    verbosity = mesg
    corner_radius = 0
    mouse_left_click = close_current
    mouse_middle_click = close_all
    mouse_right_click = do_action

[urgency_low]
    background = "#222222"
    foreground = "#DDDDDD"
    timeout = 0

[urgency_normal]
    background = "#2A2A2A"
    foreground = "#DDDDDD"
    timeout = 0

[urgency_critical]
    background = "#2A2A2A"
    foreground = "#DDDDDD"        # <- white text instead of red
    frame_color = "#FF5555"       # <- red border remains
    timeout = 0

# Optional: force YouTube notifications to normal urgency
[rule_youtube]
    appname = "Google Chrome"
    summary = "*YouTube*"
    urgency = normal
