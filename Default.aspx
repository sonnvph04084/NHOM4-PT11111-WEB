<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <div class="index-banner">
       	  <div class="wmuSlider example1" style="height: 560px;">
			  <div class="wmuSliderWrapper">
				  <article style="position: relative; width: 100%; opacity: 1;"> 
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<asp:Image id="Image2" runat="server" ImageUrl="~/Content/themeshop/images/banner1.jpg"/>
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
					</article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
                              <asp:Image id="Image4" runat="server" ImageUrl="~/Content/themeshop/images/banner2.jpg"/>
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
                            <asp:Image runat="server" ImageUrl="~/Content/themeshop/images/banner1.jpg"/>						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;">
				   	<div class="banner-wrap">
					   	<div class="slider-left">
							<asp:Image ID="Image1" runat="server" ImageUrl="~/Content/themeshop/images/banner2.jpg"/>
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
				   </article>
				   <article style="position: absolute; width: 100%; opacity: 0;"> 
				   	 <div class="banner-wrap">
					   	<div class="slider-left">
							<asp:Image ID="Image3" runat="server" ImageUrl="~/Content/themeshop/images/banner1.jpg"/>
						</div>
						 <div class="slider-right">
						    <h1>Classic</h1>
						    <h2>White</h2>
						    <p>Lorem ipsum dolor sit amet</p>
						    <div class="btn"><a href="shop.html">Shop Now</a></div>
						 </div>
						 <div class="clear"></div>
					 </div>
			      </article>
				</div>
                <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
                <ul class="wmuSliderPagination">
                	<li><a href="#" class="">0</a></li>
                	<li><a href="#" class="">1</a></li>
                	<li><a href="#" class="wmuActive">2</a></li>
                	<li><a href="#">3</a></li>
                	<li><a href="#">4</a></li>
                  </ul>
                 <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a><ul class="wmuSliderPagination"><li><a href="#" class="wmuActive">0</a></li><li><a href="#" class="">1</a></li><li><a href="#" class="">2</a></li><li><a href="#" class="">3</a></li><li><a href="#" class="">4</a></li></ul></div>
            	 <script src="<%: ResolveUrl("~/Content/themeshop/js/jquery.wmuSlider.js") %>"></script>
                <script src="<%: ResolveUrl("~/Content/themeshop/js/modernizr.custom.min.js") %>"></script> 
						<script>
						    $('.example1').wmuSlider();
   						</script> 	           	      
             </div>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <div class="content-top">
             		<div class="lsidebar span_1_of_c1">
					  <p>Lorem ipsum dolor sit amet, consectetuer adipiscing</p>
					</div>
					<div class="cont span_2_of_c1">
					  <div class="social">	
					     <ul>	
						  <li class="facebook"><a href="#"><span> </span></a><div class="radius"> <asp:Image id="Image5" runat="server" ImageUrl="~/Content/themeshop/images/radius.png"/><a href="#"> </a></div><div class="border hide"><p class="num">1.51K</p></div></li>
						 </ul>
			   		   </div>
					   <div class="social">	
						   <ul>	
							  <li class="twitter"><a href="#"><span> </span></a><div class="radius"> <asp:Image id="Image6" runat="server" ImageUrl="~/Content/themeshop/images/radius.png"/></div><div class="border hide"><p class="num">1.51K</p></div></li>
						  </ul>
			     		</div>
						 <div class="social">	
						   <ul>	
							  <li class="google"><a href="#"><span> </span></a><div class="radius"> <asp:Image id="Image7" runat="server" ImageUrl="~/Content/themeshop/images/radius.png"/></div><div class="border hide"><p class="num">1.51K</p></div></li>
						   </ul>
			    		 </div>
						 <div class="social">	
						   <ul>	
							  <li class="dot"><a href="#"><span> </span></a><div class="radius"> <asp:Image id="Image8" runat="server" ImageUrl="~/Content/themeshop/images/radius.png"/></div><div class="border hide"><p class="num">1.51K</p></div></li>
						  </ul>
			     		</div>
						<div class="clear"> </div>
					  </div>
					  <div class="clear"></div>			
				   </div>
				   
				  <div class="content-bottom">
				   <div class="box1">
				   <!--San Pham -->
                 <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource1" >
                     <ItemTemplate>
				    <div class="col_1_of_3 span_1_of_3">
				     <div class="view view-fifth">
				  	  <div class="top_box">
					  	<a id="A1" class="color1" runat="server" href="#"><h3 class="m_1"><asp:Label ID="mo_taLabel" runat="server" Text='<%# Bind("ten") %>' /></h3></a>
					  	<p class="m_2"><asp:Label ID="tenLabel" runat="server" Text='<%# Bind("mo_ta") %>' /></p>
				         <div class="grid_img">
						   <div class="css3">
                               <!--<asp:Image id="Image10" runat="server" ImageUrl="<%# Bind('anh') %>" Width="320" Height="200"/>-->	
                               <asp:Image id="Image11" runat="server" ImageUrl="~/Images/Product/giaynu2.JPG" Width="320" Height="200"/>
						   </div>					        
	                    </div>
                       <div class="price"><asp:Label ID="giaLabel" runat="server" Text='<%# Bind("gia")%>' />VND</div>
					   </div>
                         <span style="position:absolute;top:0px;right:5px;"><a id="A2" class="color1" runat="server" href="~/Admin/Product.aspx" title="Sửa"><i class="fa fa-pencil-square-o" aria-hidden="true"></i></a></span>
					    </div>
					   <span class="rating">
				        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
				        <label for="rating-input-1-5" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
				        <label for="rating-input-1-4" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
				        <label for="rating-input-1-3" class="rating-star1"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
				        <label for="rating-input-1-2" class="rating-star"></label>
				        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
				        <label for="rating-input-1-1" class="rating-star"></label>&nbsp;
		        	  (45)
		    	      </span>
						 <ul class="list">
						  <li>
                            <asp:Image id="Image9" runat="server" ImageUrl="~/Content/themeshop/images/plus.png"/>			
						  	<ul class="icon1 sub-icon1 profile_img">
							  <li><a class="active-icon c1" href="#">Mua hàng </a>
								<ul class="sub-icon1 list">
									<li><h3>sed diam nonummy</h3><a href=""></a></li>
									<li><p>Lorem ipsum dolor sit amet, consectetuer  <a href="">adipiscing elit, sed diam</a></p></li>
								</ul>
							  </li>
							 </ul>
						   </li>
					     </ul>
			    	    <div class="clear"></div>
			    	</div>
                        </ItemTemplate>
                     </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [san_pham] WHERE [ms] = @ms" InsertCommand="INSERT INTO [san_pham] ([ms], [ms_chuyenmuc_sp], [sku], [ten], [gia], [mo_ta], [anh], [don_vi]) VALUES (@ms, @ms_chuyenmuc_sp, @sku, @ten, @gia, @mo_ta, @anh, @don_vi)" SelectCommand="SELECT * FROM [san_pham]" UpdateCommand="UPDATE [san_pham] SET [ms_chuyenmuc_sp] = @ms_chuyenmuc_sp, [sku] = @sku, [ten] = @ten, [gia] = @gia, [mo_ta] = @mo_ta, [anh] = @anh, [don_vi] = @don_vi WHERE [ms] = @ms">
                        <DeleteParameters>
                            <asp:Parameter Name="ms" Type="Int32" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ms" Type="Int32" />
                            <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
                            <asp:Parameter Name="sku" Type="String" />
                            <asp:Parameter Name="ten" Type="String" />
                            <asp:Parameter Name="gia" Type="Decimal" />
                            <asp:Parameter Name="mo_ta" Type="String" />
                            <asp:Parameter Name="anh" Type="String" />
                            <asp:Parameter Name="don_vi" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="ms_chuyenmuc_sp" Type="Int32" />
                            <asp:Parameter Name="sku" Type="String" />
                            <asp:Parameter Name="ten" Type="String" />
                            <asp:Parameter Name="gia" Type="Decimal" />
                            <asp:Parameter Name="mo_ta" Type="String" />
                            <asp:Parameter Name="anh" Type="String" />
                            <asp:Parameter Name="don_vi" Type="String" />
                            <asp:Parameter Name="ms" Type="Int32" />
                        </UpdateParameters>
                    </asp:SqlDataSource>



					<!-- End San Pham-->
				  <div class="clear"></div>
			  </div>
			  </div>
</asp:Content>
