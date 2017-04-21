state =
  users: [{id: 1, account:"abc", address:"Ha Noi"}, {id: 2, account:"test", address:"Da Nang"}, {id: 3, account:"test124", address:"Ho Chi Minh"}],
  id: 0,
  account:'',
  address:'',

mutations =
  SET_ACCOUNT: (state, account) ->
    state.account = account
  SET_ADDRESS: (state, address) ->
    state.address = address
  ADD_USER: (state) ->
    state.users.push({
      id: state.users.length + 1,
      account: state.account,
      address: state.address
    })
  EDIT_USER: (state, updatedUser) ->
    users = state.users
    user = (users.find (user) -> user.id == updatedUser.id)
    index = users.indexOf(user)
    users[index] = updatedUser
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
  editUser: ({commit},updatedUser) ->
    commit('EDIT_USER', updatedUser)
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
