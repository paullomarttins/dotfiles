#dwmstaus
dwmstatus 2>&1 >/dev/null &

#xautolock -time 10 -locker slock &
xss-lock -- /usr/local/bin/slock &

#Compositor
compton -b &

#loop
#while true; do
#       dwm >/dev/null 2>&1
#done

# Active NumLock
numlockx &

#Window manager
exec dwm
exec i3
