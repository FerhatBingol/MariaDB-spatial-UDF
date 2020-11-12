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

### Compile and install
$ cmake CMakeList.txt
$ make
$ make install
$ mysql
mysql> use <DATABASENAME>;
mysql> source MariaDBSpatialUDF.sql
  
### Testing
$ mysql
mysql> source sql/tests.sql
