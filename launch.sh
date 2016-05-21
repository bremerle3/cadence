#!/bin/bash 
#launch virtuoso and a shell w/ environment loaded

#Load the cadence environment
source .bashrc.cadence
#Launch virtuoso in the background
virtuoso &
#Launch another bash with the current environment in interactive mode
bash --rcfile .bashrc.cadence -i

#Do the same as the previous 3 lines, but do it in XTerm
#xterm -e bash --rcfile .bashrc.cadence -ci "virtuoso & bash --rcfile .bashrc.cadence -i"

