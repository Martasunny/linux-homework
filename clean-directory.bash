#!/bin/bash

read -p "Введите путь к дирректории: " DELDIR

if [ -e $DELDIR ]
then
    rm -v "$DELDIR/*.bak" "$DELDIR/*.tmp" "$DELDIR/*.backup"
    echo 'Удаление завершено.'
else
    echo 'Указанная дирректория не найдена!'
    exit 2
fi
