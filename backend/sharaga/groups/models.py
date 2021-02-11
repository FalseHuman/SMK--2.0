from django.db import models
class ObstetricianDistance(models.Model):
    title = models.CharField('Название группы', max_length=200)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name ='Акушерское дело'
        verbose_name_plural ='Акушерское дело'

class FeldhersDistance(models.Model):
    title = models.CharField('Название группы', max_length=200)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name ='Лечебное дело'
        verbose_name_plural ='Лечебное дело'

class NursesDistance(models.Model):
    title = models.CharField('Название группы', max_length=200)
    def __str__(self):
        return self.title
    class Meta:
        verbose_name ='Сестринское дело'
        verbose_name_plural ='Сестринское дело'

