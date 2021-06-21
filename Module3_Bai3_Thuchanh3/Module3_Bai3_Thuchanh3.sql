use quanlybanhang;
select oder.oID, oder.oDate, oder.oTotalPrice
from oder;
select customer.Name, product.pName
from customer, oder, OderDetail, product
where oder.cID = customer.cID
and product.pID = OderDetail.pId
and oder.oID = OderDetail.oID;

select *
from customer
where customer.cID not in ( select cId from oder);

select oder.oID, oder.oDate, sum(product.pPrice*oderDetail.odQTY) as oTotalPrice
from oder, product, oderdetail
where oder.oID = oderdetail.oID
and product.pID = oderdetail.pID
group by oderdetail.oID
