<template>
  <div class="container">
    <ul>
      <li v-for="(taskCourse, index) in taskCourses" :key="taskCourse.id">
        {{ taskCourse }}
        <button v-on:click="deleteTodo(index, todo.id)">削除</button>
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