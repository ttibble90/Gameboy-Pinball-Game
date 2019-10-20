INCLUDE "hardware.inc"
SECTION "Game Window", ROM0

swapWindows::
    ld a, [rSCY]
    cp $00
    jr nz, .toTop 
.toBot
    ld a, 114
    ld [rSCY], a
    jr .windowSwapRet
.toTop
    xor a ; ld a, 0
    ld [rSCY], a
.windowSwapRet
    ret