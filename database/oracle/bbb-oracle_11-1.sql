CREATE TABLE BBB_MEETING (
    MEETING_ID CHAR(36) NOT NULL,
    NAME VARCHAR2(255) NOT NULL,
    HOST_URL VARCHAR2(255),
    SITE_ID VARCHAR2(99) NOT NULL,
    ATTENDEE_PW VARCHAR2(99) NOT NULL,
    MODERATOR_PW VARCHAR2(99) NOT NULL,
    OWNER_ID VARCHAR2(99) NOT NULL,
    START_DATE TIMESTAMP,
    END_DATE TIMESTAMP, 
    RECORDING CHAR(1),
    RECORDING_DURATION NUMBER(10) DEFAULT 0,
    RECORDING_READY_NOTIFICATION CHAR(1),
    VOICE_BRIDGE NUMBER(5),
    WAIT_FOR_MODERATOR CHAR(1),
    MULTIPLE_SESSIONS_ALLOWED CHAR(1),
    ONE_SESSION_PER_GROUP CHAR(1),
    PROPERTIES VARCHAR2(4000),
    DELETED NUMBER(1) DEFAULT 0,
    CONSTRAINT bbb_meeting_pk PRIMARY KEY (MEETING_ID)
);

CREATE TABLE BBB_MEETING_PARTICIPANT (
    MEETING_ID CHAR(36) NOT NULL, 
    SELECTION_TYPE VARCHAR2(99) NOT NULL, 
    SELECTION_ID VARCHAR2(99), 
    ROLE VARCHAR2(32) NOT NULL,
    CONSTRAINT bbb_meeting_participant_pk PRIMARY KEY (MEETING_ID,SELECTION_TYPE,SELECTION_ID)
);