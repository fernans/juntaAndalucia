<?xml version="1.0" encoding="ISO-8859-1"?>

<xsl:stylesheet version="2.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
	<head>
		<style type="text/css">
		
		html{	width: 100%;
		height: 100%;
		}
		h2{
			font-size:14px;}
			body
			{
				font-family:Verdana, Arial, Helvetica, sans-serif;
				font-size:10px;
			}
			div.visible 
			{
				display:block;
				visibility:visible; 		
				overflow:visible;
			}
			div.cache 
			{ 
				display:none; 
				visibility:hidden; 
				overflow:hidden;
			}
			a 
			{
				font-family: "Verdana";		
				text-decoration:none;
				font-weight:bold;
				color:#000000;
				font-size:10px;
			}

			.maintitle
			{	
				font-family: "Verdana";		
				font-size: 14px;
				color: #000000;
				font-weight:bold;
				white-space: nowrap;		
			}
			.normaltext
			{	
				font-family: "Verdana";		
				font-size: 10px;
				color: #000000;
				font-weight:normal;		
			}
			.tree{height:400px;width:200px;border:1px solid #AAAAAA;vertical-align:top}
			.content{height:400px; overflow:auto; display:block; width:100%;border-bottom:1px solid #AAAAAA;border-top:1px solid #AAAAAA;border-right:1px solid #AAAAAA;vertical-align:top}
			table.Graph { height: 32px; width: 100%; border: 0px; padding: 0px; margin: 0px; }
			table.legende { height: 32px; width: 100%; border: 0px; margin-bottom: 10px; }
			table.ResourceList { width: 100%; border: 1px; }
			td { height : 100%; padding: 0px; margin : 0px; background: #FFFFFF; }
			td.ResourceListOdd { 
								background: #FBFBFB; 
								font-family: "Verdana";		
								font-size: 10px;
								color: #333333;
								font-weight:normal;		
							}
			td.ResourceListEven { 
								background: #EEEEEE; 
								font-family: "Verdana";		
								font-size: 10px;
								color: #000000;
								font-weight:normal;		
							}

			td.Games		{ background: #99CC00; }
			td.Models		{ background: #88CC00; }
			td.Scenes		{ background: #77CC00; }
			
			td.Scripts      { background: #00CC99; }
			td.AIModels     { background: #00CC88; }

			td.Meshes       { background: #0099CC; }
			td.Skeletons    { background: #0088CC; }			
			td.AnimClips    { background: #0077CC; }
			td.AnimBanks    { background: #0066CC; }
		
			td.SoundBanks   { background: #CC9900; }
			td.Sounds    	{ background: #CC8800; }
			td.Musics       { background: #CC7700; }
			td.Particles    { background: #CC6600; }
			td.Trails       { background: #CC5500; }
			td.HUD          { background: #CC4400; }
			td.Cursors      { background: #CC3300; }
			td.Unknown  	{ background: #CC2200; }

			td.Materials    { background: #9900CC; }
			td.Textures     { background: #8800CC; }
			td.Movies       { background: #7700CC; }
			td.Fonts        { background: #6600CC; }
			td.TextureClips { background: #5500CC; }
			td.RenderMaps   { background: #4400CC; }
			td.HeightMaps   { background: #3300CC; }                        
			td.TextureCubes { background: #22CC00; }
			
		</style>
	
		<script LANGUAGE="Javascript">
			<![CDATA[	
			var SortType = "Name" ;
			var LastContent = "" ;
			
			function DisplayFileList(ResourceName){		
				LastContent	= ResourceName ;
				var DivDisplay = document.getElementById("__div_filelist");
				var DivContent = document.getElementById("ResourceList_"+ResourceName+"_"+SortType);					
				DivDisplay.innerHTML =DivContent.innerHTML ;
			}
			function ChangeSortTo(_SortType){
				if (SortType == _SortType) 
					SortType = _SortType+"_INV";
				else
					SortType = _SortType;
				DisplayFileList (LastContent);
			}
			function GetSortType(){			
				return SortType ;
			}
			]]>
		 </script>
	</head>
	
	<body>
		<xsl:for-each select="ExportReport">	
			<h2>Export report for <xsl:value-of select="@name"/></h2>
			<table class="Graph" cellpadding="0" cellspacing="0"  id="Graph">
			<tr>				
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Games</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Models</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Scenes</xsl:with-param></xsl:call-template>
				
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Scripts</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">AIModels</xsl:with-param></xsl:call-template>
				
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Meshes</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Skeletons</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">AnimClips</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">AnimBanks</xsl:with-param></xsl:call-template>

				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Materials</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Movies</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Textures</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Fonts</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">TextureClips</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">RenderMaps</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">HeightMaps</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">TextureCubes</xsl:with-param></xsl:call-template>

				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">SoundBanks</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Sounds</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Musics</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Particles</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Trails</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">HUD</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Cursors</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Resource"><xsl:with-param name="_sResource">Unknown</xsl:with-param></xsl:call-template>
			</tr>
			</table>
		</xsl:for-each>
		<br/><br/>
		<table class="legende" cellpadding="0" cellspacing="0">		
		<td class="tree">
			<table cellpadding="0" cellspacing="5" border="0">
			<xsl:for-each select="ExportReport">	
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Games</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Models</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Scenes</xsl:with-param></xsl:call-template>
				
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Scripts</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">AIModels</xsl:with-param></xsl:call-template>
				
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Meshes</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Skeletons</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">AnimClips</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">AnimBanks</xsl:with-param></xsl:call-template>

				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Materials</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Movies</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Textures</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Fonts</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">TextureClips</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">RenderMaps</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">HeightMaps</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">TextureCubes</xsl:with-param></xsl:call-template>

				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">SoundBanks</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Sounds</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Musics</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Particles</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Trails</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">HUD</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Cursors</xsl:with-param></xsl:call-template>
				<xsl:call-template name="Draw_Legende"><xsl:with-param name="_sResource">Unknown</xsl:with-param></xsl:call-template>
			</xsl:for-each>
			</table>
		</td>
		<td>
			<div class="content" id="__div_filelist" >
				<br/>
			</div>
		</td>
		</table>
		<xsl:for-each select="ExportReport">
			<xsl:apply-templates select="Resource"/>
		</xsl:for-each>
	</body>
</html>
</xsl:template>

<xsl:template name="ResourceList" match="Resource">	
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_Name</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/> : <xsl:value-of select="@FileCount"/> files</span><p/>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@Name"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_Compress_Size</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/></span>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@Compress_Size" data-type="number"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_UnCompress_Size</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/></span>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@UnCompress_Size" data-type="number"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_Extension</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/></span>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@Extension"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_Name_INV</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/></span>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@Name" order="descending"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_Compress_Size_INV</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/></span>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@Compress_Size" data-type="number"  order="descending"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_UnCompress_Size_INV</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/></span>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@UnCompress_Size" data-type="number"  order="descending"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
	<div class="cache"><xsl:attribute name="id">ResourceList_<xsl:value-of select="@Name"/>_Extension_INV</xsl:attribute>
		<div  style="margin-top:6px; margin-left:24px; margin-right:24px;width=100%;">			
			<span class="maintitle"><xsl:value-of select="@Name"/></span>
			<table class="ResourceList">
				<th><a href="#" onClick="ChangeSortTo('Name')">Name</a></th>
				<th><a href="#" onClick="ChangeSortTo('Compress_Size')">Compressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('UnCompress_Size')">Uncompressed Size (Bytes)</a></th>
				<th><a href="#" onClick="ChangeSortTo('Extension')">Extension</a></th>
				<xsl:apply-templates select="File">					
					<xsl:sort select="@Extension" order="descending"/>
				</xsl:apply-templates>
			</table>			
		</div>
	</div>
</xsl:template>

<xsl:template Name="FileList" match="File">	
		<xsl:if test="position() mod 2 = 0">
			<tr>		
				<td class="ResourceListOdd" width="40%"><xsl:value-of select="@Name"/></td>
				<td class="ResourceListOdd" width="20%" align="right"><xsl:value-of select="@Compress_Size"/></td>
				<td class="ResourceListOdd" width="20%" align="right"><xsl:value-of select="@UnCompress_Size"/></td>
				<td class="ResourceListOdd" width="20%" align="right"><xsl:value-of select="@Extension"/></td>
			</tr>
		</xsl:if>
		<xsl:if test="position() mod 2 = 1">
			<tr>		
				<td class="ResourceListEven" width="40%"><xsl:value-of select="@Name"/></td>
				<td class="ResourceListEven" width="20%" align="right"><xsl:value-of select="@Compress_Size"/></td>
				<td class="ResourceListEven" width="20%" align="right"><xsl:value-of select="@UnCompress_Size"/></td>
				<td class="ResourceListEven" width="20%" align="right"><xsl:value-of select="@Extension"/></td>
			</tr>
		</xsl:if>
</xsl:template>

<xsl:template name="Draw_Resource">
    <xsl:param name="_sResource"/>
	<xsl:variable name="iGlobalSize"><xsl:value-of select="@Compress_Size"/></xsl:variable>			
	<xsl:for-each select="Resource">
		<xsl:if test="$_sResource = @Name">			
			<td height="46px" style=" text-align:center;overflow:hidden; color:#FFFFFF; border-left:#FFFFFF solid 1px;line-height: 46px;" >									
				<xsl:attribute name="class"><xsl:value-of select="@Name"/></xsl:attribute>
				<xsl:variable name="iResourceSize"><xsl:value-of select="@Compress_Size"/></xsl:variable>
				<xsl:if test="(@Compress_Size*25 div $iGlobalSize) >= 1">
					<xsl:attribute name="width"><xsl:value-of select="@Compress_Size*25 div $iGlobalSize"/>%</xsl:attribute>	
                   <a style="filter:alpha(opacity=70);-moz-opacity:0.7;-khtml-opacity: 0.7;opacity: 0.7;color:#FFFFFF;font-weight:normal"  href="#">
						<xsl:attribute name="onClick">DisplayFileList('<xsl:value-of select="@Name"/>')</xsl:attribute><xsl:value-of select="@Name"/></a>
				</xsl:if>
				<xsl:if test="1 > (@Compress_Size*25 div $iGlobalSize)">
					<xsl:attribute name="width">1%</xsl:attribute>	
                     
				</xsl:if>
			</td>		
		</xsl:if>
	</xsl:for-each>
</xsl:template>

<xsl:template name="Draw_Legende">
    <xsl:param name="_sResource"/>	
	<xsl:for-each select="Resource">
		<xsl:if test="$_sResource = @Name">			
			<tr>
				<td height="32px" width="32px"><xsl:attribute name="class"><xsl:value-of select="@Name"/></xsl:attribute></td>
				<td height="32px">
					<a   href="#">
						<xsl:attribute name="onClick">DisplayFileList('<xsl:value-of select="@Name"/>')</xsl:attribute>
						<xsl:value-of select="@Name"/>
					</a>
				</td>
			</tr>
		</xsl:if>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet>