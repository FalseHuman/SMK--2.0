from rest_framework import serializers

from .models import *


class ObstetricianDistanceSerializer(serializers.ModelSerializer):

    class Meta:
        model = ObstetricianDistance
        fields = ('id', 'title')

class FeldhersDistanceSerializer(serializers.ModelSerializer):

    class Meta:
        model = FeldhersDistance
        fields = ('id', 'title')

class NursesDistanceSerializer(serializers.ModelSerializer):

    class Meta:
        model = NursesDistance
        fields = ('id', 'title')