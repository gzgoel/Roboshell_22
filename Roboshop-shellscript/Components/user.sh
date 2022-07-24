# curl -sL https://rpm.nodesource.com/setup_lts.x | bash
# yum install nodejs -y
curl -s -L -o /tmp/user.zip "https://github.com/roboshop-devops-project/user/archive/main.zip"
cd /home/roboshop
unzip /tmp/user.zip
mv user-main user
cd /home/roboshop/user
npm install


mv /home/roboshop/user/systemd.service /etc/systemd/system/user.service
systemctl daemon-reload
systemctl start user
systemctl enable user