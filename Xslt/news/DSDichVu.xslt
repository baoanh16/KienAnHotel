<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-boxes-18">
			<h1 class="ka-title">
				<xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
			</h1>
			<div class="container">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="row no-gutters item">
			<div class="col-md-6">
				<xsl:if test="position() mod 2 = 0">
					<xsl:attribute name="class">
						<xsl:text>col-md-6 order-md-2</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<figure class="mb-0" bg-img="./img/home/h_6.jpg">
					<xsl:attribute name="bg-img">
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
				</figure>
			</div>
			<div class="col-md-6">
				<xsl:if test="position() mod 2 = 0">
					<xsl:attribute name="class">
						<xsl:text>col-md-6 order-md-1</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<div class="text">
					<xsl:if test="position() mod 2 = 0">
						<xsl:attribute name="class">
							<xsl:text>text-odd</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<h3 class="ka-subtitle">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h3>
					<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					<p class="mb-0">
						<a class="btn btn-readmore" href="service-detail.html">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"></xsl:value-of>
						</xsl:attribute>
							<xsl:value-of select="/NewsList/ViewMoreText" />
						</a>
					</p>
				</div>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>
