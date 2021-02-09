<template>
  <div id="app">
    <Header></Header>
    <p :href="url">スタッフはこちらから!</p>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記

export default {
  el: "#app",
  data: function () {
    return {
      url: "https://google.com"
    }
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
