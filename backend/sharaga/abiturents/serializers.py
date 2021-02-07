from rest_framework import serializers

from .models import *


class AbiturentsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Abiturents
        fields = ('id', 'title', 'text', 'pub_date')