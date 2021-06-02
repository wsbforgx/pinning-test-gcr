#!/bin/bash -i

atm-bb bump-version $(pwd)/src/atomist/main.clj
atm-bb unpin $(pwd)/docker/Dockerfile
git commit -am 'bump'
git push origin main

