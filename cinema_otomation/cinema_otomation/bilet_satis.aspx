<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bilet_satis.aspx.cs" Inherits="cinema_otomation.denemem" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Movie Ticket Booking Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

    <title></title>
    <link href="css/koltuk.css" rel="stylesheet" />
    <link href="css/style_dene.css" rel="stylesheet" type="text/css" media="all" />
    <script src="js/jquery-1.11.0.min.js"></script>
    <script src="js/jquery.seat-charts.js"></script>
</head>
<body style="background-image:url(img/banner2.jpg)">
    <form id="form1" runat="server">
            <div class="content">
	            <h1>Sinema Bilet Satış</h1>
	            <div class="main">
		            <div class="demo">
			            <div id="seat-map">
				            <div style class="front">SAHNE</div>
                              <div>
                                    <asp:CheckBoxList Width="460px" height="300px" ID="CheckBoxList1" RepeatColumns="8" 
                                    RepeatDirection="Vertical" runat="server" ForeColor="White" BackColor="#031112" BorderColor="Maroon" BorderStyle="Dashed" CellPadding="15" AutoPostBack="True">
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                    <asp:ListItem>11</asp:ListItem>
                                    <asp:ListItem>12</asp:ListItem>
                                    <asp:ListItem>13</asp:ListItem>
                                    <asp:ListItem>14</asp:ListItem>
                                    <asp:ListItem>15</asp:ListItem>
                                    <asp:ListItem>16</asp:ListItem>
                                    <asp:ListItem>17</asp:ListItem>
                                    <asp:ListItem>18</asp:ListItem>
                                    <asp:ListItem>19</asp:ListItem>
                                    <asp:ListItem>20</asp:ListItem>
                                    <asp:ListItem>21</asp:ListItem>
                                    <asp:ListItem>22</asp:ListItem>
                                    <asp:ListItem>23</asp:ListItem>
                                    <asp:ListItem>24</asp:ListItem>
                                    <asp:ListItem>25</asp:ListItem>
                                    <asp:ListItem>26</asp:ListItem>
                                    <asp:ListItem>27</asp:ListItem>
                                    <asp:ListItem>28</asp:ListItem>
                                    <asp:ListItem>29</asp:ListItem>
                                    <asp:ListItem>30</asp:ListItem>
                                    <asp:ListItem>31</asp:ListItem>
                                    <asp:ListItem>32</asp:ListItem>
                                    <asp:ListItem>33</asp:ListItem>
                                    <asp:ListItem>34</asp:ListItem>
                                    <asp:ListItem>35</asp:ListItem>
                                    <asp:ListItem>36</asp:ListItem>
                                    <asp:ListItem>37</asp:ListItem>
                                    <asp:ListItem>38</asp:ListItem>
                                    <asp:ListItem>39</asp:ListItem>
                                    <asp:ListItem>40</asp:ListItem>

                                </asp:CheckBoxList></div>
			             </div>
			            <div class="booking-details">
				            <ul class="book-left">
                                <li>Salon No</li>
					            <li>Film Adı </li>
					            <li>Saati </li>
					            <li>Bilet Sayısı</li>
					            <li>Toplam Fiyat</li>
				            </ul>
				            <ul class="book-right">
                                <li>: <asp:Label ID="salon_no" runat="server" Text="Label"></asp:Label></li>                               
                                <li>: <asp:Label ID="film_adi" runat="server" Text="Label" ></asp:Label></li>
					            <li>: <asp:Label ID="seans_saat" runat="server" Text="Label" ></asp:Label></li>
					            <li>: <asp:Label ID="counter" runat="server" Text="0"></asp:Label></li>
					            <li>: <asp:Label ID="total" runat="server" Text="0"></asp:Label></li>
				            </ul>
				            <div class="clear"></div>
				            <ul id="selected-seats" class="scrollbar scrollbar1"></ul>
				            <asp:Button CssClass="checkout-button" ID="Button1" runat="server" Text="Satın al" OnClick="Button1_Click" />
                            <asp:Button CssClass="checkout-button" ID="Button2" runat="server" Text="İptal" OnClick="Button2_Click" />
				            <div id="legend"></div>
			            </div>
			            <div style="clear:both"></div>

	                </div>
                            



                    <!--
			            <script type="text/javascript">
				            var fiyat = 10; //fiyat
                            $(document).ready
                                (function ()
                                {
                                    var $cart = $('#selected-seats'), //koltuk yeri
                                        $adi = $('#film_adi'),
                                $seans
					            $counter = $('#counter'), //seçilen bilet sayısı
					            $total = $('#total'); //toplam tutar

					            var sc = $('#seat-map').seatCharts({
						            map: [  //sinema koltuk görünüm
							            'aaaaaaaaaa',
							            'aaaaaaaaaa',
							            '__________',
							            'aaaaaaaa__',
							            'aaaaaaaaaa',
							            'aaaaaaaaaa',
							            'aaaaaaaaaa',
							            'aaaaaaaaaa',
							            'aaaaaaaaaa',
							            '__aaaaaa__'
						            ],
						            naming : {
							            top : false,
							            getLabel : function (character, row, column) {
								            return column;
							            }
						            },
						            legend : { //koltuk seçme seçenekleri
							            node : $('#legend'),
							            items : [
								            [ 'a', 'available',   'Seçilebilir' ],
								            [ 'a', 'unavailable', 'Satıldı'],
								            [ 'a', 'selected', 'Seçili']
							            ]
						            },
                                    click: function ()
                                    { //koltuk seçme işleme 
                                        if (this.status() == 'available')//seçilmiş ise
                                        { 
                                            $('<li>Sıra' + (this.settings.row + 1) + ' Koltuk' + this.settings.label + '</li>')
									            .attr('id', 'cart-item-'+this.settings.id)
									            .data('seatId', this.settings.id)
									            .appendTo($cart);

								            $counter.text(sc.find('selected').length+1);
								            $total.text(recalculateTotal(sc)+fiyat);
								
								            return 'selected';
                                        }
                                        else if (this.status() == 'selected') { //seçilmi olan kontrol edildi
									            
									            $counter.text(sc.find('selected').length-1);//seçilen koltuk numarası güncellendi
									           
									            $total.text(recalculateTotal(sc)-fiyat);//toplam miktar güncellendi
                                            
									            $('#cart-item-'+this.settings.id).remove();//seçili olanı bırakıldı
									            
									            return 'available';
                                        }
                                        else if (this.status() == 'unavailable')//satıldı
                                        { 
								            return 'unavailable';
                                        } else
                                        {
								            return this.style();
							            }
						            }
					            });
					           
                                sc.get([]).status('unavailable'); //satılan koltuk

				            });
				            //toplam bilet miktarı
				            function recalculateTotal(sc) {
					            var total = 0;
					            sc.find('selected').each(function () {
						            total += fiyat;
					            });

					            return total;
				            }
			            </script>-->
                        
	            </div>
            </div>
        <script src="js/jquery.nicescroll.js"></script>
        <script src="js/scripts.js"></script>
    </form>
</body>
</html>
