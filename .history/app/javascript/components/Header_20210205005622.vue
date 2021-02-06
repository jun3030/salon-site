<template>

  <div class="header1">
      <div class="wrap">
        <a v-bind:href="url"></a>
      </div>
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