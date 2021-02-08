<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2">
        <form action="javascript:history.go(-1)" class="mt-2">
            <button class="btn btn-outline-success my-2 my-sm-0">Назад</button>
        </form>
      </div>
        <div class="col-9">
             <template v-for="article in shedule">
              <div :key="article.id">        
                <p class="center">{{article.title}}</p>
                <hr>
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
      title: "Расписание"
    };
  },
    async asyncData({ $axios }) {
    try {
      let shedule = await $axios.$get(`/shedule/`);
      return { shedule  };

    } catch (e) {
      return { shedule: [] };
    }
  },
  data() {
    return {
      shedule : [],
    };
  },
};
</script>