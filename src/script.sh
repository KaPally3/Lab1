#!/bin/bash

echo "Дата: $(date +%D)"
	
echo "Имя учетной записи: $(whoami)"

echo "Доменное имя ПК: $(hostname)"

echo -e "\033[36mПроцессор\033[0m"

echo "Модель: $(lscpu | grep -E '^Имя модели|^Model name' | sed 's/Имя модели:*\s*//;s/Model name:*\s*//')"

echo "Архитектура: $(lscpu | grep -E '^Архитектура|^Architecture' | sed 's/Архитектура:*\s*//;s/Architecture:*\s*//')"

echo "Тактовая частота: $(sudo  dmidecode -t processor | grep -E 'Current Speed' | awk '{print $3, $4}')"
 
echo "Количество ядер: $(lscpu | grep -m 1 -w "^CPU(s):" | awk '{print $2}')"

echo "Количество потоков на одно ядро: $(lscpu | grep -E '^Thread' | awk '{print $4}')" 

echo -e "\033[32mОперативная память\033[0m"

echo "Всего: $(grep -E '^MemTotal' /proc/meminfo | sed 's/MemTotal:*\s*//')"

echo "Доступно: $(grep -E '^MemAvailable' /proc/meminfo | sed 's/MemAvailable:*\s*//')"

