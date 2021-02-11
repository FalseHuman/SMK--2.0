<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
      </div>
        <div class="col-9">
             <template v-for="article in distance">
              <div :key="article.id">        
                <p class="center">{{article.title}}</p>
                <hr>
                <nuxt-link to="feldhers/">Специальность: 31.02.01 Лечебное дело</nuxt-link> <br>
                <nuxt-link to="nurses/">Специальность: 34.02.01 Сестринское дело</nuxt-link> <br>
                <nuxt-link to="obstetrician/">Специальность: 31.02.02 Акушерское дело</nuxt-link>
                <p class="" v-html="article.text"></p>
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
      title: "Дистанционное обучение"
    };
  },
    async asyncData({ $axios }) {
    try {
      let distance = await $axios.$get(`/distance/`);
      return { distance  };

    } catch (e) {
      return { distance: [] };
    }
  },
  data() {
    return {
      distance : [],
    };
  },
};
</script>