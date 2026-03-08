from django.db import models
from django.contrib.auth.models import User
# Create your models here.

#flight deatils
class Flight(models.Model):
    airline=models.CharField(max_length=100)
    flight_no=models.CharField(max_length=10)
    origin=models.CharField(max_length=100)
    destination=models.CharField(max_length=100)
    departure_time=models.TimeField()
    departure_date=models.DateField()
    price=models.IntegerField()
    
    def __str__(self):
        return f"{self.airline} - {self.flight_no}"

#user book panum bothu passenger details store pana
class Booking(models.Model):
    user=models.ForeignKey(User, on_delete=models.CASCADE)
    flight=models.ForeignKey(Flight, on_delete=models.CASCADE)  
    passenger_name=models.CharField(max_length=100)
    email=models.EmailField()
    phone=models.CharField(max_length=15)
    aadhar_number=models.CharField(max_length=12)
    age=models.IntegerField()
    seat_class=models.CharField(max_length=20)
    seat_number=models.CharField(max_length=10)
    
    def __str__(self):
        return self.passenger_name
    
class BookingHistory(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    flight = models.ForeignKey(Flight, on_delete=models.CASCADE)
    passenger_name = models.CharField(max_length=100)
    email = models.EmailField()
    phone = models.CharField(max_length=15)
    aadhar_number = models.CharField(max_length=12)
    age = models.IntegerField()
    seat_class = models.CharField(max_length=20)
    seat_number = models.CharField(max_length=10)
    cancelled_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.passenger_name
