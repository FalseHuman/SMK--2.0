from rest_framework import serializers

from .models import *


class DistanceSerializer(serializers.ModelSerializer):

    class Meta:
        model = Distance
        fields = ('id', 'title', 'text', 'pub_date')

class SheduleSerializer(serializers.ModelSerializer):

    class Meta:
        model = Shedule
        fields = ('id', 'title', 'text', 'pub_date')

class FeldhersSerializers(serializers.ModelSerializer):

    class Meta:
        model = Feldhers
        fields = ('id', 'title', 'text')

class NursesSerializers(serializers.ModelSerializer):

    class Meta:
        model = Nurses
        fields = ('id', 'title', 'text')

class ObstetricianSerializers(serializers.ModelSerializer):

    class Meta:
        model = Obstetrician
        fields = ('id', 'title', 'text')