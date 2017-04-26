import Vue from 'vue'
import Vuex from 'vuex'
import VueRouter from 'vue-router'
import App from './App.vue'
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
var Welcome = require('./components/Welcome.vue')
var Counter = require('./components/Counter.vue')
var UserInformation = require('./components/UserInformation.vue')
var UserManagement = require('./components/UserManagement.vue')
var Error = require('./components/Error.vue')
// const Foo = { template: '<div>foo</div>' }
// const Bar = { template: '<div>bar</div>' }
const routes = [
    // { path: '/foo', component: Foo },
    // { path: '/bar', component: Bar },
    { name: 'home', path: '/welcome', component: App ,
      children:[
        { name: 'welcome', path: '/welcome', component: Welcome },
        { name: 'counter', path: '/counter', component: Counter },
        { name: 'user-management', path: '/user-management', component: UserManagement
        },{ name: 'user-info', path: '/user/:id', component: UserInformation }
      ]
    },
    { name: 'error', path: '*', component: Error }

]

const router = new VueRouter({
    routes
})

new Vue({
  store,
  router: router,
  // el: '#app',
  // render: h => h(App)
}).$mount('#app');
