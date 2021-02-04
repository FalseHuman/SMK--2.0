from rest_framework import serializers

from .models import *


class StudentsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Students
        fields = ('id', 'title', 'text', 'pub_date')