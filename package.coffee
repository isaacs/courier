name: 'courier'

description: 'npm packages in CoffeeScript - (package.coffee) -> (package.json)'

keywords: ['courier']

version: '0.1.1'

author: 'Feisty Studios <courier@feistystudios.com> (http://feistystudios.com/)'

licenses: [
  type: 'FEISTY'
  url: 'http://github.com/feisty/license/raw/master/LICENSE'
]

contributors: ['Nicholas Kinsey <nicholas.kinsey@feistystudios.com>']

repository:
  type: 'git'
  url: 'http://github.com/feisty/courier.git'
  private: 'git@github.com:feisty/courier.git'
  web: 'http://github.com/feisty/courier'

bugs:
  mail: 'courier@feistystudios.com'
  web: 'http://github.com/feisty/courier/issues'

bin:
  courier: './bin/courier.coffee'
  
main: 'courier'
  
dependencies:
  'coffee-script': '>= 1.0.0'
  
engines:
  node: '*'
  npm: '>=0.3.0'
