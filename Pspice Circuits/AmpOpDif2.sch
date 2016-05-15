*version 9.1 953718325
u 261
U? 4
R? 10
V? 6
C? 12
PRINT? 2
@libraries
@analysis
.AC 1 1 0
+0 100000
+1 10
+2 10G
.TRAN 0 0 0 0
+0 0ns
+1 3ns
@targets
@attributes
@translators
a 0 u 13 0 0 0 hln 100 PCBOARDS=PCB
a 0 u 13 0 0 0 hln 100 PSPICE=PSPICE
a 0 u 13 0 0 0 hln 100 XILINX=XILINX
@setup
unconnectedPins 0
connectViaLabel 0
connectViaLocalLabels 0
NoStim4ExtIFPortsWarnings 1
AutoGenStim4ExtIFPorts 1
@index
pageloc 1 0 4022 
@status
n 0 116:04:01:10:54:23;1462110863 e 
s 2832 116:04:01:10:54:27;1462110867 e 
c 116:04:01:10:54:22;1462110862
*page 1 0 256 160 ma
@ports
port 180 GND_EARTH 250 240 h
port 181 GND_EARTH 140 150 d
port 182 GND_EARTH 140 190 d
port 194 GND_EARTH 430 170 v
@parts
part 172 VDC 180 190 d
a 1 u 13 0 -6 13 hcn 100 DC=1V
a 0 sp 0 0 22 37 hln 100 PART=VDC
a 0 x 0:13 0 0 0 hln 100 PKGREF=V1
a 1 xp 9 0 19 27 hcn 100 REFDES=V1
part 171 vsin 180 150 d
a 1 u 0 0 0 0 hcn 100 VAMPL=1V
a 1 u 0 0 0 0 hcn 100 VOFF=0
a 1 u 0 0 0 0 hcn 100 AC=1V
a 0 x 0:13 0 0 0 hln 100 PKGREF=V2
a 1 xp 9 0 20 30 hcn 100 REFDES=V2
a 1 u 0 0 0 0 hcn 100 FREQ=1G
part 193 r 360 170 h
a 0 u 13 0 15 25 hln 100 VALUE=1k
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=Rload
a 0 xp 9 0 15 0 hln 100 REFDES=Rload
part 174 c 180 150 h
a 0 u 13 0 20 20 hln 100 VALUE=470n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=C1
a 0 xp 9 0 5 0 hln 100 REFDES=C1
part 173 c 180 190 h
a 0 u 13 0 20 20 hln 100 VALUE=470n
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=C2
a 0 xp 9 0 5 0 hln 100 REFDES=C2
part 244 c 270 90 h
a 0 u 13 0 25 5 hln 100 VALUE=0.5p
a 0 sp 0 0 0 10 hlb 100 PART=c
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=CK05
a 0 s 0:13 0 0 0 hln 100 GATE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=C3
a 0 xp 9 0 0 5 hln 100 REFDES=C3
part 178 r 210 150 h
a 0 u 13 0 15 20 hln 100 VALUE=220
a 0 x 0:13 0 0 0 hln 100 PKGREF=R1
a 0 xp 9 0 15 0 hln 100 REFDES=R1
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
part 179 r 210 190 h
a 0 u 13 0 15 20 hln 100 VALUE=220
a 0 x 0:13 0 0 0 hln 100 PKGREF=R2
a 0 xp 9 0 15 0 hln 100 REFDES=R2
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
part 176 r 270 120 h
a 0 u 13 0 25 5 hln 100 VALUE=440
a 0 x 0:13 0 0 0 hln 100 PKGREF=R3
a 0 xp 9 0 0 5 hln 100 REFDES=R3
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
part 175 r 250 200 d
a 0 u 13 0 35 5 hln 100 VALUE=440
a 0 x 0:13 0 0 0 hln 100 PKGREF=R4
a 0 xp 9 0 25 30 hln 100 REFDES=R4
a 0 sp 0 0 0 10 hlb 100 PART=r
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=RC05
a 0 s 0:13 0 0 0 hln 100 GATE=
part 170 opamp 250 150 h
a 0 sp 11 0 50 60 hln 100 PART=opamp
a 0 s 0:13 0 0 0 hln 100 PKGTYPE=
a 0 x 0:13 0 0 0 hln 100 PKGREF=U1
a 0 xp 9 0 14 0 hln 100 REFDES=U1
part 1 titleblk 1024 640 h
a 1 s 13 0 180 60 hcn 100 PAGETITLE=
a 1 s 13 0 350 10 hcn 100 PAGESIZE=A4
a 1 s 13 0 340 95 hrn 100 PAGECOUNT=1
a 1 s 13 0 300 95 hrn 100 PAGENO=1
@conn
w 153
a 0 up 0:33 0 0 0 hln 100 V=
s 250 200 250 190 152
a 0 up 33 0 252 195 hlt 100 V=
w 242
a 0 up 0:33 0 0 0 hln 100 V=
s 400 170 430 170 240
a 0 up 33 0 415 169 hct 100 V=
w 247
a 0 up 0:33 0 0 0 hln 100 V=
s 250 120 270 120 154
s 250 120 250 150 156
a 0 up 33 0 252 135 hlt 100 V=
s 270 90 250 90 246
s 250 90 250 120 248
w 251
a 0 up 0:33 0 0 0 hln 100 V=
s 330 120 330 170 162
a 0 up 33 0 332 145 hlt 100 V=
s 310 120 330 120 164
s 360 170 330 170 232
s 300 90 330 90 250
s 330 90 330 120 252
@junction
j 140 190
+ s 182
+ p 172 -
j 140 150
+ s 181
+ p 171 -
j 250 120
+ w 247
+ w 247
j 250 190
+ p 170 -
+ w 153
j 250 150
+ p 170 +
+ w 247
j 330 170
+ p 170 OUT
+ w 251
j 430 170
+ s 194
+ w 242
j 330 120
+ w 251
+ w 251
j 250 200
+ p 175 1
+ w 153
j 250 240
+ s 180
+ p 175 2
j 360 170
+ p 193 1
+ w 251
j 400 170
+ p 193 2
+ w 242
j 270 90
+ p 244 1
+ w 247
j 300 90
+ p 244 2
+ w 251
j 270 120
+ p 176 1
+ w 247
j 310 120
+ p 176 2
+ w 251
j 250 150
+ p 178 2
+ p 170 +
j 250 150
+ p 178 2
+ w 247
j 250 190
+ p 179 2
+ p 170 -
j 250 190
+ p 179 2
+ w 153
j 180 190
+ p 173 1
+ p 172 +
j 210 190
+ p 179 1
+ p 173 2
j 180 150
+ p 174 1
+ p 171 +
j 210 150
+ p 178 1
+ p 174 2
@attributes
a 0 s 0:13 0 0 0 hln 100 PAGETITLE=
a 0 s 0:13 0 0 0 hln 100 PAGENO=1
a 0 s 0:13 0 0 0 hln 100 PAGESIZE=A4
a 0 s 0:13 0 0 0 hln 100 PAGECOUNT=1
@graphics
