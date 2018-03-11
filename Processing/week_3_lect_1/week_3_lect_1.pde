void setup()
{
  size(500, 500);
  cx = width * 0.5f;
  cy = height * 0.5f;
  faceRadius = cx;
}

float cx, cy;
float faceRadius;

void draw()
{
  background(0);
  stroke(255);
  fill(0);
  ellipse(cx, cy, faceRadius * 2.0f, faceRadius * 2.0f);
  ellipse(cx * 0.5f, cy * 0.5f, faceRadius * 0.2f, faceRadius * 0.2f);
  ellipse(cx * 1.5f, cy * 0.5f, faceRadius * 0.2f, faceRadius * 0.2f);
}
