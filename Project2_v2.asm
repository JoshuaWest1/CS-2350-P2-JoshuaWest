
;Joshua West & Zachary Hunt

INCLUDE Irvine32.inc
WriteString PROTO


    .data
    ;v sets a string source names skyrim
    skyrim BYTE ".ereht revo feiht taht dna ,su sa emas ,hsubma lairepmI taht otni thgir deklaW ?thgir ,redrob eht ssorc ot gniyrt erew uoY .ekawa yllanif eruoY .uoy ,yeH :folaR",0
    ReversedString BYTE SIZEOF skyrim DUP('#')

    .code
    main PROC

        mov esi,0   ;sets esi to 0

        mov edi,LENGTHOF skyrim - 2 ; sets edi as 2 less than the length of the skyrim string

        mov ecx,SIZEOF skyrim ; sets ecx as the sizeof the string skyrim


    L1:; beggining of loop 1
        mov al,skyrim[esi]  ;moves the first array slot into temp varaible al
        mov ReversedString[edi],al  ;moves temp varaible into the last available slot in the revesred array
        inc esi ;increase value in the skyrim array 
        dec edi ;decrease the value in the Reverse array
        loop L1 ;end of loop 1


        mov edx, OFFSET ReversedString;stores the ReversedString


        call WriteString;Print out the string

        exit
    main ENDP
    END main