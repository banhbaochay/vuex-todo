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
  increaseCounter: (store) ->
    store.commit('INCREASE_COUNTER')
  resetCounter: (store) ->
    store.commit('RESET_COUNTER')
  decreaseCounter: (store) ->
    store.commit('DECREASE_COUNTER') if state.counter >= 1

getters =
  counter: ->
    state.counter

module.exports = { state, getters, mutations, actions }
