{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

int011;
int035([Sink], pDir([Atoms\Sink.atm]));
int035([Queue], pDir([Atoms\Queue.atm]));
int035([Source], pDir([Atoms\Source.atm]));
int035([Unpack], pDir([Atoms\Unpack.atm]));
int035([Assembler], pDir([Atoms\Assembler.atm]));
int035([Accumulating Conveyor], pDir([Atoms\Accumulating Conveyor.atm]));
int012;


{Atom: Ziel1}

sets;
BaseClass;
CreateAtom(a, s, [], 1, false);
int023([Ziel1], 12615680, 73809);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\products\product.png]), [product], 1, 1, 16777215, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([\box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(Info, [A general product.General-----------Put a product in your model and connect it's central channel with the input channel of a source to generate multiple instances of the product during running.Notes:---------For cylinder shaped, horizontally oriented 3D icons set ySize equal to zSize.For cylinder shaped, vertically oriented 3D icons set xSize equal to ySize.For sphere set xSize equal to ySize and zSize.Last revision:------------------September 27, 2003]);
Set(DdbRec, [>t-nodestroy:1.]);
int001(182);
SetLoc(0, 18, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
CreateAttributes(2);
SetAttributeName(r(1), [Icon3D]);
SetAttributeName(r(2), [Hide2DIcon]);
SetAtt(r(1), 11);
SetAtt(r(2), 1);
int024;
Set(OnCreation, [{ In the OnInit event handler some edit fields are registered. }{ This is ok for the product in the library tree, but not for the  }{ products in the model, so erase the OnInit expression.       }Set(OnInit, [])]);
Set(OnReset, [If( Label( [t-nodestroy] , c) = 0, DestroyAtom)]);
Set(OnUser, [Do(  { Delete any current instances of this form.}   GuiDestroy([Product]),  { Register the GUI-form for this atom.}  GuiRegister(PDir([\Atoms\Product.gui]), 1),  { Show the GUI-form.}   GuiCreate([Product], [Product], 0, c, 0, 1)   )]);
Set(On2DDraw, [if( c.DrawFlag,  {--External atom(s) control product rotationas--} do(  {--Variables for rotationas in order to compensate change of transportation direction--}  RotateCoords(c.DrawRotationas, 0, 0, 1),    {--Variables for translation in order to compensate change of transportation direction--}  TranslateCoords(c.DrawXtranslate, c.DrawYtranslate, 0),    {--Rotated shape--}  dishape(0, 0 ,c.DrawXsize, c.DrawYsize, 0.01, ColorBlack, color(c)) ),  {--Standard--} do(  c.DrawXsize := xSize(c),  c.DrawYsize := ySize(c),  diBmp(0, 0, Hide2DIcon * Icon(c), 1, 5) ) )]);
Set(On3DDraw, [do( if(  {--Product rotationas has been changed by external atom (e.g. Corner Transfer Unit)--}  c.DrawFlag,  do(   {--Variables for rotationas in order to compensate change of transportation direction--}   RotateCoords(c.DrawRotationas,0,0,1),      {--Variables for translation in order to compensate change of transportation direction--}   TranslateCoords(c.DrawXtranslate, c.DrawYtranslate,0)  ),  {--Standard--}  do(   c.DrawXsize := xSize(c),   c.DrawYsize := ySize(c)  ) ), Case( Icon3D,  {** Cube  **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color),  {**  Picture Cube **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color, 0, 0, Icon, 0, 100, 100),  {** Cylinder Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color)  ),  {** Cylinder Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color)  ),  {** Ball **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, Max(c.DrawYsize / 2, zSize / 2)),   Ball( c.CenterPoint, c.CenterPoint, c.CenterPoint, c.CenterPoint, 180, 360, 0, 0, 0, Color)  ),  {** Cone **}  Do(   c.CenterPoint := Max(c.DrawXsize, c.DrawYsize),   Cone(c.CenterPoint / 2, c.CenterPoint / 2, 0, zSize, c.CenterPoint / 2, 0, 0, 90, 0, Color)  ),  {** Barrel Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color),   Cone(0, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color),   Cone(c.DrawXsize, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color)  ),  {** Barrel Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, zSize, 0, c.CenterPoint, 0, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, 0, 0, c.CenterPoint, 0, 0, 90, 0, Color)  ),  {** Pallet **}  Do(   di3DBox(0, 0, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, /( c.DrawYsize, 2) - 0.05, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, c.DrawYsize - 0.1, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   c.CenterPoint := c.DrawXsize / 5,   Repeat(    5,    di3DBox(Count * c.CenterPoint, 0, zSize - 0.05, -0.1, c.DrawYsize, 0.05, Color)   )  ),  {** Simple Person **}  Do(   c.CenterPoint := c.DrawYsize / 2,   {head} Ball( 0, c.CenterPoint, 1.8, 0.1, 180, 360, 0, -90 ,0, 7846395),   {neck} Cylinder(0, c.CenterPoint, 1.65, 0.1, 360, 0.05, 0, 90, 0, 7846395),   {shoulders}EllipseCone(0, c.CenterPoint, 1.52, 0.15, 360, 0.08, 0.05, 0.12, 0.2, 0, 90, 0, Color),   {arm 1}  Cone(0, 0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {arm 2}  Cone(0, -0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {hand 1} Cone(0.08, -0.12 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {hand 2}  Cone(0.08, 0.18 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {body}  EllipseCone(0,c.CenterPoint, 1.07, 0.45, 360, 0.12, 0.2, 0.08, 0.1, 0, 90, 0, Color),   {waist}  EllipseCone(0,c.CenterPoint, 0.92, 0.15, 360, 0.08, 0.1, 0.11, 0.15, 0, 90, 0, ColorGray),   {leg 1}  Cone(0, 0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {leg 2}  Cone(0, -0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {foot 1}  EllipseCone(0, 0.07 + c.CenterPoint, 0,0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack),   {foot 2}  EllipseCone(0, -0.07 + c.CenterPoint, 0, 0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack)  ),  {** Closed Carton Box **}  DrawModel3D(Model3D(1, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Open Carton Box **}  DrawModel3D(Model3D(2, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Wood **}  DrawModel3D(Model3D(3, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Plastic **}  DrawModel3D(Model3D(4, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Oildrum **}  DrawModel3D(Model3D(5, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Crate **}  DrawModel3D(Model3D(6, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize) ))]);
SetStatus(0);
int018;


{Atom: Ziel2}

sets;
BaseClass;
CreateAtom(a, Up(s), [], 1, false);
int023([Ziel2], 12615680, 73809);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\Products\circlegreen.png]), [circlegreen]));
AddModel3D(
	RegisterModel3D(Model3DDir([\box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(Info, [A general product.General-----------Put a product in your model and connect it's central channel with the input channel of a source to generate multiple instances of the product during running.Notes:---------For cylinder shaped, horizontally oriented 3D icons set ySize equal to zSize.For cylinder shaped, vertically oriented 3D icons set xSize equal to ySize.For sphere set xSize equal to ySize and zSize.Last revision:------------------September 27, 2003]);
Set(DdbRec, [>t-nodestroy:1.]);
int001(183);
SetLoc(0, 15, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
CreateAttributes(2);
SetAttributeName(r(1), [Icon3D]);
SetAttributeName(r(2), [Hide2DIcon]);
SetAtt(r(1), 11);
SetAtt(r(2), 1);
int024;
Set(OnCreation, [{ In the OnInit event handler some edit fields are registered. }{ This is ok for the product in the library tree, but not for the  }{ products in the model, so erase the OnInit expression.       }Set(OnInit, [])]);
Set(OnReset, [If( Label( [t-nodestroy] , c) = 0, DestroyAtom)]);
Set(OnUser, [Do(  { Delete any current instances of this form.}   GuiDestroy([Product]),  { Register the GUI-form for this atom.}  GuiRegister(PDir([\Atoms\Product.gui]), 1),  { Show the GUI-form.}   GuiCreate([Product], [Product], 0, c, 0, 1)   )]);
Set(On2DDraw, [if( c.DrawFlag,  {--External atom(s) control product rotationas--} do(  {--Variables for rotationas in order to compensate change of transportation direction--}  RotateCoords(c.DrawRotationas, 0, 0, 1),    {--Variables for translation in order to compensate change of transportation direction--}  TranslateCoords(c.DrawXtranslate, c.DrawYtranslate, 0),    {--Rotated shape--}  dishape(0, 0 ,c.DrawXsize, c.DrawYsize, 0.01, ColorBlack, color(c)) ),  {--Standard--} do(  c.DrawXsize := xSize(c),  c.DrawYsize := ySize(c),  diBmp(0, 0, Hide2DIcon * Icon(c), 1, 5) ) )]);
Set(On3DDraw, [do( if(  {--Product rotationas has been changed by external atom (e.g. Corner Transfer Unit)--}  c.DrawFlag,  do(   {--Variables for rotationas in order to compensate change of transportation direction--}   RotateCoords(c.DrawRotationas,0,0,1),      {--Variables for translation in order to compensate change of transportation direction--}   TranslateCoords(c.DrawXtranslate, c.DrawYtranslate,0)  ),  {--Standard--}  do(   c.DrawXsize := xSize(c),   c.DrawYsize := ySize(c)  ) ), Case( Icon3D,  {** Cube  **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color),  {**  Picture Cube **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color, 0, 0, Icon, 0, 100, 100),  {** Cylinder Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color)  ),  {** Cylinder Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color)  ),  {** Ball **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, Max(c.DrawYsize / 2, zSize / 2)),   Ball( c.CenterPoint, c.CenterPoint, c.CenterPoint, c.CenterPoint, 180, 360, 0, 0, 0, Color)  ),  {** Cone **}  Do(   c.CenterPoint := Max(c.DrawXsize, c.DrawYsize),   Cone(c.CenterPoint / 2, c.CenterPoint / 2, 0, zSize, c.CenterPoint / 2, 0, 0, 90, 0, Color)  ),  {** Barrel Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color),   Cone(0, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color),   Cone(c.DrawXsize, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color)  ),  {** Barrel Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, zSize, 0, c.CenterPoint, 0, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, 0, 0, c.CenterPoint, 0, 0, 90, 0, Color)  ),  {** Pallet **}  Do(   di3DBox(0, 0, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, /( c.DrawYsize, 2) - 0.05, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, c.DrawYsize - 0.1, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   c.CenterPoint := c.DrawXsize / 5,   Repeat(    5,    di3DBox(Count * c.CenterPoint, 0, zSize - 0.05, -0.1, c.DrawYsize, 0.05, Color)   )  ),  {** Simple Person **}  Do(   c.CenterPoint := c.DrawYsize / 2,   {head} Ball( 0, c.CenterPoint, 1.8, 0.1, 180, 360, 0, -90 ,0, 7846395),   {neck} Cylinder(0, c.CenterPoint, 1.65, 0.1, 360, 0.05, 0, 90, 0, 7846395),   {shoulders}EllipseCone(0, c.CenterPoint, 1.52, 0.15, 360, 0.08, 0.05, 0.12, 0.2, 0, 90, 0, Color),   {arm 1}  Cone(0, 0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {arm 2}  Cone(0, -0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {hand 1} Cone(0.08, -0.12 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {hand 2}  Cone(0.08, 0.18 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {body}  EllipseCone(0,c.CenterPoint, 1.07, 0.45, 360, 0.12, 0.2, 0.08, 0.1, 0, 90, 0, Color),   {waist}  EllipseCone(0,c.CenterPoint, 0.92, 0.15, 360, 0.08, 0.1, 0.11, 0.15, 0, 90, 0, ColorGray),   {leg 1}  Cone(0, 0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {leg 2}  Cone(0, -0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {foot 1}  EllipseCone(0, 0.07 + c.CenterPoint, 0,0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack),   {foot 2}  EllipseCone(0, -0.07 + c.CenterPoint, 0, 0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack)  ),  {** Closed Carton Box **}  DrawModel3D(Model3D(1, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Open Carton Box **}  DrawModel3D(Model3D(2, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Wood **}  DrawModel3D(Model3D(3, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Plastic **}  DrawModel3D(Model3D(4, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Oildrum **}  DrawModel3D(Model3D(5, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Crate **}  DrawModel3D(Model3D(6, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize) ))]);
SetStatus(0);
int018;


{Atom: Ziel3}

sets;
BaseClass;
CreateAtom(a, Up(s), [], 1, false);
int023([Ziel3], 12615680, 73809);
Set(Icon(a), 
	RegisterIcon(IconsDir([Png\Products\circleorange.png]), [circleorange]));
AddModel3D(
	RegisterModel3D(Model3DDir([\box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(Info, [A general product.General-----------Put a product in your model and connect it's central channel with the input channel of a source to generate multiple instances of the product during running.Notes:---------For cylinder shaped, horizontally oriented 3D icons set ySize equal to zSize.For cylinder shaped, vertically oriented 3D icons set xSize equal to ySize.For sphere set xSize equal to ySize and zSize.Last revision:------------------September 27, 2003]);
Set(DdbRec, [>t-nodestroy:1.]);
int001(184);
SetLoc(0, 12, 0);
SetSize(1, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
CreateAttributes(2);
SetAttributeName(r(1), [Icon3D]);
SetAttributeName(r(2), [Hide2DIcon]);
SetAtt(r(1), 11);
SetAtt(r(2), 1);
int024;
Set(OnCreation, [{ In the OnInit event handler some edit fields are registered. }{ This is ok for the product in the library tree, but not for the  }{ products in the model, so erase the OnInit expression.       }Set(OnInit, [])]);
Set(OnReset, [If( Label( [t-nodestroy] , c) = 0, DestroyAtom)]);
Set(OnUser, [Do(  { Delete any current instances of this form.}   GuiDestroy([Product]),  { Register the GUI-form for this atom.}  GuiRegister(PDir([\Atoms\Product.gui]), 1),  { Show the GUI-form.}   GuiCreate([Product], [Product], 0, c, 0, 1)   )]);
Set(On2DDraw, [if( c.DrawFlag,  {--External atom(s) control product rotationas--} do(  {--Variables for rotationas in order to compensate change of transportation direction--}  RotateCoords(c.DrawRotationas, 0, 0, 1),    {--Variables for translation in order to compensate change of transportation direction--}  TranslateCoords(c.DrawXtranslate, c.DrawYtranslate, 0),    {--Rotated shape--}  dishape(0, 0 ,c.DrawXsize, c.DrawYsize, 0.01, ColorBlack, color(c)) ),  {--Standard--} do(  c.DrawXsize := xSize(c),  c.DrawYsize := ySize(c),  diBmp(0, 0, Hide2DIcon * Icon(c), 1, 5) ) )]);
Set(On3DDraw, [do( if(  {--Product rotationas has been changed by external atom (e.g. Corner Transfer Unit)--}  c.DrawFlag,  do(   {--Variables for rotationas in order to compensate change of transportation direction--}   RotateCoords(c.DrawRotationas,0,0,1),      {--Variables for translation in order to compensate change of transportation direction--}   TranslateCoords(c.DrawXtranslate, c.DrawYtranslate,0)  ),  {--Standard--}  do(   c.DrawXsize := xSize(c),   c.DrawYsize := ySize(c)  ) ), Case( Icon3D,  {** Cube  **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color),  {**  Picture Cube **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color, 0, 0, Icon, 0, 100, 100),  {** Cylinder Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color)  ),  {** Cylinder Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color)  ),  {** Ball **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, Max(c.DrawYsize / 2, zSize / 2)),   Ball( c.CenterPoint, c.CenterPoint, c.CenterPoint, c.CenterPoint, 180, 360, 0, 0, 0, Color)  ),  {** Cone **}  Do(   c.CenterPoint := Max(c.DrawXsize, c.DrawYsize),   Cone(c.CenterPoint / 2, c.CenterPoint / 2, 0, zSize, c.CenterPoint / 2, 0, 0, 90, 0, Color)  ),  {** Barrel Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color),   Cone(0, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color),   Cone(c.DrawXsize, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color)  ),  {** Barrel Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, zSize, 0, c.CenterPoint, 0, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, 0, 0, c.CenterPoint, 0, 0, 90, 0, Color)  ),  {** Pallet **}  Do(   di3DBox(0, 0, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, /( c.DrawYsize, 2) - 0.05, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, c.DrawYsize - 0.1, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   c.CenterPoint := c.DrawXsize / 5,   Repeat(    5,    di3DBox(Count * c.CenterPoint, 0, zSize - 0.05, -0.1, c.DrawYsize, 0.05, Color)   )  ),  {** Simple Person **}  Do(   c.CenterPoint := c.DrawYsize / 2,   {head} Ball( 0, c.CenterPoint, 1.8, 0.1, 180, 360, 0, -90 ,0, 7846395),   {neck} Cylinder(0, c.CenterPoint, 1.65, 0.1, 360, 0.05, 0, 90, 0, 7846395),   {shoulders}EllipseCone(0, c.CenterPoint, 1.52, 0.15, 360, 0.08, 0.05, 0.12, 0.2, 0, 90, 0, Color),   {arm 1}  Cone(0, 0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {arm 2}  Cone(0, -0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {hand 1} Cone(0.08, -0.12 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {hand 2}  Cone(0.08, 0.18 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {body}  EllipseCone(0,c.CenterPoint, 1.07, 0.45, 360, 0.12, 0.2, 0.08, 0.1, 0, 90, 0, Color),   {waist}  EllipseCone(0,c.CenterPoint, 0.92, 0.15, 360, 0.08, 0.1, 0.11, 0.15, 0, 90, 0, ColorGray),   {leg 1}  Cone(0, 0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {leg 2}  Cone(0, -0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {foot 1}  EllipseCone(0, 0.07 + c.CenterPoint, 0,0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack),   {foot 2}  EllipseCone(0, -0.07 + c.CenterPoint, 0, 0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack)  ),  {** Closed Carton Box **}  DrawModel3D(Model3D(1, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Open Carton Box **}  DrawModel3D(Model3D(2, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Wood **}  DrawModel3D(Model3D(3, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Plastic **}  DrawModel3D(Model3D(4, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Oildrum **}  DrawModel3D(Model3D(5, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Crate **}  DrawModel3D(Model3D(6, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize) ))]);
SetStatus(0);
int018;


{Atom: SourceZiel1}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SourceZiel1], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([\source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 1, 1, 255);
int001(185);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(3, 17, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.dUniform(1,NrOC(c))|21. Random channel: randomly choose a channel. If the channel is open then send to it, otherwise choose again when any channel opens..}dUniform(1,NrOC(c))]);
SetExprAtt(2, [Uniform(5, 11)]);
SetExprAtt(3, [{.0|10. Do Nothing.}0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [{.-1|1. Unlimited.}-1]);
SetAtt(7, 4);
int024;
SetStatus(2);
int018;


{Atom: SourceZiel2}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SourceZiel2], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([\source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 1, 1, 255);
int001(186);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(3, 14, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.dUniform(1,NrOC(c))|21. Random channel: randomly choose a channel. If the channel is open then send to it, otherwise choose again when any channel opens..}dUniform(1,NrOC(c))]);
SetExprAtt(2, [Uniform(5, 11)]);
SetExprAtt(3, [{.0|10. Do Nothing.}0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [{.-1|1. Unlimited.}-1]);
SetAtt(7, 4);
int024;
SetStatus(2);
int018;


{Atom: SourceZiel3}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SourceZiel3], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([\source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 1, 1, 255);
int001(187);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(3, 11, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.dUniform(1,NrOC(c))|21. Random channel: randomly choose a channel. If the channel is open then send to it, otherwise choose again when any channel opens..}dUniform(1,NrOC(c))]);
SetExprAtt(2, [Uniform(5, 11)]);
SetExprAtt(3, [{.0|10. Do Nothing.}0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [{.-1|1. Unlimited.}-1]);
SetAtt(7, 4);
int024;
SetStatus(2);
int018;


{Atom: QueueStockwerk1}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([QueueStockwerk1], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(2, 2);
SetChannelRanges(1, 255, 1, 255);
int001(188);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(19, 37, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.if(CompareText(Name(Rank(1,c)),[~1]),~2,~3)|6. By atom name: if the atom name matches ~Ziel1~ then send to channel ~2~ else ~1~..}if(CompareText(Name(Rank(1,c)),[Ziel1]),2,1)]);
SetAtt(2, 10000000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.1|2. Lifo (Last In First Out).}1]);
SetAtt(6, 3);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: QueueStockwerk2}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([QueueStockwerk2], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(2, 2);
SetChannelRanges(1, 255, 1, 255);
int001(189);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(19, 18, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.if(CompareText(Name(Rank(1,c)),[~1]),~2,~3)|6. By atom name: if the atom name matches ~Ziel2~ then send to channel ~2~ else ~1~..}if(CompareText(Name(Rank(1,c)),[Ziel2]),2,1)]);
SetAtt(2, 10000000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.1|2. Lifo (Last In First Out).}1]);
SetAtt(6, -0.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: QueueStockwerk3}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([QueueStockwerk3], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(2, 2);
SetChannelRanges(1, 255, 1, 255);
int001(190);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(19, 0, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.if(CompareText(Name(Rank(1,c)),[~1]),~2,~3)|6. By atom name: if the atom name matches ~Ziel3~ then send to channel ~2~ else ~1~..}if(CompareText(Name(Rank(1,c)),[Ziel3]),2,1)]);
SetAtt(2, 10000000);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.1|2. Lifo (Last In First Out).}1]);
SetAtt(6, -0.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: SinkAusgang}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SinkAusgang], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\sink.bmp]), [sink]));
AddModel3D(
	RegisterModel3D(Model3DDir([\sink.wrl]), [sink.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\sink_Resized.wrl]), [sink_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Sink.ico]));
SetChannels(3, 0);
SetChannelRanges(1, 255, 0, 0);
int001(191);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
SetLoc(55, 18, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetAtt(2, 4);
int024;
SetStatus(1);
int018;


{Atom: Accumulating Conveyor3to2}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor3to2], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(192);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(41, -3, 0);
SetSize(17, 1, 1);
Set(RotationAs, 90);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 15);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 2);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 17);
SetAtt(19, 1);
SetAtt(20, 6);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor2to3}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor2to3], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(193);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(35, 14, 0);
SetSize(17, 1, 1);
Set(RotationAs, 270);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 15);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 2);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 17);
SetAtt(19, 1);
SetAtt(20, 6);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor2to1}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor2to1], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(194);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(41, 15, 0);
SetSize(17, 1, 1);
Set(RotationAs, 90);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 15);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 2);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 17);
SetAtt(19, 1);
SetAtt(20, 6);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor1to2}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor1to2], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(195);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(35, 32, 0);
SetSize(17, 1, 1);
Set(RotationAs, 270);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 15);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 2);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 17);
SetAtt(19, 1);
SetAtt(20, 6);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: AssemblerFahrstuhlStock1}

sets;
AtomByName([Assembler], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Assembler'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([AssemblerFahrstuhlStock1], 4194432, 1264);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Machines\mach1001.bmp]), [mach1001], 1, 0, 0, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([\assembler.wrl]), [assembler.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Assembler.ico]));
SetChannels(2, 1);
SetChannelRanges(2, 255, 1, 255);
int001(196);
int013(1, 0, true, false, 5, 0, [container/order/main product], []);
int013(2, 0, false, true, 0, 0, [], []);
SetLoc(27, 37, 0);
SetSize(5, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Uniform(10, 20)]);
SetExprAtt(2, [0]);
SetExprAtt(3, [0]);
SetExprAtt(4, [{.~1|~1~.}1]);
SetAtt(5, 1);
SetExprAtt(6, [1]);
SetAtt(7, 14);
SetAtt(8, 1);
SetAtt(9, 1);
SetExprAtt(10, [0]);
SetAtt(11, 1);
SetAtt(12, 2);
int024;
SetTable(2, 1);
int015(0, 64, [ 
`Input ch1`
`Input ch2`
]);
int015(1, 64, [`Product 1`
1
16
]);
SetStatus(1);
int018;


{Atom: Fahrstuhl}

sets;
BaseClass;
CreateAtom(a, Up(s), [], 1, false);
int023([Fahrstuhl], 12615680, 73809);
Set(Icon(a), 
	RegisterIcon(TexturesDir([tech\etopcromegunside2sml.jpg]), [etopcromegunside2sml.jpg], 1, 0, 0, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([\box-closed.wrl]), [box-closed.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\box-opened.wrl]), [box-opened.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-wood.wrl]), [pallet-wood.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\pallet-plastic.wrl]), [pallet-plastic.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\oildrum.wrl]), [oildrum.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\crate.wrl]), [crate.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Product.ico]));
Set(Info, [A general product.General-----------Put a product in your model and connect it's central channel with the input channel of a source to generate multiple instances of the product during running.Notes:---------For cylinder shaped, horizontally oriented 3D icons set ySize equal to zSize.For cylinder shaped, vertically oriented 3D icons set xSize equal to ySize.For sphere set xSize equal to ySize and zSize.Last revision:------------------September 27, 2003]);
Set(DdbRec, [>t-nodestroy:1.]);
int001(197);
SetLoc(7, 38, 0);
SetSize(2, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
CreateAttributes(2);
SetAttributeName(r(1), [Icon3D]);
SetAttributeName(r(2), [Hide2DIcon]);
SetAtt(r(1), 11);
SetAtt(r(2), 1);
int024;
Set(OnCreation, [{ In the OnInit event handler some edit fields are registered. }{ This is ok for the product in the library tree, but not for the  }{ products in the model, so erase the OnInit expression.       }Set(OnInit, [])]);
Set(OnReset, [If( Label( [t-nodestroy] , c) = 0, DestroyAtom)]);
Set(OnUser, [Do(  { Delete any current instances of this form.}   GuiDestroy([Product]),  { Register the GUI-form for this atom.}  GuiRegister(PDir([\Atoms\Product.gui]), 1),  { Show the GUI-form.}   GuiCreate([Product], [Product], 0, c, 0, 1)   )]);
Set(On2DDraw, [if( c.DrawFlag,  {--External atom(s) control product rotationas--} do(  {--Variables for rotationas in order to compensate change of transportation direction--}  RotateCoords(c.DrawRotationas, 0, 0, 1),    {--Variables for translation in order to compensate change of transportation direction--}  TranslateCoords(c.DrawXtranslate, c.DrawYtranslate, 0),    {--Rotated shape--}  dishape(0, 0 ,c.DrawXsize, c.DrawYsize, 0.01, ColorBlack, color(c)) ),  {--Standard--} do(  c.DrawXsize := xSize(c),  c.DrawYsize := ySize(c),  diBmp(0, 0, Hide2DIcon * Icon(c), 1, 5) ) )]);
Set(On3DDraw, [do( if(  {--Product rotationas has been changed by external atom (e.g. Corner Transfer Unit)--}  c.DrawFlag,  do(   {--Variables for rotationas in order to compensate change of transportation direction--}   RotateCoords(c.DrawRotationas,0,0,1),      {--Variables for translation in order to compensate change of transportation direction--}   TranslateCoords(c.DrawXtranslate, c.DrawYtranslate,0)  ),  {--Standard--}  do(   c.DrawXsize := xSize(c),   c.DrawYsize := ySize(c)  ) ), Case( Icon3D,  {** Cube  **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color),  {**  Picture Cube **}  di3DBox(0, 0, 0, c.DrawXsize, c.DrawYsize, zSize, Color, 0, 0, Icon, 0, 100, 100),  {** Cylinder Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color)  ),  {** Cylinder Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color)  ),  {** Ball **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, Max(c.DrawYsize / 2, zSize / 2)),   Ball( c.CenterPoint, c.CenterPoint, c.CenterPoint, c.CenterPoint, 180, 360, 0, 0, 0, Color)  ),  {** Cone **}  Do(   c.CenterPoint := Max(c.DrawXsize, c.DrawYsize),   Cone(c.CenterPoint / 2, c.CenterPoint / 2, 0, zSize, c.CenterPoint / 2, 0, 0, 90, 0, Color)  ),  {** Barrel Horizontal **}  Do(   c.CenterPoint := Max(c.DrawYsize / 2, zSize / 2),   Cylinder(0, c.CenterPoint, c.CenterPoint, c.DrawXsize, 360, c.CenterPoint, 0, 0, 0, Color),   Cone(0, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color),   Cone(c.DrawXsize, c.CenterPoint, c.CenterPoint, 0, c.CenterPoint, 0, 0, 0, 0, Color)  ),  {** Barrel Vertical **}  Do(   c.CenterPoint := Max(c.DrawXsize / 2, c.DrawYsize / 2),   Cylinder(c.CenterPoint, c.CenterPoint, 0, zSize, 360, c.CenterPoint, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, zSize, 0, c.CenterPoint, 0, 0, 90, 0, Color),   Cone(c.CenterPoint, c.CenterPoint, 0, 0, c.CenterPoint, 0, 0, 90, 0, Color)  ),  {** Pallet **}  Do(   di3DBox(0, 0, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, /( c.DrawYsize, 2) - 0.05, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   di3DBox(0, c.DrawYsize - 0.1, 0, c.DrawXsize, 0.1, zSize - 0.05, Color),   c.CenterPoint := c.DrawXsize / 5,   Repeat(    5,    di3DBox(Count * c.CenterPoint, 0, zSize - 0.05, -0.1, c.DrawYsize, 0.05, Color)   )  ),  {** Simple Person **}  Do(   c.CenterPoint := c.DrawYsize / 2,   {head} Ball( 0, c.CenterPoint, 1.8, 0.1, 180, 360, 0, -90 ,0, 7846395),   {neck} Cylinder(0, c.CenterPoint, 1.65, 0.1, 360, 0.05, 0, 90, 0, 7846395),   {shoulders}EllipseCone(0, c.CenterPoint, 1.52, 0.15, 360, 0.08, 0.05, 0.12, 0.2, 0, 90, 0, Color),   {arm 1}  Cone(0, 0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {arm 2}  Cone(0, -0.15 + c.CenterPoint, 1.5, 0.5, 0.05, 0.02, 20, -80, 0, Color),   {hand 1} Cone(0.08, -0.12 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {hand 2}  Cone(0.08, 0.18 + c.CenterPoint, 1.02, 0.1, 0.02, 0.02, 20, -80, 0, 7846395),   {body}  EllipseCone(0,c.CenterPoint, 1.07, 0.45, 360, 0.12, 0.2, 0.08, 0.1, 0, 90, 0, Color),   {waist}  EllipseCone(0,c.CenterPoint, 0.92, 0.15, 360, 0.08, 0.1, 0.11, 0.15, 0, 90, 0, ColorGray),   {leg 1}  Cone(0, 0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {leg 2}  Cone(0, -0.07 + c.CenterPoint, 0, 0.92, 0.03, 0.08, 0, 90, 0, ColorGray),   {foot 1}  EllipseCone(0, 0.07 + c.CenterPoint, 0,0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack),   {foot 2}  EllipseCone(0, -0.07 + c.CenterPoint, 0, 0.2, 180, 0.01, 0.03, 0.04, 0.05, 0, 0, 0, ColorBlack)  ),  {** Closed Carton Box **}  DrawModel3D(Model3D(1, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Open Carton Box **}  DrawModel3D(Model3D(2, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Wood **}  DrawModel3D(Model3D(3, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Pallet - Plastic **}  DrawModel3D(Model3D(4, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Oildrum **}  DrawModel3D(Model3D(5, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize),  {** Crate **}  DrawModel3D(Model3D(6, c), 0, 0, 0, c.DrawXsize, c.DrawYsize, zSize) ))]);
SetStatus(0);
int018;


{Atom: SourceFahrstuhl}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SourceFahrstuhl], 7168771, 240);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\source.bmp]), [source]));
AddModel3D(
	RegisterModel3D(Model3DDir([\source.wrl]), [source.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\source_Resized.wrl]), [Source_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Source.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 1, 1, 255);
int001(198);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(11, 37, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetExprAtt(2, [10]);
SetExprAtt(3, [{.0|10. Do Nothing.}0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [10]);
SetExprAtt(6, [{.~1|2. Generate maximum ~1~ products.}1]);
SetAtt(7, 4);
int024;
SetStatus(2);
int018;


{Atom: UnpackFahrstuhlStock2}

sets;
AtomByName([Unpack], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Unpack'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([UnpackFahrstuhlStock2], 4194432, 1264);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([\disassembler.wrl]), [disassembler.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Unpack.ico]));
SetChannels(2, 2);
SetChannelRanges(1, 255, 2, 2);
int001(199);
int013(1, 0, true, false, 0, 0, [Contents], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(28, 24, 0);
SetSize(4, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [content(first(c))]);
SetExprAtt(2, [0]);
SetAtt(3, 0);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [0]);
SetExprAtt(7, [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(21);
int018;


{Atom: AssemblerFahrstuhlStock2}

sets;
AtomByName([Assembler], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Assembler'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([AssemblerFahrstuhlStock2], 4194432, 1264);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Machines\mach1001.bmp]), [mach1001], 1, 0, 0, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([\assembler.wrl]), [assembler.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Assembler.ico]));
Set(DdbRec, [>t-rr:2.]);
SetChannels(2, 2);
SetChannelRanges(2, 255, 1, 255);
int001(200);
int013(1, 0, true, false, 5, 0, [container/order/main product], []);
int013(2, 0, false, false, 0, 0, [], []);
SetLoc(27, 18, 0);
SetSize(5, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Uniform(10, 20)]);
SetExprAtt(2, [0]);
SetExprAtt(3, [0]);
SetExprAtt(4, [{.do( inc(Label([t-rr],c)), if(Label([t-rr],c) > NrOC(c), Label([t-rr],c) := 1), LoopUntil(  OCReady(Label([t-rr],c),c),  do(   inc(Label([t-rr],c)),   if(Label([t-rr],c) = NrOC(c) + 1, Label([t-rr],c) := 1)  ),  NrOC(c) ), Label([t-rr],c))|17. Round robin if available: all outputchannels are used in rotation if channel is available.  If channel is closed, then next available channel is chosen..}do( inc(Label([t-rr],c)), if(Label([t-rr],c) > NrOC(c), Label([t-rr],c) := 1), LoopUntil(  OCReady(Label([t-rr],c),c),  do(   inc(Label([t-rr],c)),   if(Label([t-rr],c) = NrOC(c) + 1, Label([t-rr],c) := 1)  ),  NrOC(c) ), Label([t-rr],c))]);
SetAtt(5, 1);
SetExprAtt(6, [1]);
SetAtt(7, 14);
SetAtt(8, 1);
SetAtt(9, 1);
SetExprAtt(10, [0]);
SetAtt(11, 1);
SetAtt(12, 2);
int024;
SetTable(2, 1);
int015(0, 0, [ 
`Input ch1`
`Input ch2`
]);
int015(1, 0, [`Product 1`
1
16
]);
SetStatus(1);
int018;


{Atom: UnpackFahrstuhlStock3}

sets;
AtomByName([Unpack], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Unpack'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([UnpackFahrstuhlStock3], 4194432, 1264);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([\disassembler.wrl]), [disassembler.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Unpack.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 2, 2);
int001(201);
int013(1, 0, true, false, 0, 0, [Contents], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(28, 6, 0);
SetSize(4, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [content(first(c))]);
SetExprAtt(2, [0]);
SetAtt(3, 0);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [0]);
SetExprAtt(7, [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(21);
int018;


{Atom: AssemblerFahrstuhlStock3}

sets;
AtomByName([Assembler], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Assembler'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([AssemblerFahrstuhlStock3], 4194432, 1264);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Machines\mach1001.bmp]), [mach1001], 1, 0, 0, 255, 255, false, 0));
AddModel3D(
	RegisterModel3D(Model3DDir([\assembler.wrl]), [assembler.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Assembler.ico]));
SetChannels(2, 1);
SetChannelRanges(2, 255, 1, 255);
int001(202);
int013(1, 0, true, false, 5, 0, [container/order/main product], []);
int013(2, 0, false, true, 0, 0, [], []);
SetLoc(27, 0, 0);
SetSize(5, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Uniform(10, 20)]);
SetExprAtt(2, [0]);
SetExprAtt(3, [0]);
SetExprAtt(4, [{.~1|~1~.}1]);
SetAtt(5, 1);
SetExprAtt(6, [1]);
SetAtt(7, 14);
SetAtt(8, 1);
SetAtt(9, 1);
SetExprAtt(10, [0]);
SetAtt(11, 1);
SetAtt(12, 2);
int024;
SetTable(2, 1);
int015(0, 0, [ 
`Input ch1`
`Input ch2`
]);
int015(1, 0, [`Product 1`
1
16
]);
SetStatus(1);
int018;


{Atom: UnpackFahrstuhlStock1}

sets;
AtomByName([Unpack], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Unpack'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([UnpackFahrstuhlStock1], 4194432, 1264);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([\disassembler.wrl]), [disassembler.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Unpack.ico]));
SetChannels(2, 2);
SetChannelRanges(1, 255, 2, 2);
int001(203);
int013(1, 0, true, false, 0, 0, [Contents], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(28, 43, 0);
SetSize(4, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [content(first(c))]);
SetExprAtt(2, [0]);
SetAtt(3, 0);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [0]);
SetExprAtt(7, [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(21);
int018;


{Atom: Accumulating Conveyor23}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor23], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(204);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(42, -4, 0);
SetSize(20, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 17);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 1);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 20);
SetAtt(19, 1);
SetAtt(20, 7);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor24}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor24], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(205);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(42, 14, 0);
SetSize(20, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 19);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 1);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 20);
SetAtt(19, 1);
SetAtt(20, 7);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor25}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor25], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(206);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(42, 33, 0);
SetSize(20, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 18);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 1);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 20);
SetAtt(19, 1);
SetAtt(20, 7);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor26}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor26], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(207);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(14, 33, 0);
SetSize(20, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 17);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 1);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 20);
SetAtt(19, 1);
SetAtt(20, 7);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor27}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor27], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(208);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(14, 14, 0);
SetSize(20, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 16.9512813352048);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 1);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 20);
SetAtt(19, 1);
SetAtt(20, 7);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;


{Atom: Accumulating Conveyor28}

sets;
AtomByName([Accumulating Conveyor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Accumulating Conveyor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Accumulating Conveyor28], 11249415, 1266);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\conveyor.bmp]), [conveyor]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\AccumulatingConveyor.ico]));
Set(DdbRec, [>legdist:3.]);
SetChannels(2, 1);
SetChannelRanges(1, 255, 1, 255);
int001(209);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(14, -4, 0);
SetSize(20, 1, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetExprAtt(2, [Length / Speed]);
SetAtt(3, 14);
SetExprAtt(4, [Min(TempMaxLoc, Speed * (Time - EntryTime(cs)))]);
SetAtt(5, 0);
SetAtt(6, 0);
SetExprAtt(7, [If(Elevation <> 0,   Hor_Length / Cos(Angle), Hor_Length)]);
SetExprAtt(8, [{.~1|~1~.}1]);
SetAtt(9, 0);
SetAtt(10, 1);
SetExprAtt(11, [If(Content(c) <> 0,   Do(   TempMaxLoc :=Min(Length, +((Length - ExitLength), (Speed * (Time - ExitTime)))),   ForAtomLayerUnder(c, Do(     Setcs,     SetLoc(-(*(Display_Factor, CurLoc), xSize(cs)), /(-(ySize(c), ySize(cs)), 2), +(zSize(c), *(/(CurLoc, /(If(Use_Physical, xSize(c), Input_Length), xSize(c))), Sin(Angle))), cs),     SetAtt(3, -(TempMaxLoc, ProductSpacing(SpacingRule, xSize(cs), Spacing)), c)    )   )  ) )]);
SetExprAtt(12, [0]);
SetAtt(13, 10000);
SetAtt(14, 1);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
SetAtt(17, 1);
SetAtt(18, 20);
SetAtt(19, 1);
SetAtt(20, 7);
SetExprAtt(21, [0]);
SetExprAtt(22, [ArcTan(Elevation / Hor_Length)]);
SetExprAtt(23, [If(Use_Physical, xSize(c),    Input_Length)]);
SetAtt(24, 5);
int024;
SetStatus(13);
int018;
Up;
int014(1, 185, 2, 209, 0);
int014(0, 182, 1, 185, 0);
int014(2, 185, 2, 208, 0);
int014(1, 186, 1, 207, 0);
int014(0, 183, 1, 186, 0);
int014(2, 186, 1, 209, 0);
int014(1, 187, 2, 207, 0);
int014(0, 184, 1, 187, 0);
int014(2, 187, 1, 208, 0);
int014(1, 188, 2, 196, 0);
int014(1, 207, 1, 188, 0);
int014(2, 188, 1, 206, 0);
int014(1, 203, 2, 188, 0);
int014(1, 189, 2, 200, 0);
int014(1, 208, 1, 189, 0);
int014(2, 189, 1, 205, 0);
int014(1, 199, 2, 189, 0);
int014(1, 190, 2, 202, 0);
int014(1, 209, 1, 190, 0);
int014(2, 190, 1, 204, 0);
int014(1, 201, 2, 190, 0);
int014(1, 204, 1, 191, 0);
int014(1, 205, 2, 191, 0);
int014(1, 206, 3, 191, 0);
int014(1, 192, 2, 199, 0);
int014(1, 202, 1, 192, 0);
int014(1, 193, 1, 201, 0);
int014(1, 200, 1, 193, 0);
int014(1, 194, 2, 203, 0);
int014(2, 200, 1, 194, 0);
int014(1, 195, 1, 199, 0);
int014(1, 196, 1, 195, 0);
int014(2, 203, 1, 196, 0);
int014(1, 198, 1, 203, 0);
int014(0, 197, 1, 198, 0);
int014(2, 199, 1, 200, 0);
int014(2, 201, 1, 202, 0);
int006(0, 185, 1, 0, 0);
int006(0, 186, 1, 0, 0);
int006(0, 187, 1, 0, 0);
int006(10, 198, 1, 0, 0);


{Experiment settings}

int034;
int007;
