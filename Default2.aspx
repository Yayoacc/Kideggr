<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <!DOCTYPE html>
<body>

    <div>

        <center>


    <table width="50%" border="1">
    <tr>
    <td colspan="3" class="auto-style1">        <asp:Label ID="Label4" runat="server" 
            Text="Administración de Jugadores" Font-Bold="True" 
            Font-Names="Arial Rounded MT Bold"></asp:Label>
        <br />
        <br />
        </td>
    </tr>
    
    <tr>
    <td class="style1" align="left">    
        <asp:Label ID="Label1" runat="server" Text="Clave:" Font-Bold="False" 
            Font-Names="Arial Rounded MT Bold"></asp:Label>
        </td>
    <td class="style2" align="left">    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </td>
    <td>    
        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imagenes/ok.jpg" 
            onclick="ImageButton1_Click" />
        </td>
    </tr>

    <tr>
    <td class="style1" align="left">    
        <asp:Label ID="Label2" runat="server" Text="Nombre:" 
            Font-Bold="False" Font-Names="Arial Rounded MT Bold"></asp:Label>
        </td>
    <td class="style2" align="left">    
        <asp:TextBox ID="TextBox2" runat="server" Width="168px"></asp:TextBox>
        </td>
    <td>    
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/imagenes/icon_delete.jpg" onclick="ImageButton2_Click" Width="16px" />
        </td>
    </tr>

    <tr>
    <td class="style1" align="left">    
        <asp:Label ID="Label3" runat="server" Text="Apellido Paterno" Font-Bold="False" 
            Font-Names="Arial Rounded MT Bold"></asp:Label>
        </td>
    <td class="style2" align="left">    
        <asp:TextBox ID="TextBox3" runat="server" Width="310px"></asp:TextBox>
        </td>
    <td>    
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/imagenes/icon_edit.jpg" OnClick="ImageButton3_Click" />
        </td>
    </tr>

    <tr>
    <td class="auto-style2" align="left">    
        <asp:Label ID="Label5" runat="server" Text="Apellido Materno:" Font-Bold="False" 
            Font-Names="Arial Rounded MT Bold"></asp:Label>
        </td>
    <td class="auto-style2" align="left">    
        <asp:TextBox ID="TextBox4" runat="server" 
            Width="310px"></asp:TextBox>
        </td>
    <td class="auto-style2">    
        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/imagenes/action_stop.gif" OnClick="ImageButton4_Click" Height="16px" />
        </td>
    </tr>

    <tr>
    <td class="style1" align="left">    
        <asp:Label ID="Label6" runat="server" Text="Edad:" Font-Bold="False" 
            Font-Names="Arial Rounded MT Bold"></asp:Label>
        </td>
    <td class="style2" align="left">    
        <asp:TextBox ID="TextBox5" runat="server" Width="177px" EnableTheming="True"></asp:TextBox>
        </td>
    <td>    
        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/imagenes/action_refresh.jpg" OnClick="ImageButton5_Click" />
        </td>
    </tr>

    <tr>
    <td class="auto-style1" align="left">    
        <asp:Label ID="Label12" runat="server" Text="Genero"></asp:Label>
        </td>
    <td class="auto-style1" align="left">    
        <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
        </td>
    <td class="auto-style1">                                </td>
    </tr>

    <tr>
    <td class="style1" align="left">    </td>
    <td class="style2" align="left">        
        &nbsp;    
        </td>
    <td>                                </td>
    </tr>

    <tr>
    <td colspan="3">

        <asp:GridView ID="GridView1" runat="server" Width="602px" AllowPaging="True" 
            PageSize="5" AutoGenerateColumns="False">
            <AlternatingRowStyle Font-Names="Arial Rounded MT Bold" Font-Size="Small" />
            <Columns>
                <asp:HyperLinkField DataNavigateUrlFields="niñ_cve_niño" DataNavigateUrlFormatString="Default.aspx?op=1&amp;emp={0}" DataTextField="niñ_cve_niño" HeaderText="Clave" />
                <asp:BoundField DataField="niñ_nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="niñ_apellido_paterno" HeaderText="Apellido Paterno" />
                <asp:BoundField DataField="niñ_apellido_materno" HeaderText="Apellido Materno" />
                <asp:BoundField DataField="niñ_edad" HeaderText="Edad" />
                <asp:BoundField DataField="nin_genero" HeaderText="Genero" />
            </Columns>
            <HeaderStyle Font-Names="Arial Rounded MT Bold" />
            <PagerStyle Font-Names="Arial Rounded MT Bold" />
            <RowStyle Font-Names="Arial Rounded MT Bold" Font-Size="Small" />
        </asp:GridView>

        <br />

    </td>
    </tr>
        
    </table>

    </center>
    </div>
    </form>
</body>
</html>

</asp:Content>

