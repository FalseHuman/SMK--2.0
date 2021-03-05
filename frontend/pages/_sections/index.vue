<template>
<div>
        <div class="col-9">      
            <p class="center">{{tab.title}}</p>
            <hr>
        </div>
      
        <!-- Заставит следующие столбцы переходить на новую строку -->
</div>
</template>
<script>
export default {
  async asyncData({ $axios, params }) {
    try {
      let tab = await $axios.$get(`/tab/${params.sections}`);
      return {  tab  }
    } catch (e) {
      return {  tab: []};
    }
  },
  data({ params }) {
    return {
      tab: {
      },

    };
  },
};
</script>