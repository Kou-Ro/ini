#!/bin/bash

if [[ "${#}" -lt 2 ]]; then
  echo "Missing argument" 1>&2
elif [[ ! -e "${1}" ]]; then
  echo "'${1}': No such file or directory" 1>&2
elif [[ ! -f "${1}" ]]; then
  echo "'${1}': Is a directory" 1>&2
elif [[ ! -r "${1}" ]]; then
  echo "'${1}': Can not access" 1>&2
elif [[ "${#}" -ge 3 && ! -w "${1}" ]]; then
  echo "'${1}': Can not write" 1>&2
else
  if [[ "${#}" -lt 3 ]]; then
    value=""
    while read line;do

    done < "${1}"
  fi
fi

