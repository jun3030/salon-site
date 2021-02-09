<template>
  <div id="app">
    <Header></Header>
    <a v-bind="url">スタッフはこちらから!</a>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記

export default {
  el: "#app",
  data: {
    url: "https://google.com"
  },
  components: {
    Header //追記
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
