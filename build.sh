#!/bin/bash

if [ `hostname` = "wanderlust.local" ]; then
  echo "Building on wanderlust.local ..."
  ./Setup.lhs configure --user --prefix=/Users/arjun/local
  ./Setup.lhs build
  ./Setup.lhs haddock
  ./Setup.lhs install
elif [ `hostname` = "peabody" ]; then
  echo "Building on peabody ..."
  ./Setup.lhs configure --prefix=/pro/plt/ghc/6.8.3
  ./Setup.lhs build
  ./Setup.lhs install
else
  echo "ERROR: Don't know how to build on " `hostname`
fi
