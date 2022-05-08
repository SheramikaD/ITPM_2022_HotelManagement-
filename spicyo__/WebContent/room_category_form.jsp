<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
  <!-- BEGIN: Head-->
    <head>
        <%@include file="head.jsp" %>
    </head>
    <!-- END: Head-->
    <body class="vertical-layout page-header-light vertical-menu-collapsible vertical-dark-menu preload-transitions 2-columns   " data-open="click" data-menu="vertical-dark-menu" data-col="2-columns">

        <!-- BEGIN: Header-->
        <header class="page-topbar" id="header">
            <%@include file="header.jsp" %>
        </header>
        <!-- END: Header-->




        <!-- BEGIN: SideNav-->
        <%@include file="side_nav.jsp" %>

        <!-- END: SideNav-->

    <!-- BEGIN: Page Main-->
    <div id="main">
      <div class="row">
        <div class="col s12">
          <div class="container">
            <div class="section">
   <!--card stats start-->
   <!-- Form Advance -->
    <div class="col s12 m12 l12">
      <div id="Form-advance" class="card card card-default scrollspy">
        <div class="card-content">
          <h4 class="card-title">New Category form</h4>
          <form>
           
               <div class="col m6 s12 file-field input-field">
                <div class="btn float-right">
                  <span>Select image</span>
                  <input type="file">
                </div>
                <div class="file-path-wrapper">
                  <input class="file-path validate" type="text">
                </div>
              </div>
              <div class="input-field col m6 s12">
                <select>
                  <option value="" disabled="" selected="">Select Room Category</option>
                  <option value="1">Type 01</option>
                  <option value="2">Type 02</option>
                  </select>
                <label>Select Profile</label>
              </div>
              <div class="row">
              <div class="input-field col s12">
                <input id="password6" type="password">
                <label for="password">Room Price</label>
              </div>
            </div>
            <div class="row">
              <div class="input-field col s12">
                <input id="password6" type="password">
                <label for="password">Description</label>
              </div>
            </div>
              
           <div class="row">

              
              <div class="row">
                <div class="input-field col s12">
                  <button class="btn cyan waves-effect waves-light left" type="submit" name="action">Cancel
                    <i class="material-icons left">backspace</i>
                  </button>
                
               
                  <button class="btn cyan waves-effect waves-light right" type="submit" name="action">Submit
                    <i class="material-icons right">send</i>
                  </button>
                </div>
              </div>
            </div>

          </form>
           <!-- users view card data start -->
  <div class="card">
    <div class="card-content">
      <div class="row">
        <div>
          <table class="responsive-table">
            <thead>
              <h5>Room Details</h5>
              <tr>
                <th>#</th>
                <th>Image</th>
                <th>Category</th>
                <th>Room No </th>
                <th>Action Edit</th>
                <th>Action Delete</th>
                
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>No</td>
                <td>Yes</td>
                <td>Articles</td>
                <td>No</td>
                <td> <a href="page-users-edit.html" class="btn-small indigo">Edit</a></td>
                <td><a href="user-profile-page.html" class="btn-small btn-light-indigo">Delete</a></td>
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
  <!-- users view card data ends -->
        </div>
      </div>
    </div>

  </div>

   <!--card stats end--><!--end container-->
  <%@include file="footer.jsp" %> 
  </body>
</html>