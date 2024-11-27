#Personal
# touchpad: tap to click, accel speed. Check available props: xinput list-props ID
xinput set-prop "ELAN0712:00 04F3:30FD Touchpad" "libinput Tapping Enabled" 1
xinput set-prop "ELAN0712:00 04F3:30FD Touchpad" "libinput Accel Speed" 0.3

alias wifi-restart="sudo service NetworkManager restart"
alias wifi-list="nmcli device wifi list"
alias wifi-connect="nmcli --ask dev wifi connect"
alias wifi-on="nmcli radio wifi on"
alias wifi-off="nmcli radio wifi off"
alias bluetooth-on="sudo systemctl start bluetooth.service"
alias red-status="nmcli dev status"
alias logout="kill -9 -1"
