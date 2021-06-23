# andrushke88_infra
andrushke88 Infra repository
#Необходимо забиндить подключение в конфигурационнике ssh(vi ~/.ssh/config)
Host someinternalhost
Hostname 10.128.0.18
User appuser
ProxyCommand ssh -W %h:%p -i ~/.ssh/appuser -A appuser@217.28.229.148
#Далее просто подключаемся через команду "ssh someinternalhost"
bastion_IP = 217.28.229.148
someinternalhost_IP = 10.128.0.18
