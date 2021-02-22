
```
# npm 으로 vue-cli 설치 
npm install -g @vue/cli 

#global addon <vue init>
npm install -g @vue/cli-init 

# project Create 
vue init webpack frontend


```

```js
// Template for index.html
index: path.resolve(__dirname, '../dist/index.html'),

// Paths
assetsRoot: path.resolve(__dirname, '../dist'),
assetsSubDirectory: 'static',
assetsPublicPath: '/',
```

```js
// Template for index.html
index: path.resolve(__dirname, '../../src/main/resources/static/index.html'),

// Paths
assetsRoot: path.resolve(__dirname, '../../src/main/resources/static'),
assetsSubDirectory: 'static',
assetsPublicPath: '/',
```