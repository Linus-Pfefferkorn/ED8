{Enterprise Dynamics startup information}

if(StartingED, SoftStartED([]));


{Model information}

AddLayer([Main], 1, 1, 0);


{Load required atoms}

int011;
int035([Sink], pDir([Atoms\Sink.atm]));
int035([Queue], pDir([Atoms\Queue.atm]));
int035([Table], pDir([Atoms\Table.atm]));
int035([Source], pDir([Atoms\Source.atm]));
int035([MultiService], pDir([Atoms\MultiService.atm]));
int035([Generic Monitor], pDir([Atoms\Generic Monitor.atm]));
int012;


{Preregister functions}

PreregisterFunction([Start], 2, 2);
PreregisterFunction([SetStart], 3, 3);
PreregisterFunction([MyTable], 2, 2);
PreregisterFunction([SetMyTable], 3, 3);
PreregisterFunction([MyTable2], 2, 2);
PreregisterFunction([SetMyTable2], 3, 3);


{Atom: Start}

sets;
AtomByName([Table], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Table'. Inheriting from BaseClass.]));
CreateAtom(a, s, [], 1, false);
Set(OnInit, [Dim([refStart], vbAtom, c)]);
int023([Start], 32896, 32);
DefineFunction([Start], [Basic], 2, 2, [cell(p(1),p(2), refStart)], [Returns the value of cell(e1, e2)], [No example], 1, [Table.atm]);
DefineFunction([SetStart], [Basic], 3, 3, [setcell(p(1),p(2),p(3), refStart)], [Sets cell(e1, e2) to value e3], [No example], 1, [Table.atm]);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Table.ico]));
Set(DdbRec, [>t-table:1.]);
int001(598394);
SetLoc(1, -5, 0);
SetSize(5, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Start]);
SetAtt(2, 0);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 5);
SetAtt(6, 5);
SetAtt(7, 1);
SetAtt(8, 0);
int024;
SetTable(1, 1);
int015(0, 64, [ 
1
]);
int015(1, 64, [1
502.603076043124
]);
SetStatus(0);
int018;


{Atom: MyTable}

sets;
AtomByName([Table], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Table'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
Set(OnInit, [Dim([refMyTable], vbAtom, c)]);
int023([MyTable], 32896, 32);
DefineFunction([MyTable], [Basic], 2, 2, [cell(p(1),p(2), refMyTable)], [Returns the value of cell(e1, e2)], [No example], 1, [Table.atm]);
DefineFunction([SetMyTable], [Basic], 3, 3, [setcell(p(1),p(2),p(3), refMyTable)], [Sets cell(e1, e2) to value e3], [No example], 1, [Table.atm]);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Table.ico]));
Set(DdbRec, [>t-table:1.]);
int001(598395);
SetLoc(-3, 7, 0);
SetSize(5, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [MyTable]);
SetAtt(2, 0);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 5);
SetAtt(6, 5);
SetAtt(7, 1);
SetAtt(8, 0);
int024;
SetTable(180, 1);
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
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
101
102
103
104
105
106
107
108
109
110
111
112
113
114
115
116
117
118
119
120
121
122
123
124
125
126
127
128
129
130
131
132
133
134
135
136
137
138
139
140
141
142
143
144
145
146
147
148
149
150
151
152
153
154
155
156
157
158
159
160
161
162
163
164
165
166
167
168
169
170
171
172
173
174
175
176
177
178
179
180
]);
int015(1, 149, [1
`159,1637463`
`9,362573314`
`84,26315982`
`84,26315982`
`9,362573314`
`84,26315982`
`102,9883065`
`9,362573314`
`177,888893`
`9,362573314`
`9,362573314`
`102,9883065`
`9,362573314`
`9,362573314`
`9,362573314`
`9,362573314`
`102,9883065`
`9,362573314`
`9,362573314`
`9,362573314`
`102,9883065`
`102,9883065`
`9,362573314`
`9,362573314`
`9,362573314`
`9,362573314`
`9,362573314`
`84,26315982`
`9,362573314`
`84,26315982`
`9,362573314`
`9,362573314`
`9,362573314`
`9,362573314`
`9,362573314`
`9,362573314`
`102,9883065`
`9,362573314`
`9,362573314`
`9,362573314`
`102,9883065`
`9,362573314`
`9,362573314`
`9,362573314`
`102,9883065`
`9,362573314`
`196,6140396`
`9,362573314`
`102,9883065`
`196,6140396`
`271,5146261`
`9,362573314`
`102,9883065`
`271,5146261`
`177,888893`
`440,0409457`
`84,26315982`
`252,7894795`
`421,3157991`
`252,7894795`
`84,26315982`
`84,26315982`
`234,0643328`
`393,2280792`
`308,9649194`
`383,8655059`
`299,602346`
`290,2397727`
`514,9415323`
`674,1052786`
`823,9064516`
`149,801173`
`524,3041056`
`440,0409457`
`440,0409457`
`430,6783724`
`430,6783724`
`290,2397727`
`702,1929985`
`430,6783724`
`851,9941716`
`421,3157991`
`486,8538123`
`271,5146261`
`543,0292522`
`1039,245638`
`271,5146261`
`805,181305`
`337,0526393`
`327,690066`
`271,5146261`
`543,0292522`
`477,491239`
`262,1520528`
`383,8655059`
`383,8655059`
`449,4035191`
`252,7894795`
`318,3274927`
`243,4269062`
`243,4269062`
`421,3157991`
`234,0643328`
`402,5906525`
`168,5263196`
`56,17543988`
`234,0643328`
`224,7017595`
`224,7017595`
`224,7017595`
`215,3391862`
`440,0409457`
`196,6140396`
`149,801173`
`252,7894795`
`159,1637463`
`308,9649194`
`449,4035191`
`449,4035191`
`102,9883065`
`411,9532258`
`262,1520528`
`159,1637463`
`159,1637463`
`205,9766129`
`262,1520528`
`318,3274927`
`290,2397727`
`355,7777859`
`102,9883065`
`205,9766129`
`159,1637463`
`102,9883065`
`102,9883065`
`102,9883065`
`102,9883065`
`318,3274927`
`262,1520528`
`430,6783724`
`56,17543988`
`159,1637463`
`215,3391862`
`440,0409457`
`168,5263196`
`56,17543988`
`393,2280792`
`224,7017595`
`56,17543988`
`290,2397727`
`168,5263196`
`234,0643328`
`56,17543988`
`177,888893`
`234,0643328`
`477,491239`
`299,602346`
`121,7134531`
`121,7134531`
`243,4269062`
`56,17543988`
`121,7134531`
`196,6140396`
`9,362573314`
`121,7134531`
`65,5380132`
`131,0760264`
`252,7894795`
`318,3274927`
`196,6140396`
`402,5906525`
`196,6140396`
`9,362573314`
`205,9766129`
`9,362573314`
`140,4385997`
`74,90058651`
`215,3391862`
`149,801173`
`74,90058651`
`159,1637463`
]);
SetStatus(0);
int018;


{Atom: Client}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Client], 7168771, 240);
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
int001(598396);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(3, 0, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetExprAtt(2, [1/Max(1,Normal(110,23))]);
SetExprAtt(3, [{.~1|~SetAtt(1,time,i)~.}SetAtt(1,time,i)]);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [{.-1|1. Unlimited.}-1]);
SetAtt(7, 4);
int024;
SetStatus(2);
int018;


{Atom: Internet}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Internet], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(598397);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(10, 0, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 65535);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 0.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Product}

sets;
BaseClass;
CreateAtom(a, Up(s), [], 1, false);
int023([Product], 12615680, 73809);
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
int001(598398);
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


{Atom: Webserver}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Webserver], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
Set(DdbRec, [>t-rr:1.]);
SetChannels(2, 2);
SetChannelRanges(1, 255, 1, 255);
int001(598399);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(17, 0, 0);
SetSize(8, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 32);
SetExprAtt(2, [Max(0, Normal(0.15, 0.1))]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~if(CompareText(Label([ok], First(c)), [yes]),2,1)~.}if(CompareText(Label([ok], First(c)), [yes]),2,1)]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetAtt(9, 0);
SetAtt(10, 1);
SetAtt(11, 0);
int024;
SetStatus(1);
int018;


{Atom: Datenbankmanagementsystem}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Datenbankmanagementsystem], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(598400);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(16, 11, 0);
SetSize(10, 5, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 16);
SetExprAtt(2, [Uniform(0.1, 0.2)]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~1~.}1]);
SetExprAtt(6, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [Label([ok], i) := [yes]]);
SetAtt(9, 0);
SetAtt(10, 1);
SetAtt(11, 0);
int024;
SetStatus(1);
int018;


{Atom: Client - End}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Client - End], 7168771, 240);
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
SetChannels(1, 0);
SetChannelRanges(1, 255, 0, 0);
int001(598401);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(3, 3, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [SetStart(1,1,(time-Att(1,i))*100)]);
SetAtt(2, 4);
int024;
SetStatus(1);
int018;


{Atom: Queue 2}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Queue 2], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(598402);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(23, 6, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 1024);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 1);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Queue 3}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Queue 3], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(598403);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(14, 6, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 1024);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 1);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: MyTable2}

sets;
AtomByName([Table], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Table'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
Set(OnInit, [Dim([refMyTable2], vbAtom, c)]);
int023([MyTable2], 32896, 32);
DefineFunction([MyTable2], [Basic], 2, 2, [cell(p(1),p(2), refMyTable2)], [Returns the value of cell(e1, e2)], [No example], 1, [Table.atm]);
DefineFunction([SetMyTable2], [Basic], 3, 3, [setcell(p(1),p(2),p(3), refMyTable2)], [Sets cell(e1, e2) to value e3], [No example], 1, [Table.atm]);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Table.ico]));
Set(DdbRec, [>t-table:1.]);
int001(598404);
SetLoc(3, 7, 0);
SetSize(5, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [MyTable2]);
SetAtt(2, 0);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 5);
SetAtt(6, 5);
SetAtt(7, 1);
SetAtt(8, 0);
int024;
SetTable(100, 1);
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
34
35
36
37
38
39
40
41
42
43
44
45
46
47
48
49
50
51
52
53
54
55
56
57
58
59
60
61
62
63
64
65
66
67
68
69
70
71
72
73
74
75
76
77
78
79
80
81
82
83
84
85
86
87
88
89
90
91
92
93
94
95
96
97
98
99
100
]);
int015(1, 149, [1
`84,26315982`
`84,26315982`
`234,0643328`
`393,2280792`
`308,9649194`
`383,8655059`
`299,602346`
`290,2397727`
`514,9415323`
`674,1052786`
`823,9064516`
`149,801173`
`524,3041056`
`440,0409457`
`440,0409457`
`430,6783724`
`430,6783724`
`290,2397727`
`702,1929985`
`430,6783724`
`851,9941716`
`421,3157991`
`486,8538123`
`271,5146261`
`543,0292522`
`1039,245638`
`271,5146261`
`805,181305`
`337,0526393`
`327,690066`
`271,5146261`
`543,0292522`
`477,491239`
`262,1520528`
`383,8655059`
`383,8655059`
`449,4035191`
`252,7894795`
`318,3274927`
`243,4269062`
`243,4269062`
`421,3157991`
`234,0643328`
`402,5906525`
`168,5263196`
`56,17543988`
`234,0643328`
`224,7017595`
`224,7017595`
`224,7017595`
`215,3391862`
`440,0409457`
`196,6140396`
`149,801173`
`252,7894795`
`159,1637463`
`308,9649194`
`449,4035191`
`449,4035191`
`102,9883065`
`411,9532258`
`262,1520528`
`159,1637463`
`159,1637463`
`205,9766129`
`262,1520528`
`318,3274927`
`290,2397727`
`355,7777859`
`102,9883065`
`205,9766129`
`159,1637463`
`102,9883065`
`102,9883065`
`102,9883065`
`102,9883065`
`318,3274927`
`262,1520528`
`430,6783724`
`56,17543988`
`159,1637463`
`215,3391862`
`440,0409457`
`168,5263196`
`56,17543988`
`393,2280792`
`224,7017595`
`56,17543988`
`290,2397727`
`168,5263196`
`234,0643328`
]);
SetStatus(0);
int018;


{Atom: Generic Monitor11}

sets;
AtomByName([Generic Monitor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Generic Monitor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Generic Monitor11], 15793151, 1120);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\graph.bmp]), [graph]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Monitor.ico]));
Set(DdbRec, [>lastrefreshmoment:14090.>newestrecord:3.>nwgrtyp:1.]);
SetChannels(1, 0);
SetChannelRanges(1, 10, 0, 0);
int001(598405);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(-2, 10, 0);
SetSize(15, 7.99999999999999, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Bargraph]);
SetAtt(2, 1024);
SetExprAtt(3, [5]);
SetAtt(4, 1);
SetAtt(5, 5.71428571428571);
SetAtt(6, 10);
SetExprAtt(7, [{.Content(In(1, c))|4. Content.}Content(In(1, c))]);
SetAtt(8, 0);
SetAtt(9, 0);
SetAtt(10, 0);
SetAtt(11, 0);
SetAtt(12, 1.2);
SetAtt(13, 0.1);
SetAtt(14, 0);
SetAtt(15, 0);
SetAtt(16, 0.571428571428571);
SetAtt(17, 0.285714285714285);
SetAtt(18, 1);
SetAtt(19, 1);
SetAtt(20, 1);
SetAtt(21, 0);
SetAtt(22, 0.285714285714285);
SetAtt(23, 5);
SetAtt(24, 8421504);
SetAtt(25, 1);
SetAtt(26, 0);
SetAtt(27, 16711680);
SetAtt(28, 0);
SetTextAtt(29, [Content]);
SetAtt(30, 1);
int024;
SetTable(10, 1);
int015(0, 0, [ 
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
int015(1, 0, [1
]);
SetStatus(0);
int018;


{Atom: Generic Monitor12}

sets;
AtomByName([Generic Monitor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Generic Monitor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Generic Monitor12], 15793151, 1120);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\graph.bmp]), [graph]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Monitor.ico]));
Set(DdbRec, [>lastrefreshmoment:14090.>newestrecord:6.>nwgrtyp:1.]);
SetChannels(1, 0);
SetChannelRanges(1, 10, 0, 0);
int001(598406);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(29, 0, 0);
SetSize(15, 7.99999999996133, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Webserver - Bargraph]);
SetAtt(2, 32);
SetExprAtt(3, [5]);
SetAtt(4, 1);
SetAtt(5, 5.71428571425809);
SetAtt(6, 10);
SetExprAtt(7, [{.Content(In(1, c))|4. Content.}Content(In(1, c))]);
SetAtt(8, 0);
SetAtt(9, 1);
SetAtt(10, 0);
SetAtt(11, 0);
SetAtt(12, 1.2);
SetAtt(13, 0.1);
SetAtt(14, 0);
SetAtt(15, 0);
SetAtt(16, 0.571428571425809);
SetAtt(17, 0.285714285712905);
SetAtt(18, 1);
SetAtt(19, 1);
SetAtt(20, 1);
SetAtt(21, 1);
SetAtt(22, 0.285714285712905);
SetAtt(23, 5);
SetAtt(24, 8421504);
SetAtt(25, 1);
SetAtt(26, 1);
SetAtt(27, 16711680);
SetAtt(28, 0);
SetTextAtt(29, [Threads]);
SetAtt(30, 0);
int024;
SetTable(10, 1);
int015(0, 0, [ 
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
int015(1, 0, [1
]);
SetStatus(0);
int018;


{Atom: Generic Monitor13}

sets;
AtomByName([Generic Monitor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Generic Monitor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Generic Monitor13], 15793151, 1120);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\graph.bmp]), [graph]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Monitor.ico]));
Set(DdbRec, [>lastrefreshmoment:14090.>newestrecord:2.>nwgrtyp:1.]);
SetChannels(1, 0);
SetChannelRanges(1, 10, 0, 0);
int001(598407);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(29, 10, 0);
SetSize(15, 7.99999999999999, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [DBMS - Bargraph]);
SetAtt(2, 16);
SetExprAtt(3, [5]);
SetAtt(4, 1);
SetAtt(5, 5.71428571428571);
SetAtt(6, 10);
SetExprAtt(7, [{.~1|~Content(In(1, c))~.}Content(In(1, c))]);
SetAtt(8, 0);
SetAtt(9, 1);
SetAtt(10, 0);
SetAtt(11, 0);
SetAtt(12, 1.2);
SetAtt(13, 0.1);
SetAtt(14, 0);
SetAtt(15, 0);
SetAtt(16, 0.571428571428571);
SetAtt(17, 0.285714285714285);
SetAtt(18, 1);
SetAtt(19, 1);
SetAtt(20, 1);
SetAtt(21, 1);
SetAtt(22, 0.285714285714285);
SetAtt(23, 5);
SetAtt(24, 8421504);
SetAtt(25, 1);
SetAtt(26, 1);
SetAtt(27, 16711680);
SetAtt(28, 0);
SetTextAtt(29, [Threads]);
SetAtt(30, 0);
int024;
SetTable(10, 1);
int015(0, 0, [ 
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
int015(1, 0, [1
]);
SetStatus(0);
int018;


{Atom: Generic Monitor14}

sets;
AtomByName([Generic Monitor], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Generic Monitor'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Generic Monitor14], 15793151, 1120);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\atoms\graph.bmp]), [graph]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Monitor.ico]));
Set(DdbRec, [>lastrefreshmoment:14090.>newestrecord:3.>nwgrtyp:1.]);
SetChannels(1, 0);
SetChannelRanges(1, 10, 0, 0);
int001(598408);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(10, -7, 0);
SetSize(15, 6.00000000000001, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Bargraph]);
SetAtt(2, 970.442364723112);
SetExprAtt(3, [5]);
SetAtt(4, 1);
SetAtt(5, 4.28571428571429);
SetAtt(6, 10);
SetExprAtt(7, [{.~1|~Start(1,1)~.}Start(1,1)]);
SetAtt(8, 0);
SetAtt(9, 1);
SetAtt(10, 0);
SetAtt(11, 0);
SetAtt(12, 1.2);
SetAtt(13, 0.1);
SetAtt(14, 0);
SetAtt(15, 0);
SetAtt(16, 0.428571428571429);
SetAtt(17, 0.214285714285714);
SetAtt(18, 1);
SetAtt(19, 1);
SetAtt(20, 1);
SetAtt(21, 1);
SetAtt(22, 0.214285714285714);
SetAtt(23, 5);
SetAtt(24, 8421504);
SetAtt(25, 1);
SetAtt(26, 1);
SetAtt(27, 16711680);
SetAtt(28, 0);
SetTextAtt(29, [Laufzeit (ms)]);
SetAtt(30, 0);
int024;
SetTable(10, 1);
int015(0, 0, [ 
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
int015(1, 0, [1
]);
SetStatus(0);
int018;
Up;
int014(1, 598396, 1, 598397, 0);
int014(0, 598398, 1, 598396, 0);
int014(1, 598397, 1, 598399, 0);
int014(1, 598399, 1, 598402, 0);
int014(2, 598399, 1, 598401, 0);
int014(1, 598403, 2, 598399, 0);
int014(1, 598400, 1, 598403, 0);
int014(1, 598402, 1, 598400, 0);
int014(0, 598403, 1, 598405, 0);
int014(0, 598399, 1, 598406, 0);
int014(0, 598400, 1, 598407, 0);
int014(0, 598394, 1, 598408, 0);
int006(0, 598396, 1, 0, 0);
int006(0, 598405, 0, 0, 0);
int006(0, 598406, 0, 0, 0);
int006(0, 598407, 0, 0, 0);
int006(0, 598408, 0, 0, 0);


{Experiment settings}

int034;
int007;
