#!/bin/bash

# directory  = copy both directory and content
# directory/ = copy only content

# Backup

## Push data folder to external HD

### Test

rsync -anv --no-whole-file --delete --exclude '*.DS_Store' \
  ./data-raw/data/ \
  /Volumes/Seagate/language-data/phd-project/coretta2018itapol/data

### Run

rsync -avz --no-whole-file --delete --exclude '*.DS_Store' \
  ./data-raw/data/ \
  /Volumes/Seagate/language-data/phd-project/coretta2018itapol/data

## Pull data folder from external HD

### Test

rsync -anv --no-whole-file --delete --exclude '*.DS_Store' \
  /Volumes/Seagate/language-data/phd-project/coretta2018itapol/data
  ./data-raw/data/ \

### Run

rsync -avz --no-whole-file --delete --exclude '*.DS_Store' \
  /Volumes/Seagate/language-data/phd-project/coretta2018itapol/data
  ./data-raw/data/ \
