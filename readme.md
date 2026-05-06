# Simple Google Drive in a docker container via rclone on alpine linux

uses rclone to mount your google drive to $HOME/gdrive

Steps:
1. Make sure you have a rclone.conf in the project dir, it should look like this
```
[gdrive]
type = drive
client_id = xxx
client_secret = yyy
scope = drive
token = {"access_token":"zzz" ...}
team_drive = 

```
suggestion, rather install rclone locally to generate the rclone.conf, then copy it to this dir.

2. `./run.sh`
3. enjoy!