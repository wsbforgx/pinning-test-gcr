#!/bin/bash -i

atm-bb bump-version src/atomist/main.clj
atm-bb unpin docker/Dockerfile
git commit -am 'bump'
git push origin main

