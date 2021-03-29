<template>
  <div id="overlay">
    <div id="content">
      <img :src="val.picture.url">
      <button @click="$emit('close')">閉じる</button>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>

</style>