<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="canhcam-nav-1">
			<article class="nav-lists">
				<div class="container">
					<h2 class="ka-title">
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h2>
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</article>
		</section>

	</xsl:template>
	<xsl:template match="Zone">
		<nav>
			<ul class="nav">
				<xsl:apply-templates select="Zone" mode="Content"></xsl:apply-templates>
			</ul>
		</nav>
	</xsl:template>

	<xsl:template match="Zone" mode="Content">
		<li>
			<xsl:if test="IsActive='true'">
				<xsl:attribute name="class">
					<xsl:text>active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<a>
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:attribute name="target">
					<xsl:value-of select="Target"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</a>
		</li>

	</xsl:template>

</xsl:stylesheet>
