

# main urls.py
from django.contrib import admin
from django.urls import path, include
app_name = 'ticketTask'

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include('ticketTask.urls')),
]
