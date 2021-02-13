# Generated by Django 2.2.1 on 2021-02-13 08:05

from django.db import migrations, models
import django.utils.timezone


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='article',
            name='min_text',
            field=models.CharField(default='', max_length=200, verbose_name='Мин.текст'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='article',
            name='pub_data',
            field=models.DateTimeField(default=django.utils.timezone.now, verbose_name='Дата публикации'),
        ),
    ]