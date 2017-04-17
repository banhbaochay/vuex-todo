<template>
<div id="hello-coffee">
  <p>Message: {{message}}</p>
  <input :value="message" @input="messageChange" type="text" />
  <p>Counter: {{counter}}</p>
  <input type="button" @click="increaseCounter" value="Click +1" />
  <input type="button" @click="decreaseCounter" value="Click -1" />
  <input type="button" @click="resetCounter" value="Reset Counter" /><br/><br/>
  <div class="tab">
    <router-link to="/account"><button class="tablink">Account</button></router-link>
    <router-link to="/address"><button class="tablink">Address</button></router-link>
    <router-link to="/info"><button class="tablink">Info</button></router-link>
  </div>
  <!-- <router-view></router-view> -->
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
div.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
div.tab button.active {
  background-color: #ccc;
}

</style>
