<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CustomerForm.aspx.cs" Inherits="DbCourseWork.WebForm2" %>

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
                            <a class="nav-link active" href="CustomerForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Customer Details</a>
                            <a class="nav-link" href="StaffForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Staff Details</a>
                            <a class="nav-link" href="TourGuideForm.aspx">
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
                        <h1 class="mt-4">Customer Details</h1>
                        
    <form id="form1" runat="server">
        <div>
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="CUSTOMER_ID" HeaderText="CUSTOMER ID" ReadOnly="True" SortExpression="CUSTOMER_ID" />
                    <asp:BoundField DataField="CUSTOMER_NAME" HeaderText="CUSTOMER NAME" SortExpression="CUSTOMER_NAME" />
                    <asp:BoundField DataField="CUSTOMER_PHONENO" HeaderText="CUSTOMER PHONENO" SortExpression="CUSTOMER_PHONENO" />
                    <asp:BoundField DataField="CUSTOMER_ADDRESS" HeaderText="CUSTOMER ADDRESS" SortExpression="CUSTOMER_ADDRESS" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" DeleteCommand="DELETE FROM &quot;CUSTOMER&quot; WHERE &quot;CUSTOMER_ID&quot; = :CUSTOMER_ID" InsertCommand="INSERT INTO &quot;CUSTOMER&quot; (&quot;CUSTOMER_ID&quot;, &quot;CUSTOMER_NAME&quot;, &quot;CUSTOMER_PHONENO&quot;, &quot;CUSTOMER_ADDRESS&quot;) VALUES (:CUSTOMER_ID, :CUSTOMER_NAME, :CUSTOMER_PHONENO, :CUSTOMER_ADDRESS)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;CUSTOMER&quot;" UpdateCommand="UPDATE &quot;CUSTOMER&quot; SET &quot;CUSTOMER_NAME&quot; = :CUSTOMER_NAME, &quot;CUSTOMER_PHONENO&quot; = :CUSTOMER_PHONENO, &quot;CUSTOMER_ADDRESS&quot; = :CUSTOMER_ADDRESS WHERE &quot;CUSTOMER_ID&quot; = :CUSTOMER_ID">
                <DeleteParameters>
                    <asp:Parameter Name="CUSTOMER_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="CUSTOMER_ID" Type="String" />
                    <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                    <asp:Parameter Name="CUSTOMER_PHONENO" Type="Decimal" />
                    <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="CUSTOMER_NAME" Type="String" />
                    <asp:Parameter Name="CUSTOMER_PHONENO" Type="Decimal" />
                    <asp:Parameter Name="CUSTOMER_ADDRESS" Type="String" />
                    <asp:Parameter Name="CUSTOMER_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="CUSTOMER_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                    CUSTOMER_ID:
                    <asp:Label ID="CUSTOMER_IDLabel1" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER_NAME:
                    <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER_PHONENO:
                    <asp:TextBox ID="CUSTOMER_PHONENOTextBox" runat="server" Text='<%# Bind("CUSTOMER_PHONENO") %>' />
                    <br />
                    CUSTOMER_ADDRESS:
                    <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table class="w-100">
                        <tr>
                            <td>CUSTOMER ID:</td>
                            <td>
                                <asp:TextBox ID="CUSTOMER_IDTextBox" runat="server" Text='<%# Bind("CUSTOMER_ID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>CUSTOMER NAME:</td>
                            <td>
                                <asp:TextBox ID="CUSTOMER_NAMETextBox" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>CUSTOMER PHONENO:</td>
                            <td>
                                <asp:TextBox ID="CUSTOMER_PHONENOTextBox" runat="server" Text='<%# Bind("CUSTOMER_PHONENO") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>CUSTOMER ADDRESS:</td>
                            <td>
                                <asp:TextBox ID="CUSTOMER_ADDRESSTextBox" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    CUSTOMER ID:
                    <asp:Label ID="CUSTOMER_IDLabel" runat="server" Text='<%# Eval("CUSTOMER_ID") %>' />
                    <br />
                    CUSTOMER NAME:
                    <asp:Label ID="CUSTOMER_NAMELabel" runat="server" Text='<%# Bind("CUSTOMER_NAME") %>' />
                    <br />
                    CUSTOMER PHONENO:
                    <asp:Label ID="CUSTOMER_PHONENOLabel" runat="server" Text='<%# Bind("CUSTOMER_PHONENO") %>' />
                    <br />
                    CUSTOMER ADDRESS:
                    <asp:Label ID="CUSTOMER_ADDRESSLabel" runat="server" Text='<%# Bind("CUSTOMER_ADDRESS") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
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


