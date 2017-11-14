#!/bin/bash

#preprocesando los datos
time bash pre_procesamiento_1_PM.sh
time bash pre_procesamiento_2_PM.sh

#procesando la informacion modo reference
time bash wrapper_2_reference.sh
time bash step_7_PM.sh

