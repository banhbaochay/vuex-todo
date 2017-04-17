import Vue from 'vue'
import Vuex from 'vuex'
import VueRouter from 'vue-router'
// import App from './App.vue'
// import store from './vuex/store'
// var store = require('./vuex/store-commonjs')
Vue.use(Vuex)
var store = require('./vuex/store-coffee.coffee')
// import Hello from './components/Hello.vue'
// var HelloCommonJS = require('./components/Hello-commonjs.vue')
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

// const Foo = { template: '<div>foo</div>' }
// const Bar = { template: '<div>bar</div>' }
// const routes = [
//     { path: '/foo', component: Foo },
//     { path: '/bar', component: Bar }
// ]

var Account = require('./components/Account.vue')
var Address = require('./components/Address.vue')
var Info = require('./components/GetInfo.vue')

const routes = [
  { path: '/account', component: Account },
  { path: '/address', component: Address },
  { path: '/info', component: Info },
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
