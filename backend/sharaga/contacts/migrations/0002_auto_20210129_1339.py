# Generated by Django 2.2.1 on 2021-01-29 13:39

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('contacts', '0001_initial'),
    ]

    operations = [
        migrations.RenameField(
            model_name='contacts',
            old_name='title',
            new_name='contact_title',
        ),
    ]