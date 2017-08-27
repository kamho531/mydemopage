<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FlagApplication.aspx.cs" Inherits="FlagApplication" %>

<!DOCTYPE html>

<script runat="server">

            
        
            
   protected void Index_Changed (object sender, EventArgs e)
    {
        imgFlag.ImageUrl = "Flags/" + FlagOptions.SelectedValue + ".gif";
       
        if (FlagOptions.SelectedIndex > -1)
            imgFlag.Visible = true;        
                   
    }

       
             
</script>


<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
        body {
            background-color:bisque;
            margin-left:50px;
        }
        h1 {
            font-family:'Arial Rounded MT';
        }
        p {
            font-family:'Arial Rounded MT';
            font-size:x-large;
            color:blueviolet;
        }
    </style>
    <title></title>
</head>
<body>
    <h1>Pick A Flag</h1>
    <p>Click the button to see the country's flag</p>
    <form id="form1" runat="server">
    <div>
        <asp:RadioButtonList ID="FlagOptions" runat="server" OnSelectedIndexChanged="Index_Changed" AutoPostBack="True" Font-Size="X-Large">
            <asp:ListItem>Australia</asp:ListItem>
            <asp:ListItem>Brazil</asp:ListItem>
            <asp:ListItem>China</asp:ListItem>
            <asp:ListItem>Italy</asp:ListItem>
            <asp:ListItem>Russia</asp:ListItem>
            <asp:ListItem>South Africa</asp:ListItem>
            <asp:ListItem>Spain</asp:ListItem>
            <asp:ListItem>United States</asp:ListItem>
        </asp:RadioButtonList>
        <br /><br />
        <asp:Image ID="imgFlag" runat="server" Height="150px" Width="200px" />
        <br /><br /><br /><br /><br />
    </div>
    </form>
    <a style="text-decoration:none" href="../mydemopage.html">Back to homepage</a>
</body>
</html>
