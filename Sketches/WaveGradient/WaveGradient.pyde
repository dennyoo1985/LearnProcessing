amplitude = 30
fillGap = 2.5

def setup():
    size(1000, 600)
    background(200, 200, 200)
    noLoop()
    
def draw():
    frequency = 0
    for i in range(-75, height + 75):
        # reset angle to 0, so waves stack properly
        angle = 0
        # increasing frequency causes more gaps
        frequency += 0.02
        for j in range(width + 75):
            py = i + sin(radians(angle)) * amplitude
            angle += frequency
            c = color(abs(py - i) * 255 / amplitude,
                      255 - abs(py - i) * 255 / amplitude,
                      j * (255.0 / (width + 50)))
            # hack to fill gaps, Raise value of illGap if you increase frequency
            for filler in range(fillGap):
                set(int(j - filler), int(py) - filler, c)
                set(int(j), int(py), c)
                set(int(j + filler), int(py) + filler, c)
