<%--
Licensed under one or more contributor license agreements.  
See the NOTICE file distributed with this work for additional information 
regarding copyright ownership.
The ASF licenses this file to You under the Apache License, Version 2.0
(the "License"); you may not use this file except in compliance with
the License.  You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<%@ page session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
request.setAttribute("year", sdf.format(new java.util.Date()));
%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <title><%=request.getServletContext().getServerInfo() %></title>
        <link href="favicon.ico" rel="icon" type="image/x-icon" />
        <link href="styles.css" rel="stylesheet" type="text/css" />
    </head>

    <body>
        <div id="wrapper">
            <div id="navigation" class="curved container">
                <h1 style="padding:0.8rem;"><center>Latex-HTML Converter</center></h1>
                <br class="separator" />
            </div>
            <div id="upper" class="curved container">
                <div id="congrats" class="curved container">
                    <h2>Conversion for html to latex and vice verser</h2>
                </div>
				<div id="lower">
				<div class="inputdata">
					<div class="curved container"></div>
				</div>
				<div class="outputdata">
					<div class="curved container"></div>
				</div>
				</div>
			</div>	
            <p><span class="corverd copyright">Copyright &copy;2021-${year}.  All Rights Reserved</span></p>
        </div>
    </body>

</html>
