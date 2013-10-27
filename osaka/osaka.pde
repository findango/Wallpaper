// dark blue
int dark  = #050522;
int light = #172f4d;
// brown
//int dark  = #33170b;
//int light = #5a3d2f;
// green
//int dark = #063009;
//int light = #254B24;

int h = 25;
int w = 60;

void setup() {
    size(240, 180);

    background(dark);
    stroke(dark);
    strokeWeight(3);
    fill(light);

    int offset = 0;
    for (int y = 0; y <= height+h; y += h*0.6) {
        offset = (offset + w/2) % w;
        for (int x = 0; x <= width+w; x += w) {
            pushMatrix();
            translate(x + offset, y);
            
            ellipse(0, 0, w, h*2);
            ellipse(0, 0, w*0.70, h*2*0.70);
            ellipse(0, 0, w*0.45, h*2*0.45);
            ellipse(0, 0, w*0.22, h*2*0.22);
            
            popMatrix();
        }
    }
    
    save("osaka.png");
}

