#!/bin/sh

rm Marlin/Marlin/Configuration.h && ln -s Configuration.h Marlin/Marlin/Configuration.h
rm Marlin/Marlin/Configuration_adv.h && ln -s Configuration.h Marlin/Marlin/Configuration_adv.h
rm -f Marlin/Marlin/src/pins/pins_custom.h && ln -s src/pins/pins_custom.h Marlin/Marlin/src/pins/pins_custom.h
