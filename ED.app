{ load defaults }
registericon(pdir([media\images\default.jpg]),[default.jpg]);
registervrsound(pdir([media\sounds\default.wav]),[default.wav]);
registermaterial([Default], 
               rgbColor(128, 128, 128), 
               rgbColor(128, 128, 128),
               rgbColor(50, 50, 50),
               rgbColor(0, 0, 0),
               0.1, 0, false, false);

addlayer([Main], LO_VISIBLE);

Model3DDir := pdir([Media\3DModels\]);
IconsDir := pdir([Icons\]);
TexturesDir := pDir([Media\Textures\]);
 
{ load suite }
if(1, {CmdLineOption([chooseApp]), }
 t := getfileopen(pdir([apps\*.app]),[E.D. Applications (*.app)| *.app]),
 if(CompareText(CmdLineOption([suite]), []),
  t := pdir([apps\logistics suite.app]),
  t := pdir(concat([apps\], CmdLineOption([suite]), [.app]))
 )
);
if(not(CompareText(t, [])),
 execfile(t),
 exit
);
