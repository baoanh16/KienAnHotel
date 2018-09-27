<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--Begin News-->
	<xsl:template match="/">
		<section class="canhcam-boxes-16">
			<div class="container">
				<h2 class="ka-title">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h2>
				<div class="row">
					<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
					<div class="col-auto mx-auto">
						<a class="btn btn-readmore" href="#">
							<xsl:attribute name="href">
								<xsl:value-of select="Url"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="target">
								<xsl:value-of select="Target"></xsl:value-of>
							</xsl:attribute>
							<xsl:value-of select="/NewsList/ViewMoreText" />
						</a>
					</div>
				</div>
			</div>


		</section>
	</xsl:template>

	<!--Begin News Child-->
	<xsl:template match="News">
		<div class="col-6 col-md-4">
			<a class="item" href="#">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<figure>
					<div class="boximg">
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
					</div>
					<figcaption>
						<div class="text">
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
						</div>
						<p>
							<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
						</p>
					</figcaption>
				</figure>
			</a>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>

</xsl:stylesheet>
