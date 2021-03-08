from django.contrib import admin

from .models import *

@admin.register(Tabs)
class TabsAdmin(admin.ModelAdmin):
    list_display = ('title', 'sections')
    search_fields = ('title', 'sections')
    prepopulated_fields = {'sections': ('title',)}

@admin.register(Section)
class SectionAdmin(admin.ModelAdmin):
    list_display = ('name_tab', 'title','title_article', 'slug')
    search_fields = ('title','title_article')
    prepopulated_fields = {'slug': ('title',)}

@admin.register(Callback)
class CallbackAdmin(admin.ModelAdmin):
    list_display = ('theme', 'name', 'email')

@admin.register(Groups)
class GroupsAdmin(admin.ModelAdmin):
    list_display = ['title']

@admin.register(Predmets)
class PredmetsAdmin(admin.ModelAdmin):
    list_display = ('title', 'group')
    search_fields = ('title', 'group')
    prepopulated_fields = {'slug': ('title',)}
    list_filter = ('group', 'title')