#objdump: -Wf
#name: CFI common 4
#...
Contents of the .eh_frame section:

0+000000 0+000010 0+000000 CIE
  Version:               1
  Augmentation:          "zR"
  Code alignment factor: .*
  Data alignment factor: .*
  Return address column: .*
  Augmentation data:     [01]b
#...
0+000014 0+000010 0+000018 FDE cie=0+000000 pc=.*
  DW_CFA_remember_state
  DW_CFA_restore_state
#...
0+000028 0+00001[04] 0+00002c FDE cie=0+000000 pc=.*
  DW_CFA_remember_state
  DW_CFA_restore_state
#pass
