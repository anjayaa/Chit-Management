from django.shortcuts import render
from chitdetails.models import Chitdetails
from monthlypayment.models import Monthlypayment
from monthlypayment.models import MonthlyPay
from monthlypayment.models import MonthlyPayNoti
from request.models import Request
import datetime
from django.db import connection
# Create your views here.
def monthlypayment(request):
    objlist = Request.objects.filter(status='approve')
    cid=objlist.c_id
    objlist1=Chitdetails.objects.filter(c_id=cid)
    amot=objlist1.monthly_pay_amount
    obj = Chitdetails.objects.filter(c_id=cid)
    for o in obj:
        p = Monthlypayment()
        p.amount = o.monthly_pay_amount
        p.u_id = request.data["accno"]
        p.paymentdate = datetime.date.today()
        p.status = "payed"
        p.chit_id =o.c_id
        p.save()
    return render(request, 'monthlypayment/view_chiti.html',)
def monthlypay(request):
        objlist = Chitdetails.objects.all()
        context = {
            'objval': objlist,
        }
        return render(request,'monthlypayment/view_chiti.html',context)

def monthlypaydtails(request,idd):
    # uid = request.session["user"]
    objlist = connection.cursor()
    uidd = str(idd)
    query = (
        "SELECT * FROM `monthly_pay` a, `registration` b WHERE a.uid=b.u_id and a.cid=%s")
    objlist.execute(query, [idd])
    context = {
        'objval': objlist.fetchall(),

    }
    return render(request, 'monthlypayment/monthlypayment.html', context)
def monthlynoti(request,idd):
    if request.method == "POST":
            a=MonthlyPayNoti()
            a.cid=idd
            a.amount_details=request.POST.get("amount")
            a.date=request.POST.get("date")
            a.save()
            return monthlypay(request)

    return render(request, 'monthlypayment/paymentnotifications.html')
def monthpayment(request,idd):
    objlist = connection.cursor()
    objlist1 = connection.cursor()
    uidd = str(idd)
    query = (
        "SELECT * FROM `request` a, `registration` b WHERE a.u_id=b.u_id and a.c_id=%s")
    objlist.execute(query, [idd])

    query1 = (
        "SELECT COUNT(cid) FROM `monthly_pay_noti` WHERE cid=%s")
    objlist1.execute(query1, [idd])

    context = {
        'objval': objlist.fetchall(),
        'objval1': objlist1.fetchall(),
    }

    if request.method == "POST":
            ab = MonthlyPay.objects.get(uid=request.POST.get("uid"))
            pct=ab.chit_payed_count
            a=MonthlyPay.objects.get(uid=request.POST.get("uid"))

            a.chit_count = request.POST.get("times")
            a.chit_payed_count = (int(pct))+(int(1))
            # a.fine=request.POST.get("date")
            a.dt = datetime.date.today()
            a.save()
            return monthlypay(request)
    return render(request, 'monthlypayment/monthpayment.html',context)
def viewmonthlynoti(request):
    uid = request.session["user"]
    objlist = connection.cursor()
    uidd = str(uid)
    query = (
        "SELECT * FROM `monthly_pay_noti` a,`chitdetails` b,`request` c WHERE a.cid=b.c_id AND c.u_id=%s AND a.cid=c.c_id")
    objlist.execute(query, [uid])
    context = {
        'objval': objlist.fetchall(),

    }
    return render(request, 'monthlypayment/viewmniti.html', context)