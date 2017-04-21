<template>
<div id="hello-coffee">
  <table>
    <thead>
      <tr>
        <th>ID</th>
        <th>Account</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="user in users">
        <td>{{ user.id }}</td>
        <td>{{ user.account }}</td>
        <td>{{ user.address }}</td>
        <td>
          <router-link :to="{name: 'user-info', params: {id: user.id}}"><button>Show</button></router-link>
          <button @click="removeUser(user)">Remove</button>
        </td>
      </tr>
    </tbody>
  </table>
</div>
</template>

<script lang="coffee" type="text/coffeescript">
{ mapGetters, mapActions } = require 'vuex'

module.exports =
  computed: mapGetters(['users'])
  methods: {
    removeUser: (user) ->
      @.$store.dispatch('removeUser', user)
  }

</script>
<style>
table {
    border-collapse: collapse;
    width: 80%;
    margin-top: 10px;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>
