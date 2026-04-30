FROM alpine:3.22

RUN apk add --no-cache rclone fuse3

RUN mkdir -p /root/gdrive

ENTRYPOINT ["rclone", "mount", "gdrive:", "/root/gdrive", "--vfs-cache-mode", "full", "--vfs-read-chunk-size", "128M", "--dir-cache-time", "5m", "--allow-other", "--allow-non-empty"]