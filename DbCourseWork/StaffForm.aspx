<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StaffForm.aspx.cs" Inherits="DbCourseWork.Staff" %>

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
                            <a class="nav-link" href="CustomerForm.aspx">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                Customer Details</a>
                            <a class="nav-link active" href="StaffForm.aspx">
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
                        <h1 class="mt-4">Staff Details</h1>

    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#CCCCCC" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF ID" ReadOnly="True" SortExpression="STAFF_ID" />
                    <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF NAME" SortExpression="STAFF_NAME" />
                    <asp:BoundField DataField="STAFF_PHONENO" HeaderText="STAFF PHONENO" SortExpression="STAFF_PHONENO" />
                    <asp:BoundField DataField="STAFF_ADDRESS" HeaderText="STAFF ADDRESS" SortExpression="STAFF_ADDRESS" />
                    <asp:TemplateField HeaderText="ROLE NAME" SortExpression="ROLE_ID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" Enabled="False" SelectedValue='<%# Bind("ROLE_ID") %>'>
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
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=dbcoursework;Password=dbcoursework;Unicode=True" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;STAFF_NAME&quot;, &quot;STAFF_PHONENO&quot;, &quot;STAFF_ADDRESS&quot;, &quot;ROLE_ID&quot;) VALUES (:STAFF_ID, :STAFF_NAME, :STAFF_PHONENO, :STAFF_ADDRESS, :ROLE_ID)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;STAFF&quot;" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;STAFF_NAME&quot; = :STAFF_NAME, &quot;STAFF_PHONENO&quot; = :STAFF_PHONENO, &quot;STAFF_ADDRESS&quot; = :STAFF_ADDRESS, &quot;ROLE_ID&quot; = :ROLE_ID WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
                <DeleteParameters>
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                    <asp:Parameter Name="STAFF_NAME" Type="String" />
                    <asp:Parameter Name="STAFF_PHONENO" Type="Decimal" />
                    <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                    <asp:Parameter Name="ROLE_ID" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="STAFF_NAME" Type="String" />
                    <asp:Parameter Name="STAFF_PHONENO" Type="Decimal" />
                    <asp:Parameter Name="STAFF_ADDRESS" Type="String" />
                    <asp:Parameter Name="ROLE_ID" Type="String" />
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=dbcoursework;Password=dbcoursework;Unicode=True" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot;) VALUES (:ROLE_ID, :ROLE_NAME)" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;ROLE_NAME&quot; = :ROLE_NAME WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
                <DeleteParameters>
                    <asp:Parameter Name="ROLE_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="ROLE_ID" Type="String" />
                    <asp:Parameter Name="ROLE_NAME" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="ROLE_NAME" Type="String" />
                    <asp:Parameter Name="ROLE_ID" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
        </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1" DefaultMode="Insert">
            <EditItemTemplate>
                STAFF_ID:
                <asp:Label ID="STAFF_IDLabel1" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                <br />
                STAFF_NAME:
                <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                <br />
                STAFF_PHONENO:
                <asp:TextBox ID="STAFF_PHONENOTextBox" runat="server" Text='<%# Bind("STAFF_PHONENO") %>' />
                <br />
                STAFF_ADDRESS:
                <asp:TextBox ID="STAFF_ADDRESSTextBox" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                <br />
                ROLE_ID:
                <asp:TextBox ID="ROLE_IDTextBox" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                <table class="w-100">
                    <tr>
                        <td>STAFF ID: </td>
                        <td>
                            <asp:TextBox ID="STAFF_IDTextBox" runat="server" Text='<%# Bind("STAFF_ID") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>STAFF NAME:</td>
                        <td>
                            <asp:TextBox ID="STAFF_NAMETextBox" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>STAFF PHONENO:</td>
                        <td>
                            <asp:TextBox ID="STAFF_PHONENOTextBox" runat="server" Text='<%# Bind("STAFF_PHONENO") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>STAFF ADDRESS:</td>
                        <td>
                            <asp:TextBox ID="STAFF_ADDRESSTextBox" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td>ROLE NAME:</td>
                        <td>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                            </asp:DropDownList>
                        </td>
                    </tr>
                </table>
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                <table class="w-100">
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <br />
                STAFF_ID:
                <asp:Label ID="STAFF_IDLabel" runat="server" Text='<%# Eval("STAFF_ID") %>' />
                <br />
                STAFF_NAME:
                <asp:Label ID="STAFF_NAMELabel" runat="server" Text='<%# Bind("STAFF_NAME") %>' />
                <br />
                STAFF_PHONENO:
                <asp:Label ID="STAFF_PHONENOLabel" runat="server" Text='<%# Bind("STAFF_PHONENO") %>' />
                <br />
                STAFF_ADDRESS:
                <asp:Label ID="STAFF_ADDRESSLabel" runat="server" Text='<%# Bind("STAFF_ADDRESS") %>' />
                <br />
                ROLE_ID:
                <asp:Label ID="ROLE_IDLabel" runat="server" Text='<%# Bind("ROLE_ID") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
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
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=xe;Persist Security Info=True;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;ROLE&quot;"></asp:SqlDataSource>
    </body>
</html>



