-- Guestbook table ���� DDL (����Ŭ)


CREATE TABLE guestbook (
 id NUMBER(38) PRIMARY KEY,
 name varchar2(255) NOT NULL,
 content VARCHAR2(4000),
 regdate timestamp
 );

-- log table ���� DDL (����Ŭ)
 CREATE TABLE LOG (
id NUMBER(38) PRIMARY KEY,
ip VARCHAR2(255) NOT NULL,
method VARCHAR2(10) NOT NULL,
regdate TIMESTAMP);
 