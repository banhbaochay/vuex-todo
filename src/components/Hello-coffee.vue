<template>
<div>
  <div id="hello-coffee">
      <welcome></welcome>
      <counter></counter>
      <user-management></user-management>
  </div>
</div>

</template>

<script lang="coffee" type="text/coffeescript">
Welcome = require('./Welcome.vue')
Counter = require('./Counter.vue')
UserManagement = require('./UserManagement.vue')

{ mapGetters, mapActions } = require 'vuex'

module.exports =
  data: () -> {
      currentComponent: null,
  }
  components: {
    'welcome': Welcome,
    'counter': Counter,
    'user-management': UserManagement,
  }
</script>
