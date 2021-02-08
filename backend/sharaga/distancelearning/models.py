from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
# Create your models here.
class Distance(models.Model):
    title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    pub_date = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.title
    class Meta:
        verbose_name ='Дистанционное обучениe'
        verbose_name_plural ='Дистанционное обучениe'

class Shedule(models.Model):
    title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    pub_date = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.title
    class Meta:
        verbose_name ='Расписание'
        verbose_name_plural ='Расписание'