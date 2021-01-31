from django.db import models
from django.utils import timezone
from ckeditor_uploader.fields import RichTextUploadingField
# Create your models here.
class Contacts(models.Model):
    contact_title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.contact_title

    class Meta:
        verbose_name ='Контакты'
        verbose_name_plural ='Контакты'

class Hotline(models.Model):
    hotline_title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.hotline_title

    class Meta:
        verbose_name ='Горячую линию'
        verbose_name_plural ='Горячая линия'
class Controls(models.Model):
    controls_title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.controls_title

    class Meta:
        verbose_name ='Контакты контролирующих организаций'
        verbose_name_plural ='Контакты контролирующих организаций'
class Callback(models.Model):
    callback_title = models.CharField('Название статьи', max_length=200)
    text = RichTextUploadingField('Текст статьи')
    data = models.DateTimeField('Дата публикации')
    def __str__(self):
        return self.callback_title

    class Meta:
        verbose_name ='Обратную связь(текст)'
        verbose_name_plural ='Обратная связь(текст)'
class Director(models.Model):
    theme = models.CharField('Тема обращения', max_length=200)
    name = models.CharField('Имя', max_length=200)
    email = models.CharField('Эл. почта', max_length=200)
    text = RichTextUploadingField('Текст')
    def __str__(self):
        return self.theme

    class Meta:
        verbose_name ='Обратную связь(обращения)'
        verbose_name_plural ='Обратная связь(обращения)'