#!/bin/bash
rsync -av --exclude=".git" /home/mgamarra/desenv/git/monorepo-utils/spread/brb/node-arquitetura/ nodejs-arquitetura/
rsync -av --exclude=".git" /home/mgamarra/desenv/git/monorepo-utils/spread/brb/doc/ nodejs-arquitetura/
\cp nodejs-arquitetura/PRE-README.md nodejs-arquitetura/README.md