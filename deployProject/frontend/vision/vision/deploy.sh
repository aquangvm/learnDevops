mv vision project/
adduser vision
chown vision. project/vision
chmod 750 project/vison



cd project/vision
su vision
npm install


exit
## triển khai bằng service
vi /lib/systemd/system/vision.service
    [Service]
    Type=simple
    User=vision
    Restart=on-failure
    WorkingDirectory=/home/quang/project/vision/
    ExecStart=npm run start -- --port=3000

systemctl daemon-reload
systemctl start vision
systemctl status vision