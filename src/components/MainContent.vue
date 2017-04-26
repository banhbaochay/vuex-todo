<template>
    <div id="main">
      <div class="container">
        <div class="list-group">
          <router-link to="/welcome" class="list-group-item">Welcome</router-link>
          <router-link to="/counter" class="list-group-item">Counter</router-link>
          <router-link to="/user-management" class="list-group-item">User management</router-link>
        </div>
        <div class="content">
          <router-view default="/welcome"></router-view>
        </div>
      </div>
    </div>
</template>
