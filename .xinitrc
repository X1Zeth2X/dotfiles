## Prevent empty Java windows.
# export _JAVA_AWT_WM_NONREPARENTING=1

systemctl --user import-environment DISPLAY &
sxhkd &

exec bspwm
