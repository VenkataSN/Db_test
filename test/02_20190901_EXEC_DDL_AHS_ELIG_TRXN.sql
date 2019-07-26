-- =======================================================================
-- Author:          Venkata N
-- File Name:		02_20190901_DDL_AHS_ELIG_TRXN.sql
-- Create date:     07/09/2019
-- Description:     Main table for AHS_WEST
-- =======================================================================
CREATE TABLE EDI_ELIG.AHS_ELIG_TRXN(event_id                    NUMBER        NOT NULL ,
                           group_id                    NUMBER        NOT NULL ,
                           payload                     BLOB,
                           group_CREATE_DT_TM          TIMESTAMP(6)  ,
                           event_CREATE_DT_TM          TIMESTAMP(3)  ,
                           trxn_status                 VARCHAR2(128),
                           delivery_status             VARCHAR2(128),
                           functional_status           VARCHAR2(128),
                           edi_submitter_id            VARCHAR2(128) ,
                           submitter_mnemonic          VARCHAR2(128) ,
                           payload_type                VARCHAR2(256),
                           CONSTRAINT ahs_elig_trxn_pk PRIMARY KEY (event_id)
                           );
