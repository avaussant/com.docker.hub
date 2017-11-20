#!/bin/bash

configPath="${PROM2TEAMS_CONFIGPATH}"
defaultConfigPath="/prom2teams.ini"

if [ "$configPath" == "$defaultConfigPath" ]; then
        perl -p -i -e 's/\$\{([^}]+)\}/defined $ENV{$1} ? $ENV{$1} : $&/eg' $configPath
        rm -f $defaultjConfigPath.bak
fi

prom2teams --configpath $configPath --loglevel ${PROM2TEAMS_LOGLEVEL}
