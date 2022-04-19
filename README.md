# A CF2021 container and a MariaDB container

Installation:

```
# start from your `cf2021_and_mariadb` directory.

$ pwd
/mnt/c/src/containers/cf2021_and_mariadb/


$ cd docker


$ # ./rebuildContainers.sh [cf admin password] [DB root password] [DB user password]
$ # EG:


$ ./rebuildContainers.sh 12345 123 1234


# [let it run to completion]
# ⠿ Network cf2021_and_mariadb_backend       Created          0.0s
# ⠿ Volume "cf2021_and_mariadb_mariaDbData"  Created          0.0s
# ⠿ Container cf2021_and_mariadb-cf2021-1     Started          2.0s
# ⠿ Container cf2021_and_mariadb-mariadb-1   Started          1.9s


$ docker exec --interactive --tty cf2021_and_mariadb-cf2021-1 /bin/bash


/var/www# box install


# [let it run to completion]
#  √ | Installing ALL dependencies
#    | √ | Installing package [forgebox:testbox@^4.2.1+400]
#    |   | √ | Installing package [forgebox:cbstreams@^1.5.0]
#    |   | √ | Installing package [forgebox:mockdatacfc@^3.3.0+22]


/var/www# box testbox run


# [let it run to completion]
# =================================================================================
# Final Stats
# =================================================================================
#  
# [Passed: 2] [Failed: 0] [Errors: 0] [Skipped: 0] [Bundles/Suites/Specs: 2/2/2]
#  
# TestBox:        v4.5.0+5
# Duration:       133 ms
# CFML Engine:    Lucee 5.3.8.206
# Labels:         None
