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
      id: state.users.length+1,
      account: state.account,
      address: state.address
    })
  EDIT_USER: (state, data) ->
    newUser = data[0]
    id = data[1]
    user = (state.users.filter (user) -> user.id == id)[0]
    user.account = newUser.account
    user.address = newUser.address
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
  editUser: ({commit}, data) ->
    commit('EDIT_USER', data)
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
