<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xmlfile.aspx.cs" Inherits="برمجة_متقدمة_2.xmlfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    
    <link href="CSSFile.css" rel="stylesheet" />
        
</head>
<body >

   <center> <form id="form1" runat="server"  >
        <label Cssclass="head">XML Files</label>
            <asp:GridView ID="GridView1" runat="server" Height="233px" Width="822px" CssClass="gr" BorderStyle="None">
            </asp:GridView>
            <br />
            <br />
                <asp:Panel ID="Panel1" runat="server" CssClass="panel" Height="96px" Width="952px">
                    <asp:Label ID="Label8" runat="server" Text="Delete :" CssClass="head" ></asp:Label>
                    <br />
                    <asp:Label ID="Label7" runat="server" CssClass="delete" Text="ID"></asp:Label>
                    <asp:DropDownList ID="Dr_Delete" runat="server" CssClass="edit" OnSelectedIndexChanged="Dr_Delete_SelectedIndexChanged1">
                    </asp:DropDownList>
                    <br />
                        <br />
                    <asp:Button ID="Btn_Delete" runat="server" BorderStyle="None" CssClass="btndelete" OnClick="Btn_Delete_Click" Text="Delete" />
                    <br /><br />
            </asp:Panel>
        <br />

            <asp:Panel ID="Panel2" runat="server" CssClass="panel" Width="951px" Height="233px" >
                <asp:Label ID="Label2" runat="server" Text="Edit :"  CssClass="head" ></asp:Label>
                <br />
                <asp:Label ID="Label1" runat="server" Text="Select Id " CssClass="edit"></asp:Label>
                <asp:DropDownList ID="Dr_Edit" runat="server" CssClass="edit">
                </asp:DropDownList>
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Text="Name" CssClass="edit"></asp:Label>
                <asp:TextBox ID="Txt_Name" runat="server" CssClass="txtedit"  placeholder="Name"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label10" runat="server" Text="Age" CssClass="edit"></asp:Label>
                <asp:TextBox ID="Txt_Age" runat="server" CssClass="txtedit" placeholder="Age"></asp:TextBox>
                <br /><br />
                <asp:Label ID="Label11" runat="server" CssClass="edit" Text="Year"></asp:Label>
                <asp:TextBox ID="Txt_Year" runat="server" CssClass="txtedit"></asp:TextBox>
                <br /><br />
                <asp:Button ID="Btn_Edit" runat="server" Text="Edit" CssClass="btnedit" OnClick="Btn_Edit_Click" BorderStyle="None" />
                <br />
            </asp:Panel>
            <br />
            <asp:Panel ID="Panel3" runat="server" Height="235px" Width="953px" CssClass="panel" >
                <asp:Label ID="Label3" runat="server" Text="Add:" CssClass="head"></asp:Label>
                <br />
                <asp:Label ID="Label12" runat="server" Text="ID" CssClass="add"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Id" runat="server" Height="20px" Width="130px"></asp:TextBox>
                <br />
                
                <asp:TextBox ID="Name" runat="server" Height="20px" Width="130px" CssClass="add" placeholder="Name"></asp:TextBox>
                <br />
                <asp:Label ID="Label6" runat="server" Text="Age" CssClass="add"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="Age" runat="server" CssClass="add" Height="20px" Width="130px"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Year" CssClass="add"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Year" runat="server" CssClass="add" Height="20px" Width="130px"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Btn_Add" runat="server" BorderStyle="None" CssClass="btnadd" OnClick="Btn_Add_Click" Text="Add" />
            </asp:Panel>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="XML  to DB" CssClass="btnDB" BorderStyle="None" />
            <br />
        <br />       <br />
            
    
        
    </form></center>
</body>
</html>
