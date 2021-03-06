--게시판
CREATE TABLE tibero.TBL_BOARD
(
    ID            NUMBER          NOT NULL, 
    USER_ID       NUMBER          NOT NULL, 
    WRITER        VARCHAR(50)     NOT NULL, 
    TITLE         VARCHAR(50)     NOT NULL, 
    CONTENT       VARCHAR(225)    NOT NULL, 
    VIEW_CNT      NUMBER(10)      DEFAULT 0 NOT NULL, 
    REPLY_CNT     NUMBER(10)      DEFAULT 0 NOT NULL, 
    BOARD_TYPE    CHAR(1)         DEFAULT 'Q' NOT NULL, 
    WRITE_DT      TIMESTAMP(6)    NOT NULL, 
    MODIFY_DT     TIMESTAMP(6)    NOT NULL, 
    DELYN         CHAR(1)         DEFAULT 'N' NOT NULL, 
    CONSTRAINT PK_TBL_BOARD PRIMARY KEY (ID)
)
/

CREATE SEQUENCE tibero.TBL_BOARD_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER tibero.TBL_BOARD_AI_TRG
BEFORE INSERT ON tibero.TBL_BOARD 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT tibero.TBL_BOARD_SEQ.NEXTVAL
    INTO :NEW.ID
    FROM DUAL;
END;
/

--DROP TRIGGER tibero.TBL_BOARD_AI_TRG;
/

--DROP SEQUENCE tibero.TBL_BOARD_SEQ;
/

COMMENT ON TABLE tibero.TBL_BOARD IS '게시판'
/

COMMENT ON COLUMN tibero.TBL_BOARD.ID IS '글 index'
/

COMMENT ON COLUMN tibero.TBL_BOARD.USER_ID IS '글 작성자 index'
/

COMMENT ON COLUMN tibero.TBL_BOARD.WRITER IS '글 작성자'
/

COMMENT ON COLUMN tibero.TBL_BOARD.TITLE IS '글 제목'
/

COMMENT ON COLUMN tibero.TBL_BOARD.CONTENT IS '글 내용'
/

COMMENT ON COLUMN tibero.TBL_BOARD.VIEW_CNT IS '글 조회수'
/

COMMENT ON COLUMN tibero.TBL_BOARD.REPLY_CNT IS '글 댓글수'
/

COMMENT ON COLUMN tibero.TBL_BOARD.BOARD_TYPE IS '글 타입(공지사항: N, QnA: Q)'
/

COMMENT ON COLUMN tibero.TBL_BOARD.WRITE_DT IS '글 등록일'
/

COMMENT ON COLUMN tibero.TBL_BOARD.MODIFY_DT IS '글 수정일'
/

COMMENT ON COLUMN tibero.TBL_BOARD.DELYN IS '글 삭제 여부'
/

CREATE UNIQUE INDEX 
    ON tibero.TBL_BOARD(ID)
/

--사용자 계정
CREATE TABLE tibero.TBL_USER
(
    ID              NUMBER           NOT NULL, 
    USER_ACCOUNT    VARCHAR2(255)    NOT NULL, 
    USER_PW         VARCHAR2(255)    NOT NULL, 
    USER_EM         VARCHAR2(255)    NOT NULL, 
    ROLE            VARCHAR2(10)     DEFAULT 'USER' NOT NULL, 
    CREATE_DT       TIMESTAMP(6)     NOT NULL, 
    UPDATE_DT       TIMESTAMP(6)     NOT NULL, 
    DELYN           CHAR(1)          DEFAULT 'N' NOT NULL, 
    CONSTRAINT PK_TBL_USER PRIMARY KEY (ID)
)
/

CREATE SEQUENCE tibero.TBL_USER_SEQ
START WITH 1
INCREMENT BY 1;
/

--CREATE OR REPLACE TRIGGER tibero.TBL_USER_AI_TRG
--BEFORE INSERT ON tibero.TBL_USER 
--REFERENCING NEW AS NEW FOR EACH ROW 
--BEGIN 
--    SELECT tibero.TBL_USER_SEQ.NEXTVAL
--    INTO :NEW.ID
--    FROM DUAL;
--END;
/

--DROP TRIGGER tibero.TBL_USER_AI_TRG;
/

--DROP SEQUENCE tibero.TBL_USER_SEQ;
/

COMMENT ON TABLE tibero.TBL_USER IS '계정'
/

COMMENT ON COLUMN tibero.TBL_USER.ID IS '사용자 index'
/

CREATE UNIQUE INDEX UQ_TBL_USER_1
    ON tibero.TBL_USER(USER_ACCOUNT)
/

--파일
CREATE TABLE TIBERO.TBL_FILE (
	ID NUMBER NOT NULL,
	FILE_NAME VARCHAR(255) NOT NULL,
	FILE_PATH VARCHAR(255) NOT NULL,
	CREATE_DT TIMESTAMP(6) NOT NULL,
	UPDATE_DT TIMESTAMP(6) NOT NULL
)