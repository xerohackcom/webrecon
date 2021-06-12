#!/usr/bin/env bash

echo "autonuce.sh"

mkdir nuce

nuclei -l subs -t cnvd/ -o nuce/cnvd
nuclei -l subs -t cves/ -o nuce/cves
nuclei -l subs -t default-logins/ -o nuce/default-logins
nuclei -l subs -t dns/ -o nuce/dns
nuclei -l subs -t exposed-panels/ -o nuce/exposed-panels
nuclei -l subs -t exposures/ -o nuce/exposures
nuclei -l subs -t fuzzing/ -o nuce/fuzzing
nuclei -l subs -t iot/ -o nuce/iot
nuclei -l subs -t miscellaneous/ -o nuce/miscellaneous
nuclei -l subs -t misconfigurations/ -o nuce/misconfigurations
nuclei -l subs -t network/ -o nuce/network
nuclei -l subs -t takeovers/ -o nuce/takeovers
nuclei -l subs -t technologies/ -o nuce/technologies
nuclei -l subs -t vulnerabilities/ -o nuce/vulnerabilities

echo "Printing Nuclei Findings..."

cat nuce/cnvd
cat nuce/cves
cat nuce/default-logins
cat nuce/dns
cat nuce/exposed-panels
cat nuce/exposures
cat nuce/fuzzing
cat nuce/iot
cat nuce/miscellaneous
cat nuce/misconfigurations
cat nuce/network
cat nuce/takeovers
cat nuce/technologies
cat nuce/vulnerabilities
