<template>
<div>
  <div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
         <!-- <div class="list-group text-wrap block ">

          </div>-->
            <form action="javascript:history.go(-1)" class="mt-2">
              <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
            </form>
      </div>
        <div class="col-9">      
            <p class="center">{{feldher.title}}</p>
            <hr>
                  <template v-for="article in feldhers">
                  <div :key="article.id">
                    <nuxt-link  :to="`${article.id}`">{{article.title}}</nuxt-link>
                  </div> 
                </template>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
        <div class="w-100"></div>
      </div>
</div>
</div>
</template>

<script>
export default {
  async asyncData({ $axios }) {
    try {
      let feldher = await $axios.$get(`/feldhers/1/`);
      let feldhers = await $axios.$get(`/feldher/`);
      return { feldher, feldhers }
      //console.log(feldhers)
    } catch (e) {
      return { feldher: [], feldhers:[] };
    }
  },
  data({ params }) {
    return {
      feldher: {
      },
      feldhers:{   
      },

    };
  },
    head() {
    return {
      title:  this.feldher.title,
    };
  },
};
</script>