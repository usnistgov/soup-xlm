<?xml version="1.0" encoding="UTF-8"?>
<!--Author: Luke Donmoyer 
	Date: June, 2020-->
<xsl:stylesheet version="2.0" 
	exclude-result-prefixes="xsi x n1" 
	xmlns="cpsframework" 
	xmlns:n1="cpsframework"
	xmlns:x="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:fn="functions"
	xmlns:xs="http://www.w3.org/2001/XMLSchema">
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

	<!--Select the table under h2 1.1. This should only be one table.-->
	<xsl:variable name="table1_1" select="fn:getTablesBetweenHeaders('1.1', 'h2', '1.2', 'h2')"/>
	
	<!--Select the table under h2 1.2. This should only be one table.-->
	<xsl:variable name="table1_2" select="fn:getTablesBetweenHeaders('1.2', 'h2', '1.3', 'h2')"/>

	<!--Select the table under h2 1.3. This should only be one table.-->
	<xsl:variable name="table1_3" select="fn:getTablesBetweenHeaders('1.3', 'h2', '1.4', 'h2')"/>

	<!--Select the table under h2 1.4. This should only be one table.-->
	<xsl:variable name="table1_4" select="fn:getTablesBetweenHeaders('1.4', 'h2', '1.5', 'h2')"/>

	<!--Select the table under h2 1.5. This should only be one table.-->
	<xsl:variable name="table1_5" select="fn:getTablesBetweenHeaders('1.5', 'h2', '2', 'h1')"/>
	
	<!--Select the table under h1 5.-->
	<xsl:variable name="table5" select="fn:getTablesBetweenHeaders('5', 'h1', '6', 'h1')"/>

	<!--Root html/body node used for fn:getTablesBetweenHeaders-->
	<xsl:variable name="htmlBody" select="/x:html/x:body"/>
	
	<!--Returns a sequence of nodes between the given header elements.
		The element name of the header must also be specified, for example 'h2' for an h2 header
		or 'h1' for an h1 header.-->
	<xsl:function name="fn:getTablesBetweenHeaders">
		<xsl:param name="firstHeader" as="xs:string"/>
		<xsl:param name="firstHeaderName" as="xs:string"/>
		<xsl:param name="lastHeader" as="xs:string"/>
		<xsl:param name="lastHeaderName" as="xs:string"/>
		<xsl:sequence select="
			$htmlBody/*[name() = $firstHeaderName and x:span[contains(text(), $firstHeader)]]/following-sibling::x:table[following-sibling::*[name() = $lastHeaderName and x:span[contains(text(), $lastHeader)]]]"
		/>
	</xsl:function>

	<xsl:template match="/">
		<CPSFramework>
			<xsl:call-template name="ExtractBusinessCase"/>
			<xsl:call-template name="ExtractInformationModelLibrary"/>
			<xsl:call-template name="ExtractUseCase"/>
		</CPSFramework>
	</xsl:template>
	
	<!--Pulls data from multiple tables to recreate the BusinessCase element.-->
	<xsl:template name="ExtractBusinessCase">
		<xsl:for-each select="tokenize($table1_3/x:tr[2]/x:td[2]/x:p/x:span, ',')">
			<BusinessCase>
				<name>
					<xsl:value-of select="."/>
				</name>
				<!--TODO: This could be an image?-->
				<xsl:if test="position() = 1">
					<description>
						<xsl:value-of select="$table1_3/x:tr[3]/x:td[2]/x:p/x:span/n1:p"/>
					</description>
				</xsl:if>
				<Domain>
					<name>
						<!--The BusinessCase/Domain/name and any UseCase/AdditionalDomain are combined with commas
							with the BusinessCase name always coming first, so split the value on commas and select the first element-->
						<xsl:if test="position() = 1">
							<xsl:value-of select="tokenize($table1_1/x:tr[3]/x:td[2]/x:p/x:span, ',')[1]"/>
						</xsl:if>
					</name>
				</Domain>
			</BusinessCase>
		</xsl:for-each>
	</xsl:template>
	
	<!--Pulls data from the table under h1 5 to recreate the InformationModelLibrary element-->
	<xsl:template name="ExtractInformationModelLibrary">
		<InformationModelLibrary>
			<xsl:for-each select="subsequence($table5/x:tr, 3)">
				<InformationModel>
					<description>
						<xsl:value-of select="x:td[2]/x:p/x:span/n1:p"/>
					</description>
					<name>
						<xsl:value-of select="x:td[1]/x:p/x:span/n1:p"/>
					</name>
				</InformationModel>
			</xsl:for-each>
		</InformationModelLibrary>
	</xsl:template>

	<xsl:template name="ExtractUseCase">
		<UseCase>
			<identifier>
				<xsl:value-of select="$table1_1/x:tr[3]/x:td[1]/x:p/x:span"/>
			</identifier>
			<name>
				<xsl:value-of select="$table1_1/x:tr[3]/x:td[3]/x:p/x:span"/>
			</name>
			<Version>
				<date></date>
			</Version>
		</UseCase>
	</xsl:template>

</xsl:stylesheet>


