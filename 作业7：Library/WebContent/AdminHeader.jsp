<%@page import="net.model.AdminBean"%>
<%@page import="net.model.BookCardBean"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	AdminBean ab = (AdminBean) request.getSession().getAttribute("AdminLoginInfo");
%>
<!DOCTYPE html>
<link href="css/maintheme.css" rel="stylesheet" type="text/css">


<table width="100%" border="0">
	<tr>
		<td><div id="headleft"><table width="100%" border="0" class="text">
					<tr>

						<%
							if (ab != null) {
						%><td><img name="avatar" src="/WebContent/images/avatar/<%=ab.getAVATAR()%>.gif" width="32" height="32" id="avatar"></td><td><div id="username">您好，<%=ab.getANAME()%>！</div></td><%
						} else {
								%><td><img name="avatar" src="/WebContent/images/avatar/0.gif" width="32" height="32" id="avatar"></td><td>请登录</td><%									}
							%>
						<td><a href="index.jsp">首页</a></td>
						<td><a href="AdminIndex.jsp">管理首页</a></td>
						<td><a href="AdminBookCards.jsp">借书卡管理</a></td>
						<td><a href="AdminBooks.jsp">书籍管理</a></td>
						<td><a href="RecordCAdmin">借阅管理</a></td>
					</tr>
				</table>
			</div></td>
		<td><div id="headright"><table width="100%" border="0" class="text"><tr>

						<td><a href="AdminLogout">安全退出</a></td>

					</tr></table></div></td>
	</tr>
</table>
