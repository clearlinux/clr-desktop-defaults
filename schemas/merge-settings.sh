#!/bin/sh

OUTPUT_FILE="10_gnome_settings.gschema.override"
TMPFILE=$(mktemp XXXX.tmp)

echo creating ${OUTPUT_FILE}
for override in *.gschema.override; do
    cat ${override} >> ${TMPFILE}
    echo >> ${TMPFILE}
done

mv ${TMPFILE} ${OUTPUT_FILE}

echo done
