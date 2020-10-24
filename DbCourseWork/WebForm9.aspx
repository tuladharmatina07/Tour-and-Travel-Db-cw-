<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm9.aspx.cs" Inherits="DbCourseWork.WebForm9" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
                    <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
                    <asp:BoundField DataField="STAFF_PHONENO" HeaderText="STAFF_PHONENO" SortExpression="STAFF_PHONENO" />
                    <asp:BoundField DataField="STAFF_ADDRESS" HeaderText="STAFF_ADDRESS" SortExpression="STAFF_ADDRESS" />
                    <asp:TemplateField HeaderText="ROLE NAME" SortExpression="ROLE_ID">
                        <EditItemTemplate>
                            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" SelectedValue='<%# Bind("ROLE_ID") %>'>
                            </asp:DropDownList>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="ROLE_NAME" DataValueField="ROLE_ID" Enabled="False" SelectedValue='<%# Bind("ROLE_ID") %>'>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;STAFF&quot; WHERE &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;STAFF&quot; (&quot;STAFF_ID&quot;, &quot;STAFF_NAME&quot;, &quot;STAFF_PHONENO&quot;, &quot;STAFF_ADDRESS&quot;, &quot;ROLE_ID&quot;) VALUES (:STAFF_ID, :STAFF_NAME, :STAFF_PHONENO, :STAFF_ADDRESS, :ROLE_ID)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;STAFF&quot;" UpdateCommand="UPDATE &quot;STAFF&quot; SET &quot;STAFF_NAME&quot; = :STAFF_NAME, &quot;STAFF_PHONENO&quot; = :STAFF_PHONENO, &quot;STAFF_ADDRESS&quot; = :STAFF_ADDRESS, &quot;ROLE_ID&quot; = :ROLE_ID WHERE &quot;STAFF_ID&quot; = :STAFF_ID">
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
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM &quot;ROLE&quot; WHERE &quot;ROLE_ID&quot; = :ROLE_ID" InsertCommand="INSERT INTO &quot;ROLE&quot; (&quot;ROLE_ID&quot;, &quot;ROLE_NAME&quot;) VALUES (:ROLE_ID, :ROLE_NAME)" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM &quot;ROLE&quot;" UpdateCommand="UPDATE &quot;ROLE&quot; SET &quot;ROLE_NAME&quot; = :ROLE_NAME WHERE &quot;ROLE_ID&quot; = :ROLE_ID">
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
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="STAFF_ID" DataSourceID="SqlDataSource1">
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
                    STAFF_ID:
                    <asp:TextBox ID="STAFF_IDTextBox" runat="server" Text='<%# Bind("STAFF_ID") %>' />
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
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
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
        </div>
    </form>
</body>
</html>
