;.686
;.model flat
;extern _ExitProcess@4 : PROC
;extern _MessageBoxA@16 : PROC
;extern _MessageBoxW@16 : PROC
;public _main
;
;.data
	;tytul_Unicode dw 'T','e','k','s','t',' ','w',' '
				  ;dw 'f','o','r','m','a','c','i','e',' '
                  ;dw 'U','T','F','-','1','6', 0
    ;tekst_Unicode dw 'K','a',017CH,'d','y',' ','z','n','a','k',' '
				  ;dw 'z','a','j','m','u','j','e',' '
                  ;dw '1','6',' ','b','i','t',0F3H,'w', 0
	;tytul_Win1250 db 'Tekst w standardzie Windows 1250', 0
	;tekst_Win1250 db 'Kazdy znak zajmuje 8 bitow', 0;
;.code
;_main:
	;push 0 ; stała MB_OK
	;; adres obszaru zawierającego tytuł
	;push OFFSET tytul_Win1250
	;; adres obszaru zawierającego tekst
	;push OFFSET tekst_Win1250
	;push 0 ; NULL
	;call _MessageBoxA@16
	;push 0 ; stala MB_OK
	;; adres obszaru zawierającego tytuł
	;push OFFSET tytul_Unicode
	;; adres obszaru zawierającego tekst
	;push OFFSET tekst_Unicode
	;push 0 ; NULL
	;call _MessageBoxW@16
	;push 0 ; kod powrotu programu
	;call _ExitProcess@4
END