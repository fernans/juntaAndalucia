--------------------------------------------------------------------------------
--  Handler.......... : onKeyboardKeyDown
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function juntaMainAI.onKeyboardKeyDown ( kKeyCode )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	-- This handler is called when a keyboard key is pressed.
	--
	if (kKeyCode== input.kKeyEscape) then   -- esc, salir
        application.quit ( )
    end
    
    if (kKeyCode == input.kKeySpace) then   -- espacio, fullscreen
        application.setOption ( application.kOptionFullscreen ,1-application.getOption ( application.kOptionFullscreen ) )
    end
    
    if (kKeyCode == input.kKeyBackspace) then  -- borrar, reset
        application.restart ( )
    end
    
    ---------------------- Manejar Puntos de Vista
    if (kKeyCode == input.kKey1) then this.sendTargets ( 1 )
    elseif (kKeyCode == input.kKey2) then this.sendTargets ( 2 )
    elseif (kKeyCode == input.kKey3) then this.sendTargets ( 3 )
    elseif (kKeyCode == input.kKey4) then this.sendTargets ( 4 )
    elseif (kKeyCode == input.kKey5) then this.sendTargets ( 5 )
    elseif (kKeyCode == input.kKey6) then this.sendTargets ( 6 )
    elseif (kKeyCode == input.kKey7) then this.sendTargets ( 7 )
    elseif (kKeyCode == input.kKey8) then this.sendTargets ( 8 )
    elseif (kKeyCode == input.kKey9) then this.sendTargets ( 9 )
    elseif (kKeyCode == input.kKey0) then this.sendTargets ( 0 )
    end
    ---------------------- FIN - Manejar Puntos de Vista
        
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
