# Generated by Django 2.2.1 on 2021-02-11 11:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('groups', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='FeldhersDistance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200, verbose_name='Название группы')),
            ],
            options={
                'verbose_name': 'Лечебное дело',
                'verbose_name_plural': 'Лечебное дело',
            },
        ),
        migrations.CreateModel(
            name='NursesDistance',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=200, verbose_name='Название группы')),
            ],
            options={
                'verbose_name': 'Сестринское дело',
                'verbose_name_plural': 'Сестринское дело',
            },
        ),
        migrations.AlterField(
            model_name='obstetriciandistance',
            name='title',
            field=models.CharField(max_length=200, verbose_name='Название группы'),
        ),
    ]
