--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function mainCameraAI.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called every frame.
	--
    if (this.target ( )) then
        if (this.lookat ( )) then
            local dt = application.getLastFrameTime ( )
            local px,py,pz = object.getTranslation ( this.target ( ), object.kGlobalSpace )
            object.translateTo ( this.getObject ( ), px,py,pz, object.kGlobalSpace, dt*5)
            local px,py,pz = object.getTranslation ( this.lookat ( ), object.kGlobalSpace )
            object.lookAt ( this.getObject ( ), px,py,pz, object.kGlobalSpace, dt*5)
        end
    end
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
