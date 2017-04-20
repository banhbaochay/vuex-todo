<template>
  <div id="info" class="tabcontent">
      <p> User Information : </p>
      <p> - Account: {{account}}</p>
      <p> - Address: {{address}}</p>
      <button @click="add">Add</button>
      <button @click="clear">Clear</button>
  </div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters } = require 'vuex'
module.exports = {
  computed: mapGetters(['account', 'address'])
  methods:
    clear: () ->
      @.$store.dispatch('clear')
    add: () ->
      @.$store.dispatch('addUser')
      @.$store.dispatch('clear')
}
</script>
<style>
</style>
