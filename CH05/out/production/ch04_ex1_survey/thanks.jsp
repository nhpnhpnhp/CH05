<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"><title>Survey Result</title></head>
<body>
<h1>Thank you for your submission!</h1>

<h2>Your information</h2>
<p>First Name: ${param.firstName}</p>
<p>Last Name: ${param.lastName}</p>
<p>Email: ${param.email}</p>
<p>Date of Birth: ${param.dob}</p>

<h2>Survey</h2>
<p>Heard From: ${param.heardFrom}</p>
<p>Wants Updates: ${param.wantsUpdates}</p>
<p>Email OK: ${param.emailOK}</p>
<p>Contact Via: ${param.contactVia}</p>
</body>
</html>
