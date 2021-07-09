# andrushke88_infra
andrushke88 Infra repository

# **ДЗ № 3**  
## Необходимо забиндить подключение в конфигурационнике ssh(vi ~/.ssh/config)
Host someinternalhost  
Hostname 10.128.0.18  
User appuser  
ProxyCommand ssh -W %h:%p -i ~/.ssh/appuser -A appuser@178.154.203.26  
## Далее просто подключаемся через команду "ssh someinternalhost"  
bastion_IP = 178.154.203.26  
someinternalhost_IP = 10.128.0.18
# **ДЗ № 4 Деплой тестового приложения**
## ДАнные для проверки
testapp_IP = 178.154.207.131
testapp_port = 9292
# **Дз № 5 Сборка образов VM при помощи Packer**
## В ходе задания выполнено:
1. Создание новой ветки packer-base
2. Перенос файлов пердыдущего задания в папку config-scripts
3. Выкачан последний packer и переложен в папку ~/.local/path
4. Создан сервисный аккаунт с делегирование прав и создание ключа доступа
5. Исследовано на практике создание образа ubuntu при помощи Packer
6. Выполнены задания со *, а именно создан packer сборщик сервера из предыдущего задания с созданием демона puma.service и создание скрипта развёртывания сервера из образа.
