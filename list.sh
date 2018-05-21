#!/bin/bash
. $MODEL_LOADER_HOME/bin/env.sh


if [ $# != 2 ] ; then
echo "list userName/password name_directory"
echo ""
echo "-userName/password       UTM system's userName"
echo ""
echo "-name_directory          all model's names will be saved in the directory, and the file name is list.txt"
exit 1;
fi

$JAVA_HOME/bin/java -cp $classpath -DMODEL_LOADER_HOME=$MODEL_LOADER_HOME -Djboss.ejb.client.properties.file.path=$MODEL_LOADER_HOME/conf/jboss-ejb-client.properties com.hp.ngoss.tdl.modelloader.Main list $1 "$2"

