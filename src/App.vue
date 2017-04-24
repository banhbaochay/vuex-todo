<template>
  <div>
    <nav-header></nav-header>
    <!-- <main-content></main-content>
    <nav-footer></nav-footer> -->
  </div>
</template>

<script lang="coffee" type="text/coffeescript">
Header = require('./components/Header.vue')
MainContent = require('./components/MainContent.vue')
Footer = require('./components/Footer.vue')
module.exports =
  components: {
      'nav-header': Header
      'main-content': MainContent
      'nav-footer': Footer
  }

</script>
