.MACRO THUMB_FUNC_START name
.ALIGN 2, 0
.GLOBAL \name
.THUMB
.THUMB_FUNC
.TYPE \name, function
.ENDM


.MACRO THUMB_FUNC_END name
.SIZE \name, .-\name
.ENDM
