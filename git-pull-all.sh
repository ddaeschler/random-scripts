#!/bin/bash
# See: http://stackoverflow.com/questions/24352701/check-status-of-all-git-repositories-at-once

find . -name .git -execdir git rev-parse --show-toplevel \; -execdir git pull \;
