--------------------------------------------------------------------------------
--  Function......... : initCache
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.initCache ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local x=xml.getRootElement ( this.slides ( ) )
    local t=xml.getElementChildCount (x)
    for i = 0,t do
        -- obtengo entrada de slide
        local xe=xml.getElementChildAt (x, i )
        if (xe~=nil) then
            local textura =xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"textura"))          
            log.message ( "[cargando textura: "..textura.."]")
            --cache.addFile ( textura, "file://"..this.rutaSlides ( )..textura )
        end
    end
    cache.addFile ( "texfile11.jpg", "file://G:/cubensis/juntaAndalucia/dev/slides/texfile11.jpg" )
    log.message ( "FIN initCache" )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
