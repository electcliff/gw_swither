sudo cp ./gw-switcher /usr/bin/gw-switcher
sudo chmod +x /usr/bin/gw-switcher
sudo cp ./gw-switcher.config.sample /etc/gw-switcher.config
sudo cat << EOF > /etc/systemd/system/gw-switcher
[Unit]
Description=Check channels and get better
After=network.target

[Service]
ExecStart=/root/test.sh
Restart=on-failure

[Install]
WantedBy=multi-user.target
EOF
sudo systemctl daemon-reload