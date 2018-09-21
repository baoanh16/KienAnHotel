<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <section class="canhcam-news-3">
      <div class="container">
         <h1 class="ka-title">
          <xsl:value-of select="/NewsList/ZoneTitle"></xsl:value-of>
        </h1>
        <div class="promotion">
			<div class="row">
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
        </div>
      </div>
    </section>
  </xsl:template>

  <xsl:template match="News">
    <div class="col-md-6 col-lg-4 box">
		<a class="item">
			<xsl:attribute name="href">
				<xsl:value-of select="Url"></xsl:value-of>
			</xsl:attribute>
			<figure>
				<div class="img">
					<img class="img-fluid w-100" alt="">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<figcaption data-mh="box">
					<time>
						<xsl:value-of select="CreatedDate"></xsl:value-of>
					</time>
					<h4>
						<xsl:value-of select="Title"></xsl:value-of>
					</h4>
				</figcaption>
			</figure>
		</a>
	</div>
  </xsl:template>
</xsl:stylesheet>