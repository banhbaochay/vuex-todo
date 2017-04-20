<template>
  <div id="address" class="tabcontent">
      Enter address:
      <input :value="address" @input="inputChange" type="text" />
  </div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters, mapActions } = require 'vuex'
module.exports = {
  computed: mapGetters(['address'])
  methods:
    inputChange: (evt) ->
      @.$store.dispatch('setAddress', evt.target.value)
}
</script>
<style>
  /* Style the tab content */
  .tabcontent {
    /*display: none;*/
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
  }
</style>
