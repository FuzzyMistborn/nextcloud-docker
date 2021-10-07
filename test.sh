#!/bin/bash

echo ::set-output name=VERSION::${GITHUB_REF/refs\/tags\//} 

echo $Version
