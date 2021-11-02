case $(tty) in
  /dev/tty1)
    export XDG_CURRENT_DESKTOP=Unity
    sway
    ;;
esac
