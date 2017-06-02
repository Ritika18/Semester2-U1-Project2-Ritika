class Cube
{
  //variables
  private PVector _location;
  private PVector _Color;
  private float _size = 100;
  
  //constructor
  Cube(PVector location, PVector Color, float size)
  {
    _location = location;
    _Color = Color;
    _size = size;
  }
  
  private void Draw()
  {
    // used for translating, the top board to only move this object   
    pushMatrix(); 
    //location(x,y,z = front to back - changes size)
    // translate(10,10,10); == makes it in the middle of the screen
    translate(_location.x, _location.y, _location.z); 
    fill(_Color.x,_Color.y,_Color.z);
    stroke(0);
    // size of the sphere
    box(_size); 
    // leaves it in place and takes out the matric formed in the beginning
    popMatrix(); 
  }
}