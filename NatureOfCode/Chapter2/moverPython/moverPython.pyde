class Mover():
    
    def __init__(self, m, x, y):
        self.mass = m
        self.location = PVector(x,y)
        self.velocity = PVector(0,0)
        self.acceleration = PVector(0,0)
        
    def applyForce(self, force):
        f = PVector.div(force, self.mass)
        self.acceleration.add(f)
        
    def update(self):
        self.velocity.add(self.acceleration)
        self.location.add(self.velocity)
        self.acceleration.mult(0)
        
    def display(self):
        stroke(0)
        strokeWeight(2)
        fill(127)
        ellipse(self.location.x, self.location.y, self.mass * 16, self.mass * 16)
        
    def checkEdges(self):
        if self.location.x > width:
            self.location.x = width
            self.velocity.x *= -1
        elif self.location.x < 0:
            self.velocity.x *= -1
            self.location.x = 0
            
        if self.location.y > height:
            self.velocity.y *= -1
            self.location.y = height

barWidth = 20
lastBar = -1
                                              
  
def setup():
    size(600, 300)
    global movers 
    movers = Mover(random(0.1, 5), 0, 0) 

    


                    
def draw():
    background(255, 204, 0)
    
    wind = PVector(0.4, 0)
    gravity = PVector(0, 0.5)
       
    movers.applyForce(wind)
    movers.applyForce(gravity)
    movers.update()
    movers.display()
    movers.checkEdges()    
    
    whichBar = mouseX / barWidth        
