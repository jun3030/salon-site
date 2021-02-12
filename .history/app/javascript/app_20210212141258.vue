<template>
  <div id="app">
    <Header></Header>
    <a :href="loginAdmin">スタッフはこちらから!</a>
    <a :href="dashbord">dashbord!</a>

  </div>
</template>

<script>
import Header from "./components/Header.vue"; //追記

export default {
  el: '#app',
  data: function () {
    return {
      loginAdmin: "http://localhost:3000/sign_in",
      dashbord: "user_calendar_dashboard_path(1, 1)"
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
