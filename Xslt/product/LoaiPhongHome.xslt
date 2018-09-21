<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-slider-3" id="sectionScroll">
			<article class="container">
				<h2 class="ka-title">
					<xsl:value-of select="/ProductList/ModuleTitle"></xsl:value-of>
				</h2>
					<div class="owl-carousel owl-theme list-items">
					<xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
				</div>
			</article>
		</section>
	</xsl:template>
	<xsl:template match="Product">
		<!-- <div class="col-md-6 part-list">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<img class="img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="alt">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					</img>
					<figcaption>
						<h3>
							<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
						</h3>
					</figcaption>
				</figure>
			</a>
		</div> -->
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="bg-img">
					<xsl:value-of select="ImageUrl"></xsl:value-of>
				</xsl:attribute>
				<img alt="">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
				</img>
				 <div class="title">
				 	<h3>
					 	<xsl:value-of select="Title"></xsl:value-of>
					 </h3>
				 </div>
			</a>
	</xsl:template>
</xsl:stylesheet>
