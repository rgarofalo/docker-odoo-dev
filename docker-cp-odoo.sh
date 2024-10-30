docker exec odoo sh -c 'zip -r odoo.zip /usr/lib/python3/dist-packages/odoo'
docker cp odoo:/odoo.zip ./odoo.zip
Expand-Archive -LiteralPath odoo.zip -Force
mv usr/lib/python3/dist-packages/odoo/ .
rm -r usr
rm odoo.zip