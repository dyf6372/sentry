-- SENTRY-74
ALTER TABLE SENTRY_DB_PRIVILEGE ADD COLUMN COLUMN_NAME character varying(128) DEFAULT NULL;
ALTER TABLE SENTRY_DB_PRIVILEGE DROP CONSTRAINT "SENTRY_DB_PRIV_PRIV_NAME_UNIQ";
ALTER TABLE SENTRY_DB_PRIVILEGE ADD CONSTRAINT "SENTRY_DB_PRIV_PRIV_NAME_UNIQ" UNIQUE ("SERVER_NAME","DB_NAME","TABLE_NAME","COLUMN_NAME","URI", "ACTION","WITH_GRANT_OPTION");
