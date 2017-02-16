<template>
<div id="hello-coffee">
  <p>Message: {{message}}</p>
  <input :value="message" @input="messageChange" type="text" />
</div>
</template>

<script lang="coffee" type="text/coffeescript">
module.exports =
  computed:
    message: ->
      @.$store.getters.message
  methods:
    messageChange: (evt) ->
      @.$store.dispatch('setMessage', evt.target.value)

</script>
