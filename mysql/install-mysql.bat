:: 在D:\tools\mysql-8.0.17-winx64目录下建立install-mysql.bat文件
:: 用管理员权限打开此文件
:: 安装绿色版mysql
:: install-mysql.bat Begin
net stop cfdb
rd D:\tools\mysql-8.0.17-winx64\data /s /q
set MYSQLD="D:\tools\mysql-8.0.17-winx64\bin\mysqld.exe"
%MYSQLD% remove cfdb
%MYSQLD% install cfdb
%MYSQLD% --initialize
net start cfdb
netstat -ano | findstr 3306
pause
:: install-mysql.bat End

:: 连接mysql
REM mysql -uroot -p
:: 密码存储文件 D:\tools\mysql-8.0.17-winx64\data\DESKTOP-7TDI7LV.err

:: 修改密码sql语句
REM alter user 'root'@'localhost' identified by '123456';
REM flush privileges;
