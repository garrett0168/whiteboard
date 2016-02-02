kill `lsof -t -i:9292`
nohup /bin/su - root -c 'cd /srv/www/htdocs/production/wboard;puma 2>&1' &

