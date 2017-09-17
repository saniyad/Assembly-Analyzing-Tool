push       ebp                                                 
mov        ebp, esp
sub        esp, 0xe4
push       ebx
push       esi
push       edi
lea        edi, dword [ebp+var_E4]
mov        ecx, 0x39
mov        eax, 0xcccccccc
rep stosd  dword [edi], eax
mov        dword [ebp+var_8], 0x1
jmp        loc_411400
mov        eax, dword [ebp+var_8]                              
add        eax, 0x1
mov        dword [ebp+var_8], eax
mov        eax, dword [ebp+var_8]                             
cmp        eax, dword [ebp+arg_4]
jge        loc_41145e
mov        eax, dword [ebp+var_8]
mov        ecx, dword [ebp+arg_0]
mov        edx, dword [ecx+eax*4] 	
mov        dword [ebp+var_14], edx
mov        eax, dword [ebp+var_8]
sub        eax, 0x1
mov        dword [ebp+var_20], eax
cmp        dword [ebp+var_20], 0x0                            
jl         loc_41144f
mov        eax, dword [ebp+var_20]
mov        ecx, dword [ebp+arg_0]
mov        edx, dword [ecx+eax*4]
cmp        edx, dword [ebp+var_14]
jle        loc_41144f
mov        eax, dword [ebp+var_20]
mov        ecx, dword [ebp+arg_0]
mov        edx, dword [ebp+var_20]
mov        esi, dword [ebp+arg_0]
mov        edx, dword [esi+edx*4]
mov        dword [ecx+eax*4+4], edx
mov        eax, dword [ebp+var_20]
sub        eax, 0x1
mov        dword [ebp+var_20], eax
jmp        loc_41141d
mov        eax, dword [ebp+var_20]                             
mov        ecx, dword [ebp+arg_0]
mov        edx, dword [ebp+var_14]
mov        dword [ecx+eax*4+4], edx
jmp        loc_4113f7
pop        edi                                                 
pop        esi
pop        ebx
mov        esp, ebp
pop        ebp
ret
