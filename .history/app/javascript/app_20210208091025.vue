<template>
  <div id="app">
    <Header></Header>
    <h1>aaaaaaaaa</h1>
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
