#!/bin/bash

#preprocesando los datos
time bash /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/scripts/bash pre_procesamiento_1_PM.sh
time bash /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/scripts/process_radtags_PM.sh


#procesando la informacion modo reference
time bash /home/jorge/POPULATIONS_GENOMICS/PstI-MspI/scripts/refmap_PM.sh

