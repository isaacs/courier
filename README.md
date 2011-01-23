                              _____             
    ________________  ___________(_)____________
    _  ___/  __ \  / / /_  ___/_  /_  _ \_  ___/
    / /__ / /_/ / /_/ /_  /   _  / /  __/  /    
    \___/ \____/\__,_/ /_/    /_/  \___//_/     

npm packages in CoffeeScript - (package.coffee) -> (package.json)

# Motivation
  Compiling a package.coffee file to a package.json isn't as simple as it seems since CoffeeScript wraps objects in order to make them assignable statements. courier will love and hold you through the night. Oh and it will cleanup the generated JavaScript to keep npm happy ^w^

# Installation
    npm install courier
  
# Usage
Using courier couldn't be simpler.

1. Translate your package.json into CoffeeScript and move to package.coffee.
2. Run `courier` against your project.

You will now see package.json in the root of your project; ready to be installed or linked with `npm`.

Use the `-p` or `--print` flag for noisy output.