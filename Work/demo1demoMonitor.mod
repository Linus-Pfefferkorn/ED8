{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

int011;
int035([Sink], pDir([Atoms\Sink.atm]));
int035([Queue], pDir([Atoms\Queue.atm]));
int035([Table], pDir([Atoms\Table.atm]));
int035([Server], pDir([Atoms\Server.atm]));
int035([Source], pDir([Atoms\Source.atm]));
int035([Transporter], pDir([Atoms\Transporter.atm]));
int035([StatusMonitor], pDir([Atoms\StatusMonitor.atm]));
int012;


{Atom: Table11}

sets;
AtomByName([Table], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Table'. Inheriting from BaseClass.]));
CreateAtom(a, s, [], 1, false);
int023([Table11], 32896, 32);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Table.ico]));
Set(DdbRec, [>t-table:1.]);
int001(247522);
SetLoc(25, 22, 0);
SetSize(5, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Table11]);
SetAtt(2, 0);
SetAtt(3, 0);
SetAtt(4, 0);
SetAtt(5, 5);
SetAtt(6, 5);
SetAtt(7, 1);
SetAtt(8, 0);
int024;
SetTable(10, 5);
int015(0, 64, [ 
1
2
3
4
5
6
7
8
9
10
]);
int015(1, 64, [1
]);
int015(2, 64, [2
 
 
 
4
]);
int015(3, 64, [3
 
34
 
 
 
 
4
]);
int015(4, 64, [4
]);
int015(5, 64, [5
]);
SetStatus(0);
int018;


{Atom: Eingangslager}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Eingangslager], 7168771, 240);
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
int001(184);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(2, 3, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetExprAtt(2, [10]);
SetExprAtt(3, [{.~1|~do( SetSize(cm(dUniform(50,100)),cm(dUniform(50,100)),cm(duniform(50,100)),i),  Color(i) := dUniform(1,1000000))~.}do( SetSize(cm(dUniform(50,100)),cm(dUniform(50,100)),cm(duniform(50,100)),i),  Color(i) := dUniform(1,1000000))]);
SetExprAtt(4, [0]);
SetExprAtt(5, [10]);
SetExprAtt(6, [{.-1|1. Unlimited.} -1 ]);
SetAtt(7, 4);
int024;
SetStatus(2);
int018;


{Atom: Pufferlager}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Pufferlager], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(185);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(8, 3, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 100);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, -0.15);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Maschine1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Maschine1], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([\Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(186);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(14, 3, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(0, Normal(10, 5))]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 9.38306409850978);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 677797);
SetExprAtt(30, [mttf]);
SetAtt(31, 367181.345516528);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Pufferlager2}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Pufferlager2], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(187);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(21, 3, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.Max(1,IndexMatch(NrOC(c),1,OCReady(Count,c)))|3. An open channel (Last channel first): search, starting from the last channel, and send to the first open channel found..}Max(1,IndexMatch(NrOC(c),1,OCReady(Count,c)))]);
SetAtt(2, 100);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 4.3);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Maschine2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Maschine2], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([\Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(188);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(32, 1, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [NegExp(20)]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 49.065140549487);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 677797);
SetExprAtt(30, [mttf]);
SetAtt(31, 367162.471787535);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Sink6}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Sink6], 7168771, 240);
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
SetChannels(2, 0);
SetChannelRanges(1, 255, 0, 0);
int001(189);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
SetLoc(20, 15, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 0);
SetAtt(2, 4);
int024;
SetStatus(1);
int018;


{Atom: Product}

sets;
BaseClass;
CreateAtom(a, Up(s), [], 1, false);
int023([Product], 12615680, 73809);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\Pallet.bmp]), [Pallet.bmp]));
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
Set(DdbRec, [>drawysize:1.>drawxsize:1.>t-nodestroy:1.]);
int001(190);
SetLoc(-1, 3, 0);
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


{Atom: aschine2b}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([aschine2b], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\server.bmp]), [server]));
AddModel3D(
	RegisterModel3D(Model3DDir([\Server.wrl]), [Server.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\server2.wrl]), [server2.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\Server_Resized.wrl]), [Server_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
AddModel3D(
	RegisterModel3D(Model3DDir([\Server2_Resized.wrl]), [Server2_Resized.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Server.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(191);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(32, 5, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [NegExp(20)]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 33.3876406868605);
SetAtt(15, 0);
SetAtt(16, 1E40);
SetAtt(17, 0);
SetExprAtt(18, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(19, 7);
SetAtt(20, 0);
SetExprAtt(21, [0]);
SetAtt(22, 0);
SetExprAtt(23, [0]);
SetAtt(24, 0);
SetAtt(25, 0);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0);
SetAtt(29, 677797);
SetExprAtt(30, [mttf]);
SetAtt(31, 367175.262753997);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Transporter9}

sets;
AtomByName([Transporter], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Transporter'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Transporter9], 767720, 66643);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Transport\truck2.bmp]), [truck 1]));
AddModel3D(
	RegisterModel3D(Model3DDir([\Forklift.wrl]), [Forklift.wrl], 0, 0, 0, 1, 1, -1, -90, 0, 0), a);
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Transporter1.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(192);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(32, 5, 0);
SetSize(3, 2, 1);
Set(RotationAs, -170.533563046065);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 2);
SetAtt(2, 1);
SetAtt(3, 0);
SetAtt(4, 0);
SetAtt(5, 0);
SetAtt(6, 0);
SetAtt(7, 1);
SetExprAtt(8, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(9, 1);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetExprAtt(12, [{.Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))|2. An open channel (First channel first): search, starting from the first channel, and send to the first open channel found..}Min(NrOC(c), NrOC(c) + 1 - IndexMatch(NrOC(c), 1, OCReady(NrOC(c) + 1 - Count, c)))]);
SetExprAtt(13, [0]);
SetExprAtt(14, [0]);
SetExprAtt(15, [0]);
SetExprAtt(16, [0]);
int024;
SetStatus(1);
int018;


{Atom: StatusMonitor10}

sets;
AtomByName([StatusMonitor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'StatusMonitor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([StatusMonitor10], 0, 48);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\StatusMonitor.ico]));
SetChannels(1, 0);
SetChannelRanges(1, 1, 0, 0);
int001(193);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(40, 9, 0);
SetSize(15, 18, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 33);
SetAtt(2, 0);
SetTextAtt(3, [Status Monitor]);
SetAtt(4, 7.5);
SetAtt(5, 0);
SetAtt(6, 0);
SetAtt(7, 1.5);
SetAtt(8, 0.75);
SetAtt(9, 0.75);
SetAtt(10, 1);
SetAtt(11, 1);
SetAtt(12, 1);
SetAtt(13, 1);
SetAtt(14, 0);
SetAtt(15, 60);
SetAtt(16, 1);
SetAtt(17, 1);
int024;
SetTable(33, 4);
int015(0, 64, [ 
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
31
32
33
]);
int015(1, 64, [`SegmentScore`
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
]);
int015(2, 64, [`SegmentCumulativeScore`
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
0
]);
int015(3, 64, [`SegmentColor`
1442047
16711928
16711687
16771328
65280
3801343
16711891
16719104
15793920
65316
6226175
16711855
16728576
13434624
65353
8585471
16711818
16737792
11075328
65389
11010303
16711782
16747008
8650496
65426
13369599
16711746
16756480
6291200
65462
15728895
16711709
16765696
]);
int015(4, 64, [`SegmentName`
`Idle`
`Busy`
`Down`
`Waiting`
`Blocked`
`TravelFull`
`TravelEmpty`
`Lift Up`
`Lift Down`
`Not Down`
`Available`
`Not Available`
`Empty`
`Full`
`Not Empty`
`Load`
`Unload`
`Open`
`Closed`
`Waiting for Contents`
`Waiting for Package`
`Collecting`
`Contents Blocked`
`Distributing`
`Busy and Blocked`
`Conveying`
`Setup`
`Waiting for Job`
`On the Job`
`Waiting for Operator`
`Assigned`
`Take-Down`
`Travel to Job`
]);
SetStatus(0);
int018;


{Atom: Queue12}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Queue12], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(247523);
SetLoc(22, 10, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [1]);
SetAtt(2, 10);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out) .}content(c)]);
SetAtt(6, 1);
SetExprAtt(7, [{.openallic(c)|Any inputchannel .}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;
Up;
int014(1, 184, 1, 185, 0);
int014(0, 190, 1, 184, 0);
int014(1, 185, 1, 186, 0);
int014(1, 186, 1, 187, 0);
int014(1, 187, 1, 192, 0);
int014(1, 188, 1, 189, 0);
int014(1, 192, 1, 188, 0);
int014(1, 191, 2, 189, 0);
int014(2, 192, 1, 191, 0);
int014(0, 192, 1, 193, 0);
int006(10, 184, 1, 0, 0);
int006(0, 193, 1001, 0, 0);
int006(1, 193, 1002, 0, 0);


{Experiment settings}

int032(1, 3, 6);
int033(1, 1, 1, [RESULTS]);
int033(1, 1, 2, [10]);
int033(1, 1, 3, [2]);
int033(1, 1, 4, [6]);
int033(1, 1, 5, [0]);
int033(1, 1, 6, [0]);
int033(1, 2, 1, [Maschine2]);
int033(1, 2, 2, [1]);
int033(1, 2, 3, [Gesatmdurchsatz]);
int033(1, 2, 4, [Output(cs)]);
int033(1, 2, 5, [0]);
int033(1, 2, 6, [0]);
int033(1, 3, 1, [Pufferlager2]);
int033(1, 3, 2, [1]);
int033(1, 3, 3, [Mittlere Wartezeit]);
int033(1, 3, 4, [AvgStay(cs)]);
int033(1, 3, 5, [Mittlerer Inhalt]);
int033(1, 3, 6, [AvgContent(cs)]);
int034;
SetAtt(1, 10);
SetExprAtt(2, [hr(100)]);
SetExprAtt(3, [hr(2)]);
SetAtt(4, 10);
SetAtt(5, 1);
SetAtt(13, 6);
int007;
