<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="cuentos.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">ç

     <div class="container float-right" style="width:1050px">
      <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
          <div class="col-4 text-center">
              <h3 class="mb-0">
                <p class="text-dark">Cuentos infantiles para toda la familia.</p>
              </h3>
          </div>
        </div>
      </header>

      <div class="row mb-2">
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary">Cuento infantil:</strong>
              <h3 class="mb-0">
                <p class="text-dark">El Pirata Escacharrado</p>
              </h3>
              <div class="mb-1 text-muted">Nov 26</div>
              <p class="card-text mb-auto">Érase una vez un pirata, al que la mala suerte...</p>
              <a href="cuento1.aspx">Continue leyendo</a>
            </div>
            <asp:Image runat="server" class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]" style="width: 200px; height: 250px;" src="imagenes/cuento1.png" data-holder-rendered="true"></asp:Image>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-success">Cuento: </strong>
              <h3 class="mb-0">
                <p class="text-dark">El vagabundo y la luna</p>
              </h3>
              <div class="mb-1 text-muted">Nov 28</div>
              <p class="card-text mb-auto">Érase una vez un extraño hombrecillo que ... </p>
              <a href="cuento2.aspx">Continue leyendo</a>
            </div>
            <asp:Image runat="server" class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]" src="imagenes/cuento3.png" data-holder-rendered="true" style="width: 200px; height: 250px;"></asp:Image>
          </div>
        </div>
      </div>

      <div class="row mb-2">
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-primary">Cuento:</strong>
              <h3 class="mb-0">
                <p class="text-dark">Expediente Hormiga</p>
              </h3>
              <div class="mb-1 text-muted">Dic 1</div>
              <p class="card-text mb-auto">Lidia, una niña de cinco años despierta y...</p>
              <a href="cuento3.aspx">Continue leyendo</a>
            </div>
            <asp:Image runat="server" class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]" style="width: 200px; height: 250px;" src="imagenes/cuento2.png" data-holder-rendered="true"></asp:Image>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card flex-md-row mb-4 shadow-sm h-md-250">
            <div class="card-body d-flex flex-column align-items-start">
              <strong class="d-inline-block mb-2 text-success">Cuento : </strong>
              <h3 class="mb-0">
                <p class="text-dark">Yayuca y la estrella de Navidad</p>
              </h3>
              <div class="mb-1 text-muted">Dic 2</div>
              <p class="card-text mb-auto">El pequeño Tom era un niño muy risueño y travieso... </p>
              <a href="cuento4.aspx">Continue leyendo</a>
            </div>
            <asp:Image runat="server" class="card-img-right flex-auto d-none d-lg-block" data-src="holder.js/200x250?theme=thumb" alt="Thumbnail [200x250]" src="imagenes/cuento4.png" data-holder-rendered="true" style="width: 200px; height: 250px;"></asp:Image>
          </div>
        </div>
      </div>

    </div>

</asp:Content>

