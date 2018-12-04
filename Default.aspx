<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/registrer.css" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <div class="container float-right align-items-center" style="padding-top:50px; padding-left:150px; border-radius:10px 10px; margin-top:100px; margin-right:150px; width:700px; height:750px; box-shadow:3px 3px 25px 1px rgba(0,0,0,0.75);" >
          <div class="col-md-8 order-md-1">
              <h1>Registrate Gratis</h1>
            <div class="mb-3">
              <input id="Text1" type="text" placeholder="Nombre" required="required" runat="server" class="form-control"/>
            </div>
        
            <div class="mb-3">
              <label>
              </label>
              <input id="Text2" type="text" placeholder=" Apellido Paterno" required="required" runat="server" class="form-control"/>
            </div>
          
            <div class="mb-3">
               <input id="Text3" type="text" placeholder="Apellido Materno" required="required" runat="server" class="form-control"/>
            </div>
        <div class="mb-3" style="font-family: Arial, Helvetica, sans-serif; font-size: x-small; color: #666666">
             <label style="z-index: 2; position:relative; padding-right: 500px; margin:0px; text-decoration:none; font-size: small;">Edad:</label>

        </div>
        <div class="mb-3">
             <input id="Text4" type="number" required="required"  max="35" runat="server" class="form-control"/>
          </div>
         <div class="mb-3" style="font-family: Arial, Helvetica, sans-serif; font-size: x-small; color: #666666">
             <label style="z-index: 2; position:relative; padding-right: 500px; margin:0px; text-decoration:none; font-size: small;">Genero:</label>
        </div>
        <div class="mb-3">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="500px" Height="50px" BackColor="#EEEDEF" class="custom-select d-block w-100">
                <asp:ListItem Text="Masculino" Value="Masculino"></asp:ListItem>
                <asp:ListItem Text="Femenino" Value="Femenino"></asp:ListItem>
            </asp:DropDownList>
            </div>
          <div class="mb-3">
            <input id="Number1" type="text" placeholder="Usuario" required="required"  runat="server" class="form-control"/>
          </div>
          
          <div class="mb-3">
            <input id="Text5" type="password" required="required" placeholder="Contraseña" runat="server" class="form-control"/>
          </div>
              <asp:Button ID="Button1" runat="server" Text="Registrarme" BackColor="#0066FF" ForeColor="White" CssClass="buttonR" OnClick="Button1_Click" />
        </div>
        </div>
        <div id="login">   
        </div>
  
</asp:Content>

