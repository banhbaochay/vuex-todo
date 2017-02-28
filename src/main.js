import Vue from 'vue'
import VueRouter from 'vue-router'
import App from './App.vue'
// import store from './vuex/store'
// var store = require('./vuex/store-commonjs')
var store = require('./vuex/store-coffee.coffee')
import Hello from './components/Hello.vue'
var HelloCommonJS = require('./components/Hello-commonjs.vue')
var HelloCoffee = require('./components/Hello-coffee.vue')

require('./sass/app.sass')
// require('./coffee/app.coffee')

// Load all coffeescripts in coffee folder
var coffees = require.context('./coffee', true, /\.coffee$/)
var names = [];
coffees.keys().forEach(k => {
  require('./coffee' + k.substr(1))
})

Vue.use(VueRouter)

const Foo = { template: '<div>foo</div>' }
const Bar = { template: '<div>bar</div>' }
const routes = [
    { path: '/foo', component: Foo },
    { path: '/bar', component: Bar }
]
const router = new VueRouter({
    routes
})

new Vue({
  store,
  router: router,
  el: '#hello-coffee',
  render: h => h(HelloCoffee)
})
