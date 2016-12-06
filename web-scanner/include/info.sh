#!/bin/bash

echo "Container info"

echo "[-] nikto"
nikto -Version

echo "[-] skipfish"
skipfish

echo "[-] WhatWeb"
whatweb --version

echo "[-] wpscan"
wpscan.rb --version