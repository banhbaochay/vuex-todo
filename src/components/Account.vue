<template>
  <div id="input-acc" class="tabcontent">
      Enter account:
      <input :value="account" @input="inputChange" type="text" />
  </div>
</template>

<script lang="coffee" type="text/coffeescript">

{ mapGetters, mapActions } = require 'vuex'
module.exports = {
  computed: mapGetters(['account'])
  methods:
    inputChange: (evt) ->
      @.$store.dispatch('setAccount', evt.target.value)
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
