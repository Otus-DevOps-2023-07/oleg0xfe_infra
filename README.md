# oleg0xfe_infra
oleg0xfe Infra repository


# ДЗ 3

Способ подключения к someinternalhost в одну команду:
    ssh -i ~/.ssh/appuser -J appuser@158.160.102.129 appuser@10.128.0.17

Дополнительное задание:
    подключение с помощью команды 'ssh someinternalhost'

    на локальном ПК в конфиг ~/.ssh/config добавить:

    Host someinternalhost
        HostName      10.128.0.17
        User          appuser
        IdentityFile  ~/.ssh/appuser
        ProxyJump     appuser@158.160.102.129

VPN:
    bastion_IP = 158.160.102.129
    someinternalhost_IP = 10.128.0.17

# ДЗ 4

    testapp_IP = 62.84.124.19
    testapp_port = 9292

# ДЗ 5

    Выполнено следующее:
        - установлен Packer плагин для работы с Yandex Cloud
        - создан Packer шаблон для создания обрза на базе ubuntu 16.04
        - добавлены Input Variables для параметризации шаблона
        - создан образ по шаблону
        - запущена виртуальная машина, установлено и запущено приложение reddit

# ДЗ 6

    Выполнено следующее:
        - установлен terraform и инициализирован для рабо с Yandex Cloud
        - создан образ виртуальной машины с помощью Packer
        - создан конфигурационный файл main.tf для описания объектов инфраструктуры
        - добавлены Input Variables для параметризации конфигурации
        - выполнено создание инфраструктуры и установка приложения с помощью terraform

