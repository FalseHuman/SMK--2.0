from django.contrib import admin

from .models import *

@admin.register(Tabs)
class TabsAdmin(admin.ModelAdmin):
    list_display = ('title', 'sections')
    search_fields = ('title', 'sections')
    readonly_fields=('sections',)

@admin.register(Section)
class SectionAdmin(admin.ModelAdmin):
    list_display = ('name_tab', 'title','title_article', 'slug')
    search_fields = ('title','title_article')
    readonly_fields = ('slug',)

@admin.register(Callback)
class CallbackAdmin(admin.ModelAdmin):
    list_display = ('theme', 'name', 'email')


admin.site.site_title = "Салаватский медицинский колледж"
admin.site.site_header = "Салаватский медицинский колледж"