Vue = require('vue')
Vuex = require('vuex')

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
    setMessage: (store, message) ->
      store.commit('SET_MESSAGE', message)
  },
  getters: {
    message: (state) ->
      state.message
  }
)