 --Definimos las variables locales
 local p_x
 local p_y
 local speed
 
-- Se crean  los objetos del juego
function love.load() 
  love.graphics.setBackgroundColor(255, 255, 255) -- Fondo de la pantalla en color blanco
  p_x = 10 -- Posición de x en un plano cartesiano
  p_y= 200 -- Posición de y en un plano cartesiano    
  speed = 250 -- Velocidad con la que se mueve el personaje
  p = love.graphics.newImage("mario.png") -- Cargamos la imagen png de nombre mario que esta en el mismo directorio que la clase main.lua
end
-- Dibujamos en pantalla el personaje 
function love.draw()      
    love.graphics.draw(p,p_x, p_y, 0, 0.1, 0.1)  
     
end
-- Función para capturar las pulsaciones a,d,w y s del teclado.
function love.update(dt)
   if love.keyboard.isDown("a") then
     p_x = p_x - speed * dt --movimiento a la izquierda posición en "x" - (velocidad multiplicado por delta time (dt))
    end
    
    if love.keyboard.isDown("d") then
     p_x = p_x + speed * dt --movimiento a la derecha posición en "x" + (velocidad multiplicado por delta time (dt))
    end
   
    if love.keyboard.isDown("w") then
      p_y = p_y - speed * dt --movimiento hacia arriba posición en "y" - (velocidad multiplicado por delta time (dt))
    end
    
    if love.keyboard.isDown("s") then
      p_y = p_y + speed * dt --movimiento hacia abajo posición en "y" - (velocidad multiplicado por delta time (dt))
    end
end