# foiarchive2csv
SQL scripts for generating CSV files of FOIArchive data.

# installation
Clone this repo.

# running a foiarchive2csv script
1. Connect to the FOIArchive PostgreSQL database via psql
2. Run the script using the \i command. For example:
```
~# \i entities.sql
\copy foiarchive.entities to `entities-foiarchive-202409.csv`
COPY 12785
```
3. Run gzip on the resulting file and upload to the external-shares drive.

## notes
* Version the CSV file by including date or version number in its file name.
* Use foiarchive2json if your query includes doc.body.
* Add additional SQL scripts as needed.


