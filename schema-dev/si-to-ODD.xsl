<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0"
    xmlns="http://www.tei-c.org/ns/1.0" xpath-default-namespace="http://www.tei-c.org/ns/1.0"
    xmlns:xi="http://www.w3.org/2001/XInclude"
    xmlns:sch="http://purl.oclc.org/dsdl/schematron"
    xmlns:rng="http://relaxng.org/ns/structure/1.0">
    <xsl:output method="xml" indent="yes"/>
    <xsl:template match="/">
        <xsl:processing-instruction name="xml-model">href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_odds.rng" type="application/xml" schematypens="http://relaxng.org/ns/structure/1.0"</xsl:processing-instruction>
        <xsl:processing-instruction name="xml-model">href="http://www.tei-c.org/release/xml/tei/custom/schema/relaxng/tei_odds.rng" type="application/xml"
	schematypens="http://purl.oclc.org/dsdl/schematron"
        </xsl:processing-instruction>
        <TEI xmlns="http://www.tei-c.org/ns/1.0" xmlns:xi="http://www.w3.org/2001/XInclude"
            xmlns:sch="http://purl.oclc.org/dsdl/schematron"
            xmlns:rng="http://relaxng.org/ns/structure/1.0"
            version="2.9.1"
            xml:lang="en">
            <teiHeader>
                <fileDesc>
                    <titleStmt>
                        <title>Digital Mitford ODD: Prosopography Reference Addendum for Project Edition Files</title>
                        <author>Elisa Beshero-Bondar</author>
                    </titleStmt>
                    <editionStmt><edition>Generated from updates to the Site index
                        <xsl:apply-templates select="descendant::teiHeader//editionStmt/edition"/></edition>
                    </editionStmt>
                    <publicationStmt>
                        <authority>Prepared in TEI P5 by Elisa Beshero-Bondar in the Digital Mitford GitHub repository: <ref target="https://github.com/DigitalMitford/DM_processing"/>. Date last worked on: <date when="2018-08-06">6 August 2018</date></authority>
                        <availability><licence>Creative Commons Attribution-ShareAlike 4.0 International (CC BY-SA 4.0) approved for Free Cultural Works <ref target="https://creativecommons.org/licenses/by-sa/4.0/"/></licence></availability>
                    </publicationStmt>
                    <seriesStmt>
                        <p>The additional materials in this ODD are designed to be incorporated into the Digital Mitford main ODD file by means of automated inclusion. In the oXygen XML editor this may be done using Tools --> Canonicalize on the main Mitford ODD file. This ODD addendum file is also designed to be generated by XSLT from the Digital Mitford Site Index. </p>
                    </seriesStmt>
                    <sourceDesc>
                        <p>Born digital, based on information presented in the Digital Mitford Codebook at <ref target="http://codebook.mitford.pitt.edu"/></p>
                    </sourceDesc>
                </fileDesc>
                <revisionDesc>
                    <listChange>
                        <change when="2018-08-06" who="#ebb">Prepared this ODD file, working with the Digital Mitford Site Index file official at this point.</change>
                    </listChange>
                </revisionDesc>
            </teiHeader>
            <text>
                <body>
                    <schemaSpec ident="mrmProsop" start="TEI teiCorpus" prefix="tei">
                        <specGrp xml:id="prosop">
                            <!-- Work out elementSpecs for referencing here via XSLT.-->              <elementSpec ident="persName" module="namesdates" mode="change">
                            <attList>
                                <attDef ident="ref" mode="replace" usage="req">
                                    <xsl:apply-templates select="descendant::text//listPerson//@xml:id"/>
                                </attDef>
                            </attList>    
                            </elementSpec>
                            
                        </specGrp>
                    </schemaSpec>
                </body>
            </text>
        </TEI>
    </xsl:template>
    <xsl:template match="listPerson//@xml:id">
        
        
    </xsl:template>
    
    
</xsl:stylesheet>