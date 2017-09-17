push    ebp
mov     ebp, esp
and     esp, 0FFFFFFF0h
sub     esp, 30h        
call    sub_401FE0
mov     [esp+30h+var_20], 40h
mov     [esp+30h+var_1C], 22h
mov     [esp+30h+var_18], 19h
mov     [esp+30h+var_14], 0Ch
mov     [esp+30h+var_10], 16h
mov     [esp+30h+var_C], 0Bh
mov     [esp+30h+var_8], 5Ah
mov     [esp+30h+var_4], 7
mov     eax, [esp+30h+var_4]
mov     [esp+30h+var_2C], eax
lea     eax, [esp+30h+var_20]
mov     [esp+30h+var_30], eax
call    sub_401522
mov     [esp+30h+var_30], offset aSortedArray ; "Sorted array: "
puts
mov     eax, [esp+30h+var_4]
mov     [esp+30h+var_2C], eax
lea     eax, [esp+30h+var_20]
mov     [esp+30h+var_30], eax
call    sub_4015B3
mov     eax, 0
leave
retn
endp
