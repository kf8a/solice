solice
========

Rest easy knowing that your sun photometer is still sending data. 

Scrapes the http://aeronet.gsfc.nasa.gov/new_web/Data_Transfer_Logs/K7/last_1440_minutes.html page to see if 
the sunphotometer number is listed.

Usage
-----
To use simply pass the number of your sun photometer to solice and it will exit successfuly if instrumetn
54 is listed in the report, otherwise it will return with an error.

    ruby solice 54
