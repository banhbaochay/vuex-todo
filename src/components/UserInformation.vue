<template>
<div id="hello-coffee">
    <p> User Information : </p>
    <p> - Account: <input ref="txtAccount" class="input" :class="{active: isActive}" :value="user.account"/></p>
    <p> - Address: <input ref="txtAddress" class="input" :class="{active: isActive}" :value="user.address"/></p>
    <button @click="edit">{{buttonName}}</button>
    <button @click="removeUser(user)">Remove</button>
    <router-link :to="{name: 'home'}"><button>Back</button></router-link>
</div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters} = require 'vuex'

module.exports =
  data: () ->{
    buttonName: "Edit",
    isActive: false,
    id: parseInt(@.$route.params.id),
  }
  methods: {
    edit: () ->
      if @.buttonName == "Edit"
        @.isActive = true;
        @.buttonName = "Save";
        @.$refs.txtAccount.focus();
      else
        newUser = {account: @.$refs.txtAccount.value, address: @.$refs.txtAddress.value}
        @.$store.dispatch('editUser', [newUser, @.id])
        @.isActive = false;
        @.buttonName = "Edit";
    removeUser: (user) ->
      @.$store.dispatch('removeUser', user)
      @.$router.push('/')
  }
  computed:{
    users: () ->  @.$store.getters.users;
    user: () ->
      id = parseInt(@.$route.params.id)
      (@.users.filter (user) -> user.id == id)[0]
  }

</script>
<style>
  .input{
    padding: 6px;
    display: inline-block;
    border:none;
    border-radius: 4px;
    box-sizing: border-box;
    pointer-events: none;
  }
  .active{
    border: 1px solid #ccc;
    pointer-events: auto;
  }
</style>
