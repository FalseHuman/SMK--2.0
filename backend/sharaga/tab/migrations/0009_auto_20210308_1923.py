# Generated by Django 2.2.1 on 2021-03-08 14:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('tab', '0008_auto_20210308_1904'),
    ]

    operations = [
        migrations.AlterField(
            model_name='predmets',
            name='slug',
            field=models.SlugField(blank=True, max_length=250, verbose_name='Слаг'),
        ),
    ]