#!/bin/bash

echo "Checking folder sizes in current directory..."
echo ""

du -sh ./* 2>/dev/null | sort -hr

echo ""
echo "Done."
