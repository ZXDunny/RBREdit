       ld hl,  22528            ; Address the ATTRs
       ld de,  31500            ; Table Address
       ld bc,  $053B            ; Set B = Wall Colour, C = Road Colour (SMC)

       push    de               ; need this - WHY?
       and     a                ; clear flags 

get_next:
       ld      a, (de)          ; get the current bitmap strip
       inc     de               ; Address the next strip
       scf                      ; set the carry flag (will rotate in to prevent a zero byte)

get_bit:
       rla                      ; rotate bit 7 into carry
       jr      z, byte_done     ; if we rotated out to zero then the byte is done
       jr      nc, bit_road     ; and if bit 7 (now carry) was 0 then it's a road ->
       ld      (hl), c          ; else we write a wall
       jr      next_bit         ; and jump for the next bit setup

bit_road:
       ld      (hl), b          ; write a road block

next_bit:
       inc     hl               ; address the next ATTR
       and     a                ; clear flags
       jr      get_bit          ; Loop round to get the next bit

byte_done:
       dec     hl
       ld      a, h             ; have we reached the end of the screen?
       cp      91               
       jr      c, get_next      ; if not, then get the next byte

exit:  
       jp      27201            ; and exit



-----------------------------------------------------------------------

       ld hl, 22528
       ld de, 31500
       ld bc, $053B    ; Set B = Wall Colour, C = Road Colour (SMC)

       push    de                 ; store the counter

get_next:
       ld      a, (de)      ; get the current bitmap strip
       inc     de
       ld      ixh, 8

get_bit:
       rla
       jr      nc, bit_wall
       ld      (hl), c
       jr      next_bit
bit_wall:
       ld      (hl), b
next_bit:
       inc     hl
       dec     ixh
       jr      nz, get_bit

byte_done:
       ld      a, h
       cp      91
       jr      c, get_next
exit:  pop     hl