<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-shop-details-4">
			<article class="product-details">
				<div class="container">
					<div class="row">
						<div class="col-12 col-md-6">
							<div class="productimg-slide">
								<div class="slidewrap d-sm-flex">
									<div class="product-slide order-sm-2">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="BigImages"></xsl:apply-templates>
									</div>
									<div class="product-nav order-sm-1">
										<xsl:apply-templates select="/ProductDetail/ProductImages" mode="SmallImages"></xsl:apply-templates>
									</div>
								</div>
							</div>
						</div>
						<div class="col-12 col-md-6">
							<div class="product-info">
								<h1 class="product-name">
									<xsl:value-of select="/ProductDetail/Title"></xsl:value-of>
									<xsl:value-of select="/ProductDetail/EditLink" disable-output-escaping="yes"></xsl:value-of>
								</h1>
								<div class="row item">
									<div class="col-4">
										<div class="product-title">
											<xsl:value-of select="/ProductDetail/PriceText"></xsl:value-of>
										</div>
									</div>
									<div class="col-8">
										<div class="product-result price">
											<xsl:value-of select="/ProductDetail/Price" />
										</div>
									</div>
								</div>
								<div class="row item">
									<div class="col-4">
										<div class="product-title">
											<xsl:value-of select="/ProductDetail/Capacity"></xsl:value-of>
										</div>
									</div>
									<div class="col-8">
										<div class="product-result">
											<xsl:value-of select="/ProductDetail/SubTitle"></xsl:value-of>
										</div>
									</div>
								</div>
								<div class="row item">
									<div class="col-4">
										<div class="product-title">
											<xsl:value-of select="/ProductDetail/Describe" />
										</div>
									</div>
									<div class="col-8">
										<div class="product-result">
											<xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of>
										</div>
									</div>
								</div>
							</div>
							<div class="social-networks nav mt-3">
								<div class="nav-item mr-2">
									<div class="fb-share-button" data-href="" data-layout="button" data-size="small" data-mobile-iframe="true">
										<a class="fb-xfbml-parse-ignore" target="_blank" href="">Chia sẻ</a>
									</div>
								</div>
								<div class="nav-item mr-2">
									<a class="twitter-share-button" href="https://twitter.com/share" data-size="medium" data-text="custom share text"
									 data-url="" data-via="twitterdev" data-related="twitterapi,twitter">Tweet</a>
								</div>
								<div class="nav-item mr-2">
									<div class="g-plusone" data-size="tall"></div>
								</div>
								<div class="nav-item">
									<script src="//platform.linkedin.com/in.js" type="text/javascript">
										lang: en_US

									</script>
									<script type="IN/Share"></script>
								</div>
							</div>
						</div>
						<div class="col">
							<div class="product-description">
								<nav class="nav nav-tabs" role="tablist">
									<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Nav"> </xsl:apply-templates>
								</nav>
								<div class="tab-content">
									<xsl:apply-templates select="/ProductDetail/ProductAttributes" mode="Content"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</div>
				</div>
			</article>
		</section>
	</xsl:template>
	<xsl:template match="ProductImages" mode="BigImages">
		<div class="item">
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
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
	<xsl:template match="ProductAttributes" mode="Nav">
		<a class="nav-link" data-toggle="tab">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>nav-link active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="aria-controls">
				<xsl:text>nav-room-tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="aria-selected">
				<xsl:text>true</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:text>#tab</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="role">
				<xsl:text>tab</xsl:text>
			</xsl:attribute>
			<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
		</a>
	</xsl:template>
	<xsl:template match="ProductAttributes" mode="Content">
		<div class="tab-pane fade">
			<xsl:if test="position() =1">
				<xsl:attribute name="class">
					<xsl:text>tab-pane fade show active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:attribute name="id">
				<xsl:text>tab</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="role">
				<xsl:text>tabpanel</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="aria-labelledby">
				<xsl:text>nav-room-tab-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
		</div>
	</xsl:template>
</xsl:stylesheet>
