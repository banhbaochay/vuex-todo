<template>
<div id="hello">
  <p>Message: {{message}}</p>
  <input :value="message" @input="messageChange" type="text" />
</div>
</template>

<script>
export default {
  computed: {
    message() {
      return this.$store.getters.message;
    }
  },
  methods: {
    messageChange(evt) {
      this.$store.dispatch('setMessage', evt.target.value)
    }
  }
}
</script>
