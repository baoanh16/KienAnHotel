<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-shop-details-4">
			<div class="container">
				<div class="row">
					<div class="col-12 col-md-6">
						<div class="productimg-slide">
							<div class="productimg-slide">
								<div class="product-slide order-sm-2">
									<xsl:if test="count(/ProductDetail/ProductImages)>0">
										<div class="product-slide clearfix">
											<xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages"></xsl:apply-templates>
										</div>
									</xsl:if>
								</div>
								<div class="product-nav order-sm-1">
									<xsl:if test="count(/ProductDetail/ProductImages)>0">
										<div class="product-slide clearfix">
											<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages"></xsl:apply-templates>
										</div>
									</xsl:if>
								</div>
							</div>
						</div>
					</div>
					<div class="col-12 col-md-6">
						<h1 class="product-name">
							<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
							<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
						</h1>
						<div class="row item">
							<div class="col-4">
								<div class="product-title">
									<xsl:value-of select="/ProductList/Price" />
								</div>
							</div>
							<div class="col-8">
								<div class="product-result price">
									<xsl:value-of select="/ProductDetail/Price"></xsl:value-of>
								</div>
							</div>
						</div>
						<div class="row item">
							<div class="col-4">
								<div class="product-title">
									<xsl:value-of select="/ProductList/Capacity" />
								</div>
							</div>
							<div class="col-8">
								<div class="product-result">
									<xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>
								</div>
							</div>
							<div class="row item">
								<div class="col-4">
									<div class="product-title">
										<xsl:value-of select="/ProductList/Describe" />
									</div>
								</div>
								<div class="col-8">
									<div class="product-result">
										<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="ProductProperties">
		<xsl:if test="FieldId=4">
			<div class="product-size">
				<strong>
					<xsl:value-of select="Title"></xsl:value-of>
				</strong>
				<select>
					<xsl:attribute name="name">
						<xsl:text>product_attribute_</xsl:text>
						<xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
						<xsl:text>_</xsl:text>
						<xsl:value-of select="FieldId"></xsl:value-of>
					</xsl:attribute>
					<xsl:apply-templates select="Options"></xsl:apply-templates>
				</select>
				<a href="/cham-soc-khach-hang/huong-dan-chon-size/so-mi-tay-ngan-kieu-body" class="viewsize">Hướng dẫn chọn size</a>
			</div>
		</xsl:if>
	</xsl:template>

	<xsl:template match="Options">
		<option>
			<xsl:attribute name="value">
				<xsl:value-of select="OptionId"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of>
		</option>
	</xsl:template>

	<xsl:template match="ProductImages" mode="BigImages">
		<div class="item">
			<a>
				<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</xsl:attribute>
				</img>
			</a>
		</div>
	</xsl:template>
	<xsl:template match="ProductImages" mode="SmallImages">
		<div class="item">
			<img class="img-fluid">
				<xsl:attribute name="src">
					<xsl:value-of select="ThumbnailUrl"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="alt">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				</xsl:attribute>
			</img>
		</div>
	</xsl:template>
	<xsl:template match="ProductOther">
		<div class="item">
			<div class="product-col">
				<xsl:choose>
					<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
						<div class="promotion op1">
							<span>
								<xsl:value-of select="/ProductDetail/NewText"></xsl:value-of>
							</span>
						</div>
					</xsl:when>
					<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
						<span class="promotion op2">
							<xsl:value-of select="/ProductDetail/SaleText"></xsl:value-of>
						</span>
					</xsl:when>
				</xsl:choose>
				<figure>
					<a class="product-img">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<div class="product-name">
							<a class="btn-detail">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Code"></xsl:value-of>
							</a>
						</div>
						<div class="product-price">
							<xsl:if test="OldPrice != ''">
								<div class="old">
									<xsl:value-of select="OldPrice"></xsl:value-of>
								</div>
							</xsl:if>
							<xsl:if test="Price != ''">
								<div class="new">
									<xsl:value-of select="Price"></xsl:value-of>
								</div>
							</xsl:if>
						</div>
						<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of select="/ProductDetail/BuyText"></xsl:value-of>
							</span>
							<i class="fa fa-shopping-bag" aria-hidden="true"></i>
						</a>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="ProductRelated">
		<div class="item">
			<div class="product-col">
				<xsl:choose>
					<xsl:when test="floor(ShowOption div 1) mod 2 = 1">
						<div class="promotion op1">
							<span>
								<xsl:value-of select="/ProductDetail/NewText"></xsl:value-of>
							</span>
						</div>
					</xsl:when>
					<xsl:when test="floor(ShowOption div 2) mod 2 = 1">
						<span class="promotion op2">
							<xsl:value-of select="/ProductDetail/SaleText"></xsl:value-of>
						</span>
					</xsl:when>
				</xsl:choose>
				<figure>
					<a class="product-img">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						<img>
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="alt">
							<xsl:value-of select="Title"></xsl:value-of>
						</xsl:attribute>
						</img>
					</a>
					<figcaption>
						<div class="product-name">
							<a class="btn-detail">
								<xsl:attribute name="href">
									<xsl:value-of select="Url"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="title">
									<xsl:value-of select="Title"></xsl:value-of>
								</xsl:attribute>
								<xsl:value-of select="Code"></xsl:value-of>
							</a>
						</div>
						<div class="product-price">
							<xsl:if test="OldPrice != ''">
								<div class="old">
									<xsl:value-of select="OldPrice"></xsl:value-of>
								</div>
							</xsl:if>
							<xsl:if test="Price != ''">
								<div class="new">
									<xsl:value-of select="Price"></xsl:value-of>
								</div>
							</xsl:if>
						</div>
						<a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
							<xsl:attribute name="data-productid">
								<xsl:value-of select="ProductId"></xsl:value-of>
							</xsl:attribute>
							<span>
								<xsl:value-of select="/ProductDetail/BuyText"></xsl:value-of>
							</span>
							<i class="fa fa-shopping-bag" aria-hidden="true"></i>
						</a>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>

</xsl:stylesheet>
