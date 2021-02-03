# Generated by Django 2.2.1 on 2021-02-03 09:29

import ckeditor_uploader.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('teachers', '0002_additionaleducation_educationalandmethodicalwork_seminars'),
    ]

    operations = [
        migrations.CreateModel(
            name='Certification',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200, verbose_name='Название статьи')),
                ('text', ckeditor_uploader.fields.RichTextUploadingField(verbose_name='Текст статьи')),
                ('data', models.DateTimeField(verbose_name='Дата публикации')),
            ],
            options={
                'verbose_name': 'Аттестацию',
                'verbose_name_plural': 'Аттестация',
            },
        ),
    ]