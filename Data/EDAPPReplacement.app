{ load defaults }
registericon(pdir([media\images\default.jpg]),[default.jpg]);
{registervrsound(pdir([media\sounds\default.wav]),[default.wav]);}
registermaterial([Default], 
               rgbColor(128, 128, 128), 
               rgbColor(128, 128, 128),
               rgbColor(50, 50, 50),
               rgbColor(0, 0, 0),
               0.1, 0, false, false);
addlayer([Main], LO_VISIBLE);
 
execfile([RunApp.4ds]);
