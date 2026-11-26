--------------------------------------------------------------------------------
--  Handler.......... : onAnimCamara
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.onAnimCamara ( camAnim  )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
        local c=this.camara ( )
        animation.changeClip ( c, 0, camAnim )
        local aini=animation.getClipKeyFrameRangeMin ( c, camAnim )
        animation.setPlaybackCursor ( c, 0, aini )
        animation.setPlaybackMode ( c, 0, animation.kPlaybackModeOnce )
        animation.setPlaybackLevel ( c, 0, 100)
        animation.setPlaybackSpeed ( c, 0, 50)    
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
