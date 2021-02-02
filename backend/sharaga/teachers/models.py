from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
# Create your models here.
class info(models.Model):
    title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Справочную информацию'
        verbose_name_plural ='Справочная информация'
class EducationalandMethodicalWork(models.Model):
    title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Учебно-методическую работу'
        verbose_name_plural ='Учебно-методическая работа'

class AdditionalEducation(models.Model):
    title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Дополнительное образование'
        verbose_name_plural ='Дополнительное образование'

class Seminars(models.Model):
    title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Республиканские семинары'
        verbose_name_plural ='Республиканские семинары'