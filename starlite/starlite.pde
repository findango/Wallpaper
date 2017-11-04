int grid = 60;
int bg_color   = #0b1e39;
int fill_color = #3e3f5e;
int dot_color  = #2f4b11;

void setup() {
    size(240, 240);
    background(bg_color);
    translate(grid/2, grid/2);
    
    for (int row = 0; row <= height/grid; row++) {
        for (int col = 0; col <= width/grid; col++) {
            if ((row%2 ^ col%2) == 0) {
                star(col*grid, row*grid, 10, 5);
            } else {
                dot(col*grid, row*grid, 4);
            }
        }
    }
    
    save("starlite.png");
}

void star(float cx, float cy, int outer, int inner) {
    pushMatrix();
    translate(cx, cy);

    strokeWeight(0);
    fill(fill_color);
    beginShape();
    for (int i = 0; i < 10; i++) {
        float angle = i * TWO_PI/10 - PI/2;
        float r = (i % 2 == 0) ? outer : inner; 
        float x = cos(angle) * r; 
        float y = sin(angle) * r;
        vertex(x, y);
    }
    endShape(CLOSE);

    popMatrix();
}

void dot(float cx, float cy, float r) {
    strokeWeight(0);
    fill(dot_color);
    ellipse(cx, cy, r, r);
}