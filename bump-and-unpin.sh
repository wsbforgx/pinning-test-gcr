#!/bin/bash

atm-bb gh --slenderslack close-prs --slug slenderslack/pinning-test-gcr
bump_version.clj src/atomist/main.clj
unpin.clj docker/Dockerfile
git commit -am 'bump'
git push origin main

