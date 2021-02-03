<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2 size-navbar-text">
        <MenuTeachers />
      </div>
        <div class="col-9">
              <template v-for="article in certification">
              <div :key="article.id">        
                <p class="center">{{article.title}}</p>
                <hr>
                <p class="size-navbar-text" v-html="article.text"></p>
                </div>
             </template>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</div>
</template>
<script>
export default {
  head() {
    return {
      title: "Аттестация",
    };
  },
   async asyncData({ $axios, params }) {
    try {
      let certification = await $axios.$get(`/certification/`);
      return { certification  };
      //console.log(reference)

    } catch (e) {
      return { certification: [] };
    }
  },
  data() {
    return {
      certification : [],
    };
  },
};
</script>