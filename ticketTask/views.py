

# views.py
from django.shortcuts import render
from django.http.response import JsonResponse
from rest_framework import generics,permissions
from rest_framework.response import Response
from .models import Property
from .serializers import PropertySerializer, UserSerializer,ContactMessageSerializer

from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.authtoken.models import Token
from django.contrib.auth import get_user_model
from .forms import ContactForm


#read

class PropertyRead(generics.RetrieveAPIView):
    queryset= Property.objects.all()
    serializer_class=PropertySerializer




class PropertyList(generics.ListAPIView):
    queryset = Property.objects.all()
    serializer_class = PropertySerializer

#update
class UpdateProperty(generics.RetrieveUpdateAPIView):
    queryset = Property.objects.all()
    serializer_class = PropertySerializer


#add

class addProperty(generics.CreateAPIView):
    serializer_class = PropertySerializer


#read

class readProperty(generics.RetrieveAPIView):
    queryset=Property.objects.all()
    serializer_class = PropertySerializer



User = get_user_model()

class UserRegistration(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer
    permission_classes = [permissions.AllowAny]


class UserLogin(ObtainAuthToken):
    def post(self, request, *args, **kwargs):
        serializer = self.serializer_class(data=request.data,
                                          context={'request': request})
        serializer.is_valid(raise_exception=True)
        user = serializer.validated_data['user']
        token, created = Token.objects.get_or_create(user=user)
        return Response({'token': token.key, 'user_id': user.pk})
    


  

def contact_us(request):
    if request.method == 'POST':
        form = ContactForm(request.POST)
        if form.is_valid():
            form.save()

            # If the form is successfully saved, return a JSON response
            return JsonResponse({'message': 'Form submitted successfully'})
        else:
            # If the form is not valid, return a JSON response with error details
            return JsonResponse({'errors': form.errors}, status=400)
    else:
        #  GET request return a JSON response
        form = ContactForm()
        form_fields = {
            'name': form['name'].value(),
            'email': form['email'].value(),
            'subject': form['subject'].value(),
            'message': form['message'].value(),
        }
        return JsonResponse({'form_fields': form_fields})





