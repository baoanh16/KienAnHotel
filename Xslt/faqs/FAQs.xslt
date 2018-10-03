<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<!--<FAQsList>
		<ModuleTitle>Hỏi đáp</ModuleTitle>
		<PageTitle>Hỏi đáp</PageTitle>
		<SubmitLink>Hỏi đáp</SubmitLink>
		<Culture>vi-VN</Culture>
		<FAQs>
			<Question>Câu hỏi</Question>
			<Answer>Trả lời</Answer>
			<Viewed>0</Viewed>
		</FAQs>
	</FAQsList>-->

	<xsl:template match="/">
		<section class="canhcam-support-1">
			<article class="support-lists">
				<div class="container">
					<div class="list-detail">
						<xsl:apply-templates select="/FAQsList/FAQs"></xsl:apply-templates>
					</div>
					<p class="btn-support">
						<a class="btn btn-readmore" href="">
							<xsl:value-of select="/FAQsList/SendQ" />
						</a>
					</p>
				</div>
			</article>
		</section>
	</xsl:template>

	<xsl:template match="FAQs">
		<div class="item">

			<div class="content">
				<div class="trigger-icon"><span class="fas fa-chevron-right"></span></div>
				<h5>
					<xsl:value-of select="Question" disable-output-escaping="yes"></xsl:value-of>
					<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
				</h5>
			</div>
			<div class="lead">
				<figure>
					<figcaption>
						<xsl:value-of select="Answer" disable-output-escaping="yes"></xsl:value-of>
					</figcaption>
				</figure>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
