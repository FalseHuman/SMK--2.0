from django.contrib import admin

from .models import *

@admin.register(Tabs)
class TabsAdmin(admin.ModelAdmin):
    list_display = ('title', 'sections')
    prepopulated_fields = {'sections': ('title',)}

@admin.register(Section)
class SectionAdmin(admin.ModelAdmin):
    list_display = ('name_tab', 'title','title_article', 'slug')
    prepopulated_fields = {'slug': ('title',)}