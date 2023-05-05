<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Upload Files.aspx.cs" Inherits="DemoFileUplode.Upload_Files" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <%--  <link rel="Stylesheet" href="Styles/bootstrap.min.css" style="" />  
        <link rel="Stylesheet" href="Styles/bootstrap.css" /> --%>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">  
        <asp:FileUpload ID="FileUpload1" runat="server" />  
        <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="Upload" CssClass="btn-primary" />  
        <hr />  
        <asp:GridView ID="GridView1" runat="server"   
              
            AutoGenerateColumns="false" CssClass="table">  
            <Columns>  
                <asp:BoundField DataField="Name" HeaderText="File Name" />  
                <asp:TemplateField ItemStyle-HorizontalAlign="Center">  
                    <ItemTemplate>  
                        <asp:LinkButton ID="lnkDownload" runat="server" Text="Download" OnClick="DownloadFile"  
                            CommandArgument='<%# Eval("Id") %>'></asp:LinkButton>  
                    </ItemTemplate>  
                </asp:TemplateField>  
            </Columns>  
        </asp:GridView> 
        </div>
    </form>
</body>
</html>
