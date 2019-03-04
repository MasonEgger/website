#!/bin/bash
mkdir /tmp/output
hugo -s my_site -d /tmp/output
python3 -m http.server --directory /tmp/output
