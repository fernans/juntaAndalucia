--------------------------------------------------------------------------------
--  Function......... : sendTargets
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function juntaMainAI.sendTargets ( n )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    if (n~=nil) then
        local t=hashtable.get ( this.targets ( ), ""..n )
        local l=hashtable.get ( this.lookats ( ), ""..n )
        
        if (t~=nil and l~=nil) then
            object.sendEvent ( application.getCurrentUserActiveCamera ( ), "mainCameraAI", "onSetTargets", t, l )
        end
    end
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
