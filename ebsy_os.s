; ////////////////////////////////////
; // SOURCE FILE   ebsy_os.s          //
; ////////////////////////////////////
  
;/**************************************************************************
; *  Eingebettete Betriebssystem    (EBSy)                                 *                                                                                                  *
; **************************************************************************
; *  PROJECT       Project1                                                *
; *  MODULE        ebsy_os.s                                               *
; *  REVISION      1.0                                                     *
; *  LAST AUTHOR                                                           *
; *  LAST MODIFIED                                                         *
; *  RESPONSIBLE   DLINDLEIN OWALTER                                       *
; **************************************************************************
; *  PURPOSE:                                                              *
; *     arg - R0 next stack pointer                                        *
; *     ret - R0 last stack pointer                                        *
; **************************************************************************
; *  REMARKS:                                                              *
; *   <none>                                                               *
; *                                                                        *
; **************************************************************************
; *  CHANGE HISTORY:                                                       *
; *  Revision   Date          Author      Description                      *
; *                                                                        *
; *                                                                        *
; *************************************************************************/
  

  AREA  DELAY, CODE, READONLY    

  THUMB


switchContext FUNCTION  ; start of function 

    EXPORT switchContext 

    PUSH {R5,R6,R7,R8,R9,R10,R11,R12,LR}           ; store registers to old stack

    
    MOV SP R1  ;swap stackpointer
    MOV R0 SP
    MOV R1 R0

    POP {R5,R6,R7,R8,R9,R10,R11,R12,LR} ; load register from new stack
    BX  LR

ENDFUNC  ; end of function
END