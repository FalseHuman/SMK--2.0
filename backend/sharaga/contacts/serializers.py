
from rest_framework import serializers

from .models import Contacts, Hotline, Controls, Callback, Director


class ContactsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Contacts
        fields = ('id', 'contact_title', 'text', 'data')

class HotlineSerializer(serializers.ModelSerializer):

    class Meta:
        model = Hotline
        fields = ('id', 'hotline_title', 'text', 'data')

class ControlsSerializer(serializers.ModelSerializer):

    class Meta:
        model = Controls
        fields = ('id', 'controls_title', 'text', 'data')

class CallbackSerializer(serializers.ModelSerializer):

    class Meta:
        model = Callback
        fields = ('id', 'callback_title', 'text', 'data')

class DirectorSerializer(serializers.ModelSerializer):

    class Meta:
        model = Director
        fields = ('id', 'theme', 'name', 'email', 'text')