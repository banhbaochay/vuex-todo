<template>
<div id="hello-coffee">
  <p>Message: {{message}}</p>
  <input :value="message" @input="messageChange" type="text" />
  <p>Counter: {{counter}}</p>
  <input type="button" @click="increaseCounter" value="Click +1" />
  <input type="button" @click="decreaseCounter" value="Click -1" />
  <input type="button" @click="resetCounter" value="Reset Counter" />
</div>
</template>

<script lang="coffee" type="text/coffeescript">
module.exports =
  computed:
    message: ->
      @.$store.getters.message
    counter: ->
      @.$store.getters.counter
  methods:
    messageChange: (evt) ->
      @.$store.dispatch('setMessage', evt.target.value)
    increaseCounter: ->
      @.$store.dispatch('increaseCounter')
    decreaseCounter: ->
      @.$store.dispatch('decreaseCounter')
    resetCounter: ->
      @.$store.dispatch('resetCounter')

</script>
