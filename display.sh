#! /bin/bash

./size123>size123.log
./count123>count123.log
paste size123.log count123.log
rm -f size123.log
rm -f count123.log