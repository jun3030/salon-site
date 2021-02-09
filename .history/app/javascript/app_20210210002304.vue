<template>
  <div id="appa">
    <a v-bind:href="url">スタッフはこちらから!</a>
    <a>{{url}}</a>
    <Header></Header>
  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記

export default {
  el: '#appa',
  data: function () {
    return {
      url: "aaa"
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
