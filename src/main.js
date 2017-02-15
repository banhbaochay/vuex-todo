import Vue from 'vue'
import App from './App.vue'
// import store from './vuex/store'
var store = require('./vuex/store-commonjs')
import Hello from './components/Hello.vue'
var HelloCommonJS = require('./components/Hello-commonjs.vue')

require('./sass/app.sass')
// require('./coffee/app.coffee')

// Load all coffeescripts in coffee folder
var coffees = require.context('./coffee', true, /\.coffee$/)
var names = [];
coffees.keys().forEach(k => {
  require('./coffee' + k.substr(1))
})

new Vue({
  store,
  el: '#hello',
  render: h => h(HelloCommonJS)
})
