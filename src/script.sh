#!/bin/bash
date +%D	
whoami
hostname
lscpu | grep -E '^Модель|^Model'
lscpu | grep -E '^Архитектура|^Architecture'
sudo  dmidecode -t processor | grep -E 'Current Speed'
lscpu | grep -m 1 -w "^CPU(s):"
lscpu | grep -E '^Thread'
grep -E '^MemTotal|^MemAvailable' /proc/meminfo
