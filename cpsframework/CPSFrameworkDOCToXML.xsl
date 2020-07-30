<?xml version="1.0" encoding="UTF-8"?>
<!--Author: Luke Donmoyer 
	Date: June, 2020-->
<xsl:stylesheet version="1.0" 
	exclude-result-prefixes="xsi x cps" 
	xmlns:cps="cpsframework"
	xmlns:x="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:fn="functions"
	xmlns:xs="http://www.w3.org/2001/XMLSchema">
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

	<xsl:template match="/">
		<cps:CPSFramework>
			<xsl:call-template name="ExtractBusinessCase">
				<xsl:with-param name="table" select="/x:html/x:body/x:table[@id='0']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractInformationModelLibrary">
				<xsl:with-param name="table" select="/x:html/x:body/x:table[@id='5.0.1']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractInteractionLibrary">
				<xsl:with-param name="htmlBody" select="/x:html/x:body"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractMaturity">
				<xsl:with-param name="table" select="/x:html/x:body/x:table[@id='1.2.1']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractUseCase">
				<xsl:with-param name="htmlBody" select="/x:html/x:body"/>
			</xsl:call-template>
		</cps:CPSFramework>
	</xsl:template>
	
	<xsl:template name="ExtractBusinessCase">
		<xsl:param name="table"/>
		
		<BusinessCase>
			<description>
				<xsl:value-of select="$table/x:tr[2]/x:td[4]/x:p"/>
			</description>
			<identifier>
				<xsl:value-of select="$table/x:tr[2]/x:td[1]/x:p"/>
			</identifier>
			<name>
				<xsl:value-of select="$table/x:tr[2]/x:td[2]/x:p"/>
			</name>
			<technicalId>
				<xsl:value-of select="$table/x:tr[2]/x:td[1]/x:p/@id"/>
			</technicalId>
			<type>
				<xsl:value-of select="$table/x:tr[2]/x:td[5]/x:p"/>
			</type>
			
			<xsl:call-template name="ExtractBusinessCaseDomains">
				<xsl:with-param name="nodes" select="$table/x:tr[2]/x:td[3]/x:p"/>
			</xsl:call-template>
			
		</BusinessCase>
	</xsl:template>
	
	<xsl:template name="ExtractBusinessCaseDomains">
		<xsl:param name="nodes"/>
		
		<xsl:for-each select="$nodes">
			<Domain>
				<name>
					<xsl:value-of select="."/>
				</name>
				<technicalId>
					<xsl:value-of select="@id"/>
				</technicalId>
			</Domain> 
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractInformationModelLibrary">
		<xsl:param name="table"/>
		
		<InformationModelLibrary>
			<xsl:call-template name="ExtractInformationModel">
				<xsl:with-param name="nodes" select="$table/x:tr[position() > 2]"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractMaturity">
				<xsl:with-param name="table" select="$table/../x:table[@id='5']"/>
			</xsl:call-template>
		</InformationModelLibrary>
	</xsl:template>
	
	<xsl:template name="ExtractInformationModel">
		<xsl:param name="nodes"/>
		
		<xsl:for-each select="$nodes">
			<InformationModelLibrary>
				<description>
					<xsl:value-of select="x:td[2]/x:p"/>
				</description>
				<name>
					<xsl:value-of select="x:td[1]/x:p"/>
				</name>
				
				<xsl:call-template name="ExtractRequirement">
					<xsl:with-param name="nodes" select="x:td[3]/x:p"/>
				</xsl:call-template>
				
				<technicalId>
					<xsl:value-of select="x:td[1]/x:p/@id"/>
				</technicalId>
			</InformationModelLibrary>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractRequirement">
		<xsl:param name="nodes"/>
		
		<xsl:for-each select="$nodes">
			<Requirement>
				<technicalId>
					<xsl:value-of select="."/>
				</technicalId>
			</Requirement>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractMaturity">
		<xsl:param name="table"/>
		
		<Maturity>
			<effective>
				<xsl:value-of select="$table/x:tr[3]/x:td[1]/x:p"/>
			</effective>
			<maturity>
				<xsl:value-of select="$table/x:tr[3]/x:td[2]/x:p"/>
			</maturity>
			<responsibleParty>
				<xsl:value-of select="$table/x:tr[3]/x:td[3]/x:p"/>
			</responsibleParty>
			<revision>
				<xsl:value-of select="$table/x:tr[3]/x:td[4]/x:p"/>
			</revision>
			<status>
				<xsl:value-of select="$table/x:tr[3]/x:td[5]/x:p"/>
			</status>
		</Maturity>
	</xsl:template>
	
	<xsl:template name="ExtractInteractionLibrary">
		<xsl:param name="htmlBody"/>
		
		<InteractionLibrary>
			<xsl:call-template name="ExtractInfluences">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='6.2']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractMaturity">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='6.1']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractMessages">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='6.3']"/>
			</xsl:call-template>
		</InteractionLibrary>
	</xsl:template>
	
	<xsl:template name="ExtractInfluences">
		<xsl:param name="table"/>
		
		<Influences>
			<xsl:for-each select="$table/x:tr[position() > 2]">
				<influence>
					<description>
						<xsl:value-of select="x:td[2]/x:p"/>
					</description>
					<name>
						<xsl:value-of select="x:td[1]/x:p"/>
					</name>
					<technicalId>
						<xsl:value-of select="x:td[1]/x:p/@id"/>
					</technicalId>
				</influence>
			</xsl:for-each>
		</Influences>
	</xsl:template>
	
	<xsl:template name="ExtractMessages">
		<xsl:param name="table"/>
		
		<Messages>
			<xsl:for-each select="$table/x:tr[position() > 2]">
				<message>
					<description>
						<xsl:value-of select="x:td[2]/x:p"/>
					</description>
					<name>
						<xsl:value-of select="x:td[1]/x:p"/>
					</name>
					<technicalId>
						<xsl:value-of select="x:td[1]/x:p/@id"/>
					</technicalId>
				</message>
			</xsl:for-each>
		</Messages>
	</xsl:template>
	
	<xsl:template name="ExtractUseCase">
		<xsl:param name="htmlBody"/>
		
		<xsl:variable name="basicInformationTable" select="$htmlBody/x:table[@id='1.1']"/>
		<xsl:variable name="additionalInformationTable" select="$htmlBody/x:table[@id='3.5']"/>
		
		<UseCase>
			<identifier>
				<xsl:value-of select="$basicInformationTable/x:tr[3]/x:td[1]/x:p"/>
			</identifier>
			<name>
				<xsl:value-of select="$basicInformationTable/x:tr[3]/x:td[3]/x:p"/>
			</name>
			<technicalId>
				<xsl:value-of select="$basicInformationTable/x:tr[3]/x:td[1]/x:p/@id"/>
			</technicalId>
			
			<xsl:call-template name="ExtractAssumption">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='3.2']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractRelatedBusinessCase">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='1.3']"/>
			</xsl:call-template>
			
			<classification>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[4]/x:p"/>
			</classification>
			
			<xsl:call-template name="ExtractCPSGrouping">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='3.1']"/>
			</xsl:call-template>
			
			<xsl:for-each select="$htmlBody/x:table[@id='2']/x:tr[2]/x:td/x:p/x:img">
				<xsl:call-template name="ExtractDrawing">
					<xsl:with-param name="imgElement" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			
			<Keywords>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[6]/x:p"/>
			</Keywords>
			<levelOfDepth>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[2]/x:p"/>
			</levelOfDepth>
			
			<xsl:call-template name="ExtractNarrative">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='1.4']"/>
			</xsl:call-template>
			
			<nature>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[5]/x:p"/>
			</nature>
			
			<xsl:call-template name="ExtractPrerequisite">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='3.3']"/>
			</xsl:call-template>
			
			<prioritisation>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[3]/x:p"/>
			</prioritisation>
			
			<xsl:call-template name="ExtractReference">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='3.4']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractRelatedObjective">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='1.3']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractRelatedUseCase">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='3.5']"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractRemark">
				<xsl:with-param name="table" select="$htmlBody/x:table[@id='1.5']"/>
			</xsl:call-template>
			
			<xsl:for-each select="$htmlBody/x:div[@id='4']">
				<xsl:call-template name="ExtractScenario">
					<xsl:with-param name="div" select="."/>
				</xsl:call-template>
			</xsl:for-each>
			
		</UseCase>
	</xsl:template>

	<xsl:template name="ExtractAssumption">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[position() > 2]">
			<Assumption>
				<content>
					<xsl:value-of select="x:td[2]/x:p"/>
				</content>
				<name>
					<xsl:value-of select="x:td[1]/x:p"/>
				</name>
			</Assumption>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractRelatedBusinessCase">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[2]/x:td[2]/x:p">
			<BusinessCase>
				<technicalId>
					<xsl:value-of select="."/>
				</technicalId>
			</BusinessCase>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractCPSGrouping">
		<xsl:param name="table"/>
		
		<CPSGrouping>
			<xsl:for-each select="$table/x:tr[position() > 4]">
				<CPS>
					<furtherInformation>
						<xsl:value-of select="x:td[3]/x:p"/>
					</furtherInformation>				
					<name>
						<xsl:value-of select="x:td[1]/x:p"/>
					</name>
					<technicalId>
						<xsl:value-of select="x:td[2]/x:p"/>
					</technicalId>
				</CPS>
			</xsl:for-each>
		
			<description>
				<xsl:value-of select="$table/x:tr[3]/x:td[2]/x:p"/>
			</description>
			<identifier>
				<xsl:value-of select="$table/x:tr[3]/x:td[1]/x:p/@id"/>
			</identifier>
			<name>
				<xsl:value-of select="$table/x:tr[3]/x:td[1]/x:p/img"/>
			</name>
		</CPSGrouping>
	</xsl:template>
	
	<xsl:template name="ExtractDrawing">
		<xsl:param name="imgElement"/>
	
		<xsl:if test="$imgElement">
			<Drawing>
				<drawingType>
					<xsl:value-of select="$imgElement/@id"/>
				</drawingType>
				<name>
					<xsl:value-of select="$imgElement/@alt"/>
				</name>
				<URI type='Image'>
					<xsl:value-of select="$imgElement/@src"/>
				</URI>
			</Drawing>
		</xsl:if>
	</xsl:template>
	
	<xsl:template name="ExtractNarrative">
		<xsl:param name="table"/>
		
		<Narrative>
			<completeDescription>
				<xsl:value-of select="$table/x:tr[3]/x:td/x:p"/>
			</completeDescription>
			<shortDescription>
				<xsl:value-of select="$table/x:tr[5]/x:td/x:p"/>
			</shortDescription>
		</Narrative>
	</xsl:template>
	
	<xsl:template name="ExtractPrerequisite">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[position() > 1]">
			<Prerequisite>
				<content>
					<xsl:value-of select="x:td[2]/x:p"/>
				</content>
				<name>
					<xsl:value-of select="x:td[1]/x:p"/>
				</name>
			</Prerequisite>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractReference">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[position() > 2]">
			<Reference>
				<description>
					<xsl:value-of select="x:td[4]/x:p"/>
				</description>
				<identifier>
					<xsl:value-of select="x:td[1]/x:p"/>
				</identifier>
				<impact>
					<xsl:value-of select="x:td[6]/x:p"/>
				</impact>
				<link>
					<xsl:value-of select="x:td[8]/x:p"/>
				</link>
				<name>
					<xsl:value-of select="x:td[3]/x:p"/>
				</name>
				<originatorOrganisation>
					<xsl:value-of select="x:td[7]/x:p"/>
				</originatorOrganisation>
				<status>
					<xsl:value-of select="x:td[5]/x:p"/>
				</status>
				<type>
					<xsl:value-of select="x:td[2]/x:p"/>
				</type>
			</Reference>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractRelatedObjective">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[4]/x:td[2]/x:p">
			<RelatedObjective>
				<description>
					<xsl:value-of select="substring-after(., ': ')"/>
				</description>
				<name>
					<xsl:value-of select="substring-before(., ': ')"/>
				</name>
				<technicalId>
					<xsl:value-of select="@id"/>
				</technicalId>
			</RelatedObjective>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractRelatedUseCase">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[3]/x:td[1]/x:p">
			<RelatedUseCase>
				<name>
					<xsl:choose>
						<xsl:when test="position() = last()">
							<xsl:value-of select="."/>
						</xsl:when>
						<xsl:otherwise>
							<xsl:value-of select="substring-before(., ',')"/>
						</xsl:otherwise>
					</xsl:choose>
				</name>
				<technicalId>
					<xsl:value-of select="@id"/>
				</technicalId>
			</RelatedUseCase>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractRemark">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[position() > 1]">
			<Remark>
				<content>
					<xsl:value-of select="x:td/x:p"/>
				</content>
			</Remark>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractScenario">
		<xsl:param name="div"/>
		
		<xsl:variable name="table" select="$div/x:table[1]"/>
		
		<Scenario>
			<identifier>
				<xsl:value-of select="$table/x:tr[3]/x:td[1]/x:p"/>
			</identifier>
			<name>
				<xsl:value-of select="$table/x:tr[3]/x:td[2]/x:p"/>
			</name>
			<technicalId>
				<xsl:value-of select="$table/x:tr[3]/x:td[1]/x:p/@id"/>
			</technicalId>
			
			<xsl:call-template name="ExtractMacroActivity">
				<xsl:with-param name="divNodes" select="$div/x:div"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractPostcondition">
				<xsl:with-param name="table" select="$table"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractPrecondition">
				<xsl:with-param name="table" select="$table"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractPrimaryCPS">
				<xsl:with-param name="table" select="$table"/>
			</xsl:call-template>
			
			<xsl:call-template name="ExtractTriggeringEvent">
				<xsl:with-param name="table" select="$table"/>
			</xsl:call-template>
		</Scenario>
	</xsl:template>
	
	<xsl:template name="ExtractMacroActivity">
		<xsl:param name="divNodes"/>
		
		<xsl:for-each select="$divNodes">
			<MacroActivity>
				<xsl:call-template name="ExtractDrawing">
					<xsl:with-param name="imgElement" select="x:h2/x:p/x:img"/>
				</xsl:call-template>
			
				<name>
					<xsl:value-of select="substring-after(x:h2/x:span/x:p, 'MacroActivity - ')"/>
				</name>
				
				<xsl:call-template name="ExtractStep">
					<xsl:with-param name="divNodes" select="x:div"/>
				</xsl:call-template>
				
				<technicalId>
					<xsl:value-of select="x:h2/x:span/x:p/@id"/>
				</technicalId>
			</MacroActivity>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractStep">
		<xsl:param name="divNodes"/>
		
		<xsl:for-each select="$divNodes">
			<Step>
				<name>
					<xsl:value-of select="substring-after(x:h2/x:span/x:p, 'Steps - ')"/>
				</name>
			</Step>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractPostcondition">
		<xsl:param name="table"/>
		
		
		<xsl:for-each select="$table/x:tr[3]/x:td[6]/x:p">
			<Postcondition>
				<content>
					<xsl:value-of select="substring-after(., ': ')"/>
				</content>
				<name>
					<xsl:value-of select="substring-before(., ': ')"/>
				</name>
			</Postcondition>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractPrecondition">
		<xsl:param name="table"/>
		
		
		<xsl:for-each select="$table/x:tr[3]/x:td[5]/x:p">
			<Precondition>
				<content>
					<xsl:value-of select="substring-after(., ': ')"/>
				</content>
				<name>
					<xsl:value-of select="substring-before(., ': ')"/>
				</name>
			</Precondition>
		</xsl:for-each>
	</xsl:template>
	
	
	<xsl:template name="ExtractPrimaryCPS">	
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[3]/x:td[3]/x:p">
			<PrimaryCPS>
				<name>
					<xsl:value-of select="."/>
				</name>
				<technicalId>
					<xsl:value-of select="@id"/>
				</technicalId>
			</PrimaryCPS>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template name="ExtractTriggeringEvent">
		<xsl:param name="table"/>
		
		<xsl:for-each select="$table/x:tr[3]/x:td[4]/x:p">
			<TriggeringEvent>
				<content>
					<xsl:value-of select="substring-after(., ': ')"/>
				</content>
				<name>
					<xsl:value-of select="substring-before(., ': ')"/>
				</name>
			</TriggeringEvent>
		</xsl:for-each>
	</xsl:template>
	
</xsl:stylesheet>


