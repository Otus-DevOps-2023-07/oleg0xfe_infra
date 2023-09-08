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
