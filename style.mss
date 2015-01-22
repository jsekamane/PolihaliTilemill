// Fonts //
@sans: 'Arial Regular';
@sans_italic: 'Arial Italic';
@sans_bold: 'Arial Bold';

// Common Colors //
@land: #fff;
@water: #55c1ee;
@waterdark: #26627c;

Map {
  background-color: @land;
}
#countries {
  ::outline {
    line-color: #aaa;
    line-width: 2;
    line-join: round;
  }
  polygon-fill: @land;
  comp-op: overlay;
}


/* HOW HIGH WILL THE WATER RISE? */
/* *  Dam placed starts around 1940 meters over the sea level */
/* *  Wall height 165 meters (ORASECOM Report 2013)*/
/* So water will rise to 2105 meters over sea level */
#contour[elev=2080]{
	polygon-fill: black;
	comp-op: dst-out;
}
/* Polygon that surrounds the potential area. Used as ‘mask’ on the contour */
#CustomPolygon {
	polygon-opacity:1;
	polygon-fill: @waterdark;
}

/* Dams */
#dams {
  	marker-line-width:0;
	marker-fill: darkred;
	marker-allow-overlap:true;
	marker-ignore-placement:true;
  	text-name: [name];
  	text-face-name: "Arial Regular";
    text-fill: darkred;
 	text-halo-fill: fadeout(white, 40%);
  	text-halo-radius: 1.5;
  	[name="Polihali damwall"]{
    	marker-width:32;
  		marker-height:7;
  		marker-transform:rotate(54, 0, 0);
    	text-size: 16;
    	text-dx: -14;
    }
	[name="Polihali Saddle Dam"]{
    	marker-width:28;
  		marker-height:5;
      	marker-transform:rotate(-62, 0, 0);
   		text-size: 12;
    	text-dx: -8;
    	text-dy: -2;
	}
}  

/* Surroundings */
#waterway {
	line-width:0.5;
	line-color: @water;
	[waterway='river'],
	[waterway='canal']{
    	line-width: 3;
    	text-name: [name];
    	text-face-name: @sans;
    	text-placement: line;
		text-size: 12;
    	text-fill: @water;
    	text-halo-fill: fadeout(white, 0%);
  		text-halo-radius: 1.3;
  		text-max-char-angle-delta: 15;
    } 
}               
#road {
  line-width: 2;
  line-color:#d7d7cc;
  opacity: 0.5
}
#residential {
  line-width:0;
  polygon-fill:#f6f3ed; 
  polygon-opacity: 0.7
}
#villages {
  marker-width:8;
  marker-fill:#f6f3ed;
  marker-line-width:0;
  marker-allow-overlap:true;
  marker-ignore-placement:true;
  text-name: [name];
  text-face-name: @sans_italic;
  text-size: 9;
  text-fill: #999;
  text-halo-fill: fadeout(white, 0%);
  text-halo-radius: 1.3;
  [place='town']{
    text-size: 12;
  	text-fill: #444;
  }
}

/* Making it easier to adjust custom polygon */
/*#Points {
	marker-line-width:0;
	marker-width: 10;
	marker-placement: line;
	marker-fill: yellow;
	marker-allow-overlap:true;
	marker-ignore-placement:true;
}*/