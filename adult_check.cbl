       IDENTIFICATION DIVISION.
        PROGRAM-ID. adult-check.
        AUTHOR. rioil.
        INSTALLATION.  where.
        DATE-WRITTEN.  25/02/2021.
        DATE-COMPILED. 25/02/2021.
        SECURITY.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
        SOURCE-COMPUTER. pc.
        OBJECT-COMPUTER. pc.
        SPECIAL-NAMES.
       INPUT-OUTPUT SECTION.
        FILE-CONTROL.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
           77 MYNAME pic X(5).                                          rioilが入ればいいので5バイト
           77 AGE pic 9(3).
           77 DRINK pic X.
       LINKAGE SECTION.
       PROCEDURE DIVISION.
        DECLARATIVES.
        END DECLARATIVES.
       MAIN.
           display "What's your name?" upon console.
           accept MYNAME from console.
           display "How old are you?" upon console.
           accept AGE from console.
           if AGE >= 20 then
               display "You are an adult!" upon console
           else
               display "You are not an adult!" upon console
               stop run
           end-if.

           display "Do you want to drink? (y/n)".
           accept DRINK from console.
           evaluate DRINK
               when "y"
                   display "Here you are." upon console
               when "n"
                   display "OK. Bye, " MYNAME "." upon console
               when other
                   display "..." upon console
           end-evaluate.
           stop run.
