DROP USER IF EXISTS "keycloak";
CREATE USER "keycloak" with encrypted password 'P@ssw0rd';
CREATE DATABASE "keycloak" WITH OWNER "keycloak" ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' TEMPLATE template0;


CREATE EXTENSION IF NOT EXISTS "pg_trgm";
DROP USER IF EXISTS "gitlab";
CREATE USER "gitlab" with encrypted password 'P@ssw0rd';
CREATE DATABASE "gitlabhq_production" WITH OWNER "gitlab" ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' TEMPLATE template0;
GRANT ALL PRIVILEGES ON DATABASE gitlabhq_production to gitlab;
CREATE EXTENSION pg_trgm;


DROP USER IF EXISTS "sonarqube";
CREATE USER "sonarqube" with encrypted password 'P@ssw0rd';
CREATE DATABASE "sonar" WITH OWNER "sonarqube" ENCODING 'UTF8' LC_COLLATE = 'en_US.UTF-8' LC_CTYPE = 'en_US.UTF-8' TEMPLATE template0;