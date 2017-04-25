<template>
<div>
  <div id="hello-coffee">
      <p>Counter: {{counter}}</p>
      <input type="button" @click="increaseCounter" value="Click +1" />
      <input type="button" @click="decreaseCounter" value="Click -1" />
      <input type="button" @click="resetCounter" value="Reset Counter" /><br/><br/>
  </div>
</div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters, mapActions } = require 'vuex'

module.exports =
  computed: mapGetters(['counter',])
  methods: Object.assign(
    mapActions(['increaseCounter', 'decreaseCounter', 'resetCounter'])
  )

</script>
