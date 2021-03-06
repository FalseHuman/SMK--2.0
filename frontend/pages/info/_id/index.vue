<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-7 col-sm-3 mb-2">
          <div class="list-group text-wrap bloc">
             <template v-for="article in infs">
              <div :key="article.id">
                <nuxt-link exact no-prefetch active-class="active" class="list-group-item list-group-item-action text-center" :to="`/info/${article.id}`">{{article.title}}</nuxt-link>
              </div> 
            </template>
          </div>
      </div>
        <div class="col-9">      
            <p class="center">{{info.title}}</p>
            <hr>
            <p class="" v-html="info.text"></p>
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
      let infs = await $axios.$get(`/info/`);
      let info = await $axios.$get(`/info/${params.id}`);
      return { infs, info  }
    } catch (e) {
      return { infs: [], info : []};
    }
  },
  data({ params }) {
    return {
      infs: {
      },
      info: {
      },

    };
  },
    head() {
    return {
      title:  this.info.title,
    };
  },
};
</script>