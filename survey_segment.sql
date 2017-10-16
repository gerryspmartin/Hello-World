---------------------------------------------------------------------------------------
-- Revision 0.0 G.MArtin 22 June 2017
-- Purpose : Static for Survey Segments
-- 			
---------------------------------------------------------------------------------------

-- check if the table already exists if not create it. 
 SELECT 1
  FROM  DBC.TABLES
  WHERE DATABASENAME = DATABASE
  AND   TABLENAME =    'survey_segment';
  
.IF ACTIVITYCOUNT = 1 THEN GOTO CRTAB_END;


CREATE SET TABLE survey_segment (
source_system	 VARCHAR(5)  NOT NULL ,
segment_level2	 VARCHAR(50) NOT NULL ,
nps_journey_name VARCHAR(50) NOT NULL ,
nps_journey_type VARCHAR(50) NOT NULL 
) 
UNIQUE PRIMARY INDEX upi_survey_segment (source_system, segment_level2 , nps_journey_type ) ;

INSERT INTO survey_segment VALUES ('R6','SMB','Get Help','Account Details') ;
INSERT INTO survey_segment VALUES ('R6','SMB','Get Help','Bill Enquiry') ;
INSERT INTO survey_segment VALUES ('R6','SMB','Get Help','Broadband Tech Support') ;
INSERT INTO survey_segment VALUES ('R6','Consumer','Get Help','Account Details') ;
INSERT INTO survey_segment VALUES ('R6','Consumer','Get Help','Bill Enquiry') ;
INSERT INTO survey_segment VALUES ('R6','Consumer','Get Help','Broadband Tech Support') ;
INSERT INTO survey_segment VALUES ('SV','Enterprise','Get Help','Broadband Tech Support') ;
INSERT INTO survey_segment VALUES ('SV','SMB','Get Help','Broadband Tech Support') ;
INSERT INTO survey_segment VALUES ('SV','Commercial','Get Help','Broadband Tech Support') ;
INSERT INTO survey_segment VALUES ('SV','Consumer','Get Help','Account Details') ;
INSERT INTO survey_segment VALUES ('SV','Consumer','Get Help','Bill Enquiry') ;
INSERT INTO survey_segment VALUES ('SV','Consumer','Get Help','Broadband Tech Support') ;
INSERT INTO survey_segment VALUES ('TIS','Consumer','Get Help','Account Details') ;
INSERT INTO survey_segment VALUES ('TIS','Consumer','Get Help','Bill Enquiry') ;
INSERT INTO survey_segment VALUES ('TIS','Consumer','Get Help','Broadband Tech Support') ;
INSERT INTO survey_segment VALUES ('TIS','SMB','Get Help','Broadband Tech Support') ;

COLLECT SUMMARY STATISTICS ON survey_segment ;


.LABEL CRTAB_END ;
