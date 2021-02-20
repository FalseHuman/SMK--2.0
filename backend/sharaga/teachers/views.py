from rest_framework import viewsets
from .models import *
from .serializers import *

class InfViewSet(viewsets.ModelViewSet):
    queryset = info.objects.all().order_by('-data')
    serializer_class = InfoSerializer

class EducationalandMethodicalWorkViewSet(viewsets.ModelViewSet):
    queryset = EducationalandMethodicalWork.objects.all().order_by('-data')
    serializer_class = EducationalandMethodicalWorkSerializer

class AdditionalEducationViewSet(viewsets.ModelViewSet):
    queryset = AdditionalEducation.objects.all().order_by('-data')
    serializer_class = AdditionalEducationSerializer

class SeminarsViewSet(viewsets.ModelViewSet):
    queryset = Seminars.objects.all().order_by('-data')
    serializer_class = SeminarsSerializer

class CertificationViewSet(viewsets.ModelViewSet):
    queryset = Certification.objects.all().order_by('-data')
    serializer_class = CertificationSerializer

class CallbackEducationViewSet(viewsets.ModelViewSet):
    queryset = CallbackEducation.objects.all().order_by('name')
    serializer_class = CallbackEducationSerializer