<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PackageForm.aspx.cs" Inherits="DbCourseWork.WebForm3" %>

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
                            <a class="nav-link active" href="PackageForm.aspx">
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
                        <h1 class="mt-4">Package Details</h1>
    <form id="form1" runat="server">
        <div>
            
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="3" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE NAME" SortExpression="PACKAGE_NAME" />
                    <asp:BoundField DataField="TOTAL_DAYS" HeaderText="TOTAL DAYS" SortExpression="TOTAL_DAYS" />
                    <asp:BoundField DataField="DIFFICULTY" HeaderText="DIFFICULTY" SortExpression="DIFFICULTY" />
                    <asp:BoundField DataField="START_DATE" HeaderText="START DATE" SortExpression="START_DATE" />
                    <asp:BoundField DataField="END_DATE" HeaderText="END DATE" SortExpression="END_DATE" />
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" DeleteCommand="DELETE FROM &quot;PACKAGE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID" InsertCommand="INSERT INTO &quot;PACKAGE&quot; (&quot;PACKAGE_ID&quot;, &quot;PACKAGE_NAME&quot;, &quot;TOTAL_DAYS&quot;, &quot;DIFFICULTY&quot;, &quot;START_DATE&quot;, &quot;END_DATE&quot;) VALUES (:PACKAGE_ID, :PACKAGE_NAME, :TOTAL_DAYS, :DIFFICULTY, :START_DATE, :END_DATE)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;" UpdateCommand="UPDATE &quot;PACKAGE&quot; SET &quot;PACKAGE_NAME&quot; = :PACKAGE_NAME, &quot;TOTAL_DAYS&quot; = :TOTAL_DAYS, &quot;DIFFICULTY&quot; = :DIFFICULTY, &quot;START_DATE&quot; = :START_DATE, &quot;END_DATE&quot; = :END_DATE WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID">
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
            <br />
            
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGE_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
                <EditItemTemplate>
                    PACKAGE_ID:
                    <asp:Label ID="PACKAGE_IDLabel1" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />
                    START_DATE:
                    <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    <table class="w-100">
                        <tr>
                            <td>PACKAGE ID:</td>
                            <td>
                                <asp:TextBox ID="PACKAGE_IDTextBox" runat="server" Text='<%# Bind("PACKAGE_ID") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>PACKAGE NAME:</td>
                            <td>
                                <asp:TextBox ID="PACKAGE_NAMETextBox" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>TOTAL DAYS:</td>
                            <td>
                                <asp:TextBox ID="TOTAL_DAYSTextBox" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>DIFFICULTY:</td>
                            <td>
                                <asp:TextBox ID="DIFFICULTYTextBox" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>START DATE:</td>
                            <td>
                                <asp:TextBox ID="START_DATETextBox" runat="server" Text='<%# Bind("START_DATE") %>' />
                            </td>
                        </tr>
                        <tr>
                            <td>END DATE:</td>
                            <td>
                                <asp:TextBox ID="END_DATETextBox" runat="server" Text='<%# Bind("END_DATE") %>' />
                            </td>
                        </tr>
                    </table>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PACKAGE_ID:
                    <asp:Label ID="PACKAGE_IDLabel" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                    <br />
                    PACKAGE_NAME:
                    <asp:Label ID="PACKAGE_NAMELabel" runat="server" Text='<%# Bind("PACKAGE_NAME") %>' />
                    <br />
                    TOTAL_DAYS:
                    <asp:Label ID="TOTAL_DAYSLabel" runat="server" Text='<%# Bind("TOTAL_DAYS") %>' />
                    <br />
                    DIFFICULTY:
                    <asp:Label ID="DIFFICULTYLabel" runat="server" Text='<%# Bind("DIFFICULTY") %>' />
                    <br />
                    START_DATE:
                    <asp:Label ID="START_DATELabel" runat="server" Text='<%# Bind("START_DATE") %>' />
                    <br />
                    END_DATE:
                    <asp:Label ID="END_DATELabel" runat="server" Text='<%# Bind("END_DATE") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
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

