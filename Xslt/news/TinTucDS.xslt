<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>

<xsl:template match="/">
	<section class="canhcam-news-4">
		<article class="news-hot">
			<div class="container">
				<h1 class="ka-title">
					<xsl:value-of select="/NewsList/ModuleTitle"></xsl:value-of>
				</h1>
				<xsl:apply-templates select="/NewsList/News"></xsl:apply-templates>
			</div>
		</article>
	</section>
</xsl:template>

<xsl:template match="News">
	<xsl:if test="position() = 1">
		<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
	</xsl:if>
	<xsl:if test="position() = 6">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		<xsl:text disable-output-escaping="yes">&lt;div class="row"&gt;</xsl:text>
	</xsl:if>


	<xsl:if test="position() &gt; 0 and  position() &lt; 4 ">

		<div class="col-lg-4">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
						</img>
						</div>
					<figcaption>
						<div class="text">
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
								<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
								</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:if>
	<xsl:if test="position() = 4">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		<xsl:text disable-output-escaping="yes">&lt;div class='row'&gt;</xsl:text>
		<div class="col-lg-8">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
						</img>
						</div>
					<figcaption>
						<div class="text">
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
								<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
								</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:if>
	<xsl:if test="position() = 5">
		<div class="col-lg-4">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
						</img>
						</div>
					<figcaption>
						<div class="text">
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
								<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
								</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:if>
	<xsl:if test="position() &gt; 5 and  position() &lt; 9 ">

		<div class="col-lg-4">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
						</img>
						</div>
					<figcaption>
						<div class="text">
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
								<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
								</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:if>
	<xsl:if test="position() = 9">
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
		<xsl:text disable-output-escaping="yes">&lt;div class='row'&gt;</xsl:text>
			<div class="col-lg-4">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
						</img>
						</div>
					<figcaption>
						<div class="text">
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
								<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
								</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
	</xsl:if>
	<xsl:if test="position() = 10">
			<div class="col-lg-8">
			<a class="item">
				<xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
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
						</img>
						</div>
					<figcaption>
						<div class="text">
							<time>
								<xsl:value-of select="CreatedDate"></xsl:value-of>
							</time>
							<h3>
								<xsl:value-of select="Title"></xsl:value-of>
							</h3>
								<p>
								<xsl:value-of select="BriefContent"></xsl:value-of>
								</p>
						</div>
					</figcaption>
				</figure>
			</a>
		</div>
		<xsl:text disable-output-escaping="yes">&lt;/div&gt;</xsl:text>
	</xsl:if>

</xsl:template>
</xsl:stylesheet>