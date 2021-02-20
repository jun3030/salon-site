<template>
  <div id="app">
    <Header></Header>
    <div class="container">
      <TopImage></TopImage>
      <a :href="loginAdmin">スタッフはこちらから!</a><br>
    </div>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記
import TopImage from "./components/TopImage.vue";

export default {
  el: '#app',
  data: function () {
    return {
      loginAdmin: "http://localhost:3000/sign_in",
    }
  },
  components: {
    Header, //追記
    TopImage
  }
}

</script>

<style scoped>


p {
  font-size: 2em;
  text-align: center;
}
</style>
