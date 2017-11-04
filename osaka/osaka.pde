// dark blue
int lines  = #050522;
int background = #234a7a;

// brown
//int lines  = #33170b;
//int background = #5a3d2f;

// green
//int lines = #063009;
//int background = #254B24;

int h = 25;
int w = 60;

int lighten(int c, float percent) {
    return lerpColor(c, #ffffff, max(0, min(1, percent)));
}

int darken(int c, float percent) {
    return lerpColor(c, #000000, max(0, min(1, percent)));
}

void setup() {
    size(240, 180);

    stroke(lines);
    strokeWeight(2);

    int offset = 0;
    for (int y = 0; y <= height+h; y += h*0.6) {
        offset = (offset + w/2) % w;
        for (int x = 0; x <= width+w; x += w) {
            pushMatrix();
            translate(x + offset, y);
            
            fill(lighten(background, 0.05));
            ellipse(0, 0, w, h*2);
            
            fill(lighten(background, 0.04));
            ellipse(0, 0, w*0.70, h*2*0.70);
            
            fill(lighten(background, 0.03));
            ellipse(0, 0, w*0.45, h*2*0.45);

            fill(lighten(background, 0));
            ellipse(0, 0, w*0.22, h*2*0.22);
            
            popMatrix();
        }
    }
    
    save("osaka.png");
}