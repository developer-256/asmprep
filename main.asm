(* Arithmatic operations *)


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data
        num1 db 8
        num2 db 3 
        var db 'Practice of Assembly Lab$'
        var2 db 0dh,0ah, 'Message with space$' 
        num db 0dh,0ah, 'Enter a number: $'
        varia db ?
.code

mov ax,@data
mov ds,ax

                ;ADD two numbers
;mov al,3
;mov bl,5
;add al,bl

;add al,48

;mov dl,al
;mov ah,2
;int 21h     

;mov ah,4ch
;int 21h              

                ;Subtract numbers
                
 ;mov al,num1
 ;mov bl,num2
 
 ;inc al
 ;inc al
 
 ;sub al,bl
 
 ;add al,'0'
 ;mov dl,al
 ;mov ah,02h
 ;int 21h
 
 ;mov ah,4ch
 ;int 21h
                        ;Divide 2 numbers
                

    ;mov ax, 8
    ;mov bx, 2

    ;div bl          

    ;add al, 48      
    ;mov dl, al
    ;mov ah, 2       
    ;int 21h

    ;mov ah, 4Ch     
    ;int 21h
               
                        ;Multiply
                        
   ; mov al,num1
   ; mov cl,num2
    
    ;mul cl
   ; aam  
   ; 
   ; mov cx,ax
    
   ; mov ah,2  
   ; mov dl,ch
   ; add dl,'0'
   ; int 21h
    
   ; mov ah,2  
    ;mov dl,cl
   ; add dl,'0'
    ;int 21h
    
    ;mov ah,4ch
    ;int 21h
    
                        ;Print message
                        
   ; mov dx,offset var
   ;mov ah,9
   ; int 21h 
    
   ; mov dx,offset var2
   ; mov ah,09
   ; int 21h  
   
                        ;Taking input
                        
 ;mov dx,offset num
 ;mov ah,9
 ;int 21h 
 
 ;mov ah,1 
 ;int 21h  
  ;mov dl,al
 ;mov ah,2
 ;int 21h
 ;sub al,'0'
 
  
 
 ;inc al
 ;mov varia,al
 
 ;mov bl,varia
 ;add bl,48
 ;mov dl,bl
 ;mov ah,2
 ;int 21h
 
 
ret

(* greater *)


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.data

msg db 0dh,0ah, 'The greater number is: $' 
msg1 db 0dh,0ah, 'Enter a number: $'

.code                               

mov ax,@data
mov ds,ax

mov dx,offset msg1
mov ah,9
int 21h

mov ah,1
int 21h

mov bl,al
sub bl,48

mov dx,offset msg1
mov ah,9
int 21h

mov ah,1
int 21h

sub al,48
mov cl,al

cmp bl,cl
jg greater 

mov dx,offset msg
mov ah,9
int 21h

mov dl,cl
add dl,'0'
mov ah,2
int 21h

mov ah,4ch
int 21h


greater:

mov dx,offset msg
mov ah,9
int 21h

mov dl,bl
add dl,'0'
mov ah,2
int 21h

mov ah,4ch
int 21h





ret




(* array *)


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.data
arr db 3,4,6,2,5 
arr1 db 5 dup(4) 
arr2 db 5 dup(?)
.code 

                        ;Input in array
; lea si,arr2
; mov cx,5
; 
; input:
; mov ah,1
; int 21h
 
; sub al,48
; mov [si],al
; inc si
; loop input
 
; mov cx,5
; lea si,arr2
; array:  
; mov ah,2
; mov dl,[si] 
; add dl,48
; int 21h  
 
 ;inc si
 ;loop array
 
 


                        ;Printing array values using 'arr'
;mov cx,5
;lea si,arr

;print:
;mov dl,[si] 
;add dl,48
;mov ah,2
;int 21h

;inc si
;loop print
                        
                        
                        ;Loops from 'a' till 'z' byt incrementing dl
;mov cx,26
;mov dl,97

;LoopA:
;mov ah,2
;int 21h
;inc dl

;loop loopA  





ret




(* array sort *)


; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

	.data
	;arr db 3,4,5,2,9	;arr db 10 dup(6)
	;msg db 'enter the number to found$'
	;msg1 db 'value found$' 
	;msg2 db 'value not found$'
	;val db 7 
	
	arr db 5 dup(?)
	
	.code
	
	mov ax,@data
	mov ds,ax
	
	                        ;Sort
	
	mov cx,5
	lea si,arr
	
	input:
	mov ah,1
	int 21h
	
	sub al,48
	mov [si],al
	inc si
	loop input
	
	mov cx,5
	Outer:
	mov bx,cx
	mov si,0
	
	Comp:
	
	mov al,arr[si]
	mov dl,arr[si+1]
	cmp al,dl
	jb noSwap
	
	mov arr[si],dl
	mov arr[si+1],al
	
	
	
	noSwap:
	    inc si
	    dec bx
	    jnz Comp
	loop Outer 
	
	mov cx,5
    mov si,offset arr
    mov dx,10  
    mov ah,2
    int 21h 
    
    mov dx,13
    mov ah,2
    int 21h

    output:

    mov dl,[si]
    add dl,48
    mov ah,2
    int 21h
    add si,1

    loop output
 

    mov ah, 4ch
    int 21h
	                        ;Search
	
	;mov cx,5
	;lea si,arr
	
	;search:
	;    mov bl,[si]
	;    cmp bl,val
	;    je found
	    
	;    inc si 
	    
	;   loop search
	    
	;    mov dx,offset msg2
	;    mov ah,9
	;   int 21h
	    
	;   mov ah,4ch
	;   int 21h
	    
	    
	;found:
	;    mov dx,offset msg1
	;    mov ah,9
	;    int 21h

ret

(* final paper *)


(* grades *)


org 100h

.data  
marks db 10,13,'Enter Sudents Marks: $'
A db 10,13,'The student has A Grade!$'
B db 10,13,'The student has B Grade!$'
C db 10,13,'The student has C Grade!$'
D db 10,13,'The student has D Grade!$'
F db 10,13,'The student has F Grade!$'
inValid db 10,13, 'Invalid Input!$' 
inputValue db 0
.code
mov ax,@data
mov ds,ax

lea dx,marks
mov ah,9
int 21h

mov bl,10
input:
mov ah,1
int 21h
cmp al,13
je outOfLoop
sub al,48
mov cl,al
mov ax,0
mov al,inputValue
mul bl
add al,cl
cmp ax,100
jg endOf
mov inputValue,al
jmp input

outOfLoop:

mov al,inputValue

cmp al,90
jge printA
cmp al,80
jge printB
cmp al,70
jge printC
cmp al,60
jge printD
jmp printF

printA:
lea dx,A
mov ah,9
int 21h
jmp end

printB:
lea dx,B
mov ah,9
int 21h
jmp end

printC:
lea dx,C
mov ah,9
int 21h
jmp end

printD:
lea dx,D
mov ah,9
int 21h
jmp end

printF:
lea dx,F
mov ah,9
int 21h
jmp end 

endOf:
lea dx,inValid
mov ah,9
int 21h
jmp end

end:
ret




(* pattern *)


org 100h

.data
.code

mov cx,5
outerLoop:

mov bx,cx
mov ax,bx
stackValues:
push ax
dec ax
jnz stackValues

innerLoop:
pop ax
add ax,48
mov ah,2
mov dx,ax
int 21h 
mov dl,32
int 21h
dec bx
jnz innerLoop

mov ah,2
mov dl,10
int 21h
mov dl,13
int 21h

loop outerLoop


ret




(* remove error *)


org 100h

.data
msg1 db 10,13, "SUPERIOR UNIVERSITY LAHORE$"
msg2 db 10,13, "Gold Campus$" 
.code                        
main proc
        mov ax,@data
        mov ds,ax
        
        mov dx,offset(msg1) 
        mov ah,9
        int 21h
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,1
        int 21h
        sub al,48 
        
        mov cl,al
        
        mov dx,offset(msg2)
        mov ah,9
        int 21h
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        mov ah,1
        int 21h
        sub al,48
        
        mov cl,al
                 
        mov ah,4ch
        int 21h
main endp
end





(* ROLANDSHAL *)


org 100h

.data
Rotate db 01001101b
shift db 10100110b

.code
mov ax,@data
mov ds,ax

mov al,shift
shr al,2

mov bl,Rotate
rol bl,2


ret




(* sort in dec *)


org 100h

.data
arr db 7 dup(?)
Enter db 10,13,'Enter $'
num db ' Num: $'
msg db 10,13,'Array: $'
.code

mov ax,@data
mov ds,ax

mov cx,7
mov si,0
mov bl,1
loopInput:
lea dx,Enter
mov ah,9
int 21h

mov dl,bl
add dl,48
mov ah,2
int 21h

lea dx,num
mov ah,9
int 21h


mov ah,1
int 21h
sub al,48

mov arr[si],al
inc si
inc bl

loop loopInput 

mov cx,6
outerLoop:
mov bx,cx

lea si,arr

innerLoop:
mov al,[si]
mov dl,[si+1]
cmp al,dl
jg noSwap

mov [si],dl
mov [si+1],al

noSwap:
inc si
dec bx
jnz innerLoop

loop outerLoop


lea dx,msg
mov ah,9
int 21h

mov cx,7
lea si,arr

output:
mov dl,[si]
mov ah,2
add dl,48
int 21h

mov dl,32
int 21h

inc si

loop output


ret




(* swap *)


org 100h

.data
num1 db ?
num2 db ?
temp db ?
msg1 db 'Enter First Number: $'
msg2 db 10,13,'Enter Second Number: $'
bS db 10,13, 'Before Swap Values are: $'
val1 db 10,13, 'Value1= $'
val2 db 10,13, 'Value2= $'
aS db 10,13, 'After Swap Values are: $'

.code
mov ax,@data
mov ds,ax

lea dx,msg1
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48
mov num1,al

lea dx,msg2
mov ah,9
int 21h

mov ah,1
int 21h
sub al,48
mov num2,al

mov ah,9
lea dx,bS
int 21h

mov ah,9
lea dx,val1 
int 21h

mov dl,num1
add dl,48
mov ah,2
int 21h

mov ah,9
lea dx,val2 
int 21h

mov dl,num2
add dl,48
mov ah,2
int 21h

mov al,num1
mov temp,al 
mov bl,num2
mov num1,bl
mov al,temp
mov num2,al

mov ah,9
lea dx,aS
int 21h

mov ah,9
lea dx,val1 
int 21h

mov dl,num1
add dl,48
mov ah,2
int 21h

mov ah,9
lea dx,val2 
int 21h

mov dl,num2
add dl,48
mov ah,2
int 21h

ret




