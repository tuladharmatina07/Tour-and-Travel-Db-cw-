<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm8.aspx.cs" Inherits="DbCourseWork.WebForm8" %>

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
                width: 201px;
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
                            <a class="nav-link active" href="TourGuideForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Tour Guide Details</a>

                            <div class="sb-sidenav-menu-heading">Complex Forms</div>
                            <a class="nav-link" href="PackageActivity.aspx">
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
                        <h1 class="mt-4">Tour-Guide Details</h1>
 
    <form id="form1" runat="server">
        <div>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" DeleteCommand="DELETE FROM &quot;TOUR_GUIDE&quot; WHERE &quot;STAFF_ID&quot; =:STAFF_ID AND &quot;PACKAGE_ID&quot; =:PACKAGE_ID" ProviderName="System.Data.OracleClient" SelectCommand="select t.package_id, package_name, t.staff_id, staff_name FROM
package p JOIN tour_guide t ON
p.package_id = t.package_id
JOIN staff s ON t.staff_id = s.staff_id" UpdateCommand="UPDATE FROM &quot;TOUR_GUIDE&quot; WHERE &quot;STAFF_ID&quot; =:STAFF_ID AND &quot;PACKAGE_ID&quot; =:PACKAGE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STAFF_ID" />
                    <asp:Parameter Name="PACKAGE_ID" />
                </DeleteParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STAFF_ID" />
                    <asp:Parameter Name="PACKAGE_ID" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot;, &quot;TOTAL_DAYS&quot;, &quot;DIFFICULTY&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;) VALUES (:PACKAGE_ID, :PACKAGE_NAME, :TOTAL_DAYS, :DIFFICULTY, :START_DATE, :END_DATE)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGE_NAME&quot; = :PACKAGE_NAME, &quot;TOTAL_DAYS&quot; = :TOTAL_DAYS, &quot;DIFFICULTY&quot; = :DIFFICULTY, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                    <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                    <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
                    <asp:Parameter Name="DIFFICULTY" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="DateTime" />
                    <asp:Parameter Name="END_DATE" Type="DateTime" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PACKAGE_NAME" Type="String" />
                    <asp:Parameter Name="TOTAL_DAYS" Type="Decimal" />
                    <asp:Parameter Name="DIFFICULTY" Type="String" />
                    <asp:Parameter Name="START_DATE" Type="DateTime" />
                    <asp:Parameter Name="END_DATE" Type="DateTime" />
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM staff where role_id = 'r1'"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" DeleteCommand="DELETE FROM &quot;TOUR_GUIDE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID AND &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;TOUR_GUIDE&quot; (&quot;PACKAGE_ID&quot;, &quot;STAFF_ID&quot;) VALUES (:PACKAGE_ID, :STAFF_ID)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;TOUR_GUIDE&quot;">
                <DeleteParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PACKAGE_ID,STAFF_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
                    <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGE_ID,STAFF_ID" DataSourceID="SqlDataSource4" DefaultMode="Insert" Width="385px">
                <EditItemTemplate>
                    PACKAGE_ID:
                    <asp:Label ID="PACKAGE_IDLabel1" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                    <br />
                    STAFF_ID:
                    <asp:Label ID="STAFF_IDLabel1" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    PACKAGE_ID:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="PACKAGE_ID" DataValueField="PACKAGE_ID" SelectedValue='<%# Bind("PACKAGE_ID") %>'>
                    </asp:DropDownList>
                    <br />
                    STAFF_ID:
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="STAFF_ID" DataValueField="STAFF_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                    </asp:DropDownList>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PACKAGE_ID:
                    <asp:DropDownList ID="DropDownList1" runat="server">
                    </asp:DropDownList>
                    <br />
                    STAFF_ID: <br />
                    <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <br />
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

