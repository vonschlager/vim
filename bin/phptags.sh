#!/bin/sh
ctags-exuberant -R -h ".php" --exclude=".git" --tag-relative=yes --languages=php
