
# urls.py
from django.contrib import admin
from django.urls import path
from ticketTask import views
from .views import PropertyRead,PropertyList,UpdateProperty,addProperty,UserRegistration,UserLogin,contact_us




urlpatterns = [
    path('PropertyList/', views.PropertyList.as_view(), name='show_Property'),
    path('PropertyRead/<int:pk>/', views.PropertyRead.as_view(), name='Property_details'),
    path('UpdateProperty/<int:pk>/', views.UpdateProperty.as_view(), name='update_Property'),
    path('addProperty/', views.addProperty.as_view(), name='add_Property'),
    path('register/', UserRegistration.as_view(), name='user-registration'),
    path('login/', UserLogin.as_view(), name='user-login'),
    path('contact-us/', contact_us, name='contact_us'),

]

