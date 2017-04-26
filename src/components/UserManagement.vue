<template>
<div>
  <div id="hello-coffee">
    <div class="tab">
      <div class="tablink" @click="swapComponent('account')">Account</div>
      <div class="tablink" @click="swapComponent('user-address')">Address</div>
      <div class="tablink" @click="swapComponent('info')">Info</div>
    </div>
    <component :is="currentComponent"></component>
    <table-user></table-user>
  </div>
</div>

</template>

<script lang="coffee" type="text/coffeescript">
TableUsers = require('./TableUsers.vue')
Account = require('./Account.vue')
Address = require('./Address.vue')
Info = require('./GetInfo.vue')

{ mapGetters, mapActions } = require 'vuex'

module.exports =
  data: () -> {
      currentComponent: null,
  }
  components: {
    'table-user': TableUsers,
    'account': Account,
    'user-address': Address,
    'info': Info,
  }
  methods: Object.assign(
    swapComponent: (component, evt) ->
      @currentComponent = component
  )

</script>
<style>
/* Style the tab */
div.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
div.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
}

/* Change background color of buttons on hover */
div.tablink button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tablink:active{
  background-color: grey;
}
.tablink {
  display: inline-block;
  height: 50px;
  width: 100px;
  color: black;
  text-align: center;
  line-height: 50px;
  cursor: pointer;
}
.activeTab{
  background-color: grey;
}

</style>
