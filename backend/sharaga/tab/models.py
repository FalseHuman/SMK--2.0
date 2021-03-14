from django.db import models
from ckeditor_uploader.fields import RichTextUploadingField
from uuslug import uuslug as slugify
# Create your models here.
class Tabs(models.Model):
    sections = models.SlugField('Слаг', max_length=250, blank=True, null=True)
    title = models.CharField('Название вкладки', max_length=200)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title, instance=self)
        super(Tabs, self).save(*args, **kwargs)
    
    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Вкладку'
        verbose_name_plural ='Вкладка'

class Section(models.Model):
    name_tab = models.ForeignKey(Tabs, on_delete = models.CASCADE)
    title = models.CharField('Заголовок подвкладки', max_length=250)
    title_article = models.CharField('Заголовок статьи', max_length=250)
    slug = models.SlugField('Слаг', max_length=250, blank=True, null=True)
    body = RichTextUploadingField('Текст статьи')
    my_field = models.BooleanField('Добавить форму обратной связи(по умолчанию False)',default=False)

    def save(self, *args, **kwargs):
        self.slug = slugify(self.title, instance=self)
        super(Section, self).save(*args, **kwargs)

    def __str__(self):
        return self.title

    class Meta:
        verbose_name ='Подвкладку'
        verbose_name_plural ='Подвкладка'

class Callback(models.Model):
    theme = models.CharField('Тема обращения', max_length=200)
    name = models.CharField('ФИО', max_length=200)
    email = models.CharField('Эл. почта', max_length=200)
    file = models.FileField('Файл', blank=True)
    text = RichTextUploadingField('Текст')
    
    def __str__(self):
        return self.theme
    
    class Meta:
        verbose_name ='Обращение'
        verbose_name_plural ='Обращение'

class Groups(models.Model):
    title = models.CharField('Название группы', max_length=200)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name ='Список групп'
        verbose_name_plural ='Список групп'

class Predmets(models.Model):
    title = models.CharField('Название предмета', max_length=200)
    group = models.ForeignKey(Groups, on_delete = models.CASCADE)
    slug = models.SlugField('Слаг', max_length=250, blank=True)
    text = RichTextUploadingField('Текст')
    def __str__(self):
        return self.title
    def save(self, *args, **kwargs):
        self.slug = slugify(self.title + '-' + self.group.title, instance=self)
        super(Predmets, self).save(*args, **kwargs)
    class Meta:
        verbose_name ='Предмет'
        verbose_name_plural ='Предметы'
