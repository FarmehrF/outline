apt update && apt upgrade -y
apt install curl socat -y
curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --register-account -m ffarsiyan@gmail.com
~/.acme.sh/acme.sh --issue -d $1 --standalone
~/.acme.sh/acme.sh --installcert -d $1 --key-file /root/private.key --fullchain-file /root/cert.crt
bash <(curl -Ls https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh)
