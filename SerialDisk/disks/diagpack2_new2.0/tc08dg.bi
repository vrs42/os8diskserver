$JOB	/	Batch Stream  "TC08.BI"
/
/	Makes a  OS-8 Diagnostic DECtape with TC08 monitor
/
/	This Batch Stream may be run with either TD8E or TC08
/	hardware if the proper SET HANDLER command is given prior
/	to submission.
/
$MSG	***	MOUNT FORMATTED DECTAPE ON DRIVE 0 ... WRITE ENABLED	***
.ASSIGN DTA0 OUT
.ASSIGN SYS IN
.R PIP
*OUT:<IN:TC08.SY/Y/Z/O
.R FOTP
*OUT:<IN:ABSLDR.SV
*OUT:<IN:CCL.SV
*OUT:<IN:DIRECT.SV
*OUT:<IN:PIP.SV
*OUT:<IN:FOTP.SV
*OUT:<IN:SET.SV
*OUT:<IN:FUTIL.SV
*OUT:<IN:BOOT.SV
*OUT:<IN:RKBOOT.SV
*OUT:<IN:RXCOPY.SV
*OUT:<IN:RXREAD.SV
*OUT:<IN:RKUTIL.SV
*OUT:<IN:RKCOPY.SV
*OUT:<IN:RKFRMT.SV
*OUT:<IN:DTCOPY.SV
*OUT:<IN:TDCOPY.SV
*OUT:<IN:DTFRMT.SV
*OUT:<IN:TDFRMT.SV
*OUT:<IN:DHTDA?.DG
*OUT:<IN:TCBASX.DG
*OUT:<IN:TCRANX.DG
*OUT:<IN:TYPSET.DG
$END
