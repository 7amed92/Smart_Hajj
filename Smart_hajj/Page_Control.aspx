<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Page_Control.aspx.cs" Inherits="Smart_hajj.Page_Control" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">

      <h1 class="my-4" style="padding-top: 60px;">Pilgrims total number : 2,352,122 </h1>

       <div class="row">
           <div class="col-lg-4 mb-4" style="    margin-left: 20%;">
          <div class="card h-100">
              <div style="margin-top:20px">
                            Pilgrims Group of  <asp:DropDownList ID="DropDownList1" runat="server">
                           <asp:ListItem Value="0">Please seleact group</asp:ListItem>
                         <asp:ListItem Value="1">1000</asp:ListItem>
                         <asp:ListItem Value="2">5000</asp:ListItem>
                         <asp:ListItem Value="3">10000</asp:ListItem>
                         <asp:ListItem Value="4">15000</asp:ListItem>
         </asp:DropDownList>
                </div>
          
<div style="margin-top:20px">
         <asp:RadioButton ID="RadioButton4" runat="server" />from 1000 to 2000<br />
         <asp:RadioButton ID="RadioButton5" runat="server" />from 2001 to 3000<br />
         <asp:RadioButton ID="RadioButton6" runat="server" />from 3001 to 4000<br />

</div>

              <div style="margin-top:20px">
                  period between etch Group <asp:DropDownList ID="DropDownList2" runat="server">
                           <asp:ListItem Value="0">Please seleact Period</asp:ListItem>
                         <asp:ListItem Value="1">30 min</asp:ListItem>
                         <asp:ListItem Value="2">60 min</asp:ListItem>
                         <asp:ListItem Value="3">90 min</asp:ListItem>
                         <asp:ListItem Value="4">120 min</asp:ListItem>
         </asp:DropDownList>
              </div>


              <div style="margin-top:20px; margin-left: 30%">
                  <asp:Button ID="btnPush" runat="server" Text="Push Notification" />
              </div>
          </div>
        </div>
        
           </div>
         </div>


</asp:Content>
