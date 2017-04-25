<template>
    <div id="main">
      <div class="container">
        <div class="list-group">
          <router-link :to="{name: 'welcome'}"><a href="#" class="list-group-item">Welcome</a></router-link>
          <router-link :to="{name: 'counter'}"><a href="#" class="list-group-item">Counter</a></router-link>
          <a href="#" class="list-group-item">User management</a>
        </div>
        <div class="content">
          <router-view></router-view>
        </div>
      </div>
    </div>
</template>

<script>
export default {
  name: 'app',
}
</script>
