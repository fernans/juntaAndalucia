--------------------------------------------------------------------------------
--  Handler.......... : onInit
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onInit (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called once, at AI instance initialization.
	--
	
    -- Cargar Escena
    application.setCurrentUserScene ( "Escena_01" )
    local s=application.getCurrentUserScene ( )   
    -- Obtener camara
    local cam=( application.getCurrentUserActiveCamera ( ) )
    -- crear objeto target de camara
    local t=scene.createRuntimeObject ( s, "helper")
    object.sendEvent ( cam, "animatedCam", "onsetTarget", t) --activar camara a seguir objeto
    this.camara ( t ) --guardo objeto, para activar animaciones
    
    
    --inicio en cam_cur=1
    this.cam_cur (1)
    this.cam_next (1) --por defecto, me quedo en mi sitio
    --activo la animacion_1 (desde pos 1 a 2), y la dejo parada en el frame 0
    animation.changeClip ( t, 0, 0 )
    animation.setPlaybackMode ( t, 0, animation.kPlaybackModeOnce )    
    animation.setPlaybackLevel ( t, 0, 1)
    animation.setPlaybackSpeed ( t, 0, 0 )
    
    --inicio suponiendo ningun objeto mostrado
    this.obj_cur ( nil )
    this.obj_old ( nil ) --y ninguno anterior por destruir
    
    --inicio en primera slide
    this.index ( 0 ) -- zero-based
    
    
    ----------------------- OCULTAR MARCAS de POSICION
    local c=scene.getTaggedObjectCount (s)
    if (c>0) then
        log.message ( c.." objetos con TAG" )
        for i = 1, c do
            local o=scene.getTaggedObjectAt ( s, i-1 )
            object.setVisible ( o, false )
        end
    else
        log.error ( "No hay objetos con etiqueta: revisar importacion scena" )
    end


    ------------------------------------- TABLA DE SLIDES -------------
    this.setSlides ( )

    --------------------------- cargar texturas usadas por cache
    --this.initCache ( )
    
    
    --- inicio la secuencia de slides
    user.postEvent ( application.getCurrentUser ( ), 1, "MainAI", "onnextStep" )
    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
