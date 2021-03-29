<template>
  <div id="overlay">
    <div id="content">
      <img :src="val.img_src">
      <p>説明：{{ val.desc }}</p>
      <p>作業範囲：{{ val.range }}</p>
      <p>使用技術：{{ val.lang }}</p>
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