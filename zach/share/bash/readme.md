Share bash
==============================

1. Temp remove bash and sh for BASH (Shellshock) Vulnerability
    check it by following command line

        $ ./shellshock_test.sh

2. Fix it

    Ubuntu: 
        $ apt-get update
        $ apt-get -y install --only-upgrade bash

3. https://github.com/hannob/bashcheck
