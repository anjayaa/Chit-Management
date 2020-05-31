from  django.conf.urls import url
from  auctiondetails import views
urlpatterns = [
    url('^$',views.postamount,name='postamount'),
    url('^loting/',views.loting,name='loting'),
    url('^auction/',views.auction,name='auction'),
    url('^auctionlink/',views.auctionlink,name='auctionlink'),
    url(r'^lot/(?P<idd>\w+)', views.lot, name='lot'),
]