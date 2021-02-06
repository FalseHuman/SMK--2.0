<template>
<div>
      <div class="row justify-content-center mt-2">
      <div class="col-6 col-sm-3 mb-2 size-navbar-text">
        <MenuTeachers />
      </div>
        <div class="col-9">
              <template v-for="article in additionaleducation">
              <div :key="article.id">        
                <p class="center">{{article.title}}</p>
                <hr>
                <p class="size-navbar-text" v-html="article.text"></p>
                </div>
             </template>
          <form @submit.prevent="submitCallback">
            <input type="text"  v-model="callback.name" class="form-control size-navbar-text" placeholder="ФИО" name ="name" required> <br>
            <input type="email" v-model=" callback.email" class="form-control size-navbar-text" placeholder="Адрес эл.почты" id="exampleInputEmail1" aria-describedby="emailHelp" required> <br>
            <textarea  class="form-control size-navbar-text" v-model=" callback.text" name="text" cols="145"  required=""  placeholder="Текст обращения" rows="5" style="overflow: hidden; word-wrap: break-word; resize: none; height: 160px; "></textarea><br>
            <label for="exampleFormControlFile1">Загрузить файл</label>
            <input type="file" class="form-control-file size-navbar-text" id="exampleFormControlFile1" @change="onFileChange">
            <button  class="btn btn-outline-primary mt-4 size-navbar-text" type="submit">Отправить</button>
          </form>
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
      title: "Дополнительное образование",
    };
  },
   async asyncData({ $axios, params }) {
    try {
      let additionaleducation = await $axios.$get(`/additionaleducation/`);
      return { additionaleducation };
      //console.log(reference)

    } catch (e) {
      return { additionaleducation: [] };
    }
  },
  data() {
    return {
      additionaleducation : [],
      callback:{
          name: "",
          email: "",
          file: "",
          text: ""
      }
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
        let response = await this.$axios.$post("/callbackeducation/", formData, config);
        this.$router.push("/thanks");
      } catch (e) {
        console.log(e);
      }
    },
},
};
</script>