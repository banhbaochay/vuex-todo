/**
 * Created by dung on 14/02/2017.
 */
var Vue = require('vue')
var Vuex = require('vuex')

Vue.use(Vuex)

module.exports = new Vuex.Store({
  state: {
    message: 'Welcome to VUEX CommonJS syntax'
  },
  mutations: {
    SET_MESSAGE: function (state, message) {
      state.message = message;
    }
  },
  actions: {
    setMessage: function (store, message) {
      store.commit('SET_MESSAGE', message);
    }
  },
  getters: {
    message(state) {
      return state.message;
    }
  }
})
