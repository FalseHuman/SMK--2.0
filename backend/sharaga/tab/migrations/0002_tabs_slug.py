# Generated by Django 2.2.1 on 2021-03-04 16:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tab', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='tabs',
            name='slug',
            field=models.SlugField(default='', max_length=250, verbose_name='Слаг'),
            preserve_default=False,
        ),
    ]
