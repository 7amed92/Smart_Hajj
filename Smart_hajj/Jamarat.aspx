<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Jamarat.aspx.cs" Inherits="Smart_hajj.Jamarat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">

      <h1 class="my-4" style="padding-top: 60px;">Ramy al-Jamarat</h1>

        <div class="row">
        <div class="col-lg-4 mb-4" style="    margin-left: 20%;">
          <div class="card h-100">
            <h4 class="card-header">Saudi Arabia</h4>
            <div class="card-body">
              <asp:ImageButton ID="ImageButton2" runat="server" Height="111px" ImageUrl="~/img/saudi-arabia.png" Width="100%" />
            </div>
            <div class="card-footer">
              <a href="Page_Control.aspx" class="btn btn-primary" style="margin-left: 40%;">Enter</a>
            </div>
          </div>
        </div>
        <div class="col-lg-4 mb-4">
          <div class="card h-100">
            <h4 class="card-header">Oman</h4>
            <div class="card-body">
              <asp:ImageButton ID="ImageButton1" runat="server"  Height="111px" ImageUrl="~/img/oman.png" Width="80%" />
            </div>
            <div class="card-footer">
              <a href="#" class="btn btn-primary" style="margin-left: 40%;">Enter</a>
            </div>
          </div>
        </div>
      </div>
      <!-- /.row -->
         </div>



         </div>



</asp:Content>
