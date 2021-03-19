module.exports = {
  filenameHashing: false, 
  productionSourceMap: false, 
  publicPath: './',
  pluginOptions: {
    quasar: {
      importStrategy: 'kebab',
      rtlSupport: false
    }
  },
  transpileDependencies: [
    'quasar'
  ]
}
