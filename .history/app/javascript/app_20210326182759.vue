<template>
  <div id="app">
      <Header @offComponent = "show = $event"></Header>
      <div v-if="!show">
        <TopImage></TopImage>
        <Concept></Concept>
        <Gallery></Gallery>
        <a :href="loginAdmin">スタッフはこちらから!</a><br>
      </div>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記
import TopImage from "./components/TopImage.vue";
import Concept from "./components/Concept.vue";
import Gallery from "./components/Gallery.vue"
import Menu from "./components/Menu.vue"

export default {
  data: function () {
    return {
      loginAdmin: "http://localhost:3000/sign_in",
      show: false
    }
  },
  components: {
    Header, //追記
    TopImage,
    Concept,
    Gallery
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
