       IDENTIFICATION DIVISION.
       PROGRAM-ID. sigma.
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
           77 NUM pic 9(4).
           77 RESULT pic 9(8).
           77 WRK-COUNTER pic 9(5).
        LINKAGE SECTION.
       PROCEDURE DIVISION.
        DECLARATIVES.
        END DECLARATIVES.
       MAIN.
           display "enter a number" upon console.
           accept NUM from console.
           if NUM < 0 then
               display "invalid number" upon console
               stop run
           end-if.
           
      *    総和計算
           move 0 to RESULT.
           perform varying WRK-COUNTER from 1 by 1
                   until WRK-COUNTER > NUM
               add WRK-COUNTER to RESULT
           end-perform.

           display "sigma(0," NUM ") is " RESULT upon console.
           stop run.
