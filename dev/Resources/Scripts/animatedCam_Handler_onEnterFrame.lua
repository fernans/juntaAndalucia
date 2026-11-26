--------------------------------------------------------------------------------
--  Handler.......... : onEnterFrame
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function animatedCam.onEnterFrame (  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called every frame.
	--
    local t=this.target ( )
	if (t~=nil) then
        local o=this.getObject ( )
        --local x,y,z = object.getTranslation ( t, object.kGlobalSpace )
        --object.lookAt ( o, x,y,z , object.kGlobalSpace, 1 )
        object.matchTranslation ( o,t,object.kGlobalSpace )
        --object.lookAt ( o, 0,0,0, object.kGlobalSpace, 1 )
        object.matchRotation ( o,t,object.kGlobalSpace )
        object.rotate ( o, 0,0,-90, object.kLocalSpace )
        object.rotate ( o, 0,-90,0, object.kLocalSpace )
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
