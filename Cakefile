{exec, spawn} = require 'child_process'
fs = require 'fs'
log = console.log

CoffeeScript = require 'coffee-script'

task 'init', 'init', ->
  invoke 'build'

task 'test', 'test', ->
  # TODO
  log 'no tests yet...'

task 'build', 'build', (options) ->
  log '# building courier'
  # exec 'mkdir -p b/lib/math'
  exec 'coffee -c bin/courier.coffee', (error, stdout, stderr) ->
    log stdout
    
    log '# built courier'