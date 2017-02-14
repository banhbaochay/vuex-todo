import Vue from 'vue'
import App from './App.vue'
import store from './vuex/store'
import Hello from './components/Hello.vue'

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
  render: h => h(Hello)
  // components: { Hello }
})
