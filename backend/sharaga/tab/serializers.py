from rest_framework import serializers

from .models import *

class TabsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Tabs
        depth = 1
        fields = ( 'url', 'title', 'sections')
        lookup_field =  'sections'
        extra_kwargs ={
            'url': {'lookup_field': 'sections'},
        }

class TabSerializer(serializers.ModelSerializer):
    class Meta:
        model = Section
        depth = 1
        fields = ( 'url', 'title','slug', 'title_article', 'name_tab', 'body', 'my_field')
        lookup_field =  'slug'
        extra_kwargs ={
            'url': {'lookup_field': 'slug'},
        }

class CallbackSerializer(serializers.ModelSerializer):
    class Meta:
        model = Callback
        fields = "__all__"


class GroupsSerializer(serializers.ModelSerializer):
    class Meta:
        model = Callback
        fields = "__all__"

class PredmetsSerializer(serializers.ModelSerializer):
        class Meta:
            model = Predmets
            depth = 1
            fields = ( 'url', 'title','slug', 'group', 'text')
            lookup_field =  'slug'
            extra_kwargs ={
                'url': {'lookup_field': 'slug'}
                }


