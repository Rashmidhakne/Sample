<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="simpleregistration.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%simpleregistration.tutorial tp = new simpleregistration.tutorial(); %>>
        <%=tp.name %>>
    <div>
        <asp:HiddenField ID="HfContactID" runat="server" />
        <table>
            <tr>
                <td>
                <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox> </td>  
            </tr>
            <tr>
                <td>
                <asp:Label ID="Label2" runat="server" Text="MobileNumber"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox> </td>  
            </tr>
             <tr>
                <td>
                <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox> </td>  
            </tr>
            <tr>
                <td>
                </td>
                <td>
                    
                    <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Bsubmit_Click" />

               </td>
            </tr>
            </table>
            
           
         <asp:gridview ID="gvconnect" runat="server" AutoGenerateColumns="false">
        <columns>
            <asp:BoundField Datafield="Name" headertext="Name"/>
                <asp:BoundField Datafield="MobileNumber" headertext="Mobile Number"/>
            <asp:BoundField Datafield="Address" headertext="Address"/>
                <asp:TemplateField>
                   <ItemTemplate>
                       <asp:LinkButton ID="link" runat="server" CommandArgument='<%eval("hfcontactID")%>>' >View</asp:LinkButton>
                            
                   </ItemTemplate>
                </asp:TemplateField>
               
        </columns>
        </asp:gridview>
               
    
    </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [db2]"></asp:SqlDataSource>
    </form>
</body>
</html>
