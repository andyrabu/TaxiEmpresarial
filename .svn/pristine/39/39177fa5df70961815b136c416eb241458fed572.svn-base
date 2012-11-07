<%@taglib uri="http://struts.apache.org/tags-bean" prefix="bean"%>
<%@taglib uri="http://struts.apache.org/tags-logic" prefix="logic"%>
<%@taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<html>
<head>
</head>
<body>

<h2>Struts - Validator Example</h2>

<b>User Registeration Form</b>
<br/><br/>

<font color="red">
<html:errors/>
</font>

<html:form action="/Register">

<br/>
<bean:message key="label.user.username" /> : 
<html:text property="username" size="20"/>
<br/>
<bean:message key="label.user.pwd" /> : 
<html:text property="pwd" size="20"/>
<br/>
<bean:message key="label.user.pwd2" /> : 
<html:text property="pwd2" size="20"/>
<br/>
<bean:message key="label.user.email" /> : 
<html:text property="email" size="20"/>
<br/><br/>
<html:submit>
<bean:message key="label.user.button.submit" />
</html:submit>

</html:form>

</body>
</html>