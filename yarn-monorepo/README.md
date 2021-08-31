# Yarn Workspaces Template
 

## How to :

```
mkdir my-repo & cd my-repo
yarn init
yarn create react-app frontend
```  


keep consistent naming in workspaces:
go to `frontend` directory,
package.json > set name to `@my-repo/frontend`  


create default directory for all future packages :
```
mkdir packages & cd packages 
mkdir config & cd config & yarn init 
```
(remember naming convention: `@my-repo/config`)  


```
mkdir backend & cd backend & yarn init
yarn add express
```
open package.json and add `"my-repo/config": "1.0.0" to`
its dependencies
add the start command to the scripts in package.json :
```
  "scripts": {
    "start": "node index.js"
  }
```
create index.js file :
```
  const express = require('express');
  const path = require('path');
  const CONFIG = require('@my-repo/config');

  const app = express();

  // TODO : Write API

  app.get('/', function(req, res) {
    res.sendFile(path.join(__dirname, '../frontend/build/index.html'));
  )});

  app.use(express.static(path.join(__dirname, '../frontend/build')));

  app.listen(CONFIG.PORT, () => console.log(`Listening on ${CONFIG.PORT}`));
```  


Go to root directory > main package.json
```
"private": true,
"workspaces": [
  "frontend",
  "backend",
  "packages/*"
],
"scripts": {
    "start": "yarn --cwd backend start",
    "build": "yarn --cwd frontend build"
}

yarn   // to install all dependencies
yarn build
yarn start  
```

Source : https://medium.com/swlh/yarn-workspaces-monorepo-beginners-guide-ed89de47aa25

