curl -OL https://cdn.discordapp.com/attachments/1119142697882615901/1119160991482118244/dragon_ssh_key.pem
chmod 400 ./dragon_ssh_key.pem
ssh -i ./dragon_ssh_key.pem azureuser@env-dragon.ftt2306.dabaas.net
