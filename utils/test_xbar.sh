#!/bin/sh

make install_xbar
killall -9 xbar
open -a xbar
