push       ebp                                                
mov        ebp, esp
sub        esp, 0xcc
push       ebx
push       esi
push       edi
lea        edi, dword [ebp+var_CC]
mov        ecx, 0x33
mov        eax, 0xcccccccc
rep stosd  dword [edi], eax
mov        eax, dword [ebp+arg_4]
cdq
sub        eax, edx
sar        eax, 0x1
sub        eax, 0x1
mov        dword [ebp+var_8], eax
jmp        loc_411407
mov        eax, dword [ebp+var_8]                              
sub        eax, 0x1
mov        dword [ebp+var_8], eax
cmp        dword [ebp+var_8], 0x0                              
jl         loc_411423
mov        eax, dword [ebp+var_8]
push       eax
mov        ecx, dword [ebp+arg_4]
push       ecx
mov        edx, dword [ebp+arg_0]
push       edx
call       sub_4111f4
add        esp, 0xc
jmp        loc_4113fe
mov        eax, dword [ebp+arg_4]
sub        eax, 0x1
mov        dword [ebp+var_8], eax
jmp        loc_411437
mov        eax, dword [ebp+var_8]
sub        eax, 0x1
mov        dword [ebp+var_8], eax
cmp        dword [ebp+var_8], 0x0
jl         loc_411472
mov        eax, dword [ebp+var_8]
mov        ecx, dword [ebp+arg_0]
mov        edx, dword [ecx+eax*4]
push       edx
mov        eax, 0x4
imul       ecx, eax, 0x0
mov        edx, dword [ebp+arg_0]
mov        eax, dword [edx+ecx]
push       eax
call       sub_4111ef
add        esp, 0x8
push       0x0
mov        eax, dword [ebp+var_8]
push       eax
mov        ecx, dword [ebp+arg_0]
push       ecx
call       sub_4111f4
add        esp, 0xc
jmp        loc_41142e
pop        edi
pop        esi
pop        ebx
add        esp, 0xcc
cmp        ebp, esp
call       sub_411145
mov        esp, ebp
pop        ebp
ret