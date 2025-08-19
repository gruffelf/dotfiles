rsync -av --ignore-existing gruffelf@192.168.86.47:/data/music/ ~/Music/  
rsync -av --ignore-existing ~/Music/ gruffelf@192.168.86.47:/data/music/
pkill -9 mopidy 2>/dev/null
mopidy local scan

sleep 1

nohup mopidy > ~/.cache/mopidy-restart.log 2>&1 &
