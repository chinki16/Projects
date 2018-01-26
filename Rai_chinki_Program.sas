*Program name: Project1 in C:\Computational Statistics\4th Quater\SAS\Project.
Purpose:  Creating permanent dataset and permanent format
Programmer: Chinki Rai
Date Written: 02 Nov 2017;

/*Creating Permanent SAS dataset in the library project1*/

libname project1 "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data";
PROC IMPORT OUT= project1.D1 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s001_020.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D2 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s021_040a.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D3 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s041_060a.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D4 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s061_080.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D5 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s081_100.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D6 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s101_110.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D8 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s111_120.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D9 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s121_130.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D10 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s131_140.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D11 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s141_150.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D12 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s151_160.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D13 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s161_165.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D14 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s166_170.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
PROC IMPORT OUT= project1.D15 
            DATAFILE= "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data\s171_175.txt" 
            DBMS=TAB REPLACE;
     GETNAMES=YES;
     DATAROW=2; 
RUN;
/* -------------------------------------------------------------- */

/*Creating permanet SAS format */
libname library1 "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data";

PROC FORMAT library=library1;
	VALUE CONFFMT 1 = 'NOT CONFIDENT' 2 = 'LOW CONFIDENT' 3 = 'CONFIDENT' 4 = 'HIGH CONFIDENT';
	VALUE INTERFMT 1 = 'NOT INTERESTED' 2 = 'LOW INTEREST' 3 = 'INTERESTED' 4 = 'HIGH INTEREST';
	VALUE COURSFMT 1 = 'NO COURSES' 2 = 'SOME COURSES' 3 = 'ALL COURSES';
	VALUE USEFMT 1 = 'NEVER' 2 = 'SOMETIMES' 3 = 'OFTEN' 4 = 'ALWAYS';
	VALUE NY12FMT 1 = 'NO' 2 = 'YES';
	VALUE NY01FMT 0 = 'NO' 1 = 'YES';
	VALUE $COMPFMT 'DESK' = 'DESKTOP' 'LAP' = 'LAPTOP';
	VALUE $SCHFMT 'ALSS' = 'ALSS' 'SCI' = 'SCIENCE' 'BUS' = 'BUSINESS' 'EDU' = 'EDUCATION';
	VALUE $POSFMT	'LEC' = 'LECTURER' 'TT' = 'TENURE TRACK' 'TEND' = 'TENURED';
RUN;

/*--------------------------------------------------------------------*/
/*Permanent SAS Format*/
libname project1 "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data";
libname library1 "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data";
options fmtsearch=(library1);

DATA Project1.ALLDATA;
	SET project1.D1 project1.D2 project1.D3 project1.D4 project1.D5 project1.D6 project1.D8 project1.D9 project1.D10 project1.D11 project1.D12 project1.D13 project1.D14 project1.D15;
	LABEL Q1AEMAIL='Q1a confidence email' 
		Q1BWWW='Q1b confidence www' 
		Q1CBOARD = 'Q1c confidence Blackboard' 
		Q1DWORD = 'Q1d confidence MS Word'
		Q1EPOINT = 'Q1e confidence MS PowerPoint' 
		Q1FSMART = 'Q1f confidence Smart Classroom' 
		Q1GWEBPG = 'Q1g confidence Webpage Creation'
		Q1HTECHC = 'Q1h confidence New tech tools for classroom use'
		Q1ITECHR = 'Q1i confidence New tech tools for research'
		Q1JTECHA = 'Q1j confidence New tech tools for assessment'
		Q2AEMAIL = 'Q2a interest email'
		Q2BWWW = 'Q2b interest www'
		Q2CBOARD = 'Q2c interest Blackboard'
		Q2DPOINT = 'Q2d interest MS PowerPoint'
		Q2EWORD = 'Q2e interest MS Word'
		Q2FSMART = 'Q2f interest Smart Classroom'
		Q2GWEBPG = 'Q2g interest Webpage Creation'
		Q2HTECHC = 'Q2h interest New tech tools for classroom use'
		Q2ITECHR = 'Q2i interest New tech tools for research'
		Q2JTECHA = 'Q2j interst New tech tools for assessment'
		Q3AANOUN = 'Q3a bb announcements'
		Q3BSYLLA = 'Q3b bb syllabus'
		Q3CLINKS = 'Q3c	bb links'
		Q3DDISCU = 'Q3d bb threaded discussions'
		Q3EDRPBX = 'Q3e bb digital drop box'
		Q3FTEST = 'Q3f bb assessment, quiz, test'
		Q3GGRADE = 'Q3g bb grade book'
		Q3HGROUP = 'Q3h bb groups'
		Q3ICHAT = 'Q3i bb chat'
		Q4AHELP = 'Q4a Help Desk'
		Q4BINFO = 'Q4b IT'
		Q4CLIBRY = 'Q4c Library'
		Q4DFACDV = 'Q4d	Office of Fac Dev'
		Q4EDEPAR = 'Q4e Depart, School Staff'
		Q4FCOLEG = 'Q4f colleagues'
		Q5AOWN = 'Q5a on your own'	
		Q5BWRKSH = 'Q5b project1shop'	
		Q5CCDROM = 'Q5c cdrom manual'	
		Q5DSTFIT = 'Q5d IT staff'	
		Q5ESTFSC = 'Q5e School staff'	
		Q5FSTFLI = 'Q5f Library staff'	
		Q5GSTFFD = 'Q5g FacDev staff'	
		Q6AHOME	= 'Q6a home'
		Q6BCSUH	= 'Q6b CSUH office'
		Q6COTHER = 'Q6c another location'	
		Q7APHOTO = 'Q7a photo'	
		Q7BCONTA = 'Q7b contact info'	
		Q7COFFIC = 'Q7c office hours'	
		Q7DINTRS = 'Q7d res teach interest'	
		Q7EPUBLS = 'Q7e recent pubs projs activities'
		Q7FLINKS = 'Q7f links'	
		Q8AAUTO	= 'Q8a auto gen'
		Q8BEDIT	= 'Q8b can edit'
		Q8CCREAT = 'Q8c create own'	
		Q8DNOPAG = 'Q8d not interested'	
		Q9DSKLAP = 'Q9 computer type'	
		Q10WRKSH = 'Q10 attend project1shop'	
		Q11WIFI	= 'Q11 wireless internet'
		Q12ONLIN = 'Q12 teach online'	
		Q13SCHOL = 'Q13 school teach in'	
		Q14POSIT = 'Q14 position'	
		Q15AWEB	= 'Q15a web' 
		Q15BCAMP = 'Q15b campus mail'	
		Q15CEMAI = 'Q15c email'	
		Q15DVIEW = 'Q15d The View'	
		Q15ENOWH = 'Q15e nowhere'	
		Q16COMM = 'Q16 additional comments';
	FORMAT Q1AEMAIL -- Q1JTECHA CONFFMT.
			Q2AEMAIL -- Q2JTECHA INTERFMT.
			Q3AANOUN -- Q3ICHAT COURSFMT.
			Q4AHELP	-- Q4FCOLEG Q5AOWN -- Q5GSTFFD Q6AHOME Q6BCSUH Q6COTHER USEFMT.
			Q7APHOTO -- Q7FLINKS NY12FMT.
			Q8AAUTO Q8BEDIT Q8CCREAT Q8DNOPAG Q10WRKSH Q11WIFI Q12ONLIN Q15AWEB -- Q15ENOWH Q16COMM NY01FMT.
			Q9DSKLAP $COMPFMT.
			Q13SCHOL $SCHFMT.
			Q14POSIT $POSFMT.
RUN;
/*---------------------------------*/
/* Proc Content use on Dataset survey*/
title "Contents of Alldata";
proc contents data=project1.alldata varnum;
run;

/*--------------------------------------*/
/*Proc content of library*/
title "Contents of library project1";
proc contents data=project1._all_ nods;
run;

/*---------------------------------*/
/* Using permanent SAS format*/
libname project1 "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data";
libname library1 "C:\Computational Statistics\4th Quater\SAS\Project\File1\Data";
options fmtsearch=(library1);
proc freq data=project1.alldata;
table Q1AEMAIL -- Q1JTECHA Q2AEMAIL -- Q2JTECHA Q3AANOUN -- Q3ICHAT 
Q4AHELP	-- Q4FCOLEG Q5AOWN -- Q5GSTFFD Q6AHOME Q6BCSUH Q6COTHER Q7APHOTO -- Q7FLINKS
Q8AAUTO Q8BEDIT Q8CCREAT Q8DNOPAG Q10WRKSH Q11WIFI Q12ONLIN Q15AWEB -- Q15ENOWH Q16COMM Q9DSKLAP Q13SCHOL Q14POSIT  /nocum;
run;














