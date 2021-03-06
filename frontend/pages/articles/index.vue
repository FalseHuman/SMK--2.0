<template>
<div>
  <p class="mt-2">Всего статей: {{articles.length}}</p>
  <template v-for="article in articles">
    <div :key="article.id">
    <li><nuxt-link class="black" :to="`articles/${article.id}`">{{article.title}};</nuxt-link></li>
    </div> 
  </template>
</div>
</template>
<script>
export default {
  head() {
    return {
      title: "Список статей"
    };
  },
    async asyncData({ $axios}) {
    try {
      let articles = await $axios.$get(`/article/`);
      return { articles  };
    } catch (e) {
      return { articles: [] };
    }
  },
  data() {
    return {
      articles : [],
    };
  },
};
</script>
<style scoped>
.black{
  color: black;
}
</style>