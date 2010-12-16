                        _        
     _______  __ ______(_)__ ____
    / __/ _ \/ // / __/ / -_) __/
    \__/\___/\_,_/_/ /_/\__/_/   

npm packages in CoffeeScript - (package.coffee) -> (package.json)

# Motivation
  Compiling a package.coffee file to a package.json isn't as simple as it seems since CoffeeScript wraps objects in order to make them assignable statements. courier will love and hold you through the night. Oh and it will cleanup the generated JavaScript to keep npm happy ^w^

# Installation
    npm install courier
  
# Usage
    cd facebook_killer # or your current project with a package.coffee
    courier
    
    # fin. (you can now install/publish your npm package using the generated package.json)

# Contributing
    cd ~
    git clone YOUR_FORK
    
    # make changes
    
    # build    
    cake build
    npm install .
    
    # test on a project
    cd MY_PROJECT
    courier
    
    # if it works then commit, push and submit a pull request

# TODO
  see TODO.md