<%@ Page Title="" Language="VB" MasterPageFile="~/Players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="container">

        <!-- Heading Row -->
        <div >
                <h1 style="text-align:center;">Welcome!  Take a look at the 2012 New York Yankees Roster!</h1>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Well -->
        <div class="row">
            <div class="col-lg-12">
                <div class="well text-center">
                   
                </div>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->

        <!-- Content Row -->
        <div class="row">
            <div class="col-md-4">
                <asp:Image src="/images/stadium.jpg" ID="stadium" runat="server" alt="New York Yankees" style="height:200px; width:300px; "/>
                
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4">
                <asp:Image src="/images/whitelogo.jpg" ID="whitelogo" runat="server" alt="New York Yankees" style="height:200px; width:300px; "/>
              
            </div>
            <!-- /.col-md-4 -->
            <div class="col-md-4">
               <asp:Image src="/images/teamhandshake.jpg" ID="teamhandshake" runat="server" alt="New York Yankees" style="height:200px; width:300px; "/>
               
            </div>
            <!-- /.col-md-4 -->
        </div>
        <!-- /.row -->


    </div>
    <!-- /.container -->


</asp:Content>

