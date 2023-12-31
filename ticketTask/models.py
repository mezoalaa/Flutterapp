from django.db import models
from django.contrib.auth.models import AbstractUser
from rest_framework import generics, permissions
from rest_framework.response import Response
from rest_framework.authtoken.views import ObtainAuthToken
from rest_framework.authtoken.models import Token
from django.contrib.auth import get_user_model

class Property(models.Model):
    title = models.CharField(max_length=255)
    description = models.TextField()
    price = models.DecimalField(max_digits=10, decimal_places=2)
    bedrooms = models.IntegerField()
    bathrooms = models.IntegerField()
    
    
    def __str__(self):
        return self.title
    



class CustomUser(AbstractUser):
    
    pass




class ContactMessage(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField()
    message = models.TextField()
  

    def __str__(self):
        return self.subject