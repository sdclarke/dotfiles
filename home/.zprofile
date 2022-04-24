case $(tty) in
  /dev/tty1)
    echo 'on' | sudo tee /sys/bus/pci/devices/0000:00:16.0/power/control
    sway
    ;;
esac
