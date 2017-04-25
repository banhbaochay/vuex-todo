<template>
<div>
  <div id="hello-coffee">
    <p>Message: {{message}}</p>
    <input :value="message" @input="messageChange" type="text" />
  </div>
</div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters, mapActions } = require 'vuex'

module.exports =
  computed: mapGetters(['message'])
  methods: Object.assign(
    messageChange: (evt) ->
      @.$store.dispatch('setMessage', evt.target.value)
  )

</script>
