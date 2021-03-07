from django.contrib import admin
from .models import *

@admin.register(Article)
class ArticleAdmin(admin.ModelAdmin):
    list_display = ('title', 'min_text')
    prepopulated_fields = {'slug': ('title',)}
admin.site.register(Home)