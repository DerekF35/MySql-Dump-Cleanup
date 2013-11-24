# MySql-Dump-Cleanup
==================

Script to Cleanup MySql Dump files


### Current Cleanup Operations
- Remove DEFINER=`...`@`...` from MySql Dump Script


## Usage

To use, just call script in command line and indicate the file to clean as the first arguement.

...
    ruby MySql-Dump-Cleanup.rb "<path to file><filename>.sql"
...

Example:
...
    ruby MySql-Dump-Cleanup.rb "C:\Users\Derek\Desktop\localhost.sql"
...

## Output

Script will create a .sql file with the suffix "_clean" added before the .sql.
