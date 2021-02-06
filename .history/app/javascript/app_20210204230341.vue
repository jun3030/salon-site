<template>
  <v-app id="app">
    <Header/> //追記
    <h1>This is app.vue</h1> //一応追記。どっちでもいいです
    <p>{{ message }}</p>
  </v-app>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue!!!!!"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}
</style>
