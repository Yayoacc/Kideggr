<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link rel="stylesheet" href="css/registrer.css" type="text/css" />

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <div id="Div1"  style="float:right; margin-right:300px; padding-bottom:500px">   
    <div class="form" > 
      <div class="tab-content">
        <div id="signup" >   
          <h1>Registrate Gratis</h1>
          
          <form action="/" method="post">
          
          <div class="top-row">
            <div class="field-wrap">
              <input id="Text1" type="text" placeholder="Nombre" required="required" runat="server"/>
            </div>
        
            <div class="field-wrap">
              <label>
              </label>
              <input id="Text2" type="text" placeholder=" Apellido Paterno" required="required" runat="server"/>
            </div>
          </div>
            <div class="field-wrap">
               <input id="Text3" type="text" placeholder="Apellido Materno" required="required" runat="server"/>
            </div>
        <div class="field-wrap" style="font-family: Arial, Helvetica, sans-serif; font-size: x-small; color: #666666">
             <label style="z-index: 2; position:relative; padding-right: 500px; margin:0px; text-decoration:none; font-size: small;">Edad:</label>
        </div>
        <div class="field-wrap">
             <input id="Text4" type="number" required="required" style="border-right-width: 50px;" max="35" runat="server"/>
          </div>
         <div class="field-wrap" style="font-family: Arial, Helvetica, sans-serif; font-size: x-small; color: #666666">
             <label style="z-index: 2; position:relative; padding-right: 500px; margin:0px; text-decoration:none; font-size: small;">Genero:</label>
        </div>
        <div class="field-wrap">
            <asp:DropDownList ID="DropDownList1" runat="server" Width="500px" Height="50px" BackColor="#EEEDEF" CssClass="buttonR">
                <asp:ListItem Text="Masculino" Value="Masculino"></asp:ListItem>
                <asp:ListItem Text="Femenino" Value="Femenino"></asp:ListItem>
            </asp:DropDownList>
            </div>
          <div class="field-wrap">
            <input id="Number1" type="text" placeholder="Usuario" required="required" style="border-right-width: 50px;" runat="server"/>
          </div>
          
          <div class="field-wrap">
            <input id="Text5" type="password" required="required" placeholder="Contraseña" runat="server"/>
          </div>
              <asp:Button ID="Button1" runat="server" Text="Registrarme" BackColor="#0066FF" ForeColor="White" CssClass="buttonR" OnClick="Button1_Click"/>
          
          </form>

        </div>
        
        <div id="login">   
          <h1>Welcome Back!</h1>
          
          <form action="/" method="post">
          
            <div class="field-wrap">
            <label>
              Email Address<span class="req">*</span>
            </label>
            <input type="email" autocomplete="off"/>
          </div>
          
          <div class="field-wrap">
            <label>
              Password<span class="req">*</span>
            </label>
            <input type="password" autocomplete="off"/>
          </div>
          
          <p class="forgot"><a href="#">Forgot Password?</a></p>
          
          <button class="button button-block"/>Log In</button>
          
          </forms>

        </div>
        
      </div><!-- tab-content -->
      </div>
</div> <!-- /form -->
</asp:Content>

