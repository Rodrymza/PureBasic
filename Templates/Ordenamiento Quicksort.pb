
Procedure ordenar(Array lista$(1))
For i=0 To tamanioarray-1
  For j=i To tamanioarray-1
    If lista$(i)>lista$(j)
      aux$=lista$(i)
      lista$(i)=lista$(j)
      lista$(j)=aux$
    EndIf
  Next
Next
EndProcedure

; IDE Options = PureBasic 6.11 LTS (Windows - x64)
; CursorPosition = 7
; Folding = -
; EnableXP
; DPIAware