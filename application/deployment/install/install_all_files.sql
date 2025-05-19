prompt --application/deployment/install/install_all_files
begin
--   Manifest
--     INSTALL: INSTALL-ALL FILES
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.5'
,p_default_workspace_id=>19904788591421959993
,p_default_application_id=>43621
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEROSPACE'
);
wwv_flow_imp_shared.create_install_script(
 p_id=>wwv_flow_imp.id(45410767465713846226)
,p_install_id=>wwv_flow_imp.id(44087277519978593916)
,p_name=>'ALL FILES'
,p_sequence=>10
,p_script_type=>'INSTALL'
,p_script_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'  CREATE TABLE "DERO_APPOINTMENTS" ',
'   (	"APPOINTMENT_ID" NUMBER, ',
'	"PATIENT_ID" NUMBER, ',
'	"DOCTOR_ID" NUMBER, ',
'	"APPOINTMENT_DATE" DATE, ',
'	"STATUS" VARCHAR2(20), ',
'	"NOTES" VARCHAR2(500), ',
'	 PRIMARY KEY ("APPOINTMENT_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "DERO_DOCTORS" ',
'   (	"DOCTOR_ID" NUMBER, ',
'	"NAME" VARCHAR2(100), ',
'	"SPECIALTY" VARCHAR2(100), ',
'	"PHONE" VARCHAR2(15), ',
'	"EMAIL" VARCHAR2(100), ',
'	 PRIMARY KEY ("DOCTOR_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "DERO_PATIENTS" ',
'   (	"PATIENT_ID" NUMBER, ',
'	"NAME" VARCHAR2(100), ',
'	"AGE" NUMBER, ',
'	"GENDER" VARCHAR2(10), ',
'	"PHONE" VARCHAR2(15), ',
'	"EMAIL" VARCHAR2(100), ',
'	"ADDRESS" VARCHAR2(200), ',
'	"COMPLAINTS" VARCHAR2(250), ',
'	 PRIMARY KEY ("PATIENT_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "DERO_PAYMENTS" ',
'   (	"PAYMENT_ID" NUMBER, ',
'	"PATIENT_ID" NUMBER, ',
'	"AMOUNT" NUMBER(10,2), ',
'	"PAYMENT_DATE" DATE, ',
'	"PAYMENT_TYPE" VARCHAR2(50), ',
'	"PAYMENT_NAME" VARCHAR2(100), ',
'	"APPOINTMENT_ID" NUMBER(10,0), ',
'	 PRIMARY KEY ("PAYMENT_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  CREATE TABLE "DERO_PRESCRIPTIONS" ',
'   (	"PRESCRIPTION_ID" NUMBER, ',
'	"APPOINTMENT_ID" NUMBER, ',
'	"DRUG_NAME" VARCHAR2(100), ',
'	"NOTES" VARCHAR2(250), ',
'	 PRIMARY KEY ("PRESCRIPTION_ID")',
'  USING INDEX  ENABLE',
'   ) ;',
'',
'  ALTER TABLE "DERO_APPOINTMENTS" ADD FOREIGN KEY ("PATIENT_ID")',
'	  REFERENCES "DERO_PATIENTS" ("PATIENT_ID") ENABLE;',
'  ALTER TABLE "DERO_APPOINTMENTS" ADD FOREIGN KEY ("DOCTOR_ID")',
'	  REFERENCES "DERO_DOCTORS" ("DOCTOR_ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_APPOINTMENTS_TRG" ',
'BEFORE INSERT ON DERO_APPOINTMENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.APPOINTMENT_ID IS NULL THEN',
'    SELECT DERO_APPOINTMENTS_SEQ.NEXTVAL INTO :NEW.APPOINTMENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_APPOINTMENTS_TRG" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_DOCTORS_TRG" ',
'BEFORE INSERT ON DERO_DOCTORS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.DOCTOR_ID IS NULL THEN',
'    SELECT DERO_DOCTORS_SEQ.NEXTVAL INTO :NEW.DOCTOR_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_DOCTORS_TRG" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_PATIENTS_TRG" ',
'BEFORE INSERT ON DERO_PATIENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PATIENT_ID IS NULL THEN',
'    SELECT DERO_PATIENTS_SEQ.NEXTVAL INTO :NEW.PATIENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_PATIENTS_TRG" ENABLE;',
'',
'  ALTER TABLE "DERO_PAYMENTS" ADD FOREIGN KEY ("PATIENT_ID")',
'	  REFERENCES "DERO_PATIENTS" ("PATIENT_ID") ENABLE;',
'  ALTER TABLE "DERO_PAYMENTS" ADD FOREIGN KEY ("APPOINTMENT_ID")',
'	  REFERENCES "DERO_APPOINTMENTS" ("APPOINTMENT_ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_PAYMENTS_TRG" ',
'BEFORE INSERT ON DERO_PAYMENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PAYMENT_ID IS NULL THEN',
'    SELECT DERO_PAYMENTS_SEQ.NEXTVAL INTO :NEW.PAYMENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_PAYMENTS_TRG" ENABLE;',
'',
'  ALTER TABLE "DERO_PRESCRIPTIONS" ADD FOREIGN KEY ("APPOINTMENT_ID")',
'	  REFERENCES "DERO_APPOINTMENTS" ("APPOINTMENT_ID") ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_PRESCRIPTIONS_TRG" ',
'BEFORE INSERT ON DERO_PRESCRIPTIONS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PRESCRIPTION_ID IS NULL THEN',
'    SELECT DERO_PRESCRIPTIONS_SEQ.NEXTVAL INTO :NEW.PRESCRIPTION_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_PRESCRIPTIONS_TRG" ENABLE;',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'create or replace PACKAGE DERO_HOSPITAL_PKG AS',
'',
'  FUNCTION is_consultation_paid(',
'    p_patient_id     IN VARCHAR2, ',
'    p_appointment_id IN VARCHAR2',
'  ) RETURN BOOLEAN;',
'',
'  FUNCTION is_doctor_scheduled(',
'    p_doctor_id      IN VARCHAR2, ',
'    p_appointment_date IN DATE',
'  ) RETURN BOOLEAN;',
'',
'END DERO_HOSPITAL_PKG;',
'/',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'   CREATE SEQUENCE  "DERO_APPOINTMENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "DERO_DOCTORS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "DERO_PATIENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 101 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "DERO_PAYMENTS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 41 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'   CREATE SEQUENCE  "DERO_PRESCRIPTIONS_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 81 CACHE 20 NOORDER  NOCYCLE  NOKEEP  NOSCALE  GLOBAL ;',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'create or replace TRIGGER DERO_APPOINTMENTS_TRG',
'BEFORE INSERT ON DERO_APPOINTMENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.APPOINTMENT_ID IS NULL THEN',
'    SELECT DERO_APPOINTMENTS_SEQ.NEXTVAL INTO :NEW.APPOINTMENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'create or replace TRIGGER DERO_DOCTORS_TRG',
'BEFORE INSERT ON DERO_DOCTORS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.DOCTOR_ID IS NULL THEN',
'    SELECT DERO_DOCTORS_SEQ.NEXTVAL INTO :NEW.DOCTOR_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'create or replace TRIGGER DERO_PATIENTS_TRG',
'BEFORE INSERT ON DERO_PATIENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PATIENT_ID IS NULL THEN',
'    SELECT DERO_PATIENTS_SEQ.NEXTVAL INTO :NEW.PATIENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'create or replace TRIGGER DERO_PAYMENTS_TRG',
'BEFORE INSERT ON DERO_PAYMENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PAYMENT_ID IS NULL THEN',
'    SELECT DERO_PAYMENTS_SEQ.NEXTVAL INTO :NEW.PAYMENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'create or replace TRIGGER DERO_PRESCRIPTIONS_TRG',
'BEFORE INSERT ON DERO_PRESCRIPTIONS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PRESCRIPTION_ID IS NULL THEN',
'    SELECT DERO_PRESCRIPTIONS_SEQ.NEXTVAL INTO :NEW.PRESCRIPTION_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_APPOINTMENTS_TRG" ',
'BEFORE INSERT ON DERO_APPOINTMENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.APPOINTMENT_ID IS NULL THEN',
'    SELECT DERO_APPOINTMENTS_SEQ.NEXTVAL INTO :NEW.APPOINTMENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_APPOINTMENTS_TRG" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_DOCTORS_TRG" ',
'BEFORE INSERT ON DERO_DOCTORS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.DOCTOR_ID IS NULL THEN',
'    SELECT DERO_DOCTORS_SEQ.NEXTVAL INTO :NEW.DOCTOR_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_DOCTORS_TRG" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_PATIENTS_TRG" ',
'BEFORE INSERT ON DERO_PATIENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PATIENT_ID IS NULL THEN',
'    SELECT DERO_PATIENTS_SEQ.NEXTVAL INTO :NEW.PATIENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_PATIENTS_TRG" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_PAYMENTS_TRG" ',
'BEFORE INSERT ON DERO_PAYMENTS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PAYMENT_ID IS NULL THEN',
'    SELECT DERO_PAYMENTS_SEQ.NEXTVAL INTO :NEW.PAYMENT_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_PAYMENTS_TRG" ENABLE;',
'',
'  CREATE OR REPLACE EDITIONABLE TRIGGER "DERO_PRESCRIPTIONS_TRG" ',
'BEFORE INSERT ON DERO_PRESCRIPTIONS',
'FOR EACH ROW',
'BEGIN',
'  IF :NEW.PRESCRIPTION_ID IS NULL THEN',
'    SELECT DERO_PRESCRIPTIONS_SEQ.NEXTVAL INTO :NEW.PRESCRIPTION_ID FROM DUAL;',
'  END IF;',
'END;',
'/',
'ALTER TRIGGER "DERO_PRESCRIPTIONS_TRG" ENABLE;',
'create or replace PACKAGE BODY DERO_HOSPITAL_PKG AS',
'',
'  FUNCTION is_consultation_paid(',
'    p_patient_id     IN VARCHAR2,',
'    p_appointment_id IN VARCHAR2',
'  ) RETURN BOOLEAN IS',
'    v_paid_amount NUMBER;',
'  BEGIN',
'    SELECT NVL(SUM(amount), 0) INTO v_paid_amount ',
'    FROM DERO_PAYMENTS',
'    WHERE patient_id = p_patient_id ',
'      AND payment_type = ''Consultation'' ',
'      AND appointment_id = p_appointment_id;',
'',
'    RETURN v_paid_amount > 0;',
'  EXCEPTION',
'    WHEN NO_DATA_FOUND THEN',
'      RETURN FALSE;',
'  END is_consultation_paid;',
'',
'  FUNCTION is_doctor_scheduled(',
'    p_doctor_id       IN VARCHAR2,',
'    p_appointment_date IN DATE',
'  ) RETURN BOOLEAN IS',
'    v_count NUMBER;',
'  BEGIN',
'    SELECT COUNT(*) INTO v_count',
'    FROM DERO_APPOINTMENTS',
'    WHERE doctor_id = p_doctor_id',
'      AND TRUNC(appointment_date) = TRUNC(p_appointment_date);  -- compare dates ignoring time',
'',
'    RETURN v_count > 0;',
'  END is_doctor_scheduled;',
'',
'END DERO_HOSPITAL_PKG;',
'/',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
'',
' '))
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410767513611846228)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'PACKAGE'
,p_object_name=>'DERO_HOSPITAL_PKG'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410767735892846229)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DERO_APPOINTMENTS_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410767981250846229)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DERO_DOCTORS_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410768112981846229)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DERO_PATIENTS_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410768390278846229)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DERO_PAYMENTS_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410768569420846229)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'SEQUENCE'
,p_object_name=>'DERO_PRESCRIPTIONS_SEQ'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410768789800846229)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DERO_APPOINTMENTS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410768994366846230)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DERO_DOCTORS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410769133114846230)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DERO_PATIENTS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410769312854846230)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DERO_PAYMENTS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410769594887846230)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TABLE'
,p_object_name=>'DERO_PRESCRIPTIONS'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410769746877846230)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'DERO_APPOINTMENTS_TRG'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410770055543846230)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'DERO_DOCTORS_TRG'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410770268881846231)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'DERO_PATIENTS_TRG'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410770401524846231)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'DERO_PAYMENTS_TRG'
);
wwv_flow_imp_shared.create_install_object(
 p_id=>wwv_flow_imp.id(45410770604647846231)
,p_script_id=>wwv_flow_imp.id(45410767465713846226)
,p_object_owner=>'#OWNER#'
,p_object_type=>'TRIGGER'
,p_object_name=>'DERO_PRESCRIPTIONS_TRG'
);
wwv_flow_imp.component_end;
end;
/
