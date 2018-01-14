#!/bin/sh
echo "applying patches"
find patches -type f | while read patchfile;do
  patch -p0 < $patchfile
done

./scripts/feeds update custom
echo "run './scripts/feeds install <pkg>' to prepare a new package"

