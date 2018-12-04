<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="acceso.aspx.cs" Inherits="acceso" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <body class="text-center">
        <div class="container float-right" style="border-radius:10px 10px; margin-top:100px; margin-right:350px; width:400px; box-shadow:3px 3px 25px 1px rgba(0,0,0,0.75);">
            <form class="form-signin" style="width:700px; padding:200px;">
     <br /><br />
              <h1 class="h3 mb-3 font-weight-normal">Iniciar sesión</h1>
            <br /><br />
              <asp:Label id="Label1" runat="server" for="TextBox1" class="sr-only">Usuario</asp:Label>
              <asp:TextBox  type="text" id="TextBox1" runat="server" class="form-control" placeholder="Usuario" required="" autofocus=""></asp:TextBox>
                <br />
              <asp:Label id="Label2" runat="server" for="TextBox2" class="sr-only">Contraseña</asp:Label>
              <asp:TextBox type="password" id="TextBox2" runat="server" class="form-control" placeholder="Contraseña" required=""></asp:TextBox>
                <br /><br />
        <asp:Button ID="Button2" runat="server" class="btn btn-lg btn-primary btn-block" Text="ACCEDER" OnClick="Button1_Click1" />
     <br />
      <p class="message">¿No estàs registrado? <a href="Default.aspx">Crear una cuenta</a></p>
    </form>
</div>
</body>


 </asp:Content>