<template>
  <div id="app">
    <Header></Header>
    <p :href="adminLogin">スタッフはこちらから!</p>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記

export default {
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
