state =
  users: [{id: 1, account:"abc", address:"Ha Noi"}, {id: 2, account:"test", address:"Da Nang"}, {id: 3, account:"test124", address:"Ho Chi Minh"}],
  id: 3, # id is a counter, when user add a new user, it is increased by one
  account:'',
  address:'',

mutations =
  SET_ACCOUNT: (state, account) ->
    state.account = account
  SET_ADDRESS: (state, address) ->
    state.address = address
  ADD_USER: (state) ->
    users = state.users
    console.log(state.id)
    state.id = state.id + 1
    state.users.push({
      id: state.id,
      account: state.account,
      address: state.address
    })
  UPDATE_USER: (state, updatedUser) ->
    users = state.users
    user = (users.find (user) -> user.id == updatedUser.id)
    index = users.indexOf(user)
    users[index] = updatedUser
  REMOVE_USER: (state, user) ->
    index = state.users.indexOf(user)
    state.users.splice(index, 1)
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
  updatedUser: ({commit}, updatedUser) ->
    commit('UPDATE_USER', updatedUser)
  removeUser: ({commit}, id) ->
    commit('REMOVE_USER', id)
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
