@echo off
docker build -t bwip-js .
docker save bwip-js -o bwip-js.tar