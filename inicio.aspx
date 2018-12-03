<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="inicio.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container float-right" style="width:1020px">
        
        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">KIDEg es <span class="text-muted">un portal educativo para aprender jugando</span></h2>
            <p class="lead">
                Surge de la idea de estudiantes de nivel superior, este es un portal de educaciòn para niños 3 a 10 años 
                que aborda el aprendizaje a través de juegos educativos. El juego ha sido una estrategia efectiva para el aprendizaje infantil.
            </p>
          </div>
          <div class="col-md-5">
            <asp:Image ID="Image1" runat="server" class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 250px; height: 250px;" src="imagenes/desarrollo.jpg" data-holder-rendered="true"></asp:Image>
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7 order-md-2">
            <h2 class="featurette-heading">El impacto <span class="text-muted"> de los juegos interactivos para los niños con NEE</span></h2>
            <p class="lead">
                Igualmente, los juegos interactivos infantiles son ideales para los pequeños con déficit de atención y otras necesidades educativas 
                especiales, nuestros juegos requieren una participación constante y ofrecen retroalimentación inmediata, ayudando a mantener la atención.
            </p>
          </div>
          <div class="col-md-5 order-md-1">
            <asp:Image ID="Image2" runat="server" class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 250px; height: 250px;" src="imagenes/juego.png" data-holder-rendered="true"></asp:Image>
          </div>
        </div>

        <hr class="featurette-divider">

        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">Los mejores juegos <span class="text-muted"> educativos infantiles</span></h2>
            <p class="lead">
                Nuestros juegos educativos online han demostrado ser una herramienta de aprendizaje eficaz tanto para el uso en el aula como en el hogar. 
                Así que si tu pequeño aprende de manera visual, auditiva o kinestésica; ¡en KIDEg encontrará un gran apoyo para su aprendizaje!
            </p>
          </div>
          <div class="col-md-5">
            <asp:Image ID="Image3" runat="server" class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 250px; height: 250px;" src="imagenes/niños.jpg" data-holder-rendered="true"></asp:Image>
          </div>
        </div>
    </div>
 <br />
</asp:Content>

