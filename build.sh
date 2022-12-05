#!/bin/bash
rm -rf ign/*
for i in butane/*.but; do
	BASENAME=$(basename -s .but $i)
	echo "build $BASENAME..."
	butane $i > ign/$BASENAME.ign
done
