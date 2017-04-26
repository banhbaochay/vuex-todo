<template>
<div id="hello-coffee">
  <table>
    <thead>
      <tr>
        <th @click="sortBy('id')"> ID </th>
        <th @click="sortBy('account')"> Account </th>
        <th @click="sortBy('address')"> Address</th>
        <th>
          Action
        </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td v-for="key in columns">
          <input class="search" v-model="search[key]"/>
        </td>
      </tr>
      <tr v-for="user in filteredUsers">
        <td v-for="key in columns">{{user[key]}}</td>
        <td>
          <router-link :to="{name: 'user-info', params: {id: user.id}}"><button>Show</button></router-link>
          <button @click="removeUser(user.id)">Remove</button>
        </td>
      </tr>
    </tbody>
  </table>
</div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters, mapActions } = require 'vuex'
_ = require 'underscore'

module.exports =
  data: () -> {
    columns: ['id', 'account', 'address']
    search: {'id': '', 'account': '', 'address': ''}
  }
  computed: _.extend mapGetters(['users']),
    filteredUsers: ->
      queryId = @search['id']
      queryAcc = @search['account']
      queryAddress = @search['address']

      @users.filter (user) ->
        user.id.toString().includes(queryId) &&
        user.account.includes(queryAcc) &&
        user.address.includes(queryAddress)
      # @users
  methods: {
    removeUser: (id) ->
      @.$store.dispatch('removeUser', id)
      alert("Remove user " + id + " sucessfully !")
    sortBy: (key) ->
      @.$store.dispatch('sortBy', key)
  }

</script>
<style>
table {
    border-collapse: collapse;
    width: 100%;
    margin-top: 10px;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #008CBA;
    color: white;
}
.search {
  width: 150px;
  padding: 5px 5px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}
</style>
