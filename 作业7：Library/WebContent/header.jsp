<%@page import="net.model.BookCardBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
	BookCardBean bcb = (BookCardBean) request.getSession().getAttribute("loginInfo");
%>
<!DOCTYPE html>
<link href="css/maintheme.css" rel="stylesheet" type="text/css">


<table width="100%" border="0">
	<tr>
		<td><div id="headleft"><table width="100%" border="0" class="text">
					<tr>

						<%
							if (bcb != null) {
						%><td><width="32" height="32" id="avatar"></td><td><div id="username">您好，<%=bcb.getBNAME()%>！</div></td><%							} else {
							}
							%>
                        <td><a href="index.jsp">首页</a></td>
						<td><a href="userinfo.jsp">个人信息</a></td>
						<td><a href="RecordC">借阅管理</a></td>
					</tr>
				</table>
			</div></td>
		<td><div id="headright"><table width="100%" border="0" class="text"><tr>
						<%

							if (bcb != null) {
						%><td><a href="Logout">安全退出</a></td><%					} else {
						%><td><a href="Login.jsp">用户登录</a></td><%						}
						%>

					</tr></table></div></td>
	</tr>
</table>
