#!/bin/sh
find . -type f -exec sh -c "file -ib '{}' | grep -q 'x-mach-binary; charset=binary'" \; -print | sed 's/ /\\ /g' | xargs -I {} -n 1 /Users/cameron/ents/extract-helper.sh '{}'
