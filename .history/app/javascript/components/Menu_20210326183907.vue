<template>
  <div class="container">
    <ul>
      <li v-for="(taskCourse) in taskCourses" :key="taskCourse.id">
        {{ taskCourse.id }}
        {{ taskCourse.name }}
        {{ taskCourse }}
      </li>
    </ul>
  </div>
</template>

<script>
import axios from "axios"

export default {
  data: function () {
    return {
　　　 //todoリスト
      taskCourses: [],
      //テキストボックスの値
      body: "",
    }
  },
  //一覧読み込み
  mounted () {
    axios.get('api/v1/task_courses').then((response) => {
      this.taskCourses = response.data
      }).catch(() => {
        alert("エラー");
      });
    }
  }
</script>

<style scoped>

</style>