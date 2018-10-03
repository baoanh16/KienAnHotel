<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="canhcam-boxes-1" bg-img="/Data/Sites/1/media/news_home_bg.jpg">
			<div class="container">
				<h2 class="ka-title">
					<xsl:value-of select="/VideoList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="row">
					<div class="col-sm-10 mx-auto">
						<xsl:apply-templates select="/VideoList/Video"></xsl:apply-templates>
					</div>
				</div>
			</div>
		</section>
	</xsl:template>

	<xsl:template match="Video">
		<a class="video-wrap">
			<xsl:attribute name="data-fancybox">
				<xsl:text>video</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:value-of select="VideoUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<img class="img-fluid">
			<xsl:attribute name="src">
				<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="alt">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			<xsl:attribute name="title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</xsl:attribute>
			</img>
			<div class="btn-play">
				<span class="mdi mdi-play"></span>
			</div>
		</a>
	</xsl:template>
</xsl:stylesheet>
