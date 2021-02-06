from rest_framework import serializers

from .models import *


class InfoSerializer(serializers.ModelSerializer):

    class Meta:
        model = Info
        fields = ('id', 'title', 'text', 'pub_date')