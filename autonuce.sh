#!/usr/bin/env bash

echo "autonuce.sh | results will be saved in /nuce/"

mkdir nuce

echo ":: run scanner :: cnvd ::"
nuclei -l subs -t cnvd/ -o nuce/cnvd

echo ":: run scanner :: cves ::"
nuclei -l subs -t cves/ -o nuce/cves

echo ":: run scanner :: default-logins ::"
nuclei -l subs -t default-logins/ -o nuce/default-logins

echo ":: run scanner :: dns ::"
nuclei -l subs -t dns/ -o nuce/dns

echo ":: run scanner :: exposed-panels ::"
nuclei -l subs -t exposed-panels/ -o nuce/exposed-panels

echo ":: run scanner :: exposures ::"
nuclei -l subs -t exposures/ -o nuce/exposures

echo ":: run scanner :: fuzzing ::"
nuclei -l subs -t fuzzing/ -o nuce/fuzzing

echo ":: run scanner :: iot ::"
nuclei -l subs -t iot/ -o nuce/iot

echo ":: run scanner :: misc ::"
nuclei -l subs -t miscellaneous/ -o nuce/miscellaneous

echo ":: run scanner :: misconfigs ::"
nuclei -l subs -t misconfigurations/ -o nuce/misconfigurations

echo ":: run scanner :: network ::"
nuclei -l subs -t network/ -o nuce/network

echo ":: run scanner :: subdomain takeovers ::"
nuclei -l subs -t takeovers/ -o nuce/takeovers

echo ":: run scanner :: technologies ::"
nuclei -l subs -t technologies/ -o nuce/technologies

echo ":: run scanner :: vulnerabilities ::"
nuclei -l subs -t vulnerabilities/ -o nuce/vulnerabilities

echo "Printing Nuclei Findings..."

cat nuce/cnvd && cat nuce/cves && cat nuce/default-logins && cat nuce/dns && cat nuce/exposed-panels && cat nuce/exposures && cat nuce/fuzzing && cat nuce/iot && cat nuce/miscellaneous && cat nuce/misconfigurations && cat nuce/network && cat nuce/takeovers && cat nuce/technologies && cat nuce/vulnerabilities
