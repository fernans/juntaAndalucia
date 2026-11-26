--------------------------------------------------------------------------------
--  Function......... : nextStep
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.nextStep ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local i=this.index ( )
    local x=xml.getRootElement ( this.slides ( ) )
    if (i<xml.getElementChildCount (x)) then    
    
        this.cam_cur ( this.cam_next ( )) --el destino anterior pasa a ser el actual
        this.obj_old ( this.obj_cur ( )) --el objeto actual pasa a llamarse "antiguo" /old
        local s=application.getCurrentUserScene ( )

        -- obtengo entrada de slide
        local xe=xml.getElementChildAt (x, i )
             
        this.cam_next ( xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"camnext"))+0 )
        local tipo =xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"tipo"))+0
        local textura =xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"textura"))
        local ext =xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"ext"))
        local anim_in =xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"animin"))+0
        local anim_out =xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"animout"))+0
        local sleep =xml.getAttributeValue ( xml.getElementAttributeWithName ( xe,"sleep"))+0
        
        log.message ( "[cam_next:"..this.cam_next ( ).."]")
        log.message ( "[tipo:"..tipo.."]")
        log.message ( "[textura:"..textura.."]")
        log.message ( "[anim_in:"..anim_in.."]")
        log.message ( "[anim_out:"..anim_out.."]")
        log.message ( "[sleep:"..sleep.."]")
        
              
        -----------
        -- crear objeto destino
        if (tipo==1) then --tarjeta
            local o=scene.createRuntimeObject ( s, "tarjeta" )
            if (o~=nil) then log.message ( ">> tarjeta creada" ) end
            this.obj_cur ( o )
            local o1=group.getSubObjectAt ( o, 0 ) --primer hijo, para animacion
            local o2=group.getSubObjectAt ( o1, 0) --primer hijo del primer hijo = geometria
            ----------- OVERRIDE MATERIAL
            -- (to do)
            if (ext=="jpg") then
                shape.overrideMeshSubsetMaterialEffectMap0 ( o2, 1, textura, shape.kMapTypeTexture )
            elseif (ext=="mov") then
                shape.overrideMeshSubsetMaterialEffectMap0 ( o2, 1, textura, shape.kMapTypeMovie )
            end
            --obtener posicion destino
            local tg=scene.getTaggedObject ( s, "_P"..this.cam_next ( ) )
            object.matchTranslation ( o, tg, object.kGlobalSpace )
            object.matchRotation ( o, tg, object.kGlobalSpace )        
            -- poner animacion destino (anim_in) en frame 0
            animation.changeClip ( o1, 0, anim_in+0 )
            animation.setPlaybackLevel ( o1, 0, 100)
            animation.setPlaybackMode ( o1, 0, animation.kPlaybackModeOnce )
            local aini=animation.getClipKeyFrameRangeMin ( o1, anim_in+0 )        
            animation.setPlaybackCursor ( o1, 0, aini )
            animation.setPlaybackSpeed ( o1, 0, 0 )
            -- postponer iniciar_anim
            user.postEvent ( application.getCurrentUser ( ), 2, "MainAI","onAnimObj", o1, anim_in+0 )
        end --solo si es tarjeta
        if (tipo==2) then --logo
            local o=scene.createRuntimeObject ( s, "logo" )
            if (o~=nil) then log.message ( ">> logo creado" ) end
            this.obj_cur ( o )
            -- poner en destino
            local tg=scene.getTaggedObject ( s, "_P"..this.cam_next ( ) )
            object.matchTranslation ( o, tg, object.kGlobalSpace )
            object.matchRotation ( o, tg, object.kGlobalSpace ) 
            --[[
            -- poner animacion logo
            local o1=group.getSubObjectAt ( o, 0 )
            animation.changeClip ( o1, 0, anim_in+0 )
            animation.setPlaybackLevel ( o1, 0, 100)
            animation.setPlaybackMode ( o1, 0, animation.kPlaybackModeOnce )
            local aini=animation.getClipKeyFrameRangeMin ( o1, anim_in+0 )        
            animation.setPlaybackCursor ( o1, 0, aini )
            animation.setPlaybackSpeed ( o1, 0, 0 )
            --]]
        end
        
        ----[[
        -----------
        -- poner animacion origen (anim_out)
        o=this.obj_old ( )
        if (o~=nil) then
            log.message ( "MODELO: "..object.getModelName ( o ) )
            if (object.getModelName ( o )=="tarjeta") then
                o1=group.getSubObjectAt ( o, 0 ) 
                local anim_outf=anim_out+this.indexAnimOut ( )
                animation.changeClip ( o1, 0, anim_outf )
                animation.setPlaybackLevel ( o1, 0, 100)            
                animation.setPlaybackMode ( o1, 0, animation.kPlaybackModeOnce )
                local aini=animation.getClipKeyFrameRangeMin ( o1, anim_outf )
                animation.setPlaybackCursor ( o1, 0, aini )
                -- postponer iniciar anim
                -- animation.setPlaybackSpeed ( o1, 0, 0 ) 
                -- user.postEvent ( application.getCurrentUser ( ), 2, "MainAI","onAnimObj", o1, anim_outf )
                animation.setPlaybackSpeed ( o1, 0, 100 )       
            end --solo si es tarjeta
            -- postponer destroy
            user.postEvent (application.getCurrentUser ( ),3,"MainAI","onDestroy",o)
        else
            log.message ( ">>> NO HAY OBJETO ANTIGUO" )
        end
        --]]
        
        ------------
        -- animar camara
        local c=this.camara ( )
        local camAnim = this.getCamAnim ( this.cam_cur ( ), this.cam_next ( ) )
        if (camAnim~=-1) then
            --postponer inicio de la animacion
            user.postEvent ( application.getCurrentUser ( ), 1, "MainAI", "onAnimCamara", camAnim )
        else
            log.message ( "sin cambio de camara" )
        end
        
        -- postponer nextstep
        user.postEvent ( application.getCurrentUser ( ), sleep+0, "MainAI", "onnextStep" )
        log.message ( "fin de next_step [index:"..i.."]" )
        this.index (i+1)
    else
        log.message ( "FIN DE LA PRESENTACION" )
        application.quit ( )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
