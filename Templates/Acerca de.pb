﻿Enumeration 
  #ventana_ayuda
  #boton_de_ayuda
EndEnumeration


Procedure ventana_acercade() ;del menu de ayuda-acerca de
   OpenWindow(#ventana_ayuda, 0, 0, 310, 210, "", #PB_Window_ScreenCentered | #PB_Window_SystemMenu)
    TextGadget(#PB_Any, 30, 20, 280, 20, "xxx-Nombre del programa-xxx")
    TextGadget(#PB_Any, 30, 50, 160, 20, "Rodry Ramirez (c) 2024")
    TextGadget(#PB_Any, 30, 80, 160, 20, "rodrymza@gmail.com")
    TextGadget(#PB_Any, 30, 110, 190, 20, "Curso Programacion Profesional")
    ButtonGadget(#boton_de_ayuda, 110, 170, 100, 25, "Aceptar")
    Repeat  
      event=WindowEvent()
      Select Event
        Case #PB_Event_CloseWindow
          CloseWindow(#ventana_ayuda)  
        Case #PB_Event_Gadget
          Select EventGadget()
            Case #boton_de_ayuda
              quit=#True
              CloseWindow(#ventana_ayuda)
          EndSelect
      EndSelect
    Until event= #PB_Event_CloseWindow Or quit=#True
  EndProcedure
  
  ventana_acercade()
; IDE Options = PureBasic 6.10 LTS (Windows - x64)
; CursorPosition = 28
; Folding = -
; EnableXP
; HideErrorLog