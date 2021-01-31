<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2 size-navbar-text">
        <MenuContats />
      </div>
              <div class="col-9">
              <template v-for="article in hotline">
              <div :key="article.id">        
                <p class="center">{{article.hotline_title}}</p>
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
      async asyncData({ $axios, params }) {
    try {
      let hotline = await $axios.$get(`/hotline/`);
      return { hotline  };

    } catch (e) {
      return { hotline: [] };
    }
  },
  data() {
    return {
      hotline : [],
    };
  },
  head() {
    return {
      title: "Горячая линия",
    };
  },
};
</script>