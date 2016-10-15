#!/bin/sh

rm -f fedora.vbpubk fedora.vbprivk fedora.keyblock

openssl genrsa -F4 -out fedora_2048.pem 2048

## Create self-signed certificate
openssl req -batch -new -x509 -key fedora_2048.pem -out fedora_2048.crt

## Generate pre-processed RSA public key
dumpRSAPublicKey -cert fedora_2048.crt > fedora_2048.keyb

## Wrap the public key
vbutil_key      --pack fedora.vbpubk          --key fedora_2048.keyb --algorithm 4 --version 1

## Wrap the private key
vbutil_key      --pack fedora.vbprivk         --key fedora_2048.pem  --algorithm 4

## Remove intermediate files
rm -f fedora_2048.{pem,crt,keyb}

vbutil_keyblock --pack fedora.keyblock --datapubkey fedora.vbpubk  --flags 15
