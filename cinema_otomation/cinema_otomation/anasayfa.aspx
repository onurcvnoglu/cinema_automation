<%@ Page Title="" Language="C#" MasterPageFile="~/index.Master" AutoEventWireup="true" CodeBehind="anasayfa.aspx.cs" Inherits="cinema_otomation.anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ortaAlan" runat="server">
    <div class="container-fluid" >
  <div class="row">
    <!--öncesi ve sonrası için buton ayarlaması-->
    <!--sol taraf için bırakılan boşluk-->
    <div class="col-md-2"></div>




    <!--canlı tutulan orta gövde kısım-->
    <div class="col-md-8">
      <h1>Cinema Seansları</h1>
      <h5>İzlemek istediğiniz film seansınız seçiniz.</h5>
        <div class="" style="">
          <div class="container-fluid">
            <div class="row">
              <div class="col-md-12">
                        <div class="col-md-4">

                                  <script>

                                      var tarih_goster = new Date();


                                </script>
                            <nav>
                                  <ul class="pager">
                                      <li class="previous"><a href="#"> <span aria-hidden="true">&larr;</span>Daha eski </a></li>
                                  </ul>
                                </nav>
                        </div>

                        <div class="col-md-4">

                              <nav>
                                  <ul class="pager">
                                      <li  class=""><a href="#"><script language="javascript" src="http://ic.sitekodlari.com/tarihvesaat1.js"></script></a></li>
                                  </ul>
                              </nav>
                      </div>
                        <div class="col-md-4">
                              <nav>
                                  <ul  class="pager">
                                      <li class="next"><a href="#">Daha yeni <span aria-hidden="true">&rarr;</span></a></li>
                                  </ul>
                              </nav>
                      </div>
              </div>

            </div>
          </div>

      </div>
      <!--film paylaşılan kısım col -->

        <form id="dataForm1" action="bilet_satis.aspx" method="post">
              <div class="navbar navbar-default" >
            <div class="container-fluid">
                  <div class="row">
                    <div class="navbar navbar-default" id="film_1">
                      <div class="col-md-2">
                          <div class=""><a href="/ayi-paddington-2-filmi">
                            <img src="https://marsmediaapp.azurewebsites.net/153//files/filmler/HO00002580_636449654405729223_kardesim-benim-2.png" alt="Ayı Paddington 2"></a>
                          </div>
                      </div>
                      <div class="col-md-3">
                        <div class="">
                          <div class="pull-left">
                            <h3 aria-valuetext="naber"><asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></h3>
                             <div class="pull-left" style="color:black;">Salon <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                            </div>
                          </div>
                        </div>
                      </div>
                        <div class="col-md-5">
                                 <div >
                              <ul  class="pull-left" id="saatler" >
                                  <li  class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton1" runat="server" OnClick="LinkButton1_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton2" runat="server" OnClick="LinkButton2_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton3" runat="server" OnClick="LinkButton3_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton4" runat="server" OnClick="LinkButton4_Click"></asp:LinkButton>
                                  </li>
                                </ul>
                            </div>
                            </div>
                      <div class="col-md-2">
                            <div class="container">
                          <div class="row">

                                <!-- Like Button -->

                                <div class="like">
                                    <asp:LinkButton ID="LinkButton5" runat="server" OnClick="LinkButton5_Click">
                                  <i class="fa fa-thumbs-up"></i>
                                  <i class="outer fa fa-circle-thin"></i>
                                        </asp:LinkButton>
                                </div>
                              <div class="like_sayac" style="font-size:40px;"> <asp:Label ID="Label7" runat="server" Text="0" ForeColor="#333333"></asp:Label></div>
                              <!-- Dislike Button -->
                                  <div class="dislike">
                                      <asp:LinkButton ID="LinkButton6" runat="server" OnClick="LinkButton6_Click">
                                    <i class="fa fa-thumbs-down"> </i>
                                    <i class="outer fa fa-circle-thin"></i>
                                          </asp:LinkButton>
                                  </div>

                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="navbar navbar-default" id="film_2">
                      <div class="col-md-2">
                          <div class=""><a href="/ayi-paddington-2-filmi">
                            <img src="https://marsmediaapp.azurewebsites.net/153//files/banner/800x1152px-01.jpg" alt="Ayı Paddington 2"></a>
                          </div>
                      </div>
                      <div class="col-md-3">
                        <div class="">
                          <div class="pull-left">
                            <h3 aria-valuetext="naber"><asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></h3>
                            <div class="pull-left" style="color:black;">Salon <asp:Label ID="Label2" runat="server" Text="salon4"></asp:Label></div>
                          </div>
                        </div>

                      </div>
                        <div class="col-md-5">
                                <div >
                              <ul  class="pull-left" id="saatler" >
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton7" runat="server" OnClick="LinkButton7_Click"></asp:LinkButton>
                                  </li>
                                  <li  class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton8" runat="server" OnClick="LinkButton8_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton9" runat="server" OnClick="LinkButton9_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton10" runat="server" OnClick="LinkButton10_Click"></asp:LinkButton>
                                  </li>
                                </ul>
                            </div>
                            </div>
                      <div class="col-md-2">
                            <div class="container">
                          <div class="row">
                                <!-- Like Button -->
                                <div class="like">
                                    <asp:LinkButton ID="LinkButton11" runat="server" OnClick="LinkButton11_Click">
                                  <i class="fa fa-thumbs-up"> </i>
                                  <i class="outer fa fa-circle-thin"></i>
                                    </asp:LinkButton>
                                </div>
                              <div style="font-size:40px;"> <asp:Label ForeColor="#333333" ID="Label14" runat="server" Text="0"></asp:Label></div>
                              <!-- Dislike Button -->
                          <div class="dislike">
                              <asp:LinkButton ID="LinkButton12" runat="server" OnClick="LinkButton12_Click">
                            <i class="fa fa-thumbs-down"> </i>
                            <i class="outer fa fa-circle-thin"></i>
                              </asp:LinkButton>
                          </div>
                          <!-- Creds -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="navbar navbar-default" id="film_3">
                      <div class="col-md-2">
                          <div class=""><a href="/ayi-paddington-2-filmi">
                            <img src="https://marsmediaapp.azurewebsites.net/152//files/filmler/HO00002604_636461932010190263_ayi-paddington-2.png" alt="Ayı Paddington 2"></a>
                          </div>
                      </div>
                      <div class="col-md-3">
                        <div class="">
                          <div class="pull-left">
                            <h3 aria-valuetext="naber"><asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></h3>
                            <div class="pull-left" style="color:black;" >Salon <asp:Label ID="Label3" runat="server" Text="salon4"></asp:Label></div>
                          </div>
                        </div>
                      </div>
                        <div class="col-md-5">
                                <div >
                             <ul  class="pull-left" id="saatler" >
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton13" runat="server" OnClick="LinkButton13_Click"></asp:LinkButton>
                                  </li>
                                  <li  class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton14" runat="server" OnClick="LinkButton14_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton15" runat="server" OnClick="LinkButton15_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton16" runat="server" OnClick="LinkButton16_Click"></asp:LinkButton>
                                  </li>
                                </ul>
                            </div>
                            </div>
                      <div class="col-md-2">
                           <div class="container">
                          <div class="row">
                                <!-- Like Button -->
                                <div class="like">
                                    <asp:LinkButton ID="LinkButton17" runat="server" OnClick="LinkButton17_Click">
                                  <i class="fa fa-thumbs-up"> </i>
                                  <i class="outer fa fa-circle-thin"></i>
                                    </asp:LinkButton>
                                </div>
                                      <div style="font-size:40px;"> <asp:Label ForeColor="#333333" ID="Label15" runat="server" Text="0"></asp:Label></div>
                                <!-- Dislike Button -->
                          <div class="dislike">
                              <asp:LinkButton ID="LinkButton18" runat="server" OnClick="LinkButton18_Click">
                            <i class="fa fa-thumbs-down"> </i>
                            <i class="outer fa fa-circle-thin"></i>
                              </asp:LinkButton>
                          </div>
                          <!-- Creds -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="navbar navbar-default" id="film_4">
                      <div class="col-md-2">
                          <div class=""><a href="/ayi-paddington-2-filmi">
                            <img src="https://marsmediaapp.azurewebsites.net/153//files/filmler/HO00002596_636458194041099321_kardan-adam.png" alt="Ayı Paddington 2"></a>
                          </div>
                      </div>
                      <div class="col-md-3">
                        <div class="">
                          <div class="pull-left">
                            <h3 aria-valuetext="naber"><asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></h3>
                            <div class="pull-left" style="color:black;">Salon <asp:Label ID="Label4" runat="server" Text="salon4"></asp:Label> </div>
                          </div>
                            </div>
                           </div>
                            <div class="col-md-5">
                            <div >
                              <ul  class="pull-left" id="saatler" >
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton19" runat="server" OnClick="LinkButton19_Click"></asp:LinkButton>
                                  </li>
                                  <li  class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton20" runat="server" OnClick="LinkButton20_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton21" runat="server" OnClick="LinkButton21_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton22" runat="server" OnClick="LinkButton22_Click"></asp:LinkButton>
                                  </li>
                                </ul>
                                 </div>
                               </div>

                      <div class="col-md-2">
                            <div class="container">
                          <div class="row">
                                <!-- Like Button -->
                                <div class="like">
                                    <asp:LinkButton ID="LinkButton23" runat="server" OnClick="LinkButton23_Click">
                                  <i class="fa fa-thumbs-up"></i>
                                  <i class="outer fa fa-circle-thin"></i>
                                    </asp:LinkButton>
                                </div>
                                       <div style="font-size:40px;"> <asp:Label ForeColor="#333333" ID="Label16" runat="server" Text="0"></asp:Label></div>

                              <!-- Dislike Button -->
                          <div class="dislike">
                              <asp:LinkButton ID="LinkButton24" runat="server" OnClick="LinkButton24_Click">
                            <i class="fa fa-thumbs-down"></i>
                            <i class="outer fa fa-circle-thin"></i>
                              </asp:LinkButton>
                          </div>
                          <!-- Creds -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="navbar navbar-default" id="film_5">
                      <div class="col-md-2">
                          <div class=""><a href="/ayi-paddington-2-filmi">
                            <img src="https://marsmediaapp.azurewebsites.net/153//files/filmler/HO00002600_636459102039140575_kutsal-geyigin-olumu.png" alt="Ayı Paddington 2"></a>
                          </div>
                      </div>
                      <div class="col-md-3">
                        <div class="">
                          <div class="pull-left">
                            <h3 aria-valuetext="naber"><asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></h3>
                            <div class="pull-left" style="color:black;" >Salon <asp:Label ID="Label5" runat="server" Text="salon4"></asp:Label></div>
                          </div>
                             </div>
                      </div>
                            <div class="col-md-5">
                            <div >
                              <ul  class="pull-left" id="saatler" >
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton25" runat="server" OnClick="LinkButton25_Click"></asp:LinkButton>
                                  </li>
                                  <li  class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton26" runat="server" OnClick="LinkButton26_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton27" runat="server" OnClick="LinkButton27_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton28" runat="server" OnClick="LinkButton28_Click"></asp:LinkButton>
                                  </li>
                                </ul>
                                </div>
                              </div>

                      <div class="col-md-2">
                           <div class="container">
                          <div class="row">
                                <!-- Like Button -->
                                <div class="like">
                                    <asp:LinkButton ID="LinkButton29" runat="server" OnClick="LinkButton29_Click">
                                  <i class="fa fa-thumbs-up"></i>
                                  <i class="outer fa fa-circle-thin"></i>
                                    </asp:LinkButton>
                                </div>
                                  <div style="font-size:40px;"> <asp:Label ForeColor="#333333" ID="Label17" runat="server" Text="0"></asp:Label></div>
                              <!-- Dislike Button -->
                          <div class="dislike">
                              <asp:LinkButton ID="LinkButton30" runat="server" OnClick="LinkButton30_Click">
                            <i class="fa fa-thumbs-down"></i>
                            <i class="outer fa fa-circle-thin"></i>
                              </asp:LinkButton>
                          </div>
                          <!-- Creds -->
                          </div>
                        </div>
                      </div>
                    </div>
                    <div class="navbar navbar-default" id="film_6">
                      <div class="col-md-2">
                          <div class=""><a href="/ayi-paddington-2-filmi">
                            <img src="https://marsmediaapp.azurewebsites.net/153//files/filmler/HO00002480_636404814194321779_dogu-ekspresinde-cinayet.png" alt="Ayı Paddington 2"></a>
                          </div>
                      </div>
                      <div class="col-md-3">
                        <div class="">
                          <div class="pull-left">
                            <h3 aria-valuetext="naber"><asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></h3>
                            <div class="pull-left" style="color:black;" >Salon <asp:Label  ID="Label6" runat="server" Text="salon4"></asp:Label></div>
                          </div>
                            </div>
                       </div>
                            <div class="col-md-5">
                            <div >
                             <ul  class="pull-left" id="saatler" >
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton31" runat="server" OnClick="LinkButton31_Click"></asp:LinkButton>
                                  </li>
                                  <li  class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton32" runat="server" OnClick="LinkButton32_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton33" runat="server" OnClick="LinkButton33_Click"></asp:LinkButton>
                                  </li>
                                  <li class="btn btn-default" >
                                      <asp:LinkButton CssClass="seans" ID="LinkButton34" runat="server" OnClick="LinkButton34_Click"></asp:LinkButton>
                                  </li>
                                </ul>
                               </div>
                            </div>

                      <div class="col-md-2">
                            <div class="container">
                          <div class="row">
                                <!-- Like Button -->
                                <div class="like">
                                    <asp:LinkButton ID="LinkButton35" runat="server" OnClick="LinkButton35_Click">
                                  <i class="fa fa-thumbs-up"></i>
                                  <i class="outer fa fa-circle-thin"></i>
                                    </asp:LinkButton>
                                </div>
                              <div style="font-size:40px;"> <asp:Label ForeColor="#333333" ID="Label18" runat="server" Text="0"></asp:Label></div>
                              <!-- Dislike Button -->
                          <div class="dislike">
                              <asp:LinkButton ID="LinkButton36" runat="server" OnClick="LinkButton36_Click">
                            <i class="fa fa-thumbs-down"></i>
                            <i class="outer fa fa-circle-thin"></i>
                              </asp:LinkButton>
                          </div>
                          <!-- Creds -->
                          </div>
                        </div>
                      </div>
                    </div>
              <div class="col-md-8">

              </div>
              <div class="col-md-2">

              </div>

            </div>
      </div>
        </form>

    </div>




    <!--sağ taraf için bırakılan boşluk-->
    <div class="col-md-2"></div>
  </div>

</div>
</asp:Content>
