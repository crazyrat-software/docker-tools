#!/bin/bash

echo "Container info"

echo "[-] nikto"
nikto -Version

echo "[-] skipfish"
skipfish

echo "[-] wpscan"
wpscan --version