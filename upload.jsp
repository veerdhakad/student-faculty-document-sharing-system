
<html>
    <head>
        <title>File Upload</title>
       
     
    
    
    <body>
        <%@include file="Facultycommon.jsp"%>
    <div class="container">
        <tabel align="center">    
        <div class="panel panel-default" style="width:500px">
            <div class="panel-heading">
              <h3 class="panel-title">Add book</h3>
            </div>
            <div class="panel-body">
                <form method="POST" action="Enotes" enctype="multipart/form-data" >
            <div class="form-group" >
              <label for="exampleInputEmail1">Subject</label>
              <input class="form-control" type="text" placeholder="Subject name" id="example-text-input" name="sub" required="true">
             </div>
             <div class="form-group" >
              <label for="exampleInputEmail1">Author</label>
              <input class="form-control" type="text" placeholder="Name" id="example-text-input" name="author" required="true">
             </div>
            <div class="form-group" >
              <label for="exampleInputEmail1">book pdf</label>
              <input type="file" name="file" id="file" />
            </div>
            
     
        <button type="submit" class="btn btn-primary" name="Upload" value="Upload">Upload</button>
      </form>
       </table>         
                      
      </div>        
      </nav>      

       </div>
            <% 
      
            String ms=(String)session.getAttribute("msg");
            if(ms!=null)
               %>
               <h4></h4>
               <%
                session.removeAttribute("msg");
              %>
  </div><!-- /container -->
  </div>   
  <script src="js/jquery.js"></script>
      
      </body>
</html>