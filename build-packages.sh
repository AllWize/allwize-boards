#!/bin/bash

for VERSION in `ls -l`
do
    if test -d $VERSION
    then
        if [ "$VERSION" != "dummy" ]; then

            echo "Building package for $VERSION"
            zip -qrTy9o allwize-boards-$VERSION.zip $VERSION
            checksum=`sha256sum allwize-boards-$VERSION.zip  | cut -f 1 -d ' '`
            size=`stat -c "%s" allwize-boards-$VERSION.zip `
            echo "  \"archiveFileName\": \"allwize-boards-$VERSION.zip\""
            echo "  \"checksum\": \"SHA-256:$checksum\"" 
            echo "  \"size\": \"$size\"" 
        
        fi
    fi
done


