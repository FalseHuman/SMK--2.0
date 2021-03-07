from rest_framework import serializers

from .models import *


class ArticleSerializer(serializers.ModelSerializer):

    class Meta:
        model = Article
        fields = ('url', 'title', 'text','min_text', 'status', 'pub_data', 'slug')
        lookup_field = 'slug'
        extra_kwargs = {
            'url': {'lookup_field': 'slug'},
        }

class HomeSerializer(serializers.ModelSerializer):

    class Meta:
        model = Home
        fields = ('id', 'title', 'text')