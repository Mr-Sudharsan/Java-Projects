<%@page import="com.mrsudharsan.dao.UserDao" %>
<jsp:useBean id="u" class="com.mrsudharsan.bean.UserBean"></jsp:useBean>
<jsp:setProperty property="*" name="u"></jsp:setProperty>


<%
int i=UserDao.delete(u);
response.sendRedirect("ViewUsers.jsp");
%>