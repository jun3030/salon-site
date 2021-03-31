<template>
  <div id="app">
      <Header></Header>
      <div @click="show = !show">
        <TopImage></TopImage>
        <Concept></Concept>
        <a :href="loginAdmin">スタッフはこちらから!</a><br>
      </div>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記
import TopImage from "./components/TopImage.vue";
import Concept from "./components/Concept.vue";

export default {
  el: '#app',
  data: function () {
    return {
      loginAdmin: "http://localhost:3000/sign_in",
    }
  },
  components: {
    Header, //追記
    TopImage,
    Concept,
  }
}

</script>

<style scoped>
.container {
  width: 100%;
  padding-right: 10px;
  padding-left: 10px;
  margin-right: auto;
  margin-left: auto;
}

p {
  font-size: 2em;
  text-align: center;
}
</style>
