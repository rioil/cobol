       IDENTIFICATION DIVISION.
        PROGRAM-ID. hello-world.
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
       LINKAGE SECTION.
       PROCEDURE DIVISION.
        DECLARATIVES.
        END DECLARATIVES.
       MAIN.
           display "What's your name?" upon console.
           accept MYNAME from console.
           display "Hello world! Hello " MYNAME "!" upon console.
           STOP RUN.
