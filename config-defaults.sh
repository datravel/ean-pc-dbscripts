MYSQL_DIR=$(dirname $(which mysql))/
# for simplicity I added the MYSQL bin path to the Windows 
# path environment variable, for Windows set it to ""
#MYSQL_DIR=""
# after MySQL 5.6+ we depend on the mysql_config_editor to
# save the connections credentials (host, user, password)
# then we can use: --login-path={name of your connection}
MYSQL_LOGINPATH=local

MYSQL_USER=eanuser
MYSQL_PASS=Passw@rd1
MYSQL_HOST=localhost
MYSQL_DB=eanprod
MYSQL_DB_EXTRAS=eanextras
# home directory of the user (in our case "eanuser")
HOME_DIR=/home/eanuser
# protocol TCP All, SOCKET Unix only, PIPE Windows only, MEMORY Windows only
MYSQL_PROTOCOL=SOCKET
