--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function juntaMainAI.onInit (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called once, at AI instance initialization.
	--

	application.setCurrentUserScene ( "entorno" )
    
    --------- Poner camara lejos... para un bonito travelling inicial
    local c=application.getCurrentUserActiveCamera ( )
    if (c~=nil) then
        object.setTranslation ( c, 0,1,5 ,object.kGlobalSpace )
    end

    ------------- Preparar lista de Puntos de vista (targets y lookats)
    hashtable.empty ( this.targets ( ) )
    hashtable.empty ( this.lookats ( ) )  
    local t,l
    local init=-1
    for p = 0,9 do
        t=application.getCurrentUserSceneTaggedObject ( "c_p"..p )
        l=application.getCurrentUserSceneTaggedObject ( "c_l"..p )
        if (t~=nil and l~=nil) then
            hashtable.add (this.targets ( ), ""..p, t )
            hashtable.add (this.lookats ( ), ""..p, l )
            object.setVisible ( t, false )
            object.setVisible ( l, false )
            if init==-1 then init=p end
        end
    end
    this.sendTargets ( init )
    --------------- FIN lista de Puntos de vista (targets y lookats)
    
    ----[[
    ----------------- Crear Marco para diapositivas
    local m=application.getCurrentUserSceneTaggedObject ( "c_place2" )
    if (m~=nil) then
        log.message ( "creando panel" )
        local s=application.getCurrentUserScene ( )
        local rm = scene.createRuntimeObject ( s, "marco" )
        if (rm==nil) then 
            log.error ( "no se ha creado el Marco -runtime-" )
        else
            object.matchTranslation ( rm, m, object.kGlobalSpace )
            object.matchRotation ( rm, m, object.kGlobalSpace )
            object.setVisible ( m, false )
        end
    end
    ----------------- FIN - Crear Marco para diapositivas
    -- ]]
    
        ----[[
    ----------------- Crear Logo
    local m=application.getCurrentUserSceneTaggedObject ( "c_place1" )
    if (m~=nil) then
        log.message ( "creando logo" )
        local s=application.getCurrentUserScene ( )
        local rm = scene.createRuntimeObject ( s, "logo" )
        if (rm==nil) then 
            log.error ( "no se ha creado el Logo -runtime-" )
        else
            object.matchTranslation ( rm, m, object.kGlobalSpace )
            object.matchRotation ( rm, m, object.kGlobalSpace )
            object.setVisible ( m, false )
        end
    end
    ----------------- FIN - Crear Logo
    -- ]]
    
    ----[[
    ----------------- Crear Panel FullScreen
    local m=application.getCurrentUserSceneTaggedObject ( "c_place3" )
    if (m~=nil) then
        log.message ( "creando fullscreen" )
        local s=application.getCurrentUserScene ( )
        local rm = scene.createRuntimeObject ( s, "panel_fullscreen" )
        if (rm==nil) then 
            log.error ( "no se ha creado el Fullsreen -runtime-" )
        else
            object.matchTranslation ( rm, m, object.kGlobalSpace )
            object.matchRotation ( rm, m, object.kGlobalSpace )
            object.setVisible ( m, false )
        end
    end
    ----------------- FIN - Crear Panel FullScreen
    -- ]]    
    
    
    -------- esconder el dummy central
    local pc=application.getCurrentUserSceneTaggedObject ( "c_center" )
    if (pc~=nil) then object.setVisible ( pc, false ) end
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
