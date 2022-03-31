-- Meta class
Baddy = {}

-- Derived class method new (constructor)
function Baddy.new (x, y, speed)
    self = setmetatable({}, {__index = Baddy}) --Inheritance from the Baddy Class/table (table, metatable)
    self.x = x
    self.y = y
    self.speed = speed
    self.img = love.graphics.newImage("sprites/canon.png")
    self.width = self.img:getWidth()
    self.height = self.img:getHeight()
    return self
end

--using the colon allows us to use the 'self' keyword as an instance is automatiocally passed in
function Baddy:update (dt)
    if love.keyboard.isDown("right") then
        self.x = self.x + self.speed * dt
    elseif love.keyboard.isDown("left") then
        self.x = self.x - self.speed * dt
    elseif love.keyboard.isDown("down") then
        self.y = self.y + self.speed * dt
    elseif love.keyboard.isDown("up") then
        self.y = self.y - self.speed * dt
    end
    --check for edge of screen
    local winWidth = love.graphics.getWidth()
    local winHeight = love.graphics.getHeight()
    if self.x < 0 then
        self.x = 0
    elseif self.x + self.width > winWidth then
        self.x = winWidth - self.width
    elseif self.y + self.height > winHeight then
        self.y = winHeight - self.height
    elseif self.y < 0 then
        self.y = 0
    end
end

function Baddy:draw ()
    love.graphics.draw (self.img, self.x, self.y)
end
