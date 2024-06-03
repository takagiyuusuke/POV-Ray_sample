#include "colors.inc" 
#include "shapes.inc"
#include "woods.inc"                                          
#include "metals.inc"
#include "stones.inc"
#include "textures.inc"
 
camera{
  location <10*sin(clock*2*pi),10,10*cos(clock*2*pi)>  
  look_at<0,1,0>
  angle 45
} 
 
light_source{<-3,20,-20> color 2*White}

object{ 
  Plane_XZ
    pigment{color Wheat}
    pigment{checker Green White scale 1.5}
         
    translate<0,-3,0>
}

sky_sphere{
    pigment{
        wrinkles
        color_map{
            [0.3 color rgb<0.3,0.4,1.2>]
            [0.9 White]
        }
        scale <1,0.2,0.2>
    }
}
 
object{ 
  cylinder{<0,0,0>,<0,0,-2>,1}
    pigment{color MediumGoldenrod}
    rotate 90*x
    translate<0,1,0>
}

object{ 
  Cone_Y
    translate <0,4,0>
    pigment{color Red}
}

difference{
  object{
    Cube
      pigment{MediumBlue}
      rotate 45*y
  }

  object{
    Sphere
      pigment{color White}            
      scale 1.2 
  }
}

object{
  Sphere
    pigment{color Cyan}
    translate<-4,-2,0>   
}
 
object{
  Cube
    pigment{YellowGreen}
    rotate 45*y 
    translate<0,-2,0>
}

object{
  box{<1,-4,-1>,<5,-1,1>}
    pigment{YellowGreen}
    rotate 45*y
} 
 
object{
  Cube
    pigment{color Yellow}
    rotate 45*y 
    translate<0,-2,8>
}    

object{
  Disk_X
    pigment{Orchid}
    translate<-2,-2,7> 
}  

object{
  Disk_Z
    pigment{color ForestGreen}
    translate<7,-2,6>
}
