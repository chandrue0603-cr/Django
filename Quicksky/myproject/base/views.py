from django.shortcuts import render, get_object_or_404, redirect
from django.contrib.auth.decorators import login_required
from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash
from django.contrib.auth import logout
from django.contrib.auth import authenticate, login
from django.contrib import messages

def user_logout(request):
    logout(request)
    messages.success(request, "You have been logged out successfully.")
    return redirect("home")

from .models import *

# Create your views here.
def home(request):
    # Form-la irunthu vara city names-a edukkurom
    origin = request.GET.get('from')
    destination = request.GET.get('to')

    if origin and destination:
        # Search panna specific flights filter aagum
        flights = Flight.objects.filter(origin__icontains=origin, destination__icontains=destination)
    else:
        # Search pannala-na ella flights-um kaattum
        flights = Flight.objects.all()

    return render(request, 'home.html', {'flights': flights})

# -------------booking----------da
@login_required(login_url='/admin/login/')
def book_flight(request, id):
    flight = get_object_or_404(Flight, id=id)

    if request.method == "POST":
        Booking.objects.create(
            user=request.user,
            flight=flight,
            passenger_name=request.POST["name"],
            email=request.POST["email"],
            phone=request.POST["phone"],
            aadhar_number=request.POST["aadhar"],
            age=request.POST["age"],
            seat_class=request.POST["seat_class"],
            seat_number=request.POST["seat_number"]
        )
        return redirect("home")   # after booking go back to home

    return render(request, "booking.html", {"flight": flight})
#booking ahh paka
@login_required(login_url='/admin/login/')
def mybookings(request):
    bookings = Booking.objects.filter(user=request.user)
    return render(request, "mybookings.html", {"bookings": bookings})

@login_required(login_url='/admin/login/')
def cancel_booking(request, id):
    booking = get_object_or_404(Booking, id=id, user=request.user)

    # Save to history table
    BookingHistory.objects.create(
        user=booking.user,
        flight=booking.flight,
        passenger_name=booking.passenger_name,
        email=booking.email,
        phone=booking.phone,
        aadhar_number=booking.aadhar_number,
        age=booking.age,
        seat_class=booking.seat_class,
        seat_number=booking.seat_number
    )

    booking.delete()   # remove from active bookings
    return redirect("mybookings")


@login_required(login_url='/admin/login/')
def update_booking(request, id):
    booking = get_object_or_404(Booking, id=id, user=request.user)

    if request.method == "POST":
        booking.passenger_name = request.POST["name"]
        booking.email = request.POST["email"]
        booking.phone = request.POST["phone"]
        booking.age = request.POST["age"]
        booking.seat_class = request.POST["seat_class"]
        booking.seat_number = request.POST["seat_number"]
        booking.save()

        return redirect("mybookings")

    return render(request, "update_booking.html", {"booking": booking})

@login_required(login_url='/admin/login/')
def history(request):
    bookings = BookingHistory.objects.filter(user=request.user)
    return render(request, "history.html", {"bookings": bookings})

from django.contrib.auth.forms import PasswordChangeForm
from django.contrib.auth import update_session_auth_hash


from django.contrib.auth.decorators import login_required

@login_required(login_url='/admin/login/')
def profile(request):
    return render(request, "profile.html")

@login_required(login_url='/admin/login/')
def update_profile(request):
    if request.method == "POST":
        request.user.first_name = request.POST["first_name"]
        request.user.last_name = request.POST["last_name"]
        request.user.email = request.POST["email"]
        request.user.save()
        return redirect("profile")

    return render(request, "update_profile.html")


@login_required(login_url='/admin/login/')
def change_password(request):
    if request.method == "POST":
        form = PasswordChangeForm(request.user, request.POST)
        if form.is_valid():
            user = form.save()
            update_session_auth_hash(request, user)
            return redirect("profile")
    else:
        form = PasswordChangeForm(request.user)

    return render(request, "change_password.html", {"form": form})

from django.contrib.auth import logout

@login_required(login_url='/admin/login/')
def user_logout(request):
    logout(request)
    return redirect('/admin/login/')


def user_logout(request):
    logout(request)
    messages.success(request, "You have been logged out successfully.")
    return redirect("home")

def user_login(request):
    if request.method == "POST":
        username = request.POST["username"]
        password = request.POST["password"]

        user = authenticate(request, username=username, password=password)

        if user:
            login(request, user)
            return redirect("home")
        else:
            messages.error(request, "Invalid username or password")

    return render(request, "login.html")

def about(request):
    return render(request, "about.html")
