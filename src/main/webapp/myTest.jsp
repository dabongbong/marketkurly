<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TITLE</title>
<style>
div.hidden {
  display: none;
}
</style>
</head>
<body>
    <div class="col-6" class="detailForm">
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">주문 상세</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1" enctype="multipart/form-data">
                <div class="card-body">
                
                  <div class="form-group">
                    <select class="form-control" id="category_id" name="category.category_id">
                    	<option>좌측에서 주문내역 선택</option>
                    </select> 
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="주문번호" name="order_summary_id" readonly>
                  </div>
                  
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="상품" name="product_name" value="" readonly>
                    <input type="text" class="form-control" placeholder="가격" name="price" 	   value="" readonly>
                    <input type="text" class="form-control" placeholder="개수" name="order_count"  value="" readonly>
                  </div>
                </div>
                <div class="card-footer">
                  <button type="button" class="btn btn-info" >접기</button>
                </div>
              </form>
            </div>
    </div>
</body>
</html>