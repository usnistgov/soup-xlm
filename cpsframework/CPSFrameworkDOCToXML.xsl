<?xml version="1.0" encoding="UTF-8"?>
<!--Created June, 2020-->
<xsl:stylesheet version="1.0" 
	exclude-result-prefixes="xsi x cps msxsl" 
	xmlns:cps="cpsframework"
	xmlns:x="http://www.w3.org/1999/xhtml"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform" 
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" 
	xmlns:msxsl="urn:schemas-microsoft-com:xslt"
	xmlns:xs="http://www.w3.org/2001/XMLSchema">
	
	<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>

	<xsl:template match="/">
		<cps:CPSFramework>
			<xsl:apply-templates select="x:html/x:body/x:table[@id='0']" mode="ExtractBusinessCase"/>
			
			<xsl:apply-templates select="x:html/x:body/x:table[@id='5.0.1']" mode="ExtractInformationModelLibrary"/>
			
			<xsl:apply-templates select="x:html/x:body" mode="ExtractInteractionLibrary"/>
			
			<xsl:apply-templates select="x:html/x:body/x:table[@id='1.2.1']" mode="ExtractMaturity"/>
			
			<xsl:apply-templates select="x:html/x:body" mode="ExtractUseCase"/>
		</cps:CPSFramework>
	</xsl:template>
	
	<xsl:template match="x:table" mode="ExtractBusinessCase">
		<BusinessCase>
			<description>
				<xsl:value-of select="x:tr[2]/x:td[4]/x:p"/>
			</description>
			<identifier>
				<xsl:value-of select="x:tr[2]/x:td[1]/x:p"/>
			</identifier>
			<name>
				<xsl:value-of select="x:tr[2]/x:td[2]/x:p"/>
			</name>
			<technicalId>
				<xsl:value-of select="x:tr[2]/x:td[1]/x:p/@id"/>
			</technicalId>
			<type>
				<xsl:value-of select="x:tr[2]/x:td[5]/x:p"/>
			</type>
			
			<xsl:apply-templates select="x:tr[2]/x:td[3]/x:p" mode="ExtractBusinessCaseDomains"/>
			
		</BusinessCase>
	</xsl:template>
	
	<xsl:template match="x:p" mode="ExtractBusinessCaseDomains">
		<Domain>
			<name>
				<xsl:value-of select="."/>
			</name>
			<technicalId>
				<xsl:value-of select="@id"/>
			</technicalId>
		</Domain> 
	</xsl:template>
	
	<xsl:template match="x:table" mode="ExtractInformationModelLibrary">
		<InformationModelLibrary>
			<xsl:apply-templates select="x:tr[position() > 2]" mode="ExtractInformationModel"/>
			
			<xsl:apply-templates select="../x:table[@id='5']" mode="ExtractMaturity"/>
		</InformationModelLibrary>
	</xsl:template>
	
	<xsl:template match="x:tr" mode="ExtractInformationModel">
		<InformationModel>
			<description>
				<xsl:value-of select="x:td[2]/x:p"/>
			</description>
			<name>
				<xsl:value-of select="x:td[1]/x:p"/>
			</name>
			
			<xsl:apply-templates select="x:td[3]/x:p" mode="ExtractRequirement"/>
			
			<technicalId>
				<xsl:value-of select="x:td[1]/x:p/@id"/>
			</technicalId>
		</InformationModel>
	</xsl:template>
	
	<xsl:template match="x:p" mode="ExtractRequirement">
		<Requirement>
			<technicalId>
				<xsl:value-of select="."/>
			</technicalId>
		</Requirement>
	</xsl:template>
	
	<xsl:template match="x:table" mode="ExtractMaturity">
		<Maturity>
			<effective>
				<xsl:value-of select="x:tr[3]/x:td[1]/x:p"/>
			</effective>
			<maturity>
				<xsl:value-of select="x:tr[3]/x:td[2]/x:p"/>
			</maturity>
			<responsibleParty>
				<xsl:value-of select="x:tr[3]/x:td[3]/x:p"/>
			</responsibleParty>
			<revision>
				<xsl:value-of select="x:tr[3]/x:td[4]/x:p"/>
			</revision>
			<status>
				<xsl:value-of select="x:tr[3]/x:td[5]/x:p"/>
			</status>
		</Maturity>
	</xsl:template>
	
	<xsl:template match="x:body" mode="ExtractInteractionLibrary">
		<InteractionLibrary>
			<xsl:apply-templates select="x:table[@id='6.2']" mode="ExtractInfluences"/>
			
			<xsl:apply-templates select="x:table[@id='6.1']" mode="ExtractMaturity"/>
			
			<xsl:apply-templates select="x:table[@id='6.3']" mode="ExtractMessages"/>
		</InteractionLibrary>
	</xsl:template>
	
	<xsl:template match="x:table" mode="ExtractInfluences">
		<Influences>
			<xsl:for-each select="x:tr[position() > 2]">
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
	
	<xsl:template match="x:table" mode="ExtractMessages">
		<Messages>
			<xsl:for-each select="x:tr[position() > 2]">
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
	
	<xsl:template match="x:body" mode="ExtractUseCase">
		<xsl:variable name="basicInformationTable" select="x:table[@id='1.1']"/>
		<xsl:variable name="additionalInformationTable" select="x:table[@id='3.5']"/>
		
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
			
			<xsl:apply-templates select="x:table[@id='3.2']" mode="ExtractAssumption"/>
			
			<xsl:apply-templates select="x:table[@id='1.3']" mode="ExtractRelatedBusinessCase"/>
			
			<classification>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[4]/x:p"/>
			</classification>
			
			<xsl:apply-templates select="x:table[@id='3.1']" mode="ExtractCPSGrouping"/>
			
			<xsl:apply-templates select="x:table[@id='2']/x:tr[2]/x:td/x:p/x:img"/>
			
			<Keywords>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[6]/x:p"/>
			</Keywords>
			<levelOfDepth>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[2]/x:p"/>
			</levelOfDepth>
			
			<xsl:apply-templates select="x:table[@id='1.4']" mode="ExtractNarrative"/>
			
			<nature>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[5]/x:p"/>
			</nature>
			
			<xsl:apply-templates select="x:table[@id='3.3']" mode="ExtractPrerequisite"/>
			
			<prioritisation>
				<xsl:value-of select="$additionalInformationTable/x:tr[3]/x:td[3]/x:p"/>
			</prioritisation>
			
			<xsl:apply-templates select="x:table[@id='3.4']" mode="ExtractReference"/>
			
			<xsl:apply-templates select="x:table[@id='1.3']" mode="ExtractRelatedObjective"/>
			
			<xsl:apply-templates select="x:table[@id='3.5']" mode="ExtractRelatedUseCase"/>
			
			<xsl:apply-templates select="x:table[@id='1.5']" mode="ExtractRemark"/>
			
			<!--TODO: Scenario-->
		</UseCase>
	</xsl:template>

	<xsl:template match="x:table" mode="ExtractAssumption">
		<xsl:for-each select="x:tr[position() > 2]">
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
	
	<xsl:template match="x:table" mode="ExtractRelatedBusinessCase">
		<xsl:for-each select="x:tr[2]/x:td[2]/x:p">
			<BusinessCase>
				<technicalId>
					<xsl:value-of select="."/>
				</technicalId>
			</BusinessCase>
		</xsl:for-each>
	</xsl:template>
	
	<xsl:template match="x:table" mode="ExtractCPSGrouping">
		<CPSGrouping>
			<xsl:for-each select="x:tr[position() > 4]">
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
				<xsl:value-of select="x:tr[3]/x:td[2]/x:p"/>
			</description>
			<identifier>
				<xsl:value-of select="x:tr[3]/x:td[1]/x:p/@id"/>
			</identifier>
			<name>
				<xsl:value-of select="x:tr[3]/x:td[1]/x:p/img"/>
			</name>
		</CPSGrouping>
	</xsl:template>
	
	<xsl:template match="x:img">
		<Drawing>
			<drawingType>
				<xsl:value-of select="@id"/>
			</drawingType>
			<name>
				<xsl:value-of select="@alt"/>
			</name>
			<URI type='Image'>
				<xsl:value-of select="@src"/>
			</URI>
		</Drawing>
	</xsl:template>
	
	<xsl:template match="x:table" mode="ExtractNarrative">
		<Narrative>
			<completeDescription>
				<xsl:value-of select="x:tr[3]/x:td/x:p"/>
			</completeDescription>
			<shortDescription>
				<xsl:value-of select="x:tr[5]/x:td/x:p"/>
			</shortDescription>
		</Narrative>
	</xsl:template>
	
	<xsl:template match="x:table" mode="ExtractPrerequisite">
		<xsl:for-each select="x:tr[position() > 1]">
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
	
	<xsl:template match="x:table" mode="ExtractReference">
		<xsl:for-each select="x:tr[position() > 2]">
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
	
	<xsl:template match="x:table" mode="ExtractRelatedObjective">
		<xsl:for-each select="x:tr[4]/x:td[2]/x:p">
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
	
	<xsl:template match="x:table" mode="ExtractRelatedUseCase">
		<xsl:for-each select="x:tr[3]/x:td[1]/x:p">
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
	
	<xsl:template match="x:table" mode="ExtractRemark">
		<xsl:for-each select="x:tr[position() > 1]">
			<Remark>
				<content>
					<xsl:value-of select="x:td/x:p"/>
				</content>
			</Remark>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
