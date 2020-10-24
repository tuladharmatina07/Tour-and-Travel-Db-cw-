<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PackageActivity.aspx.cs" Inherits="DbCourseWork.PackageActivity" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Tour & Travels</title>
        <link href="css/styles.css" rel="stylesheet" />
        <link href="https://cdn.datatables.net/1.10.20/css/dataTables.bootstrap4.min.css" rel="stylesheet" crossorigin="anonymous" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/js/all.min.js" crossorigin="anonymous"></script>
        
        <link href="Styles/css/styles.css" rel="stylesheet" />
        <style>
            .active{
                color: white;
            }
            .auto-style1 {
                width: 195px;
            }
        </style>
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <a class="navbar-brand" href="Dashboard.aspx">Tour and Travels</a>
       </nav>
       
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link" href="Dashboard.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
                                Dashboard</a>
                            <div class="sb-sidenav-menu-heading">Simple Forms</div>
                            <a class="nav-link" href="PackageForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Package Details</a>
                            <a class="nav-link" href="DesignationForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Designation Details</a>
                            <a class="nav-link" href="CustomerForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Customer Details</a>
                            <a class="nav-link" href="StaffForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Staff Details</a>
                            <a class="nav-link" href="TourGuideForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Tour Guide Details</a>

                            <div class="sb-sidenav-menu-heading">Complex Forms</div>
                            <a class="nav-link active" href="PackageActivity.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Package-Activity Schedule Form</a>
                            <a class="nav-link" href="StaffRole.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Staff-Role Mapping Form</a>
                            <a class="nav-link" href="PackageCustomer.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Customer-Package Schedule Form</a>
                            
                        </div>
                    </div>
                    
                </nav>
            </div>
            <div id="layoutSidenav_content">
                <main>
                    <div class="container-fluid">
                        <h1 class="mt-4">Package Activities Details</h1>
    <form id="form1" runat="server">
        <div>
            <table class="w-100">
                <tr>
                    <td class="auto-style1">PACKAGE_NAME:</td>
                    <td>
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID" AutoPostBack ="True" Width="136px">
            </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE ID" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE NAME" SortExpression="PACKAGE_NAME" />
                    <asp:BoundField DataField="ACTIVITY_ID" HeaderText="ACTIVITY ID" SortExpression="ACTIVITY_ID" />
                    <asp:BoundField DataField="ACTIVITY_NAME" HeaderText="ACTIVITY NAME" SortExpression="ACTIVITY_NAME" />
                    <asp:BoundField DataField="TRAVEL_MODE" HeaderText="TRAVEL MODE" SortExpression="TRAVEL_MODE" />
                    <asp:BoundField DataField="DAY" HeaderText="DAY" SortExpression="DAY" />
                    <asp:BoundField DataField="TRAVEL_DETAILS" HeaderText="TRAVEL DETAILS" SortExpression="TRAVEL_DETAILS" />
                    <asp:BoundField DataField="STATUS" HeaderText="STATUS" SortExpression="STATUS" />
                    <asp:BoundField DataField="DIFFICULTY_LEVEL" HeaderText="DIFFICULTY LEVEL" SortExpression="DIFFICULTY_LEVEL" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
            <br />
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT pda.package_id, p.package_name, pda.activity_id, a.activity_name,  a.travel_mode, pdd.day, pdd.travel_details, pdd.status, pdd.difficulty_level 
FROM package_day_activity pda 
JOIN activity a ON
pda.activity_id = a.activity_id
JOIN package p ON 
pda.package_id = p.package_id
JOIN
package_day_details pdd ON pda.day = pdd.day and pda.package_id= pdd.package_id" FilterExpression="package_id='{0}'">
                 <FilterParameters>
                <asp:ControlParameter Name="package_id" ControlID ="DropDownList1" PropertyName="SelectedValue" />
            </FilterParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</div>
                </main>
                <footer class="py-4 bg-light mt-auto">
                    <div class="container-fluid">
                        <div class="d-flex align-items-center justify-content-between small">
                            <div class="text-muted">Copyright &copy; Travel & Tours 2020</div>
                            <div>
                                <a href="#">Privacy Policy</a>
                                &middot;
                                <a href="#">Terms &amp; Conditions</a>
      Styles                      </div>
                        </div>
                    </div>
                </footer>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js" crossorigin="anonymous"></script>
        <script src="assets/demo/datatables-demo.js"></script>
    </body>
</html>

