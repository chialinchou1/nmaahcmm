#!/usr/bin/env bash
#this script creates a simple archival information package in which the data objects are placed into a directory called 
#video files and the metadata files (or whatever they are called in OAIS) are placed into a directory called metadata, and 
#both of these directories are stored in a directory based on the file name of the input file.
 
_writemetadata(){
    DESCRIPTIVE="${METADATAFILES}/description.txt"
    if [ ! -f "${DESCRIPTIVE}" ] ; then
        touch "${DESCRIPTIVE}"
    fi
    KEY="${1}"
    VALUE="${2}"
    # need to add yaml style escaping
    echo "${KEY}: ${VALUE}" >> "${DESCRIPTIVE}"
}