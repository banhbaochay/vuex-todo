<template>
<div id="hello-coffee">
    <p> User Information : </p>
    <p> - Account: <input ref="txtAccount" class="input" :class="{active: isActive}" v-model="user.account"/></p>
    <p> - Address: <input ref="txtAddress" class="input" :class="{active: isActive}" v-model="user.address"/></p>
    <button @click="edit">{{buttonName}}</button>
    <router-link :to="{name: 'home'}"><button>Back</button></router-link>
</div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters} = require 'vuex'
_ = require 'underscore'
module.exports =
  data: () ->
    {
      buttonName: "Edit",
      isActive: false,
      user:
        id: -1
        account: ''
        address: ''
    }

  mounted: ->
    users = @.$store.getters.users
    id = parseInt(@.$route.params.id)
    user = users.find (user) -> user.id == id
    @user = _.clone(user)

  methods: {
    edit: () ->
      if @buttonName == "Edit"
        @isActive = true
        @buttonName = "Save"
        @.$refs.txtAccount.focus()
      else
        @.$store.dispatch('updatedUser', @user)
        @isActive = false
        @buttonName = "Edit"
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
