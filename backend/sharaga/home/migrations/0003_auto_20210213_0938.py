# Generated by Django 2.2.1 on 2021-02-13 09:38

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('home', '0002_auto_20210213_0805'),
    ]

    operations = [
        migrations.AlterField(
            model_name='article',
            name='min_text',
            field=models.CharField(max_length=100, verbose_name='Мин.текст'),
        ),
    ]