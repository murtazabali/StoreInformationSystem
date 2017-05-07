<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
table, tr, td, th {
	border: 1px solid black;
	border-collapse: collapse;
}

.txt {
	
}

.inew {
	
}

.iadd {
	
}

.txtp{
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript"
	src="webjars/jquery/3.2.1/dist/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('.txt').keydown(function(e) {
			if (e.keyCode == 13) {
				e.preventDefault();
				$('input[name=productid]').val('');
				$('#cmd2').val('notmax');
				$('#frmSIS').submit();

			}
		});
		
		$('.txtp').keydown(function(e) {
			if (e.keyCode == 13) {
				e.preventDefault();
				$('#frmSIS').submit();
			}
		});

		$('a.inew').click(function() {
			$('#cmd').val($(this).text());
			$('#cmd2').val('max');
			$('input[name=productid]').val('');
			$('#frmSIS').submit();
		});

		$('a.iadd').click(function() {
			$('#cmd').val($(this).text());
			$('#cmd2').val('notmax');
			$('#quantity').val($('input[name=qty]').val());
			$('#frmSIS').submit();
		});

	});
</script>
<title>SIS</title>
</head>
<body>
	<form id="frmSIS" method="post">
		<input type="hidden" id="cmd" name="cmd"> 
		<input type="hidden" id="cmd2" name="cmd2">
		<input type="hidden" id="quantity" name="quantity">
		<table>
			<tr>
				<td>Order ID:</td>
				<td><input type="text" name="orderid" class="txt"
					value="${order.orderid}"></td>
				<td colspan="3" style="text-align: center"><a href="#"
					class="inew">New</a></td>
			</tr>
			<tr>
				<td>Date:</td>
				<td colspan="5">${order.orderdate}</td>
			</tr>
			<tr>
				<td>Product ID:</td>
				<td colspan="5"><input type="text" name="productid" class="txtp"
					value="${product.productid}"></td>
			</tr>
			<tr>
				<td>Product Name:</td>
				<td colspan="5">${product.description}</td>
			</tr>
			<tr>
				<td>Qty :</td>
				<td><input type="text" name="qty"></td>
				<td colspan="3" style="text-align: center"><a href="#"
					class="iadd">Add</a></td>
			</tr>

			<tr>
				<td colspan="5" style="text-align: center"><b>Order Details</b></td>
			</tr>
			<tr>
				<th>Product ID</th>
				<th>Description</th>
				<th>Qty</th>
				<th>Price</th>
				<th>Amount</th>
			</tr>
			<c:forEach var="items" items="${orderdetails}">
				<tr>
					<td>${items.productid}</td>
					<td>${items.description}</td>
					<td>${items.qty}</td>
					<td>${items.price}</td>
					<td>${items.qty * items.price}</td>
				</tr>
			</c:forEach>
			<tr>
				<td colspan="4" style="text-align: center;"><b>Total</b></td>
				<td colspan="1"><b>${total}</b></td>
			</tr>
		</table>
	</form>
</body>
</html>