<template>
  <div class="header1">
      <div class="wrap">
        <a v-bind:href="url">yahoo</a>
      </div>
      <a :href="url">yahoo</a>
  </div>
</template>

<script>
  export default {
    name: 'Header',
    data: function() {
      return {
        url: "yahoo.co.jp"
      }
    }
  }
</script>