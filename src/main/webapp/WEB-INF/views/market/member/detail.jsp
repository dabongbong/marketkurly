<%@page import="com.kurly.marketkurly.domain.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../inc/header.jsp" %>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-12">
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">상세내용</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1">
              	<input type="hidden" name="member_id" value="<%=member.getMember_id()%>">
              	
              	
                <div class="card-body">
                
                  <div class="form-group">
                    아이디 <input type="text" class="form-control" value="<%=member.getUser_id() %>" name="user_id">
                    이름 <input type="text" class="form-control" value="<%=member.getMember_name() %>" name="member_name">
                    이메일 <input type="text" class="form-control" value="<%=member.getEmail() %>" name="email">
                    핸드폰<input type="text" class="form-control" value="<%=member.getPhone() %>" name="phone">
                    주소<input type="text" class="form-control" value="<%=member.getAddr() %>" name="addr">
                    성별<input type="text" class="form-control" value="<%=member.getGender() %>" name="gender">
                    생일<input type="text" class="form-control" value="<%=member.getBirth()%>" name="birth">
                  </div>
                  
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" onClick="bt_edit()">수정</button>
                  <button type="button" class="btn btn-info" onClick="bt_del()">탈퇴</button>
                  <button type="button" class="btn btn-info" onClick="location.href='/admin/member/list';">목록</button>
                </div>
              </form>
            </div>
            
            <!-- /.card -->
          </div>
        
       </div>
        
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<%@ include file="../inc/footer.jsp" %>

<!-- Summernote -->
<script src="/resources/admin/plugins/summernote/summernote-bs4.min.js"></script>

<!-- bs-custom-file-input 파일컴포넌트 커스터마이징 -->
<script src="/resources/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>

<script>

</script>
<script>
//수정하기
function bt_edit(){
	if(confirm("수정하시겠습니까?")){
		form1.action="/update";
		form1.method="post";
		form1.submit();
	}
}
function bt_del(){
	if(confirm("삭제하시겠어요?")){
		location.href="/admin/member/delete?member_id=<%=member.getMember_id()%>";
	}
}



</script>
</body>
</html>










