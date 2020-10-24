<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="DbCourseWork.WebForm7" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 509px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT t.package_id, package_name, t.staff_id, staff_name FROM
package p JOIN tour_guide t ON 
p.package_id= t.package_id 
JOIN staff s ON t.staff_id = s.staff_id"></asp:SqlDataSource>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="PACKAGE_ID,STAFF_ID" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="PACKAGE_ID" HeaderText="PACKAGE_ID" ReadOnly="True" SortExpression="PACKAGE_ID" />
                    <asp:BoundField DataField="PACKAGE_NAME" HeaderText="PACKAGE_NAME" SortExpression="PACKAGE_NAME" />
                    <asp:BoundField DataField="STAFF_ID" HeaderText="STAFF_ID" ReadOnly="True" SortExpression="STAFF_ID" />
                    <asp:BoundField DataField="STAFF_NAME" HeaderText="STAFF_NAME" SortExpression="STAFF_NAME" />
                </Columns>
            </asp:GridView>
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
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM staff where role_id ='r1'"></asp:SqlDataSource>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="Data Source=xe;User ID=dbcoursework;Password=dbcoursework;Unicode=True" ProviderName="System.Data.OracleClient" SelectCommand="SELECT * FROM &quot;TOUR_GUIDE&quot;" DeleteCommand="DELETE FROM &quot;TOUR_GUIDE&quot; WHERE &quot;PACKAGE_ID&quot; = :PACKAGE_ID AND &quot;STAFF_ID&quot; = :STAFF_ID" InsertCommand="INSERT INTO &quot;TOUR_GUIDE&quot; (&quot;PACKAGE_ID&quot;, &quot;STAFF_ID&quot;) VALUES (:PACKAGE_ID, :STAFF_ID)">
                <DeleteParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="PACKAGE_ID" Type="String" />
                    <asp:Parameter Name="STAFF_ID" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="PACKAGE_ID,STAFF_ID" DataSourceID="SqlDataSource4" DefaultMode="Insert">
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
                    <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="SqlDataSource2" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID" SelectedValue='<%# Bind("PACKAGE_ID") %>'>
                    </asp:DropDownList>
                    <br />
                    STAFF_ID:
                    <asp:DropDownList ID="DropDownList4" runat="server" DataSourceID="SqlDataSource3" DataTextField="STAFF_ID" DataValueField="STAFF_ID" SelectedValue='<%# Bind("STAFF_ID") %>'>
                    </asp:DropDownList>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
&nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    PACKAGE_ID:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID">
                    </asp:DropDownList>
                    <br />
                    STAFF_ID:
                    <asp:DropDownList ID="DropDownList2" runat="server" DataSourceID="SqlDataSource2" DataTextField="PACKAGE_NAME" DataValueField="PACKAGE_ID">
                    </asp:DropDownList>
                    <br />
                </ItemTemplate>
            </asp:FormView>
        </div>
    </form>
</body>
</html>
