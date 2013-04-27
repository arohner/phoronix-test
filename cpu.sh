#!/bin/bash

# sudo apt-get install build-essential php5-cli mesa-utils unzip

curl -L -o phoronix.tar.gz http://www.phoronix-test-suite.com/download.php?file=phoronix-test-suite-4.4.1
tar -zxf phoronix.tar.gz
mkdir -p ~/.phoronix-test-suite/
cp user-config.xml ~/.phoronix-test-suite/
cd phoronix-test-suite
yes | ./phoronix-test-suite install pts/scimark2
./phoronix-test-suite batch-run pts/scimark2
