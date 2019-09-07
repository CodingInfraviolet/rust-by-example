#!/bin/bash

rm -rf Gemfile.lock
bundle exec middleman server '--watcher-force-polling'
rm -rf Gemfile.lock
