# AlgoSeek Drive configuration guide

## AlgoSeek Key file

AlgoSeek drive stores csv data inside AWS S3 storage. 

Whenever a csv file is downloaded or opened a request is forwarded to AWS storage.

AWS requires a key pair to access AWS S3 resources and download data.

These keys are normally requested by AlgoSeek from AWS and then delivered to a AlgoSeek drive user via key.cfg file.

AlgoSeek drive stores these keys in key.cfg file.

### key.cfg file structure

key.cfg file has the following structure

\[AlgoSeek\]

aws_access=\<AWS_ACCESS_KEY\>

aws_secret=\<AWS_SECRET_KEY\>

e.g.

\[AlgoSeek\]

aws_access=AKIAXXXXXXXXXXXXXXXXXX

aws_secret=yyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy

key.cfg file is read on every mount (connect) of AlgoSeek drive.
Whenever key.cfg is changed, AlgoSeek Drive should be restarted in order changes to take place.

## AlgoSeek Drive options file

Options governing AlgoSeek virtual drive are stored in config file 'algoseek.ini'

### algoseek.ini file structure

algoseek.ini file is INI file ( see https://en.wikipedia.org/wiki/INI_file for more info)

INI file consists of sections, and key=value pairs inside a section.

Note: option names are case-insensitive.

algoseek.ini file is read on every mount (connect) of AlgoSeek drive. 
Whenever algoseek.ini is changed, AlgoSeek Drive should be restarted in order changes to take place.

### AlgoSeek section

The following options are available inside of \[AlgoSeek\] section

#### folders
Path to .json file containing virtual folders structure. (For advanced users only)

Default: default.json

#### mountpoint
Path (or a Windows drive) where drive will be mounted to. e.g.

\[AlgoSeek\]

\# Windows

mountpoint=Z: 

\# Linux

mountpoint=/mnt/algoseek 

Default: S: for Windows, ./AlgoSeekDrive for Linux

#### uncompression
Toggle compression of csv data files. 

Possible values: on/off

Default: on

#### cache_update_sec
Period of seconds for cache index DB process to occur to load newly added index data (new csv files) from S3 storage.

Default: 3000 

### Logging section

This section contains options to alter drive service logging.

#### level
Sets logging level

Values: 10 or 20. 10 = 'debug level', 20 = 'info level'

Default: 20

#### max_size_mb
The max size of the log in MB. Log is truncated after the size is reached.

Default: 3
