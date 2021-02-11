from django.contrib import admin

from .models import *

admin.site.register(Distance)
admin.site.register(Shedule)
class PredmetsAdmin(admin.ModelAdmin):
    list_display = ("title","group",)
admin.site.register(Predmets, PredmetsAdmin)

