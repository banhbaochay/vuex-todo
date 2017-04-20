<template>
<div id="hello-coffee">
  <table>
    <thead>
      <tr>
        <th>Account</th>
        <th>Address</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
      <tr v-for="user in users">
        <td>{{ user.account }}</td>
        <td>{{ user.address }}</td>
        <td>
          <button>Show</button>
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

</script>
<style>
table {
    border-collapse: collapse;
    width: 50%;
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
