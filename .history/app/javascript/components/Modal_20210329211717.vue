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
  export default {
    name: 'Modal',
    props: ['val']
  }
}
</script>

<style scoped>

</style>