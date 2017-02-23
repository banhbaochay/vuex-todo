state =
  counter: 0

mutations =
  RESET_COUNTER: ->
    state.counter = 0
  INCREASE_COUNTER: ->
    state.counter++
  DECREASE_COUNTER: ->
    state.counter--

actions =
  increaseCounter: ({ commit }) ->
    commit('INCREASE_COUNTER')
  resetCounter: ({ commit }) ->
    commit('RESET_COUNTER')
  decreaseCounter: ({ state, commit }) ->
    commit('DECREASE_COUNTER') if state.counter >= 1

getters =
  counter: ->
    state.counter

module.exports = { state, getters, mutations, actions }
