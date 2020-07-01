<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet 
	xmlns:cps="cpsframework"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xs="http://www.w3.org/2001/XMLSchema" 
	xmlns:fn="http://www.w3.org/2005/xpath-functions" 
	xmlns:math="http://www.w3.org/2005/xpath-functions/math" 
	xmlns:array="http://www.w3.org/2005/xpath-functions/array" 
	xmlns:map="http://www.w3.org/2005/xpath-functions/map" 
	xmlns:xhtml="http://www.w3.org/1999/xhtml" 
	xmlns:err="http://www.w3.org/2005/xqt-errors" 
	exclude-result-prefixes="array fn map math xhtml xs err" 
	version="3.0">
	
	<xsl:output method="html" version="4.0" encoding="UTF-8" omit-xml-declaration="yes"/>
	
	<xsl:template match="/" name="xsl:initial-template">
		<html xmlns="http://www.w3.org/1999/xhtml">
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
							margin-bottom:.0001pt;
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
					-->
					/*]]>*/
				</style>
				<!--<title></title>-->
				<xsl:text disable-output-escaping="yes">&lt;title&gt;&lt;/title&gt;</xsl:text>
			</head>
			<body>
				<h1>
					<span lang="EN-GB" xml:lang="EN-GB">1       Description of the Use Case</span>
				</h1>
				<h2>
					<span lang="EN-GB" xml:lang="EN-GB">1.1    Name of Use Case</span>
				</h2>
				<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%;border-collapse:collapse;border:none">
					<tr style="height:10.75pt">
						<td width="100%" colspan="3" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:10.75pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Use Case Identification</span>
							</p>
						</td>
					</tr>
					<tr style="height:10.75pt">
						<td width="7%" valign="top" style="width:7.58%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:10.75pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">ID</span>
							</p>
						</td>
						<td width="20%" valign="top" style="width:20.36%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:10.75pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Domain(s)</span>
							</p>
						</td>
						<td width="72%" valign="top" style="width:72.06%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:10.75pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Name of Use Case</span>
							</p>
						</td>
					</tr>
					
					<xsl:apply-templates select="cps:CPSFramework/UseCase"/>
					
				</table>
				
				<h2>
					<span lang="EN-GB" xml:lang="EN-GB">1.2    Version Management</span>
				</h2>
				<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%;border-collapse:collapse;border:none">
					<tr style="height:1.0pt">
						<td width="100%" colspan="7" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:1.0pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Version Management</span>
							</p>
						</td>
					</tr>
					<tr>
						<td width="10%" valign="top" style="width:10%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Version Management Changes</span>
							</p>
						</td>
						<td width="10%" valign="top" style="width:10%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Date</span>
							</p>
						</td>
						<td width="10%" valign="top" style="width:10%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Name<br/>Author(s)  or Committee</span>
							</p>
						</td>
						<td width="10%" valign="top" style="width:10%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Approval Status</span>
							</p>
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">draft, for comments, for voting, final</span>
							</p>
						</td>
						<td width="10%" valign="top" style="width:10%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Version Number</span>
							</p>
						</td>
					</tr>
					
					<xsl:apply-templates select="cps:CPSFramework/UseCase/Version"/>
					
				</table>
				
				<h2>
					<span lang="EN-GB" xml:lang="EN-GB">1.3    Scope and Objectives of Use Case</span>
				</h2>
				<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%;border-collapse:collapse;border:none">
					<tr style="height:17.2pt">
						<td width="100%" colspan="2" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:17.2pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Scope and Objectives of Use Case</span>
							</p>
						</td>
					</tr>
					
					<xsl:call-template name="ScopeAndObjectives"/>
					
				</table>
				
				<h2>
					<span lang="EN-GB" xml:lang="EN-GB">1.4    Narrative of Use Case</span>
				</h2>
				<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%;border-collapse:collapse;border:none">
					<tr style="height:1.0pt">
						<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:1.0pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Narrative of Use Case</span>
							</p>
						</td>
					</tr>

					<xsl:apply-templates select="cps:CPSFramework/UseCase/Narrative"/>					
					
				</table>
				
				<h2>
					<span lang="EN-GB" xml:lang="EN-GB">1.5    General Remarks</span>
				</h2>
				<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%;border-collapse:collapse;border:none">
					<tr>
						<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">General Remarks</span>
							</p>
						</td>
					</tr>

					<xsl:apply-templates select="cps:CPSFramework/UseCase/Remark"/>

				</table>
				
				<h1>
					<span lang="EN-GB" xml:lang="EN-GB">2       Diagrams of Use Case</span>
				</h1>
				<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%;border-collapse:collapse;border:none">
					<tr>
						<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; background:#BFBFBF;padding:0in 5.4pt 0in 5.4pt">
							<p class="TableHeading">
								<span lang="EN-GB" xml:lang="EN-GB">Diagram of Use Case</span>
							</p>
						</td>
					</tr>
					
					<xsl:apply-templates select="/cps:CPSFramework/UseCase/Drawing"/>
					
				</table>
				
				<h1>
					<span lang="EN-GB" xml:lang="EN-GB">3       Technical Details</span>
				</h1>
				<h2>
					<span lang="EN-GB" xml:lang="EN-GB">3.1    Actors: People, Systems, Applications, Databases, the Power System, and Other Stakeholders</span>
				</h2>
				
				<xsl:apply-templates select="cps:CPSFramework/UseCase/CPSGrouping"/>
				
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="BusinessCase">
		<xsl:value-of select="description"/>
	</xsl:template>
	
	<xsl:template match="UseCase">
		<tr style="height:11.8pt">
			<td width="7%" valign="top" style="width:7.58%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt;height:11.8pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/technicalId-->
					<xsl:attribute name="id" select="technicalId"/>
					
					<!--LOOKUP: UseCase/Identifier-->
					<xsl:value-of select="identifier"/>
				</p>
			</td>
			<td width="20%" valign="top" style="width:20.36%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt;height:11.8pt">
				<p class="MsoNormal">
					<span lang="EN-GB" xml:lang="EN-GB">
						<!-- FIXME:
						<xsl:value-of select="/n1:CPSFramework/BusinessCase/Domain/name"/>
						<xsl:for-each select="/n1:CPSFramework/UseCase/AdditionalDomain">
							<xsl:text>, </xsl:text>
							<xsl:value-of select="name"/>
						</xsl:for-each>-->
					</span>
				</p>
			</td>
			<td width="72%" valign="top" style="width:72.06%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt;height:11.8pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/name-->
					<xsl:value-of select="name"/>
				</p>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template name="ScopeAndObjectives">
		<xsl:for-each select="cps:CPSFramework/UseCase">
			<tr>
				<td width="24%" valign="top" style="width:24.14%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Related business case</span>
					</p>
				</td>
				<td width="75%" valign="top" style="width:75.86%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
					<p class="MsoNormal">
						<!--LOOKUP: UseCase/BusinessCase/technicalId-->
						<xsl:value-of select="fn:string-join(BusinessCase/technicalId, ', ')"/>
					</p>
				</td>
			</tr>
			<tr>
				<td width="24%" valign="top" style="width:24.14%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Scope</span>
					</p>
				</td>
				<td width="75%" valign="top" style="width:75.86%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
					<p class="MsoNormal">
						<!--LOOKUP: UseCase/Scope-->
						<xsl:value-of select="scope"/>
					</p>
				</td>
			</tr>
			<tr>
				<td width="24%" valign="top" style="width:24.14%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Objective</span>
					</p>
				</td>
				<td width="75%" valign="top" style="width:75.86%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
					<xsl:for-each select="RelatedObjective">
						<p class="MsoNormal">
							<xsl:attribute name="id" select="technicalId"/>
							<xsl:value-of select="concat(name,': ', description)"/>
						</p>
					</xsl:for-each>
				</td>
			</tr>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="Drawing">
		<tr>
			<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<xsl:element name="img">
						<xsl:attribute name="id" select="drawingType"/>
						<xsl:attribute name="width"><xsl:value-of select="substring-before(substring-after(URI,'W'),'_')"/></xsl:attribute>
						<xsl:attribute name="height"><xsl:value-of select="substring-before(substring-after(URI,'H'),'_')"/></xsl:attribute>
						<xsl:attribute name="src" select="URI"/>
						<xsl:attribute name="alt" select="name"/>
					</xsl:element>
				</p>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template match="Remark">
		<tr>
			<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/technicalId-->
					<xsl:attribute name="id" select="../technicalId"/>
				
					<!--LOOKUP: UseCase/Remark/content-->
					<xsl:value-of select="content"/>
				</p>
			</td>
		</tr>
	</xsl:template>
	
	<xsl:template match="Version">
		<tr>
			<td width="10%" valign="top" style="width:10%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/Version/changes-->
					<xsl:value-of select="changes"/>
				</p>
			</td>
			<td width="10%" valign="top" style="width:10%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/Version/date-->
					<xsl:value-of select="date"/>
				</p>
			</td>
			<td width="10%" valign="top" style="width:10%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/Version/Author/name multiple names are join with a ,-->
					<xsl:value-of select="fn:string-join(Author/name, ', ')"/>
				</p>
			</td>
			<td width="10%" valign="top" style="width:10%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/Version/approvalStatus-->
					<xsl:value-of select="approvalStatus"/>
				</p>
			</td>
			<td width="10%" valign="top" style="width:10%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/Version/versionNumber-->
					<xsl:value-of select="versionNumber"/>
				</p>
			</td>
		</tr>
	</xsl:template>
	
	<!--This template adds a rows to the 1.4 table for any Narrative elements-->
	<xsl:template match="Narrative">
		<tr style="height:1.0pt">
			<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:1.0pt">
				<p class="TableHeading">
					<span lang="EN-GB" xml:lang="EN-GB">Short description - max 3 sentences</span>
				</p>
			</td>
		</tr>
		<tr style="height:1.0pt">
			<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt;height:1.0pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/Narrative/shortDescription-->
					<xsl:value-of select="shortDescription"/>
				</p>
			</td>
		</tr>
		<tr style="height:1.0pt">
			<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt;height:1.0pt">
				<p class="TableHeading">
					<span lang="EN-GB" xml:lang="EN-GB">Complete description</span>
				</p>
			</td>
		</tr>				
		<tr style="height:1.0pt">
			<td width="100%" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt;height:1.0pt">
				<p class="MsoNormal">
					<!--LOOKUP: UseCase/Narrative/completeDescription-->
					<xsl:value-of select="completeDescription"/>
				</p>
			</td>
		</tr>
	</xsl:template>

	<xsl:template match="CPSGrouping">
		<table class="MsoNormalTable" border="1" cellspacing="0" cellpadding="0" width="100%" style="width:100.0%;border-collapse:collapse;border:none">
			<tr>
				<td width="100%" colspan="4" valign="top" style="width:100.0%;border:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Actors</span>
					</p>
				</td>
			</tr>
			<tr>
				<td width="42%" colspan="2" valign="top" style="width:42.98%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Grouping (Community)</span>
					</p>
				</td>
				<td width="57%" colspan="2" valign="top" style="width:57.02%;border-top:none; border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Group Description</span>
					</p>
				</td>
			</tr>
			<tr>
				<td width="42%" colspan="2" valign="top" style="width:42.98%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt">
					<p class="MsoNormal">
						<!--LOOKUP: UseCase/CPSGrouping/identifier-->
						<xsl:attribute name="id" select="identifier"/>
					
						<!--LOOKUP: UseCase/CPSGrouping/name-->
						<xsl:value-of select="name"/>
					</p>
				</td>
				<td width="57%" colspan="2" valign="top" style="width:57.02%;border-top:none; border-left:none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
					<p class="MsoNormal">
						<!--LOOKUP: UseCase/CPSGrouping/description-->
						<xsl:value-of select="description"/>
					</p>
				</td>
			</tr>
			<tr>
				<td width="22%" valign="top" style="width:22.26%;border:solid windowtext 1.0pt; border-top:none;background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Actor Name</span>
					</p>
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">see Actor  List</span>
					</p>
				</td>
				<td width="20%" valign="top" style="width:20.72%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Actor Type</span>
					</p>
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">see Actor  List</span>
					</p>
				</td>
				<td width="56%" valign="top" style="width:56.7%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; background:#CCCCCC;padding:0in 5.4pt 0in 5.4pt">
					<p class="TableHeading">
						<span lang="EN-GB" xml:lang="EN-GB">Further information specific to this Use Case</span>
					</p>
				</td>
			</tr>
			
			<xsl:apply-templates select="CPS"/>

		</table>
	</xsl:template>
	
	<xsl:template match="CPS">
		<tr>
			<td width="22%" valign="top" style="width:22.26%;border:solid windowtext 1.0pt; border-top:none;padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: CPSGrouping/CPS/name-->
					<xsl:value-of select="name"/>
				</p>
			</td>
			<td width="20%" valign="top" style="width:20.72%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: CPSGrouping/CPS/technicalId-->
					<xsl:value-of select="technicalId"/>
				</p>
			</td>
			<td width="56%" valign="top" style="width:56.7%;border-top:none;border-left: none;border-bottom:solid windowtext 1.0pt;border-right:solid windowtext 1.0pt; padding:0in 5.4pt 0in 5.4pt">
				<p class="MsoNormal">
					<!--LOOKUP: CPSGrouping/CPS/furtherInformation-->
					<xsl:value-of select="furtherInformation"/>
				</p>
			</td>
		</tr>
	</xsl:template>

</xsl:stylesheet>
