<template>
  <div id="app">

    <h1>This is app.vue</h1>
    <p>{{ message }}</p>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記

export default {
  data: function () {
    return {
      message: "Hello Vue!!!!!"
    }
  },
  components: {
    Header, //追記
    Top,
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
