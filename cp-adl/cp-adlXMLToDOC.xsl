<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:cps="cpsframework" xmlns:lookup="lookup" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:msxsl="urn:schemas-microsoft-com:xslt" xmlns="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xs err msxsl lookup" version="1.0">
	<xsl:output method="xml" version="4.0" encoding="UTF-8" omit-xml-declaration="yes" indent="yes"/>
	<xsl:variable name="AspectLookupTableString">
		<xsl:call-template name="CreateAspectLookup"/>
	</xsl:variable>
	<xsl:variable name="AspectLookupTable" select="msxsl:node-set($AspectLookupTableString)"/>
	<xsl:template match="/" name="initial-template">
		<html>
			<head>
				<meta name="generator" content="HTML Tidy for Windows (vers 14 October 2008), see www.w3.org"/>
				<meta http-equiv="Content-Type" content="text/html; charset=us-ascii"/>
				<meta name="Generator" content="Microsoft Word 14 (filtered)"/>
				<style type="text/css">
					/*<![CDATA[*/
					<!--
					 /* Font Definitions */
					 @font-face
							{font-family:Cambria;
							panose-1:2 4 5 3 5 4 6 3 2 4;}
					@font-face
							{font-family:Tahoma;
							panose-1:2 11 6 4 3 5 4 4 2 4;}
					@font-face
							{font-family:"Arial Narrow";
							panose-1:2 11 6 6 2 2 2 3 2 4;}
					 /* Style Definitions */
					 p.MsoNormal, li.MsoNormal, div.MsoNormal
							{margin:0in;
							margin-top:4px;
							margin-bottom:4px;
							text-align:justify;
							font-size:10.0pt;
							font-family:"Arial","sans-serif";
							letter-spacing:.4pt;}
					h1
							{mso-style-link:"Heading 1 Char";
							margin-top:24.0pt;
							margin-right:0in;
							margin-bottom:0in;
							margin-left:0in;
							margin-bottom:.0001pt;
							text-align:justify;
							page-break-after:avoid;
							font-size:14.0pt;
							font-family:"Cambria","serif";
							color:#365F91;
							letter-spacing:.4pt;}
					h2
							{mso-style-link:"Heading 2 Char";
							margin-top:10.0pt;
							margin-right:0in;
							margin-bottom:0in;
							margin-left:0in;
							margin-bottom:.0001pt;
							text-align:justify;
							page-break-after:avoid;
							font-size:13.0pt;
							font-family:"Cambria","serif";
							color:#4F81BD;
							letter-spacing:.4pt;}
					p.MsoBodyText, li.MsoBodyText, div.MsoBodyText
							{mso-style-link:"Body Text Char";
							margin-top:0in;
							margin-right:0in;
							margin-bottom:6.0pt;
							margin-left:0in;
							text-align:justify;
							font-size:10.0pt;
							font-family:"Arial","sans-serif";
							letter-spacing:.4pt;}
					p.MsoDocumentMap, li.MsoDocumentMap, div.MsoDocumentMap
							{mso-style-link:"Document Map Char";
							margin:0in;
							margin-bottom:.0001pt;
							text-align:justify;
							font-size:8.0pt;
							font-family:"Tahoma","sans-serif";
							letter-spacing:.4pt;}
					p.TableHeading, li.TableHeading, div.TableHeading
							{mso-style-name:TableHeading;
							mso-style-link:"TableHeading Char";
							margin:0in;
							margin-bottom:.0001pt;
							font-size:10.0pt;
							font-family:"Arial","sans-serif";
							color:#002060;
							letter-spacing:.4pt;
							font-weight:bold;
							font-style:italic;}
					span.TableHeadingDetail
							{mso-style-name:TableHeadingDetail;
							font-family:"Arial Narrow","sans-serif";
							color:navy;
							font-weight:normal;
							font-style:italic;}
					span.DocumentMapChar
							{mso-style-name:"Document Map Char";
							mso-style-link:"Document Map";
							font-family:"Tahoma","sans-serif";
							letter-spacing:.4pt;}
					span.Heading2Char
							{mso-style-name:"Heading 2 Char";
							mso-style-link:"Heading 2";
							font-family:"Cambria","serif";
							color:#4F81BD;
							letter-spacing:.4pt;
							font-weight:bold;}
					span.Heading1Char
							{mso-style-name:"Heading 1 Char";
							mso-style-link:"Heading 1";
							font-family:"Cambria","serif";
							color:#365F91;
							letter-spacing:.4pt;
							font-weight:bold;}
					span.BodyTextChar
							{mso-style-name:"Body Text Char";
							mso-style-link:"Body Text";
							font-family:"Arial","sans-serif";
							letter-spacing:.4pt;}
					span.TableHeadingChar
							{mso-style-name:"TableHeading Char";
							mso-style-link:TableHeading;
							font-family:"Arial","sans-serif";
							color:#002060;
							letter-spacing:.4pt;
							font-weight:bold;
							font-style:italic;}
					.MsoChpDefault
							{font-family:"Calibri","sans-serif";}
					.MsoPapDefault
							{margin-bottom:10.0pt;
							line-height:115%;}
					@page WordSection1
							{size:11.0in 8.5in;
							margin:1.0in 1.0in 1.0in 1.0in;}
					div.WordSection1
							{page:WordSection1;}
					td.TableHeader
						{border:solid windowtext 1.0pt;
						background:#CCCCCC;
						padding:0in 5.4pt 0in 5.4pt;
						height:10.75pt}
					td.TableCell
						{border:solid windowtext 1.0pt;
						padding:0in 5.4pt 0in 5.4pt;
						height:11.8pt;
						vertical-align: text-top}
					table
						{width:100.0%;
						border-collapse:collapse;
						border:none}
					-->
					/*]]>*/
				</style>
				<!--<title></title>-->
				<xsl:text disable-output-escaping="yes">&lt;title&gt;&lt;/title&gt;</xsl:text>
			</head>
			<body>
				<h1>
					<span lang="EN-GB" xml:lang="EN-GB">0       Description of the Business Case</span>
				</h1>
				<table id="0">
					<tr style="height:10.75pt">
						<td width="15%" class="TableHeader">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">ID</span>
							</p>
						</td>
						<td width="15%" class="TableHeader">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Name</span>
							</p>
						</td>
						<td width="15%" class="TableHeader">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Domain(s)</span>
							</p>
						</td>
						<td width="30%" class="TableHeader">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Description</span>
							</p>
						</td>
						<td width="15%" class="TableHeader">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Requirements R-ID</span>
							</p>
						</td>
						<td width="15%" class="TableHeader">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Type</span>
							</p>
						</td>
					</tr>
					<xsl:apply-templates select="cps:CPSFramework/BusinessCase"/>
				</table>
			</body>
		</html>
	</xsl:template>
	<!--Creates an intermediary xml document based on all the Asepcts in the source document
		in order to generate the Requirements table and create links to the rest of thet document.-->
	<xsl:template name="CreateAspectLookup">
		<xsl:for-each select="//Aspects">
			<xsl:variable name="parentName" select="name(..)"/>
			<xsl:variable name="grandparentName" select="name(../..)"/>
			<lookup:entry>
				<xsl:attribute name="id"><xsl:value-of select="generate-id(.)"/></xsl:attribute>
				<xsl:attribute name="number"><xsl:value-of select="count(../preceding-sibling::*[name() = $parentName and Aspects]) + 1"/></xsl:attribute>
				<xsl:attribute name="grandparentNumber"><xsl:value-of select="count(../../preceding-sibling::*/*[name() = $parentName and Aspects]) + 1"/></xsl:attribute>
				<xsl:attribute name="parentName"><xsl:value-of select="$parentName"/></xsl:attribute>
				<xsl:attribute name="grandparentId"><xsl:value-of select="generate-id(../..)"/></xsl:attribute>
				<xsl:attribute name="greatGrandparentId"><xsl:value-of select="generate-id(../../..)"/></xsl:attribute>
				<xsl:copy-of select="."/>
			</lookup:entry>
		</xsl:for-each>
	</xsl:template>
	<!--Outputs the number of the given Aspects element from the lookup table.-->
	<xsl:template name="GetAspectNumberFromLookup">
		<xsl:param name="aspectNode"/>
		<xsl:param name="useGrandparentNumber" select="false()"/>
		<xsl:choose>
			<xsl:when test="$useGrandparentNumber">
				<xsl:value-of select="$AspectLookupTable/lookup:entry[@id = generate-id($aspectNode)]/@grandparentNumber"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:value-of select="$AspectLookupTable/lookup:entry[@id = generate-id($aspectNode)]/@number"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<!--Joins the values in the given node set into one string with the given joinString in between.
		Default JoinString is a space.-->
	<xsl:template name="StringJoin">
		<xsl:param name="values"/>
		<xsl:param name="joinString" select="' '"/>
		<xsl:for-each select="$values">
			<xsl:value-of select="."/>
			<xsl:if test="position() &lt; last()">
				<xsl:value-of select="$joinString"/>
			</xsl:if>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
