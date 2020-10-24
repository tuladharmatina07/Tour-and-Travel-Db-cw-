<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TourGuideForm.aspx.cs" Inherits="DbCourseWork.TourGuide1" %>

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
                margin-right: 43px;
            }
            .auto-style2 {
                width: 11px;
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
                        <h1 class="mt-4">Tour Guide Details</h1>
                        
                        
    <form id="form1" runat="server">
        <div>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * from staff where role_id = 'r1'"></asp:SqlDataSource>
        </div>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;TOUR_GUIDE&quot;">
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;PACKAGE&quot;">
        </asp:SqlDataSource>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="PACKAGE_ID,STAFF_ID" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <Columns>
                <asp:CommandField ShowDeleteButton="True" />
                <asp:TemplateField HeaderText="PACKAGE NAME" SortExpression="PACKAGE_ID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource3" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID" SelectedValue='<%# Bind("PACKAGE_ID") %>'>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList5" runat="server" DataSourceID="SqlDataSource3" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID" Enabled="False" SelectedValue='<%# Bind("PACKAGE_ID") %>'>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="STAFF NAME" SortExpression="STAFF_ID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID">
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:DropDownList ID="DropDownList6" runat="server" DataSourceID="SqlDataSource1" DataTextField="STAFF_NAME" DataValueField="STAFF_ID" Enabled="False" SelectedValue='<%# Bind("STAFF_ID") %>'>
                        </asp:DropDownList>
                    </ItemTemplate>
                </asp:TemplateField>
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
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGE_ID,STAFF_ID" DataSourceID="SqlDataSource2" DefaultMode="Insert" CssClass="auto-style1" Width="354px">
            <EditItemTemplate>
                PACKAGE_ID:
                <asp:Label ID="PACKAGE_IDLabel1" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                <br />
                STAFF_ID:
                <asp:Label ID="STAFF_IDLabel1" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                <br />
                
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="w-100">
                    <tr>
                        <td>PACKAGE NAME:</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID" SelectedValue='<%# Bind("PACKAGE_ID") %>'>
                            </asp:DropDownList>
                        </td>
                    </tr>
                    <tr>
                        <td>STAFF NAME:</td>
                        <td class="auto-style2">
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource1" DataTextField="STAFF_NAME" DataValueField="STAFF_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                PACKAGE_:
                <asp:Label ID="PACKAGE_IDLabel" runat="server" Text='<%# Eval("PACKAGE_ID") %>' />
                <br />
                STAFF_ID:
                <asp:Label ID="STAFF_IDLabel" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                <br />
                <asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
&nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <br />
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
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;ROLE&quot;"></asp:SqlDataSource>
    </body>
</html>


