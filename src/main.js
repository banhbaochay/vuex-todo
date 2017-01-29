import Vue from 'vue'
import App from './App.vue'

require('./sass/app.sass')

new Vue({
  el: '#app',
  render: h => h(App)
})
