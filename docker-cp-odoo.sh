docker exec o15 sh -c 'zip -r odoo.zip /usr/lib/python3/dist-packages/odoo'
docker cp o15:/odoo.zip ./odoo.zip
unzip odoo.zip
mv usr/lib/python3/dist-packages/odoo/ .
rm -r usr
rm odoo.zip