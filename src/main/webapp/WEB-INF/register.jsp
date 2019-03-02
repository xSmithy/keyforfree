<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib tagdir="/WEB-INF/tags/templates" prefix="template"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<template:base>
    <jsp:attribute name="title">Login</jsp:attribute>

    <jsp:attribute name="head">
        <link rel="stylesheet" href="<c:url value="/style/register.css"/>" />
    </jsp:attribute>

    <jsp:attribute name="main">

        <div class="row pt-4">
            <div class="signup-form col-6">
                <form action="/examples/actions/confirmation.php" method="post">
                    <h2>Register</h2>
                    <p class="hint-text">Create your account. It's free and only takes a minute.</p>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <input type="text" class="form-control" name="first_name" placeholder="First Name" required="required">
                        </div>

                        <div class="form-group col-md-6">
                            <input type="text" class="form-control" name="last_name" placeholder="Last Name" required="required">
                        </div>
                    </div> 
                    <div class="form-group">
                        <input type="address" class="form-control" name="address" placeholder="Addresse" required="required">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" name="email" placeholder="Email" required="required">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="password" placeholder="Password" required="required">
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control" name="confirm_password" placeholder="Confirm Password" required="required">
                    </div>        
                    <div class="form-group">
                        <label class="checkbox-inline"><input type="checkbox" required="required"> I accept the <a href="#">Terms of Use</a> &amp; <a href="#">Privacy Policy</a></label>
                    </div>
                    <div class="form-group">
                        <button type="submit" class="btn btn-success btn-lg btn-block">Register Now</button>
                    </div>
                    <div class="text-center">Already have an account? <a href="LoginServlet?type=login">Sign in</a></div>
                </form>  
            </div>
        </div>
    </div>

</jsp:attribute>
</template:base>