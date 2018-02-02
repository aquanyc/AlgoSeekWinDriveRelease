## AlgoSeek Drive options file

All options governing AlgoSeek virtual drive are stored in config file 'algoseek.ini'

### algoseek.ini file structure

algoseek.ini file is INI file ( see https://en.wikipedia.org/wiki/INI_file for more info)
INI file consists of sections, and key=value pairs inside a section.

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