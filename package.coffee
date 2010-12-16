{
  name: 'courier'
  description: 'npm packages in CoffeeScript - (package.coffee) -> (package.json)'
  
  keywords: ['courier']
  
  version: '0.1.0'
  
  author: 'Feisty Studios <courier@feistystudios.com> (http://feistystudios.com/)'
  
  licenses: [
    {
      type: 'FEISTY'
      url: 'http://github.com/feisty/license/LICENSE'
    }
  ]
  
  contributors: [
    'Nicholas Kinsey <nicholas.kinsey@feistystudios.com>'
  ]
  
  repository:
    type: 'git'
    url: 'http://github.com/feisty/cortex.git'
    private: 'git@github.com:feisty/cortex.git'
    web: 'http://github.com/feisty/cortex'
  
  bugs:
    mail: 'courier@feistystudios.com'
    web: 'http://github.com/feisty/courier/issues'
    
  directories:
    lib: './lib'
    doc: './doc'
  
  bin:
    courier: './bin/courier'
    
  main: 'courier'
  
  scripts:
    test: 'cake test'
    postinstall: 'cake init'
    
  dependencies:
    'coffee-script': '>= 0.9.6'
    
  engines:
    node: '>=0.2.5 <0.3.0'
}