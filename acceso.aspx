<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="acceso.aspx.cs" Inherits="acceso" %>

<%-- Add content controls here --%>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server"></asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-page" style="float:right; margin-right:400px">
          <div class="form">
            <form class="login-form">
                <label class="sr-only" for="inlineFormInputGroupUsername">Usuario</label>
              <div class="input-group">
                <asp:Label ID="Label1" runat="server" Text="Usuario:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" CssClass="input-group"></asp:TextBox>
              </div>
                <br />
              <label class="sr-only" for="inlineFormInputName">Nombre</label>
              <div class="input-group">
                    <asp:Label ID="Label2" runat="server" Text="Contraseña:"></asp:Label>
                  &nbsp;<asp:TextBox ID="TextBox2" runat="server" CssClass="input-group" TextMode="Password"></asp:TextBox>
              </div>
                <br />
                &nbsp;<br />
                <asp:Button ID="Button1" runat="server" BackColor="#0066FF" ForeColor="White" Text="ACCEDER" Height="53px" Width="278px" OnClick="Button1_Click1" />
                <br />
              <p class="message">¿No estàs registrado? <a href="Default.aspx">Crear una cuenta</a></p>
            </form>
          </div>
        </div>
 </asp:Content>