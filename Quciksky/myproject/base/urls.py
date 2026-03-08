from django.urls import path
from .views import *

urlpatterns=[
    path('',home, name='home'),
    path('book/<int:id>',book_flight,name='book'),
    path("mybookings/", mybookings, name="mybookings"),
    path('cancel/<int:id>/', cancel_booking, name="cancel_booking"),
    path("update/<int:id>/", update_booking, name="update_booking"),
    path("history/", history, name="history"),
    
    
    path("profile/", profile, name="profile"),
    path("update-profile/", update_profile, name="update_profile"),
    path("change-password/", change_password, name="change_password"),
    path("logout/", user_logout, name="logout"),
    path("logout/", user_logout, name="logout"),
    path("login/", user_login, name="login"),
    path("about/", about, name="about"),
]