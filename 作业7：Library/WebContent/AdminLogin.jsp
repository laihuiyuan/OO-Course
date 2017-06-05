<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>管理员登录</title>
		<link href="css/maintheme.css" rel="stylesheet" type="text/css">
    </head>
    <body>
		<table width="95%" border="0" align="center">
			<tr>
				<td align="center"><jsp:include flush="true" page="header.jsp"/></td>
			</tr>
			<tr>
				<td align="center"><div id="loginbox">

						<table width="100%" border="0">
							<tr>
								<td colspan="2" align="center"><div id="title">管理员登录</div></td>
							</tr>
                            <tr>
								<td><form  action="AdminLogin" method="post"><table width="100%" border="0">
											<tr>
												<td width="33%" align="right">管理员ID：</td>
												<td width="33%" align="center"><input type="text" name="adid" id="textfield"></td>
												<td width="33%">&nbsp;</td>
											</tr>
											<tr>
												<td width="33%" align="right">密码：</td>
												<td width="33%" align="center"><input type="password" name="password" id="password">
												</td>
												<td width="33%">&nbsp;</td>
											</tr>
											<tr>
												<td colspan="3" align="center"><input type="submit" name="button" id="button" value="登录"></td>
											</tr>
										</table>
									</form></td></tr>

						</table>

					</div></td>
			</tr>
			<tr>
				<td align="center"><jsp:include flush="true" page="footer.jsp"/></td>
			</tr>
		</table>

	</body>
</html>
