<template>
<div id="hello-coffee">
  <p>Message: {{message}}</p>
  <input :value="message" @input="messageChange" type="text" />
  <p>Counter: {{counter}}</p>
  <input type="button" @click="increaseCounter" value="Click +1" />
  <input type="button" @click="decreaseCounter" value="Click -1" />
  <input type="button" @click="resetCounter" value="Reset Counter" />
  <router-link to="/foo">Go to Foo</router-link>
  <router-link to="/bar">Go to Bar</router-link>
  <router-view></router-view>
</div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters, mapActions } = require 'vuex'

module.exports =
  computed: mapGetters(['message', 'counter'])
  methods: Object.assign(
    mapActions(['increaseCounter', 'decreaseCounter', 'resetCounter']),
    messageChange: (evt) ->
      @.$store.dispatch('setMessage', evt.target.value)
  )

</script>
