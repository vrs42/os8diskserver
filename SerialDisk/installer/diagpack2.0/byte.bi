$JOB	/	Batch Stream  "BYTE.BI"
/
/
/	Creates a Bare Bones Btye Mode Floppy System
/
/
$MSG	***  Mount New BYTE MODE Floppy Diskette in Drive 0  ***
.SET HANDLER FLOP=BYTE
.R PIP
*RXB0:<BYTE.SY/Y/Z/O
.R RXFIX
.R FOTP
*RXB0:<ABSLDR.SV
*RXB0:<CCL.SV
*RXB0:<DIRECT.SV
*RXB0:<PIP.SV
*RXB0:<FOTP.SV
*RXB0:<SET.SV
*RXB0:<RXCOPY.SV
*RXB0:<RXFIX.SV
*RXB0:<BOOT.SV
.RUN SYS BUILDR
LO RKB0:BAT.BH
IN BAT
LO RKB0:KL8E.BH
IN KL8E
LO RKB0:LPSV.BH
IN LPSV
LO RKB0:RK8ENS.BH
IN RKA0-1,RKB0-1
LO RKB0:RXNS.BH
IN RXA0-1
LO RKB0:RXBNS.BH
IN BYTE,RXB0-1
LO RKB0:RXBSY1.BH
IN RX8,SYS
DSK=SYS
END
.SA RXB0:BUILD.SV
.SET HANDLER BYTE=FLOP
$END
