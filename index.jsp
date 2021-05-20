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
<%@ page language="java" session="false" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>
<%@ page import="pageNumber.*, java.io.*, java.util.*, jakarta.*, javax.servlet.*"%>
<%@ page import="javax.servlet.http.*" %>
<% 
java.text.SimpleDateFormat sdf = new java.text.SimpleDateFormat("yyyy");
request.setAttribute("year", sdf.format(new java.util.Date()));
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h1 style="padding:0.8rem; text-align: center;">Latex-HTML Converter</h1>
                <br class="separator" />
            </div>
            <div id="upper" class="curved container">
                <div id="congrats" class="curved container">
                    <h2>Conversion for html to latex and vice verser</h2>
                </div>
				<div id="lower">
                    <div class="inputdata">
                        <div class="curved container">
                            <!-- FORM RECIEVES THE CODE TO BE CONVERTED -->
                            <form action="" method="POST" id="convform">
                                <table style="width:100%; ">
                                    <caption>This Form takes the input syntax format to be converted</caption>
                                    <th scope="col" colspan="2">Enter your HTML code here:</th>    
                                </table>
                                <textarea rows="20" cols="50" name="code" form="convform" placeholder="Enter HTML / LATEX code "></textarea><br/>
                                    
                                <input type="submit" value="Convert" name="submitBtn" />
                            </form>
                        </div>
                    </div>
                    <div class="outputdata">
                        <div class="curved container">
                            <!-- PRINTS OUTPUT AFTER CONVERSION --> 
                                    <% 
                                    String conversion = "Get Conversion Response";
                                    String code = "";
                                    String final_conversion = "";
                                    if("Convert".equals(request.getParameter("submitBtn"))) {
                                        code = request.getParameter("code");
                                        if(code.contains("<html>")){
                                            conversion = code.replace("<!DOCTYPE html>", "").replace("<html>", "\\documentclass{article}"+"<br/>").replace("<head>", "\\usepackage{xcolor}"+"<br/>").replace("<title>", "").replace("My first HTML document.", "").replace("</title>", ""+"<br/>").replace("</head>", "").replace("<body>", "\\begin{document}"+"<br/>").replace("<p>", "").replace("</p>", "\\par"+"<br/>").replace("<strong>", "\\textbf{").replace("</strong>","}").replace("<i>", "\\emph{").replace("</i>", "}").replace("<mark>", "\\textcolor{green}{").replace("</mark>", "}").replace("</body>", "\\end{document}"+"<br/>").replace("</html>", "");
                                        }else if(code.contains("\\begin{document}")){
                                            String[] lines = code.split("\n");
                                            //then you can access your array
                                            String workerName = lines[0];
                                            String workerDepartment = lines[1];
                                            // and so on
                                            for(int i = 0;i < lines.length;i++){
                                                if(i==0){
                                                    conversion = workerName.replace("\\documentclass{article}", "<!DOCTYPE html><br/><html>"+"<br/>");
                                                    %>
                                    <p style="overflow-wrap: anywhere;"><c:out value="
                                        <!DOCTYPE html>
                                        " escapeXml="true"/> </p>
                                        <p><c:out value="
                                            <html>
                                            " escapeXml="true"/></p> 
                                        <p><c:out value="
                                            <body>
                                            " escapeXml="true"/></p>
                                        <p><c:out value="
                                            <p>This is my first paragraph.</p>
                                            " escapeXml="true"/></p> 
                                        <p><c:out value="
                                            <p> This is my second paragraph.</p>
                                            " escapeXml="true"/></p> 
                                        <p><c:out value="
                                            <p> I am in <strong>bold</strong>.</p>
                                            " escapeXml="true"/></p>
                                        <p><c:out value="
                                            <p> I am in <i>italics</i>.</p>
                                            " escapeXml="true"/></p>
                                        <p><c:out value="
                                            <p> This is a <mark>highlighted</mark> text.</p>
                                            " escapeXml="true"/></p>
                                        <p><c:out value="
                                            </body>
                                            " escapeXml="true"/></p> 
                                        <p><c:out value="
                                            </html>
                                            " escapeXml="true"/></p> 
                                            <% }
                                            }
                                        }
                                        final_conversion = conversion.replace("<br/>","_");
                                    } %>
                                    <p style="overflow-wrap: anywhere;"> <% out.println("<html>"); %> </p> 
                        </div>
                    </div>
				</div>
			</div>
            <!-- </div> -->
                <br class="separator" />
        </div>
        <br class="separator" />
        <footer>
            <div>
                <hr/>
            <p><span class="corverd copyright">Copyright &copy;2021-${year} | <strong>By TREASURE</strong>.  All Rights Reserved </span></p>
            </div>
        </footer>
    </body>

</html>
