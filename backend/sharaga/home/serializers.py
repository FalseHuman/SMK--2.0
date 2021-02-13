from rest_framework import serializers

from .models import *


class ArticleSerializer(serializers.ModelSerializer):

    class Meta:
        model = Article
        fields = ('id', 'title', 'text','min_text', 'status', 'pub_data')

class HomeSerializer(serializers.ModelSerializer):

    class Meta:
        model = Home
        fields = ('id', 'title', 'text')