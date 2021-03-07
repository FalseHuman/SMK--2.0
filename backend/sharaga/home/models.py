from django.db import models
from django.utils import timezone
from ckeditor_uploader.fields import RichTextUploadingField
# Create your models here.
class Article(models.Model):
    STATUSES = (
        ('Новости', 'Новости'),
        ('Объявление', 'Объявление'),
    )
    title = models.CharField('Название статьи', max_length=200)
    min_text = models.CharField('Мин.текст', max_length=100)
    status = models.CharField('Статус',choices=STATUSES, max_length=10)
    text = RichTextUploadingField('Текст статьи')
    slug = models.SlugField('Слаг', max_length=250)
    pub_data = models.DateTimeField('Дата публикации', default=timezone.now)
    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Статьи'
        verbose_name_plural ='Статью'

class Home(models.Model):
    title = models.CharField('Название', max_length=200)
    text = RichTextUploadingField('Текст')
    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Главную страницу'
        verbose_name_plural ='Главная страница'