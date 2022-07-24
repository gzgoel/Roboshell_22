curl -s -L -o /etc/yum.repos.d/mysql.repo https://raw.githubusercontent.com/roboshop-devops-project/mysql/main/mysql.repo
yum install mysql-community-server -y
systemctl enable mysqld
systemctl start mysqld
SQL_temp_password = $(grep 'temporary password' /var/log/mysqld.log | awk '{print $NF}')
# grep temp /var/log/mysqld.log