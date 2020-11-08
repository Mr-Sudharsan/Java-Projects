<%@page import="com.mrsudharsan.dao.UserDao" %>
<jsp:useBean id="u" class="com.mrsudharsan.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>

<%
int s=UserDao.save(u);
if(s>0)
{
	response.sendRedirect("Adduser_sucess.jsp");
}
else
{
	response.sendRedirect("adduser_fail.jsp");
}
%>

