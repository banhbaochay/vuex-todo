state =
  users: [{"account":"abc","address":"Ha Noi"},{"account":"test","address":"Da Nang"},{"account":"test124","address":"Ho Chi Minh"}],
  account:'',
  address:'',

mutations =
  SET_ACCOUNT: (state, account) ->
    state.account = account
  SET_ADDRESS: (state, address) ->
    state.address = address
  ADD_USER: (state) ->
    state.users.push({
      account: state.account,
      address: state.address
      })
  CLEAR: () ->
    state.account = ''
    state.address = ''
actions =
  setAccount: ({commit}, account) ->
    commit('SET_ACCOUNT', account)
  setAddress: ({commit}, address) ->
    commit('SET_ADDRESS', address)
  addUser: ({commit}) ->
    commit('ADD_USER')
  clear: ({commit}) ->
    commit('CLEAR')
getters =
  users: (state) ->
    state.users
  account: (state) ->
    state.account
  address: (state) ->
    state.address

module.exports = { state, getters, mutations, actions }
