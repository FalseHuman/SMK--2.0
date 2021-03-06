from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
# Create your models here.
class Tabs(models.Model):
    sections = models.SlugField('Слаг', max_length=250)
    title = models.CharField('Название вкладки', max_length=200)
    def __str__(self):
        return self.title

class Section(models.Model):
    name_tab = models.ForeignKey(Tabs, on_delete = models.CASCADE)
    title = models.CharField('Заголовок подвкладки', max_length=250)
    title_article = models.CharField('Заголовок статьи', max_length=250)
    slug = models.SlugField('Слаг', max_length=250)
    body = RichTextUploadingField('Текст статьи')
