<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="Zone">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="canhcam-boxes-2" bg-img="/Data/Sites/1/media/about_all_bg.jpg">
					<div class="container">
						<h2 class="ka-title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<div class="col-12">
								<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="canhcam-boxes-3">
					<div class="container">
						<h2 class="ka-title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row list-item">
							<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
						</div>
					</div>
				</section>
			</xsl:when>
			<xsl:when test="position()=3">
				<section class="canhcam-carousel-4">
					<div class="container">
						<h2 class="ka-title">
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h2>
						<div class="row">
							<div class="col">
								<article class="owl-carousel owl-theme list-items">
									<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
								</article>
							</div>
						</div>
					</div>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews1">
		<div class="text">
			<p>
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</p>
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
		</div>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews2">
		<div class="col-12">
			<div class="text">
				<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
		<xsl:apply-templates select="NewsImages" mode="First"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="News" mode="ZoneNews3">
		<xsl:apply-templates select="NewsImages" mode="Second"></xsl:apply-templates>
	</xsl:template>
	<xsl:template match="NewsImages" mode="First">
		<div class="col-lg-3 col-6 item">
			<figure>
				<img>
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
				<figcaption>
					<p>
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</figcaption>
			</figure>
		</div>
	</xsl:template>
	<xsl:template match="NewsImages" mode="Second">
		<div class="item">
			<a href="#">
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
</xsl:stylesheet>
