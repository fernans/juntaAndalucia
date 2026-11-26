--------------------------------------------------------------------------------
--  Function......... : setSlides
--  Author........... : 
--  Description...... : 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
function MainAI.setSlides ( )
--------------------------------------------------------------------------------
	
	--
	-- Write your code here, using 'this' as current AI instance.
	--
    local x=xml.getRootElement ( this.slides ( ))
    
    local xe=xml.appendElementChild ( x, "slide", "" )
    xml.appendElementAttribute ( xe,"camnext", "1") -- posicion destino camara
    xml.appendElementAttribute ( xe, "tipo", "2") -- 1=tarjeta 2=logo
    xml.appendElementAttribute ( xe, "textura", "texfile11") --textura
    xml.appendElementAttribute ( xe, "ext", "jpg" )--extension
    xml.appendElementAttribute ( xe, "animin", "0") --animacion de entrada (0=ninguna /aparece en el acto)
    xml.appendElementAttribute ( xe, "animout", "0") --animaicon de salida (0=ninguna /muere en el acto)
    xml.appendElementAttribute ( xe, "sleep", "5") --tiempo de espera, antes de siguiente slide 
    
    local xe=xml.appendElementChild ( x, "slide", "" )
    xml.appendElementAttribute ( xe,"camnext", "2") -- posicion destino camara
    xml.appendElementAttribute ( xe, "tipo", "1") -- 1=tarjeta 2=logo
    xml.appendElementAttribute ( xe, "textura", "Grafica_01_bis") --textura
    xml.appendElementAttribute ( xe, "ext", "mov" )--extension    
    xml.appendElementAttribute ( xe, "animin", "0") --animacion de entrada (0=ninguna /aparece en el acto)
    xml.appendElementAttribute ( xe, "animout", "0") --animaicon de salida (0=ninguna /muere en el acto)
    xml.appendElementAttribute ( xe, "sleep", "6") --tiempo de espera, antes de siguiente slide 

    local xe=xml.appendElementChild ( x, "slide", "" )
    xml.appendElementAttribute ( xe,"camnext", "3") -- posicion destino camara
    xml.appendElementAttribute ( xe, "tipo", "0") -- 1=tarjeta 2=logo
    xml.appendElementAttribute ( xe, "textura", "texfile11") --textura
    xml.appendElementAttribute ( xe, "ext", "jpg" )--extension    
    xml.appendElementAttribute ( xe, "animin", "0") --animacion de entrada (0=ninguna /aparece en el acto)
    xml.appendElementAttribute ( xe, "animout", "0") --animaicon de salida (0=ninguna /muere en el acto)
    xml.appendElementAttribute ( xe, "sleep", "7") --tiempo de espera, antes de siguiente slide 

    local xe=xml.appendElementChild ( x, "slide", "" )
    xml.appendElementAttribute ( xe,"camnext", "4") -- posicion destino camara
    xml.appendElementAttribute ( xe, "tipo", "1") -- 1=tarjeta 2=logo
    xml.appendElementAttribute ( xe, "textura", "texfile11") --textura
    xml.appendElementAttribute ( xe, "ext", "jpg" )--extension
    xml.appendElementAttribute ( xe, "animin", "0") --animacion de entrada (0=ninguna /aparece en el acto)
    xml.appendElementAttribute ( xe, "animout", "0") --animaicon de salida (0=ninguna /muere en el acto)
    xml.appendElementAttribute ( xe, "sleep", "8") --tiempo de espera, antes de siguiente slide 

    local xe=xml.appendElementChild ( x, "slide", "" )
    xml.appendElementAttribute ( xe,"camnext", "5") -- posicion destino camara
    xml.appendElementAttribute ( xe, "tipo", "1") -- 1=tarjeta 2=logo
    xml.appendElementAttribute ( xe, "textura", "texfile11") --textura
    xml.appendElementAttribute ( xe, "ext", "jpg" )--extension
    xml.appendElementAttribute ( xe, "animin", "0") --animacion de entrada (0=ninguna /aparece en el acto)
    xml.appendElementAttribute ( xe, "animout", "0") --animaicon de salida (0=ninguna /muere en el acto)
    xml.appendElementAttribute ( xe, "sleep", "9") --tiempo de espera, antes de siguiente slide 

    local xe=xml.appendElementChild ( x, "slide", "" )
    xml.appendElementAttribute ( xe,"camnext", "1") -- posicion destino camara
    xml.appendElementAttribute ( xe, "tipo", "1") -- 1=tarjeta 2=logo
    xml.appendElementAttribute ( xe, "textura", "texfile11") --textura
    xml.appendElementAttribute ( xe, "ext", "jpg" )--extension
    xml.appendElementAttribute ( xe, "animin", "0") --animacion de entrada (0=ninguna /aparece en el acto)
    xml.appendElementAttribute ( xe, "animout", "0") --animaicon de salida (0=ninguna /muere en el acto)
    xml.appendElementAttribute ( xe, "sleep", "10") --tiempo de espera, antes de siguiente slide 

    -------------------------------------------------------------------
	
--------------------------------------------------------------------------------
end
--------------------------------------------------------------------------------
