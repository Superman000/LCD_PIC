opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F1937
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
indf1	equ	1
pc	equ	2
pcl	equ	2
status	equ	3
fsr0l	equ	4
fsr0h	equ	5
fsr1l	equ	6
fsr1h	equ	7
bsr	equ	8
wreg	equ	9
intcon	equ	11
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_initialize_LCD
	FNCALL	_main,_character_LCD
	FNCALL	_main,_second_Line
	FNCALL	_main,_shift
	FNCALL	_main,_clear_LCD
	FNCALL	_clear_LCD,_command_LCD
	FNCALL	_shift,_command_LCD
	FNCALL	_second_Line,_command_LCD
	FNCALL	_character_LCD,_command_LCD
	FNCALL	_initialize_LCD,_toggle_E
	FNCALL	_initialize_LCD,_command_LCD
	FNCALL	_command_LCD,_toggle_E
	FNROOT	_main
	global	_PORTC
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:
_PORTC	set	14
	global	_RB0
_RB0	set	104
	global	_RB1
_RB1	set	105
	global	_RB2
_RB2	set	106
	global	_RB6
_RB6	set	110
	global	_RB7
_RB7	set	111
	global	_RC3
_RC3	set	115
	global	_RD2
_RD2	set	122
	global	_RD3
_RD3	set	123
	global	_TRISB
_TRISB	set	141
	global	_TRISC
_TRISC	set	142
	global	_TRISD
_TRISD	set	143
	global	_ANSELB
_ANSELB	set	397
	global	_ANSELD
_ANSELD	set	399
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
	global    __stringtab
__stringtab:
	retlw	0
psect	strings
	
STR_2:	
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	52	;'4'
	retlw	57	;'9'
	retlw	50	;'2'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	52	;'4'
	retlw	32	;' '
	retlw	38	;'&'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	56	;'8'
	retlw	48	;'0'
	retlw	55	;'7'
	retlw	57	;'9'
	retlw	54	;'6'
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_1:	
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	73	;'I'
	retlw	73	;'I'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	50	;'2'
	retlw	49	;'1'
	retlw	0
psect	strings
	file	"REII321_Prak2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
movlb 0
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_initialize_LCD
?_initialize_LCD:	; 0 bytes @ 0x0
	global	?_character_LCD
?_character_LCD:	; 0 bytes @ 0x0
	global	?_second_Line
?_second_Line:	; 0 bytes @ 0x0
	global	?_clear_LCD
?_clear_LCD:	; 0 bytes @ 0x0
	global	?_toggle_E
?_toggle_E:	; 0 bytes @ 0x0
	global	??_toggle_E
??_toggle_E:	; 0 bytes @ 0x0
	global	?_command_LCD
?_command_LCD:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	??_command_LCD
??_command_LCD:	; 0 bytes @ 0x1
	ds	3
	global	command_LCD@b
command_LCD@b:	; 1 bytes @ 0x4
	ds	1
	global	??_initialize_LCD
??_initialize_LCD:	; 0 bytes @ 0x5
	global	??_character_LCD
??_character_LCD:	; 0 bytes @ 0x5
	global	??_second_Line
??_second_Line:	; 0 bytes @ 0x5
	global	?_shift
?_shift:	; 0 bytes @ 0x5
	global	??_clear_LCD
??_clear_LCD:	; 0 bytes @ 0x5
	global	shift@command
shift@command:	; 2 bytes @ 0x5
	ds	1
	global	character_LCD@c
character_LCD@c:	; 1 bytes @ 0x6
	ds	1
	global	??_shift
??_shift:	; 0 bytes @ 0x7
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	3
;;Data sizes: Strings 29, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      10
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK2           80      0       0
;; BANK3           80      0       0
;; BANK4           80      0       0
;; BANK5           80      0       0
;; BANK6           16      0       0

;;
;; Pointer list with targets:

;; character_LCD@c	PTR const unsigned char  size(1) Largest target is 20
;;		 -> STR_2(CODE[20]), STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_initialize_LCD
;;   _main->_character_LCD
;;   _main->_shift
;;   _main->_clear_LCD
;;   _clear_LCD->_command_LCD
;;   _shift->_command_LCD
;;   _second_Line->_command_LCD
;;   _character_LCD->_command_LCD
;;   _initialize_LCD->_command_LCD
;;   _command_LCD->_toggle_E
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK4
;;
;;   None.
;;
;; Critical Paths under _main in BANK5
;;
;;   None.
;;
;; Critical Paths under _main in BANK6
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0     195
;;                                              7 COMMON     3     3      0
;;                     _initialize_LCD
;;                      _character_LCD
;;                        _second_Line
;;                              _shift
;;                          _clear_LCD
;; ---------------------------------------------------------------------------------
;; (1) _clear_LCD                                            2     2      0      30
;;                                              5 COMMON     2     2      0
;;                        _command_LCD
;; ---------------------------------------------------------------------------------
;; (1) _shift                                                2     0      2      45
;;                                              5 COMMON     2     0      2
;;                        _command_LCD
;; ---------------------------------------------------------------------------------
;; (1) _second_Line                                          0     0      0      30
;;                        _command_LCD
;; ---------------------------------------------------------------------------------
;; (1) _character_LCD                                        2     2      0      60
;;                                              5 COMMON     2     2      0
;;                        _command_LCD
;; ---------------------------------------------------------------------------------
;; (1) _initialize_LCD                                       2     2      0      30
;;                                              5 COMMON     2     2      0
;;                           _toggle_E
;;                        _command_LCD
;; ---------------------------------------------------------------------------------
;; (2) _command_LCD                                          4     4      0      30
;;                                              1 COMMON     4     4      0
;;                           _toggle_E
;; ---------------------------------------------------------------------------------
;; (3) _toggle_E                                             1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _initialize_LCD
;;     _toggle_E
;;     _command_LCD
;;       _toggle_E
;;   _character_LCD
;;     _command_LCD
;;       _toggle_E
;;   _second_Line
;;     _command_LCD
;;       _toggle_E
;;   _shift
;;     _command_LCD
;;       _toggle_E
;;   _clear_LCD
;;     _command_LCD
;;       _toggle_E
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BIGRAM             1F0      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;BITCOMMON            E      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;COMMON               E      A       A       2       71.4%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR2              0      0       0       3        0.0%
;;SFR2                 0      0       0       3        0.0%
;;STACK                0      0       3       3        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;ABS                  0      0       0       4        0.0%
;;BITBANK0            50      0       0       5        0.0%
;;BITSFR4              0      0       0       5        0.0%
;;SFR4                 0      0       0       5        0.0%
;;BANK0               50      0       0       6        0.0%
;;BITSFR5              0      0       0       6        0.0%
;;SFR5                 0      0       0       6        0.0%
;;BITBANK1            50      0       0       7        0.0%
;;BITSFR6              0      0       0       7        0.0%
;;SFR6                 0      0       0       7        0.0%
;;BANK1               50      0       0       8        0.0%
;;BITSFR7              0      0       0       8        0.0%
;;SFR7                 0      0       0       8        0.0%
;;BITBANK2            50      0       0       9        0.0%
;;BITSFR8              0      0       0       9        0.0%
;;SFR8                 0      0       0       9        0.0%
;;BANK2               50      0       0      10        0.0%
;;BITSFR9              0      0       0      10        0.0%
;;SFR9                 0      0       0      10        0.0%
;;BITBANK3            50      0       0      11        0.0%
;;BITSFR10             0      0       0      11        0.0%
;;SFR10                0      0       0      11        0.0%
;;BANK3               50      0       0      12        0.0%
;;BITSFR11             0      0       0      12        0.0%
;;SFR11                0      0       0      12        0.0%
;;BITBANK4            50      0       0      13        0.0%
;;BITSFR12             0      0       0      13        0.0%
;;SFR12                0      0       0      13        0.0%
;;BANK4               50      0       0      14        0.0%
;;BITSFR13             0      0       0      14        0.0%
;;SFR13                0      0       0      14        0.0%
;;BITBANK5            50      0       0      15        0.0%
;;BITSFR14             0      0       0      15        0.0%
;;SFR14                0      0       0      15        0.0%
;;BANK5               50      0       0      16        0.0%
;;BITSFR15             0      0       0      16        0.0%
;;SFR15                0      0       0      16        0.0%
;;BITBANK6            10      0       0      17        0.0%
;;BITSFR16             0      0       0      17        0.0%
;;SFR16                0      0       0      17        0.0%
;;BANK6               10      0       0      18        0.0%
;;BITSFR17             0      0       0      18        0.0%
;;SFR17                0      0       0      18        0.0%
;;BITSFR18             0      0       0      19        0.0%
;;SFR18                0      0       0      19        0.0%
;;DATA                 0      0       0      19        0.0%
;;BITSFR19             0      0       0      20        0.0%
;;SFR19                0      0       0      20        0.0%
;;BITSFR20             0      0       0      21        0.0%
;;SFR20                0      0       0      21        0.0%
;;BITSFR21             0      0       0      22        0.0%
;;SFR21                0      0       0      22        0.0%
;;BITSFR22             0      0       0      23        0.0%
;;SFR22                0      0       0      23        0.0%
;;BITSFR23             0      0       0      24        0.0%
;;SFR23                0      0       0      24        0.0%
;;BITSFR24             0      0       0      25        0.0%
;;SFR24                0      0       0      25        0.0%
;;BITSFR25             0      0       0      26        0.0%
;;SFR25                0      0       0      26        0.0%
;;BITSFR26             0      0       0      27        0.0%
;;SFR26                0      0       0      27        0.0%
;;BITSFR27             0      0       0      28        0.0%
;;SFR27                0      0       0      28        0.0%
;;BITSFR28             0      0       0      29        0.0%
;;SFR28                0      0       0      29        0.0%
;;BITSFR29             0      0       0      30        0.0%
;;SFR29                0      0       0      30        0.0%
;;BITSFR30             0      0       0      31        0.0%
;;SFR30                0      0       0      31        0.0%
;;BITSFR31             0      0       0      32        0.0%
;;SFR31                0      0       0      32        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0
;;      Totals:         3       0       0       0       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initialize_LCD
;;		_character_LCD
;;		_second_Line
;;		_shift
;;		_clear_LCD
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Main.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 13
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	7
	
l5298:	
;Main.c: 7: ANSELD = 0x00;
	movlb 3	; select bank3
	clrf	(399)^0180h	;volatile
	line	8
;Main.c: 8: TRISD = 0x00;
	movlb 1	; select bank1
	clrf	(143)^080h	;volatile
	line	9
;Main.c: 9: ANSELB = 0x00;
	movlb 3	; select bank3
	clrf	(397)^0180h	;volatile
	line	10
	
l5300:	
;Main.c: 10: TRISB = 0xFF;
	movlw	(0FFh)
	movlb 1	; select bank1
	movwf	(141)^080h	;volatile
	line	11
	
l5302:	
;Main.c: 11: TRISC = 0x00;
	clrf	(142)^080h	;volatile
	line	13
	
l5304:	
;Main.c: 13: RC3 = 0;
	movlb 0	; select bank0
	bcf	(115/8),(115)&7
	line	15
	
l5306:	
;Main.c: 15: initialize_LCD();
	fcall	_initialize_LCD
	line	17
	
l5308:	
;Main.c: 17: character_LCD ("REII 321");
	movlw	(STR_1|8000h)&0ffh
	fcall	_character_LCD
	line	19
;Main.c: 19: _delay((unsigned long)((1000)*(32000000/4000.0)));
	opt asmopt_off
movlw  41
movwf	((??_main+0)+0+2),f
movlw	110
movwf	((??_main+0)+0+1),f
	movlw	152
movwf	((??_main+0)+0),f
u2147:
	decfsz	((??_main+0)+0),f
	goto	u2147
	decfsz	((??_main+0)+0+1),f
	goto	u2147
	decfsz	((??_main+0)+0+2),f
	goto	u2147
	nop2
opt asmopt_on

	line	21
	
l5310:	
;Main.c: 21: second_Line();
	fcall	_second_Line
	line	23
	
l5312:	
;Main.c: 23: character_LCD ("21492204 & 21807965");
	movlw	(STR_2|8000h)&0ffh
	fcall	_character_LCD
	goto	l5314
	line	25
;Main.c: 25: while(1)
	
l2027:	
	line	27
	
l5314:	
;Main.c: 26: {
;Main.c: 27: if(RB0 == 1)
	movlb 0	; select bank0
	btfss	(104/8),(104)&7
	goto	u2091
	goto	u2090
u2091:
	goto	l5318
u2090:
	line	29
	
l5316:	
;Main.c: 28: {
;Main.c: 29: shift(0);
	movlw	low(0)
	movwf	(?_shift)
	movlw	high(0)
	movwf	((?_shift))+1
	fcall	_shift
	goto	l5318
	line	30
	
l2028:	
	line	32
	
l5318:	
;Main.c: 30: }
;Main.c: 32: if(RB1 == 1)
	movlb 0	; select bank0
	btfss	(105/8),(105)&7
	goto	u2101
	goto	u2100
u2101:
	goto	l5322
u2100:
	line	34
	
l5320:	
;Main.c: 33: {
;Main.c: 34: shift(2);
	movlw	low(02h)
	movwf	(?_shift)
	movlw	high(02h)
	movwf	((?_shift))+1
	fcall	_shift
	goto	l5322
	line	35
	
l2029:	
	line	37
	
l5322:	
;Main.c: 35: }
;Main.c: 37: if(RB2 == 1)
	movlb 0	; select bank0
	btfss	(106/8),(106)&7
	goto	u2111
	goto	u2110
u2111:
	goto	l5326
u2110:
	line	38
	
l5324:	
;Main.c: 38: clear_LCD();
	fcall	_clear_LCD
	goto	l5326
	
l2030:	
	line	40
	
l5326:	
;Main.c: 40: if(RB6 == 1)
	movlb 0	; select bank0
	btfss	(110/8),(110)&7
	goto	u2121
	goto	u2120
u2121:
	goto	l5330
u2120:
	line	42
	
l5328:	
;Main.c: 41: {
;Main.c: 42: shift(3);
	movlw	low(03h)
	movwf	(?_shift)
	movlw	high(03h)
	movwf	((?_shift))+1
	fcall	_shift
	goto	l5330
	line	43
	
l2031:	
	line	45
	
l5330:	
;Main.c: 43: }
;Main.c: 45: if(RB7 == 1)
	movlb 0	; select bank0
	btfss	(111/8),(111)&7
	goto	u2131
	goto	u2130
u2131:
	goto	l5334
u2130:
	line	47
	
l5332:	
;Main.c: 46: {
;Main.c: 47: shift(1);
	movlw	low(01h)
	movwf	(?_shift)
	movlw	high(01h)
	movwf	((?_shift))+1
	fcall	_shift
	goto	l5334
	line	48
	
l2032:	
	line	50
	
l5334:	
;Main.c: 48: }
;Main.c: 50: RC3 = 1;
	movlb 0	; select bank0
	bsf	(115/8),(115)&7
	goto	l5314
	line	51
	
l2033:	
	line	25
	goto	l5314
	
l2034:	
	line	52
	
l2035:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_clear_LCD
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:

;; *************** function _clear_LCD *****************
;; Defined at:
;;		line 28 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_command_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text133
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
	line	28
	global	__size_of_clear_LCD
	__size_of_clear_LCD	equ	__end_of_clear_LCD-_clear_LCD
	
_clear_LCD:	
	opt	stack 13
; Regs used in _clear_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l5292:	
;Lcd.c: 29: RD2 = 0;
	movlb 0	; select bank0
	bcf	(122/8),(122)&7
	line	31
	
l5294:	
;Lcd.c: 31: command_LCD (0x1);
	movlw	(01h)
	fcall	_command_LCD
	line	32
	
l5296:	
;Lcd.c: 32: _delay((unsigned long)((2)*(32000000/4000.0)));
	opt asmopt_off
movlw	21
movwf	((??_clear_LCD+0)+0+1),f
	movlw	198
movwf	((??_clear_LCD+0)+0),f
u2157:
	decfsz	((??_clear_LCD+0)+0),f
	goto	u2157
	decfsz	((??_clear_LCD+0)+0+1),f
	goto	u2157
	clrwdt
opt asmopt_on

	line	33
	
l4062:	
	return
	opt stack 0
GLOBAL	__end_of_clear_LCD
	__end_of_clear_LCD:
;; =============== function _clear_LCD ends ============

	signat	_clear_LCD,88
	global	_shift
psect	text134,local,class=CODE,delta=2
global __ptext134
__ptext134:

;; *************** function _shift *****************
;; Defined at:
;;		line 42 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
;; Parameters:    Size  Location     Type
;;  command         2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         2       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_command_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text134
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
	line	42
	global	__size_of_shift
	__size_of_shift	equ	__end_of_shift-_shift
	
_shift:	
	opt	stack 13
; Regs used in _shift: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	43
	
l5274:	
;Lcd.c: 43: RD2 = 0;
	movlb 0	; select bank0
	bcf	(122/8),(122)&7
	line	45
;Lcd.c: 45: switch(command)
	goto	l5286
	line	47
;Lcd.c: 46: {
;Lcd.c: 47: case 0:
	
l4069:	
	line	48
	
l5276:	
;Lcd.c: 48: command_LCD (0x1C);
	movlw	(01Ch)
	fcall	_command_LCD
	line	49
;Lcd.c: 49: break;
	goto	l4074
	line	51
;Lcd.c: 51: case 1:
	
l4071:	
	line	52
	
l5278:	
;Lcd.c: 52: command_LCD (0x1B);
	movlw	(01Bh)
	fcall	_command_LCD
	line	53
;Lcd.c: 53: break;
	goto	l4074
	line	55
;Lcd.c: 55: case 2:
	
l4072:	
	line	56
	
l5280:	
;Lcd.c: 56: command_LCD (0x10);
	movlw	(010h)
	fcall	_command_LCD
	line	57
;Lcd.c: 57: break;
	goto	l4074
	line	59
;Lcd.c: 59: case 3:
	
l4073:	
	line	60
	
l5282:	
;Lcd.c: 60: command_LCD (0x14);
	movlw	(014h)
	fcall	_command_LCD
	line	61
;Lcd.c: 61: break;
	goto	l4074
	line	62
	
l5284:	
;Lcd.c: 62: }
	goto	l4074
	line	45
	
l4068:	
	
l5286:	
	; Switch on 2 bytes has been partitioned into a top level switch of size 1, and 1 sub-switches
; Switch size 1, requested type "space"
; Number of cases is 1, Range of values is 0 to 0
; switch strategies available:
; Name         Instructions Cycles
; simple_byte            4     3 (average)
; direct_byte            8     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable             5     4 (fixed)
; spacedrange            7     6 (fixed)
; locatedrange           1     3 (fixed)
;	Chosen strategy is simple_byte

	movf (shift@command+1),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5356
	goto	l4074
	opt asmopt_on
	
l5356:	
; Switch size 1, requested type "space"
; Number of cases is 4, Range of values is 0 to 3
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           13     7 (average)
; direct_byte           14     6 (fixed)
; jumptable            260     6 (fixed)
; rangetable             8     4 (fixed)
; spacedrange           13     6 (fixed)
; locatedrange           4     3 (fixed)
;	Chosen strategy is simple_byte

	movf (shift@command),w
	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l5276
	xorlw	1^0	; case 1
	skipnz
	goto	l5278
	xorlw	2^1	; case 2
	skipnz
	goto	l5280
	xorlw	3^2	; case 3
	skipnz
	goto	l5282
	goto	l4074
	opt asmopt_on

	line	62
	
l4070:	
	line	63
	
l4074:	
	return
	opt stack 0
GLOBAL	__end_of_shift
	__end_of_shift:
;; =============== function _shift ends ============

	signat	_shift,4216
	global	_second_Line
psect	text135,local,class=CODE,delta=2
global __ptext135
__ptext135:

;; *************** function _second_Line *****************
;; Defined at:
;;		line 36 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          0       0       0       0       0       0       0       0
;;      Totals:         0       0       0       0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_command_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text135
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
	line	36
	global	__size_of_second_Line
	__size_of_second_Line	equ	__end_of_second_Line-_second_Line
	
_second_Line:	
	opt	stack 13
; Regs used in _second_Line: [wreg+status,2+status,0+pclath+cstack]
	line	37
	
l5270:	
;Lcd.c: 37: RD2 = 0;
	movlb 0	; select bank0
	bcf	(122/8),(122)&7
	line	38
	
l5272:	
;Lcd.c: 38: command_LCD (0xC0);
	movlw	(0C0h)
	fcall	_command_LCD
	line	39
	
l4065:	
	return
	opt stack 0
GLOBAL	__end_of_second_Line
	__end_of_second_Line:
;; =============== function _second_Line ends ============

	signat	_second_Line,88
	global	_character_LCD
psect	text136,local,class=CODE,delta=2
global __ptext136
__ptext136:

;; *************** function _character_LCD *****************
;; Defined at:
;;		line 66 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
;; Parameters:    Size  Location     Type
;;  c               1    wreg     PTR const unsigned char 
;;		 -> STR_2(20), STR_1(9), 
;; Auto vars:     Size  Location     Type
;;  c               1    6[COMMON] PTR const unsigned char 
;;		 -> STR_2(20), STR_1(9), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_command_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text136
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
	line	66
	global	__size_of_character_LCD
	__size_of_character_LCD	equ	__end_of_character_LCD-_character_LCD
	
_character_LCD:	
	opt	stack 13
; Regs used in _character_LCD: [wreg+status,2+status,0+pclath+cstack]
;character_LCD@c stored from wreg
	movwf	(character_LCD@c)
	line	67
	
l5262:	
;Lcd.c: 67: RD2 = 1;
	movlb 0	; select bank0
	bsf	(122/8),(122)&7
	line	69
;Lcd.c: 69: while(*c)
	goto	l5268
	
l4078:	
	line	70
	
l5264:	
;Lcd.c: 70: command_LCD (*c++);
	movf	(character_LCD@c),w
	movlp	high __stringtab
	callw
	pagesel	$
	fcall	_command_LCD
	
l5266:	
	movlw	(01h)
	movwf	(??_character_LCD+0)+0
	movf	(??_character_LCD+0)+0,w
	addwf	(character_LCD@c),f
	goto	l5268
	
l4077:	
	line	69
	
l5268:	
	movf	(character_LCD@c),w
	movlp	high __stringtab
	callw
	pagesel	$
	iorlw	0
	skipz
	goto	u2081
	goto	u2080
u2081:
	goto	l5264
u2080:
	goto	l4080
	
l4079:	
	line	71
	
l4080:	
	return
	opt stack 0
GLOBAL	__end_of_character_LCD
	__end_of_character_LCD:
;; =============== function _character_LCD ends ============

	signat	_character_LCD,4216
	global	_initialize_LCD
psect	text137,local,class=CODE,delta=2
global __ptext137
__ptext137:

;; *************** function _initialize_LCD *****************
;; Defined at:
;;		line 6 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          2       0       0       0       0       0       0       0
;;      Totals:         2       0       0       0       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_toggle_E
;;		_command_LCD
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text137
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
	line	6
	global	__size_of_initialize_LCD
	__size_of_initialize_LCD	equ	__end_of_initialize_LCD-_initialize_LCD
	
_initialize_LCD:	
	opt	stack 13
; Regs used in _initialize_LCD: [wreg+status,2+status,0+pclath+cstack]
	line	7
	
l5248:	
;Lcd.c: 7: RD2 = 0;
	movlb 0	; select bank0
	bcf	(122/8),(122)&7
	line	9
	
l5250:	
;Lcd.c: 9: toggle_E();
	fcall	_toggle_E
	line	10
	
l5252:	
;Lcd.c: 10: _delay((unsigned long)((10)*(32000000/4000.0)));
	opt asmopt_off
movlw	104
movwf	((??_initialize_LCD+0)+0+1),f
	movlw	228
movwf	((??_initialize_LCD+0)+0),f
u2167:
	decfsz	((??_initialize_LCD+0)+0),f
	goto	u2167
	decfsz	((??_initialize_LCD+0)+0+1),f
	goto	u2167
	clrwdt
opt asmopt_on

	line	12
	
l5254:	
;Lcd.c: 12: command_LCD (0x28);
	movlw	(028h)
	fcall	_command_LCD
	line	13
	
l5256:	
;Lcd.c: 13: command_LCD (0x0E);
	movlw	(0Eh)
	fcall	_command_LCD
	line	14
	
l5258:	
;Lcd.c: 14: command_LCD (0x06);
	movlw	(06h)
	fcall	_command_LCD
	line	15
	
l5260:	
;Lcd.c: 15: command_LCD (0x01);
	movlw	(01h)
	fcall	_command_LCD
	line	16
	
l4056:	
	return
	opt stack 0
GLOBAL	__end_of_initialize_LCD
	__end_of_initialize_LCD:
;; =============== function _initialize_LCD ends ============

	signat	_initialize_LCD,88
	global	_command_LCD
psect	text138,local,class=CODE,delta=2
global __ptext138
__ptext138:

;; *************** function _command_LCD *****************
;; Defined at:
;;		line 19 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         1       0       0       0       0       0       0       0
;;      Temps:          3       0       0       0       0       0       0       0
;;      Totals:         4       0       0       0       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_toggle_E
;; This function is called by:
;;		_initialize_LCD
;;		_clear_LCD
;;		_second_Line
;;		_shift
;;		_character_LCD
;; This function uses a non-reentrant model
;;
psect	text138
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
	line	19
	global	__size_of_command_LCD
	__size_of_command_LCD	equ	__end_of_command_LCD-_command_LCD
	
_command_LCD:	
	opt	stack 13
; Regs used in _command_LCD: [wreg+status,2+status,0+pclath+cstack]
;command_LCD@b stored from wreg
	movwf	(command_LCD@b)
	line	20
	
l5238:	
;Lcd.c: 20: PORTC = b & 0xF0;
	movf	(command_LCD@b),w
	andlw	0F0h
	movlb 0	; select bank0
	movwf	(14)	;volatile
	line	21
	
l5240:	
;Lcd.c: 21: toggle_E();
	fcall	_toggle_E
	line	22
	
l5242:	
;Lcd.c: 22: PORTC = (b << 4) & 0xF0;
	movf	(command_LCD@b),w
	movwf	(??_command_LCD+0)+0
	movlw	(04h)-1
u2075:
	lslf	(??_command_LCD+0)+0,f
	addlw	-1
	skipz
	goto	u2075
	lslf	(??_command_LCD+0)+0,w
	andlw	0F0h
	movlb 0	; select bank0
	movwf	(14)	;volatile
	line	23
	
l5244:	
;Lcd.c: 23: toggle_E();
	fcall	_toggle_E
	line	24
	
l5246:	
;Lcd.c: 24: _delay((unsigned long)((250)*(32000000/4000.0)));
	opt asmopt_off
movlw  11
movwf	((??_command_LCD+0)+0+2),f
movlw	28
movwf	((??_command_LCD+0)+0+1),f
	movlw	99
movwf	((??_command_LCD+0)+0),f
u2177:
	decfsz	((??_command_LCD+0)+0),f
	goto	u2177
	decfsz	((??_command_LCD+0)+0+1),f
	goto	u2177
	decfsz	((??_command_LCD+0)+0+2),f
	goto	u2177
	clrwdt
opt asmopt_on

	line	25
	
l4059:	
	return
	opt stack 0
GLOBAL	__end_of_command_LCD
	__end_of_command_LCD:
;; =============== function _command_LCD ends ============

	signat	_command_LCD,4216
	global	_toggle_E
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:

;; *************** function _toggle_E *****************
;; Defined at:
;;		line 74 in file "C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK2   BANK3   BANK4   BANK5   BANK6
;;      Params:         0       0       0       0       0       0       0       0
;;      Locals:         0       0       0       0       0       0       0       0
;;      Temps:          1       0       0       0       0       0       0       0
;;      Totals:         1       0       0       0       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_initialize_LCD
;;		_command_LCD
;; This function uses a non-reentrant model
;;
psect	text139
	file	"C:\Users\Ruan\Documents\NWU\REII321 Program\Lcd.c"
	line	74
	global	__size_of_toggle_E
	__size_of_toggle_E	equ	__end_of_toggle_E-_toggle_E
	
_toggle_E:	
	opt	stack 13
; Regs used in _toggle_E: [wreg]
	line	75
	
l5232:	
;Lcd.c: 75: RD3 = 1;
	movlb 0	; select bank0
	bsf	(123/8),(123)&7
	line	76
	
l5234:	
;Lcd.c: 76: _delay((unsigned long)((1)*(32000000/4000000.0)));
		opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on
	opt asmopt_off
	nop2	;2 cycle nop
	opt asmopt_on

	line	77
	
l5236:	
;Lcd.c: 77: RD3 = 0;
	movlb 0	; select bank0
	bcf	(123/8),(123)&7
	line	78
	
l4083:	
	return
	opt stack 0
GLOBAL	__end_of_toggle_E
	__end_of_toggle_E:
;; =============== function _toggle_E ends ============

	signat	_toggle_E,88
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
