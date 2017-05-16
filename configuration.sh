#!/bin/sh
echo '{"Parameters":{' > configuration.json
a=`cat env`
b=`echo $a | sed -e "s/=/\":\"/g" | sed -e "s/ /\",\"/g"`
echo "\"$b\"" >> configuration.json
echo '}}' >> configuration.json
