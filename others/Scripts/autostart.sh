#!/bin/bash

# Функція для надійного відкриття та розміщення вікон
place_window() {
  local title="$1"
  local command="$2"
  local position="$3"
  
  kitty --title "$title" --hold sh -c "$command" &
  sleep 0.3  # Критично важлива затримка
  
  case "$position" in
    "left")
      i3-msg "[title=\"$title\"] move left, split h"
      ;;
    "right")
      i3-msg "[title=\"$title\"] move right"
      ;;
    "bottom")
      i3-msg "[title=\"$title\"] move down, split v"
      ;;
  esac
}

# Початок роботи на workspace 1
i3-msg "workspace 1"

# Спочатку створюємо основні контейнери
i3-msg "layout splitv"  # Вертикальний поділ (верх/низ)

# 1. Neofetch (лівий верхній кут)
place_window "neofetch_win" "htop" "left"

# 2. Годинник (tty-clock) (правий верхній кут)
place_window "clock_win" "tty-clock -sc -C 4" "right"

# 3. Звичайний термінал (низ на всю ширину)
place_window "terminal_win" "$SHELL" "bottom"  # Просто відкриваємо shell

# Фінальна настройка розмірів
sleep 0.5
i3-msg "[title=\"htop_win\"] resize set width 50 ppt"
i3-msg "[title=\"clock_win\"] resize set width 50 ppt"
i3-msg "[title=\"terminal_win\"] resize set height 40 ppt"  # Менше місця для терміналу