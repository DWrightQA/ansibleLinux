echo *****************resetnetwork.sh
sudo nmcli connection reload
sudo systemctl restart network.service