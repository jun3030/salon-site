<template>
  <div id="overlay">
    <div id="content">
      <img :src="val.picture.url">
      <p>説明：{{ val.name }}</p>
      <p>作業範囲：{{ val.description }}</p>
      <p>使用技術：{{ val.part }}</p>
      <button @click="$emit('close')">閉じる</button>
    </div>
    <h1>aaa</h1>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>

</style>