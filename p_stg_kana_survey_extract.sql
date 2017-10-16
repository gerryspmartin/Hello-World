---------------------------------------------------------------------------------------
-- Revision 0.0 G.Martin 15 June 2017
-- Purpose : p_stg_kana_survey_extract. 
-- 			
---------------------------------------------------------------------------------------

-- check if the table already exists if not create it. 
 SELECT 1
  FROM  DBC.TABLES
  WHERE DATABASENAME = DATABASE
  AND   TABLENAME =    'p_stg_kana_survey_extract';
  
.IF ACTIVITYCOUNT = 1 THEN GOTO CRTAB_END;


CREATE SET TABLE p_stg_kana_survey_extract ,
	 NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      transaction_id INTEGER GENERATED ALWAYS AS IDENTITY 
		(	START WITH -2147483647
			INCREMENT BY 1
			MINVALUE -2147483647
			MAXVALUE 0
			NO CYCLE
		),
      contact_id INTEGER,
      start_time TIMESTAMP(6),
      end_time TIMESTAMP(6),
      account_number VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      agent_name VARCHAR(256) CHARACTER SET UNICODE NOT CASESPECIFIC,
      team_name VARCHAR(256) CHARACTER SET UNICODE NOT CASESPECIFIC,
      agent_position VARCHAR(256) CHARACTER SET UNICODE NOT CASESPECIFIC,
      primary_reason VARCHAR(256) CHARACTER SET LATIN NOT CASESPECIFIC,
      secondary_reason VARCHAR(256) CHARACTER SET LATIN NOT CASESPECIFIC,
      nps_journey_type VARCHAR(256) CHARACTER SET LATIN NOT CASESPECIFIC,
      nps_journey_name VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC,
      email_address VARCHAR(256) CHARACTER SET UNICODE NOT CASESPECIFIC,
      acc_account_name VARCHAR(200) CHARACTER SET LATIN NOT CASESPECIFIC,
      acc_email VARCHAR(256) CHARACTER SET LATIN NOT CASESPECIFIC,
      acc_source_internal_code VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,      
	  acc_source_account_number  VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,         
      acc_source_cd     VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC,                  
      acc_segment_level2   VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,               
      acc_bill_type     VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,                  
      acc_status_derived VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,
      acc_phone_preferred VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,
      acc_phone_mobile VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,
      brn_brand_name VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC,
      survey_status VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC, 
      insert_timestamp TIMESTAMP(6) DEFAULT CURRENT_TIMESTAMP
      )
UNIQUE PRIMARY INDEX stg_kana_survey_extract_upi ( contact_id );


.LABEL CRTAB_END ;

