# MariaDB-spatial-UDF

This code is original work of Albert Rovira (github user: krandalf75) 


The code was last updated 8 years ago and was only considering MySQL as a database server due to the fact that the ORACLE did not buy MySQL at the time and MariaDB did not existed yet. Therefore I have taken the liberty of hard-forking the code to make a clean start. 

Albert Rovira has published this code under GPL so I follow the same license for the code and all rights are still belong to him. 

## How to use the code

Please, first do read: https://github.com/krandalf75/MySQL-Spatial-UDF/blob/master/README.md

### My addition
The code is updated for
- MariaDB 10.5.x
- Proj 7.0.0
- GEOS 3.8.0
- I did not test on Windows

### Compile, install and test
Below first line will prepare the Makefile and the other two will install it.  
```
$ cmake CMakeList.txt
$ make
$ make install
$ mysql
```

Before any further you need to check the plugin directory. Above code has just used mariadb-config for detecting the plugin directory and copy the compiled library to that directory. But if you have setup a binary version of MariaDB (instead of compling yourself) default plugin directory might be different. Therefore, first learn the plugin directory with:

```
$ mariadb-config --plugindir
```
which returns /usr/lib/x86_64-linux-gnu/libmariadb3/plugin on Ubuntu 20.04 with MariaDB 10.5.7. To set this plugin directory you need to find and edit the default my.cnf config file with

```
$ locate my.cnf  # return /etc/mysql/my.cnf
$ sudo nano /etc/mysql/my.cnf
```

and add this to the end of the config file

```
[mysqld]
plugin_dir=/usr/lib/x86_64-linux-gnu/libmariadb3/plugin
```

Now, save, exit and restart mariadb server

```
$ sudo service mariadb restart
```

Thereafter, you are ready to install the new functions via
```
mysql> source MariaDBSpatialUDF.sql
```


