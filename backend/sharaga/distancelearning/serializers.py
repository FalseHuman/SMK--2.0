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