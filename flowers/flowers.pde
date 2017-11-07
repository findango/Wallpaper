int grid = 35;
int bg_color = #3e5e5e;
int petal_color = #97a687;
int center_color = #a38558;

void setup() {
    size(140, 140);
    background(bg_color);
    translate(grid/2, grid/2);
  
    for (int y = 0; y <= height; y+= grid) {
        for (int x = 0; x <= width; x+= grid * 2) {
            int offset = (y % (grid*2) == 0) ? 0 : grid;
            pushMatrix();
            translate(x + offset, y);

            petal_one(12);
            petal_two(12);
            center(5);

            popMatrix();
        }
    }
    
    save("flowers.png");
}

void petal_one(int size) {
    fill(petal_color);
    stroke(bg_color);
    strokeWeight(0);
    
    for(int a = 0; a < 4; a++) {
        pushMatrix();
        rotate(a*HALF_PI);
        
        beginShape();
        vertex(0, 0);
        vertex(size/6, 0);
        vertex(size/4, (size*3/4));
        vertex(0, size);
        vertex(size/-4, (size*3/4));
        vertex(size/-6, 0);
        endShape(CLOSE);
        
        popMatrix();
    }
}

void petal_two(int size) {
    fill(petal_color);
    stroke(bg_color);
    strokeWeight(0.5);
    
    for(int a = 0; a < 4; a++) {
        pushMatrix();
        rotate(a*HALF_PI + QUARTER_PI);
        
        beginShape();
        vertex(0, 0);
        vertex(size/4.0, size*3/4);
        vertex(size/6.0, size*11/12);
        vertex(0, size);
        vertex(size/-6, size*11/12);
        vertex(size/-4, size*3/4);
        endShape(CLOSE);
        
        popMatrix();
    }
}

void center(int size) {
    fill(center_color);
    stroke(bg_color);
    strokeWeight(1.5);

    ellipse(0, 0, size, size);
}  