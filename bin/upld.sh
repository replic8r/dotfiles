#!/bin/bash
lftp -c "open -u user,pass ip; put -O /home/www/mydir/ $1"
