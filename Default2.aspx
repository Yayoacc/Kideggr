<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .auto-style1 {
            height: 50px;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        <br /><br />
        <div class="container float-right" style="width:900px" >
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3"><asp:Label ID="Label4" runat="server"></asp:Label></h4>
            <div class="mb-3">
                <label for="firstName">Nombre</label>
                <input id="TextBox1" runat="server" class="form-control"/>
                <div class="invalid-feedback">
                  Tu nombre es requerido.
                </div>
              </div>
            <div class="row">
              <div class="col-md-6 mb-3">
                <label for="lastName">Apellido paterno</label>
                  <input id="TextBox2" runat="server"  class="form-control"/>
                <div class="invalid-feedback">
                  Tu apellido paterno es requerido.
                </div>
              </div>
              <div class="col-md-6 mb-3">
                <label for="lastName">Apellido materno</label>
                <input id="TextBox3" runat="server" class="form-control" />
                <div class="invalid-feedback">
                  Tu apellido materno es requerido.
                </div>
              </div>
            </div>

            <div class="mb-3">
              <label for="username">Clave</label>
              <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">@</span>
                </div>
                <input id="TextBox4" runat="server" class="form-control"  />
                <div class="invalid-feedback" style="width: 100%;">
                  Tu clave es requerida.
                </div>
              </div>
            </div>

            <div class="row">
              <div class="col-md-5 mb-3">
                <label for="country">Gènero</label>
                <select class="custom-select d-block w-100" id="country" runat="server" >
                  <option value="FEMENINO">Femenino</option>
                  <option value="MASCULINO">Masculino</option>
                </select>
                <div class="invalid-feedback">
                  Por favor selecciona una opciòn.
                </div>
              </div>

              <div class="col-md-4 mb-3">
                <label for="state">Edad</label>
                <select class="custom-select d-block w-100" id="edad" runat="server">
                  <option value="">Ninguno</option>
                  <option value="3">3</option>
                  <option value="4">4</option>
                  <option value="5">5</option>
                  <option value="6">6</option>
                  <option value="7">7</option>
                  <option value="8">8</option>
                  <option value="9">9</option>
                  <option value="10">10</option>
                  <option value="11">11</option>
                  <option value="12">12</option>
                  <option value="13">13</option>
                  <option value="14">14</option> 
                  <option value="15">15</option>
                </select>
                <div class="invalid-feedback">
                  Por favor selecciona tu edad.
                </div>
              </div>

              <div class="col-md-3 mb-3">
                <label for="zip">Usuario</label>
                <input id="TextBox5" runat="server" class="form-control" value=""/>
                <div class="invalid-feedback">
                  Usuario requerido.
                </div>
              </div>
              </div>

              <div class="mb-3">
                <label for="zip">Contraseña</label>
                <input type="password" id="TextBox6" runat="server" class="form-control"/>
                <div class="invalid-feedback">
                  Rol es requerido.
                </div>
              </div>

              <div class="row">
                  <div class="col">
                      <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/imagenes/ok.jpg" onclick="ImageButton1_Click" Width="30px" Height="30px"/>
                  </div>
                  <div class="col">
                       <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/imagenes/icon_delete.jpg" onclick="ImageButton2_Click" Width="30px" Height="30px"/>
                  </div>
                  <div class="col">
                       <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/imagenes/icon_edit.jpg" onclick="ImageButton3_Click" Width="30px" Height="30px"/>
                  </div>
                  <div class="col">
                        <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="~/imagenes/action_stop.gif" onclick="ImageButton4_Click" Width="30px" Height="30px"/>
                  </div>
                  <div class="col">
                        <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="~/imagenes/action_refresh.jpg" onclick="ImageButton5_Click" Width="30px" Height="30px"/>
                  </div>
                  <div class="col">
                        <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="~/imagenes/action_refresh.jpg" onclick="ImageButton5_Click" Width="30px" Height="30px"/>
                  </div>
              </div>
              <br /><br />
              <div class="mb-3">
                <asp:GridView ID="GridView1" runat="server" Width="602px" AllowPaging="True" PageSize="5" AutoGenerateColumns="False">
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
              </div>
            </div>
           </div>
</asp:Content>



