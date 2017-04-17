Vue = require('vue')
Vuex = require('vuex')

counter = require('./modules/counter.coffee')
info = require('./modules/store-get-info.coffee')

Vue.use(Vuex)

module.exports = new Vuex.Store(
  state: {
    message: 'Welcome to VUEX Coffee'
  },
  mutations: {
    SET_MESSAGE: (state, message) ->
      state.message = message
  },
  actions: {
    setMessage: ({commit}, message) ->
      commit('SET_MESSAGE', message)
  },
  getters: {
    message: (state) ->
      state.message
  },
  modules: {
    counter,
    info
  }
)
