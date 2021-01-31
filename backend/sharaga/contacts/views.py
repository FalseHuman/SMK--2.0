from rest_framework import viewsets

from .models import Contacts, Hotline, Controls, Callback, Director
from .serializers import ContactsSerializer, HotlineSerializer, ControlsSerializer, CallbackSerializer, DirectorSerializer


class ContactsViewSet(viewsets.ModelViewSet):
    queryset = Contacts.objects.all().order_by('-data')
    serializer_class = ContactsSerializer

class HotlineViewSet(viewsets.ModelViewSet):
    queryset = Hotline.objects.all().order_by('-data')
    serializer_class = HotlineSerializer

class ControlsViewSet(viewsets.ModelViewSet):
    queryset = Controls.objects.all().order_by('-data')
    serializer_class = ControlsSerializer
class CallbackViewSet(viewsets.ModelViewSet):
    queryset = Callback.objects.all().order_by('-data')
    serializer_class = CallbackSerializer
class DirectorViewSet(viewsets.ModelViewSet):
    queryset = Director.objects.all().order_by('theme')
    serializer_class = DirectorSerializer