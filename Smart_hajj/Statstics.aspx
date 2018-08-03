<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Statstics.aspx.cs" Inherits="Smart_hajj.Statstics" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script type="text/javascript" src="https://www.google.com/jsapi"></script>
    <script type="text/javascript">
        google.load("visualization", "1", { packages: ["corechart"] });
        google.setOnLoadCallback(drawChart);
        function drawChart() {
            var options = {
                title: 'أحصائيات الحجاج لعام 2017',
                width: 400,
                height: 200,
                bar: { groupWidth: "50%" },
                legend: { position: "none" },
                isStacked: true
            };
            $.ajax({
                type: "POST",
                url: "Home.aspx/GetChartData",
                data: '{}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    var data = google.visualization.arrayToDataTable(r.d);
                    var chart = new google.visualization.ColumnChart($("#chart")[0]);
                    var chart1 = new google.visualization.ColumnChart($("#chart1")[0]);
                    chart.draw(data, options);
                    chart1.draw(data, options);
                },
                failure: function (r) {
                    alert(r.d);
                },
                error: function (r) {
                    alert(r.d);
                }
            });
        }
    </script>
    

        <div class="amado-pro-catagory clearfix" style="position: relative;height: 100%;">

            <div id="chart" style="width: 120px; height: 120px;">
    </div>
          <div id="chart1" style="width: 120px; height: 120px; padding:80px 0">
    </div>
        </div>





</asp:Content>
