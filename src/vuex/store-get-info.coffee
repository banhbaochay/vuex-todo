Vue = require('vue')
Vuex = require('vuex')


Vue.use(Vuex)

module.exports = new Vuex.Store(
  state: {
    account: '',
    address: '',
  },
  mutations: {
    SET_ACCOUNT: (state, account) ->
      state.account = account
    SET_ADDRESS: (state, address) ->
      state.address = address
  },
  actions: {
    setAccount: ({commit}, account) ->
      commit('SET_ACCOUNT', message)
    setAddress: ({commit}, address) ->
      commit('SET_ADDRESS', address)
  },
  getters: {
    account: (state) ->
      state.account
    address: (state) ->
      state.address
  }
)
