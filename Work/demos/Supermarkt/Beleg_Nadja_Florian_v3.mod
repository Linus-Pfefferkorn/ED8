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
int035([Histogram], pDir([Atoms\Histogram.atm]));
int035([MultiService], pDir([Atoms\MultiService.atm]));
int012;


{Preregister functions}

PreregisterFunction([Uhrzeit], 2, 2);
PreregisterFunction([SetUhrzeit], 3, 3);
PreregisterFunction([Kunden], 2, 2);
PreregisterFunction([SetKunden], 3, 3);
PreregisterFunction([Wartezeiten], 2, 2);
PreregisterFunction([SetWartezeiten], 3, 3);
PreregisterFunction([anzahlkunden], 0, 0);


{Atom: Uhrzeit}

sets;
AtomByName([Table], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Table'. Inheriting from BaseClass.]));
CreateAtom(a, s, [], 1, false);
Set(OnInit, [Dim([refUhrzeit], vbAtom, c)]);
int023([Uhrzeit], 32896, 32);
DefineFunction([Uhrzeit], [Basic], 2, 2, [cell(p(1),p(2), refUhrzeit)], [Returns the value of cell(e1, e2)], [No example], 1, [Table.atm]);
DefineFunction([SetUhrzeit], [Basic], 3, 3, [setcell(p(1),p(2),p(3), refUhrzeit)], [Sets cell(e1, e2) to value e3], [No example], 1, [Table.atm]);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Table.ico]));
Set(DdbRec, [>t-table:1.]);
int001(182);
SetLoc(12, 11, 0);
SetSize(6, 3, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Uhrzeit]);
SetAtt(2, 0);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 5);
SetAtt(6, 5);
SetAtt(7, 1);
SetAtt(8, 1);
int024;
SetTable(24, 1);
int015(0, 64, [ 
`Stunde`
`Anzahl`
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
]);
int015(1, 98, [`Besucheranzahl`
]);
SetStatus(0);
int018;


{Atom: Kunden}

sets;
AtomByName([Table], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Table'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
Set(OnInit, [Dim([refKunden], vbAtom, c)]);
int023([Kunden], 32896, 32);
DefineFunction([Kunden], [Basic], 2, 2, [cell(p(1),p(2), refKunden)], [Returns the value of cell(e1, e2)], [No example], 1, [Table.atm]);
DefineFunction([SetKunden], [Basic], 3, 3, [setcell(p(1),p(2),p(3), refKunden)], [Sets cell(e1, e2) to value e3], [No example], 1, [Table.atm]);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Table.ico]));
Set(DdbRec, [>t-table:1.]);
int001(183);
SetLoc(-4, 11, 0);
SetSize(6, 3, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Kunden]);
SetAtt(2, 0);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 5);
SetAtt(6, 5);
SetAtt(7, 1);
SetAtt(8, 1);
int024;
SetTable(1, 2);
int015(0, 64, [ 
`Einkaufend`
]);
int015(1, 64, [`LifeCount`
]);
int015(2, 64, [`Maximum`
]);
SetStatus(0);
int018;


{Atom: Wartezeiten}

sets;
AtomByName([Table], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Table'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
Set(OnInit, [Dim([refWartezeiten], vbAtom, c)]);
int023([Wartezeiten], 32896, 32);
DefineFunction([Wartezeiten], [Basic], 2, 2, [cell(p(1),p(2), refWartezeiten)], [Returns the value of cell(e1, e2)], [No example], 1, [Table.atm]);
DefineFunction([SetWartezeiten], [Basic], 3, 3, [setcell(p(1),p(2),p(3), refWartezeiten)], [Sets cell(e1, e2) to value e3], [No example], 1, [Table.atm]);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Table.ico]));
Set(DdbRec, [>t-table:1.]);
int001(184);
SetLoc(4, 11, 0);
SetSize(6, 3, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetTextAtt(1, [Wartezeiten]);
SetAtt(2, 0);
SetAtt(3, 1);
SetAtt(4, 1);
SetAtt(5, 5);
SetAtt(6, 5);
SetAtt(7, 1);
SetAtt(8, 1);
int024;
SetTable(4, 4);
int015(0, 64, [ 
`Alle Kassen`
`Ohne SB`
`Nur SB`
`Im Markt`
]);
int015(1, 95, [`Gesamt Zeit in s`
]);
int015(2, 78, [`Anzahl Kunden`
]);
int015(3, 97, [`Durchschnitt in s`
]);
int015(4, 127, [`Durchschnitt in min`
]);
SetStatus(0);
int018;


{Atom: Kunden Eingang}

sets;
AtomByName([Source], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Source'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kunden Eingang], 7168771, 240);
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
SetLoc(-4, 4, 0);
SetSize(6, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~if(Or(mod(time,hr(24)) < hr(7) ,mod(time, hr(24)) > hr(20)), 2, 1)~.}if(Or(mod(time,hr(24)) < hr(7) ,mod(time, hr(24)) > hr(20)), 2, 1)]);
SetExprAtt(2, [if(And(mod(time, hr(24)) > hr(12), mod(time, hr(24)) < hr(15)), Max(0,Normal(20, 15)), Max(0,Normal(45, 30)))]);
SetExprAtt(3, [{.0|10. Do Nothing.}0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [0]);
SetExprAtt(6, [{.-1|1. Unlimited.}-1]);
SetAtt(7, 4);
int024;
SetStatus(2);
int018;


{Atom: Warteschlange Fleischtheke}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Warteschlange Fleischtheke], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(186);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(22, 7, 0);
SetSize(14, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 5);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 14.8);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Warteschlange Käsetheke}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Warteschlange Käsetheke], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(187);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(38, 7, 0);
SetSize(14, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 5);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 14.8);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Fleischtheke}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Fleischtheke], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
SetLoc(22, 4, 0);
SetSize(14, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(30,Normal(60, 30))]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [SetKunden(1,1,Kunden(1,1)-1)]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 125.186843618192);
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
SetAtt(31, 424386.224000823);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Käsetheke}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Käsetheke], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
int001(189);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(38, 4, 0);
SetSize(14, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(30,Normal(60, 30))]);
SetExprAtt(2, [{.~1|~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [0]);
SetExprAtt(9, [SetKunden(1,1,Kunden(1,1)-1)]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 38.5539169964076);
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
SetAtt(31, 424336.198625434);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Kasse 1}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kasse 1], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(190);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(22, 22, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 3.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Kasse 2}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kasse 2], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(191);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(28, 22, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 3.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: SB Kasse 1}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SB Kasse 1], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(192);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(41, 22, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 3.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Ausgang normale Kassen}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Ausgang normale Kassen], 7168771, 240);
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
SetChannels(4, 0);
SetChannelRanges(1, 255, 0, 0);
int001(193);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
int013(4, 0, true, true, 0, 0, [], []);
SetLoc(22, 29, 0);
SetSize(17, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Do( SetWartezeiten(1,1,Wartezeiten(1,1) + (time-Att(1,i))),  SetWartezeiten(1,2,Wartezeiten(1,2)+1),  SetWartezeiten(1,3,Wartezeiten(1,1)/Wartezeiten(1,2)), SetWartezeiten(1,4,Wartezeiten(1,3)/60), SetWartezeiten(2,1,Wartezeiten(2,1) + (time-Att(1,i))),  SetWartezeiten(2,2,Wartezeiten(2,2)+1),  SetWartezeiten(2,3,Wartezeiten(2,1)/Wartezeiten(2,2)), SetWartezeiten(2,4,Wartezeiten(2,3)/60))]);
SetAtt(2, 4);
int024;
SetStatus(1);
int018;


{Atom: Kasse 1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kasse 1], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
int001(194);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(22, 25, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(30,Normal(50, 40))]);
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
SetAtt(14, 50.5306197250267);
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
SetAtt(31, 425326.881657266);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Kasse 2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kasse 2], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
int001(195);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(28, 25, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(30,Normal(50, 40))]);
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
SetAtt(14, 46.7384451911807);
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
SetAtt(31, 400172.684954265);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: SB Kasse 1}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SB Kasse 1], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
int001(196);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(41, 25, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(40,Normal(40, 30))]);
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
SetAtt(14, 40);
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
SetAtt(31, 418017.035827511);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Gehe zu Normalenkasse}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Gehe zu Normalenkasse], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
SetChannels(2, 2);
SetChannelRanges(1, 255, 1, 255);
int001(197);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(22, 19, 0);
SetSize(17, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetExprAtt(2, [{.~1|~if(And(mod(time, hr(24)) > hr(12), mod(time, hr(24)) < hr(15)), IndexMin(NrOC(c), if(OCReady(Count,c), Content(out(Count,c)),1e50)), IndexMin(NrOC(c), if(OCReady(Count+2,c), Content(out(Count,c)),1e50)))~.}if(And(mod(time, hr(24)) > hr(12), mod(time, hr(24)) < hr(15)), IndexMin(NrOC(c), if(OCReady(Count,c), Content(out(Count,c)),1e50)), IndexMin(NrOC(c), if(OCReady(Count+2,c), Content(out(Count,c)),1e50)))]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [SetAtt(1,time,i)]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 0);
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
SetAtt(31, 424732.817556442);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Product}

sets;
BaseClass;
CreateAtom(a, Up(s), [], 1, false);
int023([Product], 12615680, 73809);
Set(Icon(a), 
	RegisterIcon(pDir([Media\Images\Atoms\operatorpurple.bmp]), [operatorpurple]));
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
int001(198);
SetLoc(-7, 4, 0);
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


{Atom: Einkaufende Kunden}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Einkaufende Kunden], 12615680, 240);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(3, 1);
SetChannelRanges(1, 255, 1, 255);
int001(199);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
SetLoc(3, 4, 0);
SetSize(7, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 100);
SetExprAtt(3, [Do( SetAtt(1,time,i), SetKunden(1,1,Kunden(1,1)+1), if(Kunden(1,1) > Kunden(1,2),  SetKunden(1,2,Kunden(1,1))))]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, -1.4);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: SB Kasse 2}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SB Kasse 2], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(200);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(47, 22, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 3.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: SB Kasse 2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([SB Kasse 2], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
int001(201);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(47, 25, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(40,Normal(40, 30))]);
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
SetAtt(14, 65.1450372317889);
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
SetAtt(31, 412823.331949501);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Kasse 3}

sets;
AtomByName([Queue], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Queue'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kasse 3], 12615680, 1264);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\queue.bmp]), [queue]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Queue.ico]));
SetChannels(1, 1);
SetChannelRanges(1, 255, 1, 255);
int001(202);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(34, 22, 0);
SetSize(5, 2, 0);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [{.~1|~1~.}1]);
SetAtt(2, 10);
SetExprAtt(3, [0]);
SetExprAtt(4, [0]);
SetExprAtt(5, [{.content(c)|Fifo (First In First Out).}content(c)]);
SetAtt(6, 3.5);
SetExprAtt(7, [{.openallic(c)|Any inputchannel.}openallic(c)]);
SetAtt(8, 2);
int024;
SetStatus(13);
int018;


{Atom: Kasse 3}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kasse 3], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
int001(203);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(34, 25, 0);
SetSize(5, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Max(30,Normal(50, 40))]);
SetExprAtt(2, [{.~1|1. Specific channel: always send to channel ~1~.}1]);
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
SetAtt(14, 39.1177027255531);
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
SetAtt(31, 399655.311102894);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Gehe zur Theke}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Gehe zur Theke], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(204);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(22, 10, 0);
SetSize(30, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetExprAtt(2, [{.IndexMax(NrOC(c), OCReady(Count,c)*Random(100000))|4. A random open channel: choose a random channel from all the open output channels..}IndexMax(NrOC(c), OCReady(Count,c)*Random(100000))]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetTextAtt(8, []);
SetTextAtt(9, []);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 0);
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
SetAtt(31, 424386.224000823);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Abgewiesene Kunden außerhalb der Öffnungszeiten}

sets;
AtomByName([Ausgang normale Kassen], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Ausgang normale Kassen'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Abgewiesene Kunden außerhalb der Öffnungszeiten], 7168771, 240);
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
int001(205);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(-4, 8, 0);
SetSize(22, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetAtt(2, 4);
int024;
SetStatus(1);
int018;


{Atom: Ausgang SB Kassen}

sets;
AtomByName([Sink], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Sink'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Ausgang SB Kassen], 7168771, 240);
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
int001(206);
int013(1, 0, true, true, 0, 0, [], []);
int013(2, 0, true, true, 0, 0, [], []);
int013(3, 0, true, true, 0, 0, [], []);
SetLoc(41, 29, 0);
SetSize(11, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [Do( SetWartezeiten(1,1,Wartezeiten(1,1) + (time-Att(1,i))),  SetWartezeiten(1,2,Wartezeiten(1,2)+1),  SetWartezeiten(1,3,Wartezeiten(1,1)/Wartezeiten(1,2)), SetWartezeiten(1,4,Wartezeiten(1,3)/60), SetWartezeiten(3,1,Wartezeiten(3,1) + (time-Att(1,i))),  SetWartezeiten(3,2,Wartezeiten(3,2)+1),  SetWartezeiten(3,3,Wartezeiten(3,1)/Wartezeiten(3,2)), SetWartezeiten(3,4,Wartezeiten(3,3)/60))]);
SetAtt(2, 4);
int024;
SetStatus(0);
int018;


{Atom: Gehe zu SB Kasse}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Gehe zu SB Kasse], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(207);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(41, 19, 0);
SetSize(11, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetExprAtt(2, [{.IndexMin(NrOC(c), if(OCReady(Count,c), Content(out(Count,c)),1e50))|14: Smallest queue: Send to the channel connected to the atom with the smallest queue.}IndexMin(NrOC(c), if(OCReady(Count,c), Content(out(Count,c)),1e50))]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [SetAtt(1,time,i)]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 0);
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
SetAtt(31, 418017.035827511);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Kassenauswahl}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kassenauswahl], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(208);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(22, 14, 0);
SetSize(30, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetExprAtt(2, [{.Bernoulli(~1,~2,~3)|5. By percentage: ~80~% of products go to channel ~1~, the remaining percentage go to channel ~2~.}Bernoulli(80,1,2)]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [Do( SetWartezeiten(4,1,Wartezeiten(4,1) + (time-Att(1,i))),  SetWartezeiten(4,2,Wartezeiten(4,2)+1),  SetWartezeiten(4,3,Wartezeiten(4,1)/Wartezeiten(4,2)), SetWartezeiten(4,4,Wartezeiten(4,3)/60), SetKunden(1,1,Kunden(1,1)-1), SetUhrzeit(Round(mod(time,hr(24))/3600),1,Uhrzeit(Round(mod(time,hr(24))/3600),1) + 1))]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 0);
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
SetAtt(31, 418017.035827511);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;


{Atom: Ereignis Kunden}

sets;
AtomByName([MultiService], Main);
if(not(AtomExists), Error([Cannot find mother atom 'MultiService'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Ereignis Kunden], 0, 232);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\MultiServer.ico]));
SetChannels(1, 2);
SetChannelRanges(1, 255, 1, 255);
int001(209);
int013(1, 0, true, false, 0, 0, [], []);
int013(2, 0, true, false, 0, 0, [], []);
SetLoc(11, 4, 0);
SetSize(7, 2, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 12);
SetExprAtt(2, [Min(360,NegExp(240))]);
SetAtt(3, 0);
SetAtt(4, 0);
SetExprAtt(5, [{.~1|~If(Content(AtomByName([Gehe zur Theke], Model)) > 0 , 2, Bernoulli(20,1,2))  ~.}If(Content(AtomByName([Gehe zur Theke], Model)) > 0 , 2, Bernoulli(20,1,2))  ]);
SetExprAtt(6, [{.openallic(c)|1. Any inputchannel.}openallic(c)]);
SetExprAtt(7, [0]);
SetExprAtt(8, [0]);
SetAtt(9, 0);
SetAtt(10, 1);
SetAtt(11, 0);
int024;
SetStatus(1);
int018;


{Atom: anzahlkunden}

sets;
AtomByName([Histogram], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Histogram'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
Set(OnInit, [Histogram_Init(c)]);
int023([anzahlkunden], 15793151, 48);
DefineFunction([anzahlkunden], [Basic], 0, 0, [vtp(267966908)], [An atom reference to a histogram], [anzahlkunden], 1, [Histogram.atm]);
Set(Icon(a), 
	RegisterIcon(pDir([media\images\default.jpg]), [default.jpg]));
SetMaterial(
	RegisterMaterial([Default], 8421504, 8421504, 3289650, 0, 0.100000001490116, 0, false, false, 1, 0), 1, a);
Set(Version(a), 0);
SetTreeIcon(pDir([Media\Icons\Histogram.ico]));
Set(DdbRec, [>t-who:20.]);
SetChannels(1, 0);
SetChannelRanges(1, 1, 0, 0);
int001(210);
int013(1, 0, true, true, 0, 0, [], []);
SetLoc(-12, 17, 0);
SetSize(32, 17, 1);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetAtt(1, 0);
SetAtt(2, 20);
SetAtt(3, 0);
SetTextAtt(4, [Anzahl Kunden]);
SetAtt(5, 0);
SetAtt(6, 0);
SetAtt(7, 1.41666666666667);
SetAtt(8, 0.708333333333333);
SetAtt(9, 0.708333333333333);
SetAtt(10, 0.708333333333333);
SetAtt(11, 1);
SetAtt(12, 1);
SetAtt(13, 0);
SetAtt(14, 1);
SetAtt(15, 0);
SetAtt(16, 5);
SetAtt(17, 1);
SetAtt(18, 8421504);
SetAtt(19, 0);
SetAtt(20, 1.25);
SetAtt(21, 0.25);
SetAtt(22, 14.1666666666667);
SetAtt(23, 0);
SetAtt(24, 0);
SetAtt(25, 1);
SetAtt(26, 0);
SetAtt(27, 0);
SetAtt(28, 0.2);
SetAtt(29, 1);
SetAtt(30, 0);
SetAtt(31, 0);
SetAtt(32, 0);
SetAtt(33, 0);
SetAtt(34, 0);
SetAtt(35, 1);
SetAtt(36, 0);
SetAtt(37, 0.2);
SetAtt(38, 1);
SetExprAtt(39, [{.do(      Histogram_SetNumberOfSegments(GuiAtom, ceil((~2 - ~1 + 1) / ~3)),      xSize(GuiAtom) := 2 + Histogram_GetNumberOfSegments(GuiAtom) * (Histogram_GetSegmentInBetweenSpace(GuiAtom) + Histogram_GetSegmentWidth(GuiAtom)),      SetTable(ceil((~2 - ~1 + 1) / ~3), nCols(GuiAtom), GuiAtom),       GuiControl([ebClassSize], GuiSet([Text], String(~3))),      GuiControl([ebStartValue], GuiSet([Text], String(~1))),      Repeat(        ceil((~2 - ~1 + 1) / ~3),         do(          if(            Count > 1,             GuiControl([tblSegmentTable], GuiTableInsertRow(Count))          ),           Histogram_SetSegmentName(GuiAtom, Count, string(~1 + Count - 1 + (Count - 1) * (~3 - 1))),           GuiControl([tblSegmentTable], GuiSet([Cells], Count, 0, String(Count))),           GuiControl([tblSegmentTable], GuiSet([Cells], Count, 1, Cell(Count, HISTOGRAM_COLUMNNUMBER_SEGMENTNAME , GuiAtom, 2)))        )      )    )|1. Numbers: from ~1~ to ~100~ with class size ~5~..}do(      Histogram_SetNumberOfSegments(GuiAtom, ceil((100 - 1 + 1) / 5)),      xSize(GuiAtom) := 2 + Histogram_GetNumberOfSegments(GuiAtom) * (Histogram_GetSegmentInBetweenSpace(GuiAtom) + Histogram_GetSegmentWidth(GuiAtom)),      SetTable(ceil((100 - 1 + 1) / 5), nCols(GuiAtom), GuiAtom),       GuiControl([ebClassSize], GuiSet([Text], String(5))),      GuiControl([ebStartValue], GuiSet([Text], String(1))),      Repeat(        ceil((100 - 1 + 1) / 5),         do(          if(            Count > 1,             GuiControl([tblSegmentTable], GuiTableInsertRow(Count))          ),           Histogram_SetSegmentName(GuiAtom, Count, string(1 + Count - 1 + (Count - 1) * (5 - 1))),           GuiControl([tblSegmentTable], GuiSet([Cells], Count, 0, String(Count))),           GuiControl([tblSegmentTable], GuiSet([Cells], Count, 1, Cell(Count, HISTOGRAM_COLUMNNUMBER_SEGMENTNAME , GuiAtom, 2)))        )      )    )]);
SetExprAtt(40, [{.0|0. None selected.}0]);
SetExprAtt(41, [{.~1|~Kunden(1,1)~.}Kunden(1,1)]);
SetAtt(42, 1);
SetExprAtt(43, [if(Or(mod(time,hr(24)) < hr(7) ,mod(time, hr(24)) > hr(20)), 39600, 10)]);
SetAtt(44, 1);
SetAtt(45, 5);
SetTextAtt(46, [anzahlkunden]);
SetAtt(47, 1);
SetAtt(48, 1);
SetExprAtt(49, [Set( OnInit, Concat(  [  do(   RegisterFunction(       ],    sbo, TextAtt([AliasName]), sbc,    [,    [Basic],    2,    2,    Concat([cell(p(1),p(2),vtp(],string(ptv),[))]),    [Returns table value e1, e2],    [No example],    True, [Table]   ),   RegisterFunction(    ],    sbo, Concat([Set], TextAtt([AliasName])), sbc,    [,    [Basic],    3,    3,    Concat([setcell(p(1),p(2),p(3),vtp(],string(ptv),[))]),    [Sets table e1, e2 to e3],    [No example],    True, [Table]   ),   RegisterFunction(    ],    sbo, Concat([Ref], TextAtt([AliasName])), sbc,    [,    [Basic],    0,    0,    Concat([vtp(], String(ptv),[)]),    [Reference to the table with an alias],    [No example],    True, [Table]   )  )  ] ))]);
SetAtt(50, 1);
SetAtt(51, 1);
SetAtt(52, 0);
int024;
SetTable(20, 4);
int015(0, 64, [ 
1
3
4
5
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
]);
int015(2, 112, [`SegmentCumulativeScore`
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
int015(3, 89, [`SegmentColor`
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
int015(4, 64, [`SegmentName`
1
6
11
16
21
26
31
36
41
46
51
56
61
66
71
76
81
86
91
96
]);
SetStatus(0);
int018;


{Atom: Kassenauswahl 2}

sets;
AtomByName([Server], Main);
if(not(AtomExists), Error([Cannot find mother atom 'Server'. Inheriting from BaseClass.]));
CreateAtom(a, Up(s), [], 1, false);
int023([Kassenauswahl 2], 292315, 263408);
Set(Icon(a), 
	RegisterIcon(IconsDir([bmp\atoms\server.bmp]), [server]));
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
int001(211);
int013(1, 0, true, false, 0, 0, [], []);
SetLoc(22, 16, 0);
SetSize(30, 2, 2);
LockPosition(false);
LockSize(false);
DisableIconRotation(false);
SetProductCode([]);
SetExprAtt(1, [0]);
SetExprAtt(2, [{.~1|1. Specific channel: always send to channel ~1~.}1]);
SetExprAtt(3, [1]);
SetAtt(4, 1);
SetAtt(5, 1);
SetAtt(6, 1);
SetExprAtt(7, [{.~1|~0~.}0]);
SetExprAtt(8, [Do( SetWartezeiten(4,1,Wartezeiten(4,1) + (time-Att(1,i))),  SetWartezeiten(4,2,Wartezeiten(4,2)+1),  SetWartezeiten(4,3,Wartezeiten(4,1)/Wartezeiten(4,2)), SetWartezeiten(4,4,Wartezeiten(4,3)/60), SetKunden(1,1,Kunden(1,1)-1), SetUhrzeit(Round(mod(time,hr(24))/3600),1,Uhrzeit(Round(mod(time,hr(24))/3600),1) + 1))]);
SetExprAtt(9, [0]);
SetExprAtt(10, [0]);
SetExprAtt(11, [0]);
SetAtt(12, 0);
SetExprAtt(13, [If( Time > 0, Concat( [Util: ], String ( *( 100, /( -( TotalBusy, Max( 0, EndBusy - Time)), Time)), 0, 1), [ %]), [Util: 0 %])]);
SetAtt(14, 0);
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
SetAtt(31, 424686.666920644);
SetExprAtt(32, [0]);
SetExprAtt(33, [0]);
SetExprAtt(34, [0]);
int024;
SetStatus(1);
int018;
Up;
int014(1, 185, 1, 199, 0);
int014(0, 198, 1, 185, 0);
int014(2, 185, 1, 205, 0);
int014(1, 186, 1, 188, 0);
int014(2, 204, 1, 186, 0);
int014(1, 187, 1, 189, 0);
int014(1, 204, 1, 187, 0);
int014(1, 188, 2, 199, 0);
int014(1, 189, 3, 199, 0);
int014(1, 190, 1, 194, 0);
int014(1, 197, 1, 190, 0);
int014(1, 191, 1, 195, 0);
int014(2, 197, 1, 191, 0);
int014(1, 192, 1, 196, 0);
int014(1, 207, 1, 192, 0);
int014(1, 203, 1, 193, 0);
int014(1, 195, 2, 193, 0);
int014(1, 194, 3, 193, 0);
int014(1, 196, 1, 206, 0);
int014(1, 208, 1, 197, 0);
int014(1, 211, 2, 197, 0);
int014(1, 199, 1, 209, 0);
int014(1, 200, 1, 201, 0);
int014(2, 207, 1, 200, 0);
int014(1, 201, 2, 206, 0);
int014(1, 202, 1, 203, 0);
int014(1, 209, 1, 204, 0);
int014(2, 208, 1, 207, 0);
int014(2, 209, 1, 211, 0);
int014(0, 183, 1, 210, 0);
int006(0, 185, 1, 0, 0);
int006(0, 210, 0, 0, 0);


{Experiment settings}

int034;
int007;
