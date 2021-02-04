<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2 size-navbar-text">
          <div class="list-group text-wrap block size-navbar-tex">
             <template v-for="article in students">
              <div :key="article.id">
                <nuxt-link exact no-prefetch active-class="active" class="list-group-item list-group-item-action text-center" :to="`/students/${article.id}`">{{article.title}}</nuxt-link>
              </div> 
            </template>
          </div>
      </div>
        <div class="col-9">      
            <p class="center">{{student.title}}</p>
            <hr>
            <p class="size-navbar-text" v-html="student.text"></p>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</div>
</template>
<script>
export default {
  async asyncData({ $axios, params }) {
    try {
      let students = await $axios.$get(`/students/`);
      let student = await $axios.$get(`/students/${params.id}`);
      return { students, student  }
    } catch (e) {
      return { students: [], student: []};
    }
  },
  data({ params }) {
    return {
      students: {
      },
      student: {
      },

    };
  },
    head() {
    return {
      title:  this.student.title,
    };
  },
};
</script>