from rest_framework import serializers

from .models import *

class InfoSerializer(serializers.ModelSerializer):

    class Meta:
        model = info
        fields = ('id', 'title', 'text', 'data')

class EducationalandMethodicalWorkSerializer(serializers.ModelSerializer):

    class Meta:
        model = EducationalandMethodicalWork
        fields = ('id', 'title', 'text', 'data')

class AdditionalEducationSerializer(serializers.ModelSerializer):

    class Meta:
        model = AdditionalEducation
        fields = ('id', 'title', 'text', 'data')

class SeminarsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Seminars
        fields = ('id', 'title', 'text', 'data')
