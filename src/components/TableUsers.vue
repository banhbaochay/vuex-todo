<template>
<div id="hello-coffee">
  <table>
    <thead>
      <tr>
        <th v-for="key in columns" @click="sortBy(key)">
          {{ key }}
        </th>
        <th>
          Action
        </th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td v-for="key in columns">
          <input v-model="searchQuery"/>
        </td>
      </tr>
      <tr v-for="user in users">
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

module.exports =
  data: () -> {
    columns: ['id', 'account', 'address']
    searchQuery: ''
  }
  computed: mapGetters(['users', ''])
  methods: {
    removeUser: (id) ->
      @.$store.dispatch('removeUser', id)
      alert("Remove user " + id + " sucessfully !")
    sortBy: (key) ->
      @.$store.dispatch('sortBy', key)
    searchUser: (key, evt) ->
      # console.log(evt.target.value)
      @.$store.dispatch('searchUser', [key, evt.target.value])
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
