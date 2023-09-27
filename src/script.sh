#!/bin/bash
echo "Дата: $(date +%D)"	
echo "Имя учетной записи: $(whoami)"
echo "Доменное имя ПК: $(hostname)"
echo -e "\033[36mПроцессор\033[0m"
echo "Модель: $(lscpu | grep -E '^Имя модели|^Model name' | sed 's/Имя модели:*\s*//;s/Model name:*\s*//')"
echo "Архитектура: $(lscpu | grep -E '^Архитектура|^Architecture' | sed 's/Архитектура:*\s*//;s/Architecture:*\s*//')"
echo "Тактовая частота: $(sudo  dmidecode -t processor | grep -E 'Current Speed' | sed 's/\t//;s/Current Speed:*\s*//')" 
echo "Количество ядер: $( lscpu | grep -m 1 -w "^CPU(s):" | sed 's/CPU(s):*\s*//')"

lscpu | grep -m 1 -w "^CPU(s):"
lscpu | grep -E '^Thread'
grep -E '^MemTotal|^MemAvailable' /proc/meminfo
