<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-7 col-sm-3 mb-2">
          <div class="list-group text-wrap block">
            <template v-for="i in url">
              <div  :key="i.url">
                <div v-if="tab.name_tab.title==i.name_tab.title">
                  <nuxt-link exact no-prefetch active-class="active" class="list-group-item list-group-item-action text-center" :to="`/${i.name_tab.sections}/${i.slug}`">{{i.title}}</nuxt-link>
                </div>
                </div> 
            </template>
          </div>
      </div>
        <div class="col-9">      
            <p v-if="tab.name_tab.title==tabs.title" class="center">{{tab.title_article}}</p>
            <hr>
            <p v-html="tab.body"></p>
          <form v-if="tab.my_field== true " @submit.prevent="submitCallback">
            <input type="text"  v-model="callback.theme" class="form-control" placeholder="Тема обращения"  required> <br>
            <input type="text"  v-model="callback.name" class="form-control" placeholder="ФИО" name ="name" required> <br>
            <input type="email" v-model=" callback.email" class="form-control" placeholder="Адрес эл.почты" id="exampleInputEmail1" aria-describedby="emailHelp" required> <br>
            <textarea  class="form-control" v-model=" callback.text" name="text" cols="145"  required=""  placeholder="Текст обращения" rows="5" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; "></textarea><br>
            <label for="exampleFormControlFile1">Загрузить файл</label>
            <input type="file" class="form-control-file size-navbar-text" id="exampleFormControlFile1" @change="onFileChange">
            <button  class="btn btn-outline-primary mt-4" type="submit">Отправить</button>
          </form>
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
      let url = await $axios.$get(`/tabs_name`);
      let tabs = await $axios.$get(`/tab/${params.sections}`);
      let tab = await $axios.$get(`/tabs_name/${params.slug}`);
      //console.log(abiturent)
      return {  tabs, tab, url  }
    } catch (e) {
      return {  tabs: [], tab:[], url:[]};
    }
  },
  data({ params }) {
    return {
      tabs: {
      },
      tab:{

      },
      url:{

      },
      callback:{
          theme: "",
          name: "",
          email: "",
          file: "",
          text: ""
      }
    };
  },
    head() {
    return {
      title:  this.tab.title,
    };
  },
      methods: {
      onFileChange(e) {
      let files = e.target.files || e.dataTransfer.files;
      if (!files.length) {
        return;
      }
      this.callback.file= files[0];
      this.createFile(files[0]);
    },
    createFile(file) {
      // let image = new Image();
      let reader = new FileReader();
      let vm = this;
      reader.onload = e => {
        vm.preview = e.target.result;
      };
      reader.readAsDataURL(file);
    },
      async submitCallback() {
      const config = {
        headers: { "content-type": "multipart/form-data" }
      };
      let formData = new FormData();
      for (let data in this.callback) {
        formData.append(data, this.callback[data]);
      }
      try {
        let response = await this.$axios.$post("/callback/", formData, config);
        this.$router.push("/thanks");
      } catch (e) {
        console.log(e);
      }
    },
},
};
</script>