#!/usr/bin/env coffee

VERSION = '0.1.0'

fs            = require 'fs'
path          = require 'path'
{spawn, exec} = require 'child_process'


log = console.log

CoffeeScript = require 'coffee-script'
{OptionParser} = require 'coffee-script/lib/optparse'

usage = '''
  Usage:
    courier [OPTIONS] [PATH_TO_APP = "."]
'''

switches = [
  ['-h', '--help', 'Displays this snazzy help message']
  
  ['-v', '--version', 'Display courier version']
  
  ['-p', '--print', 'Prints the result to stdout.']
  ['-s', '--silent', 'Shh. Do not print anything to stdout.']
  
  # ['-w', '--watch', 'Watches and recompiles on changes.']
  
  # ['-i', '--in [DIR]', 'Directory to get package.coffee from.']
  # ['-o', '--out [DIR]', 'Directory to put package.json in.']
]

parser = new OptionParser switches, usage
options = parser.parse process.argv[2...]
args = options.arguments
delete options.arguments

if options.help or process.argv.length is 0
  log parser.help()
  process.exit 0

if options.version
  log VERSION
  process.exit 0

release = (options) ->
  fs.readFile 'package.coffee', (error, data) ->
    throw error if error

    coffee = data.toString()
    js = CoffeeScript.compile('return '+coffee)
    json = JSON.stringify eval(js), null, 2

    fs.writeFile 'package.json', json, ->
      log json if options.print

if args.length <= 0
  args.push '.'

if args.length > 0
  release options
