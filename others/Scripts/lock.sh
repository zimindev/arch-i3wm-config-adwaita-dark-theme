#!/bin/bash

# Запускає i3lock з кастомними налаштуваннями
lock_screen() {
    # Параметри блокування (можна змінити під себе)
    i3lock \
        --color=000000 \          # Чорний фон
        --ignore-empty-password \ # Ігнорувати пустий пароль
        --show-failed-attempts   # Показувати спроби введення
}

# Головна функція
main() {
    # Перевірка, чи встановлено i3lock
    if ! command -v i3lock &> /dev/null; then
        echo "Помилка: i3lock не знайдено. Встановіть його спочатку."
        echo "Для Arch: sudo pacman -S i3lock"
        echo "Для Debian/Ubuntu: sudo apt install i3lock"
        exit 1
    fi

    lock_screen
}

# Запуск
main