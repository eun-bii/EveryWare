--COMPANY_CATEGORY ���� ������ INSERT

INSERT INTO COMPANY_CATEGORY (CATEGORY_CODE, CATEGORY_NAME ) 
VALUES ( SEQ_COM_CATEGORY_NO.NEXTVAL, '�÷��� ����');


COMMIT;    


--COM ���� ������ INSERT
INSERT INTO COM (COM_CODE, COM_CATEGORY_CODE, COM_NAME, COM_TEL, COM_FOUNDATION_DATE) 
VALUES (SEQ_COM_NO.NEXTVAL, 1, 'EVERYWARE', '0701111111', SYSDATE);

COMMIT;


--DEPT ���� ������ INSERT
INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, 'EVERYWARE', 0, 1);

--��ȹ����
INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '��ȹ����', 1, 2); --�ڵ�2

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�����ȹ��', 2, 3); --�ڵ�3

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�濵��ȹ��', 2, 3); --�ڵ�4

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '������ȹ��', 2, 3); --�ڵ�5

--�濵��������

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�濵��������', 1, 2); --�ڵ�6

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, 'ȸ����', 6, 3); --�ڵ�7

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�λ���', 6, 3); --�ڵ�8

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '���������', 6, 3); --�ڵ�9


--��������

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '��������', 1, 2); --�ڵ�10

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '����������', 10, 3); --�ڵ�11

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�ؿܿ�����', 10, 3); --�ڵ�12


--�����ú���

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�����ú���', 1, 2); --�ڵ�13

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '������������', 13, 3); --�ڵ�14

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�ؿܸ�������', 13, 3); --�ڵ�15

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, 'ȫ����', 13, 3); --�ڵ�16



--�������ߺ���

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�������ߺ���', 1, 2); --�ڵ�17

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '������', 17, 3); --�ڵ�18

INSERT INTO DEPT (DEPT_CODE, DEPT_NAME, HIGH_DEPT_CODE, DEPT_DEPTH)
VALUES (SEQ_DEPT_NO.NEXTVAL, '�����Ͱ�����', 17, 3); --�ڵ�19


COMMIT;




--RANK ���� ������ INSERT
INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '��ǥ�̻�', 1);


INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '�̻�', 2);

INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '����', 3);

INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '����', 4);

INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '����', 5);

INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '�븮', 6);

INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '���', 7);

INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '�����', 8);

INSERT INTO RANK (RANK_CODE, RANK_NAME, RANK_LEVEL)
VALUES (SEQ_RANK_NO.NEXTVAL, '����', 8); --�ڵ� : 9


COMMIT;

--JOB ���� ������ INSERT
INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '�濵����');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '��ȹ');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, 'ȸ��');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '�λ�');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '�������');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '����');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, 'ȫ��/������');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '����');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '�����Ͱ���');

INSERT INTO JOB (JOB_CODE, JOB_NAME)
VALUES (SEQ_JOB_NO.NEXTVAL, '����');

COMMIT;

--RIGHT ���� ������ INSERT
INSERT INTO RIGHT (RIGHT_CODE, RIGHT_NAME) 
VALUES (SEQ_RIGHT_NO.NEXTVAL, '������');

INSERT INTO RIGHT (RIGHT_CODE, RIGHT_NAME) 
VALUES (SEQ_RIGHT_NO.NEXTVAL, '�λ������');

INSERT INTO RIGHT (RIGHT_CODE, RIGHT_NAME) 
VALUES (SEQ_RIGHT_NO.NEXTVAL, '���������');

INSERT INTO RIGHT (RIGHT_CODE, RIGHT_NAME) 
VALUES (SEQ_RIGHT_NO.NEXTVAL, '�Ϲ�');

COMMIT;




--EMP ���� ������ INSERT


--��ǥ�̻�
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 1
    , 1
    , 1
    , 1
    , '���ǥ'
    , 'admin'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--��ȹ���� �̻�
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
    , EMP_E_MAIL
    , EMP_PHONE
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 2
    , 2
    , 1
    , 4
    , '���̻�'
    , 'user01'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
    , 'everyware1234@naver.com'
    , '01012341234'
)
;

--�濵�������� �̻�
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 6
    , 2
    , 1
    , 2
    , '���̻�'
    , 'insa'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� �̻�
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 10
    , 2
    , 1
    , 4
    , '���̻�'
    , 'user03'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ú��� �̻�
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 13
    , 2
    , 1
    , 4
    , '���̻�'
    , 'user04'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������ߺ��� �̻�
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 17
    , 2
    , 1
    , 4
    , '���̻�'
    , 'user05'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 3
    , 2
    , 4
    , '������'
    , 'user06'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 4
    , 2
    , 4
    , '������'
    , 'user008'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ ����1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 5
    , 2
    , 4
    , '������'
    , 'user009'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ ����2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 5
    , 2
    , 4
    , '�����'
    , 'user010'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 6
    , 2
    , 4
    , '�մ븮'
    , 'user011'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 6
    , 2
    , 4
    , '��븮'
    , 'user012'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 7
    , 2
    , 4
    , '����'
    , 'user013'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�����ȹ �����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 3
    , 8
    , 2
    , 4
    , '����'
    , 'user014'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�濵��ȹ ���� 
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 4
    , 3
    , 2
    , 4
    , '������'
    , 'user07'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�濵��ȹ ���� 
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 4
    , 4
    , 2
    , 4
    , '������'
    , 'user002'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�濵��ȹ ���� 
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 4
    , 5
    , 2
    , 4
    , '������'
    , 'user003'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�濵��ȹ �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 4
    , 6
    , 2
    , 4
    , '���븮'
    , 'user004'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�濵��ȹ �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 4
    , 6
    , 2
    , 4
    , '�Ŵ븮'
    , 'user005'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�濵��ȹ �븮3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 4
    , 6
    , 2
    , 4
    , 'õ�븮'
    , 'user006'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�濵��ȹ ���
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 4
    , 7
    , 2
    , 4
    , 'Ȳ���'
    , 'user007'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 3
    , 2
    , 4
    , '������'
    , 'user08'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 4
    , 2
    , 4
    , '������'
    , 'user93'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 5
    , 2
    , 4
    , '������'
    , 'user94'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 6
    , 2
    , 4
    , '��븮'
    , 'user95'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 6
    , 2
    , 4
    , '��븮'
    , 'user96'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 7
    , 2
    , 4
    , '����'
    , 'user97'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 7
    , 2
    , 4
    , '�����'
    , 'user98'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 7
    , 2
    , 4
    , '�ջ��'
    , 'user99'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������ȹ �����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 5
    , 8
    , 2
    , 4
    , '����'
    , 'user001'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȸ�� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 7
    , 3
    , 2
    , 4
    , '������'
    , 'user09'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;
--ȸ�� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 7
    , 5
    , 2
    , 4
    , '�Ű���'
    , 'user89'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȸ�� �븮
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 7
    , 6
    , 2
    , 4
    , '�ȴ븮'
    , 'user90'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȸ�� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 7
    , 6
    , 2
    , 4
    , '�Ѵ븮'
    , 'user91'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȸ�� ���
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 7
    , 7
    , 2
    , 4
    , '�����'
    , 'user92'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�λ� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 8
    , 3
    , 4
    , 4
    , 'Ȳ����'
    , 'user10'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�λ� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 8
    , 4
    , 4
    , 2
    , '������'
    , 'insa01'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�λ� ����1 (�λ������)
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 8
    , 5
    , 4
    , 2
    , '������'
    , 'insa02'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�λ� ����2 (���������)
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 8
    , 5
    , 4
    , 3
    , '�����'
    , 'admin2'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�λ� �븮
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 8
    , 6
    , 4
    , 2
    , '���븮'
    , 'insa03'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;


--�λ� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 8
    , 7
    , 4
    , 4
    , 'ö���'
    , 'user86'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�λ� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 8
    , 7
    , 4
    , 4
    , '�ڻ��'
    , 'user87'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;



--������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 3
    , 5
    , 4
    , '�Ǻ���'
    , 'user11'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 4
    , 5
    , 4
    , '������'
    , 'user74'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 5
    , 5
    , 4
    , '������'
    , 'user75'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 6
    , 5
    , 4
    , '���븮'
    , 'user76'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 6
    , 5
    , 4
    , '���븮'
    , 'user77'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 7
    , 5
    , 4
    , 'ȭ���'
    , 'user78'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 7
    , 5
    , 4
    , 'ȸ���'
    , 'user79'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 7
    , 5
    , 4
    , '�����'
    , 'user80'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 9
    , 9
    , 5
    , 4
    , '������'
    , 'user81'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 3
    , 6
    , 4
    , '������'
    , 'user12'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 4
    , 6
    , 4
    , '������'
    , 'user66'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 5
    , 6
    , 4
    , '�����'
    , 'user67'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 6
    , 6
    , 4
    , '�ִ븮'
    , 'user68'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 6
    , 6
    , 4
    , '���븮'
    , 'user69'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 7
    , 6
    , 4
    , '�����'
    , 'user70'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 7
    , 6
    , 4
    , '�����'
    , 'user71'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;


--�������� ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 7
    , 6
    , 4
    , '�����'
    , 'user72'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 11
    , 9
    , 6
    , 4
    , '������'
    , 'user73'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 3
    , 6
    , 4
    , '�����'
    , 'user13'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 4
    , 6
    , 4
    , '������'
    , 'user58'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 5
    , 6
    , 4
    , '������'
    , 'user59'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 6
    , 6
    , 4
    , '���븮'
    , 'user60'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 6
    , 6
    , 4
    , '���븮'
    , 'user61'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 7
    , 6
    , 4
    , '�����'
    , 'user62'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 7
    , 6
    , 4
    , '����'
    , 'user63'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 7
    , 6
    , 4
    , '����'
    , 'user64'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 12
    , 9
    , 6
    , 4
    , '������'
    , 'user65'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 3
    , 7
    , 4
    , '�Ӻ���'
    , 'user14'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 4
    , 7
    , 4
    , '������'
    , 'user51'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 5
    , 7
    , 4
    , '�̰���'
    , 'user52'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���������� �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 6
    , 7
    , 4
    , '�ڴ븮'
    , 'user53'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���������� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 6
    , 7
    , 4
    , '�ִ븮'
    , 'user54'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���������� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 7
    , 7
    , 4
    , '�����'
    , 'user55'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���������� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 7
    , 7
    , 4
    , '�����'
    , 'user56'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;


--���������� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 14
    , 9
    , 7
    , 4
    , '������'
    , 'user57'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܸ����� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 3
    , 7
    , 4
    , '�Ѻ���'
    , 'user15'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 4
    , 7
    , 4
    , '������'
    , 'user43'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 5
    , 7
    , 4
    , '������'
    , 'user44'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� �븮
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 6
    , 7
    , 4
    , '���븮'
    , 'user45'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 6
    , 7
    , 4
    , '���븮'
    , 'user46'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 7
    , 7
    , 4
    , '�����'
    , 'user47'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 7
    , 7
    , 4
    , '�ֻ��'
    , 'user48'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 7
    , 7
    , 4
    , '����'
    , 'user49'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--�ؿܿ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 15
    , 9
    , 7
    , 4
    , '������'
    , 'user50'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;






--ȫ���� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 3
    , 7
    , 4
    , '������'
    , 'user16'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 4
    , 7
    , 4
    , '������'
    , 'user35'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 5
    , 7
    , 4
    , '������'
    , 'user36'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 6
    , 7
    , 4
    , '��븮'
    , 'user37'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 6
    , 7
    , 4
    , '���븮'
    , 'user38'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 7
    , 7
    , 4
    , '�ϻ��'
    , 'user39'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 7
    , 7
    , 4
    , '�����'
    , 'user40'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 7
    , 7
    , 4
    , '�����'
    , 'user41'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--ȫ�� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 16
    , 9
    , 7
    , 4
    , '������'
    , 'user42'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

--���� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 3
    , 8
    , 4
    , '������'
    , 'user17'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- ���� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 4
    , 8
    , 4
    , '������'
    , 'user27'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- ���� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 5
    , 8
    , 4
    , '�۰���'
    , 'user28'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- ���� �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 6
    , 8
    , 4
    , '�մ븮'
    , 'user29'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- ���� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 6
    , 8
    , 4
    , '��븮'
    , 'user30'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- ���� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 7
    , 8
    , 4
    , '�����'
    , 'user31'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- ���� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 7
    , 8
    , 4
    , '����'
    , 'user32'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

SELECT * FROM EMP;

-- ���� ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 7
    , 8
    , 4
    , '����'
    , 'user33'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- ���� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 18
    , 9
    , 8
    , 4
    , '������'
    , 'user34'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 3
    , 9
    , 4
    , '�ź���'
    , 'user18'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;


-- �����Ͱ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 4
    , 9
    , 4
    , '������'
    , 'user19'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 5
    , 9
    , 4
    , '�۰���'
    , 'user20'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� �븮1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 6
    , 9
    , 4
    , '���븮'
    , 'user21'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� �븮2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 6
    , 9
    , 4
    , '���븮'
    , 'user22'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� ���1
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 7
    , 9
    , 4
    , '�����'
    , 'user23'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� ���2
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 7
    , 9
    , 4
    , 'ȫ���'
    , 'user24'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� ���3
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 7
    , 9
    , 4
    , '����'
    , 'user25'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;

-- �����Ͱ��� ����
INSERT INTO EMP (
    EMP_CODE
    , COM_CODE
    , DEPT_CODE
    , RANK_CODE
    , EMP_JOB_CODE
    , RIGHT_CODE
    , EMP_NAME
    , EMP_ID
    , EMP_PWD
) VALUES (
    SEQ_EMP_NO.NEXTVAL
    , 1
    , 19
    , 9
    , 9
    , 4
    , '������'
    , 'user26'
    , '$2a$10$G/ZyLA3N/MpOiZlCKHRlwuivRAE5jHF3FvEp45DR3WKImeXpWioLS'
)
;


COMMIT;



--CEO ���� ������ INSERT
INSERT INTO CEO (CEO_CODE, COM_CODE, EMP_CODE, CEO_TEL, CEO_REGISTER_DATE)
VALUES (SEQ_CEO_NO.NEXTVAL, 1, 1,'0702222222', SYSDATE);


COMMIT;


--���繮�� ��������----------------------------------------------------------------
INSERT INTO DOC_RETENTION_PERIOD (PERIOD_CODE, PERIOD) VALUES (SEQ_DOC_RETENTION_PERIOD_CODE.NEXTVAL, '1��');
INSERT INTO DOC_RETENTION_PERIOD (PERIOD_CODE, PERIOD) VALUES (SEQ_DOC_RETENTION_PERIOD_CODE.NEXTVAL, '3��');
INSERT INTO DOC_RETENTION_PERIOD (PERIOD_CODE, PERIOD) VALUES (SEQ_DOC_RETENTION_PERIOD_CODE.NEXTVAL, '5��');
INSERT INTO DOC_RETENTION_PERIOD (PERIOD_CODE, PERIOD) VALUES (SEQ_DOC_RETENTION_PERIOD_CODE.NEXTVAL, '10��');
INSERT INTO DOC_RETENTION_PERIOD (PERIOD_CODE, PERIOD) VALUES (SEQ_DOC_RETENTION_PERIOD_CODE.NEXTVAL, '����');

--����Ÿ��------------------------------------------------------------------------
INSERT INTO APPROVAL_TYPE (APPR_TYPE_CODE, APPR_TYPE_NAME) VALUES (SEQ_APPROVAL_TYPE_CODE.NEXTVAL, '��û');
INSERT INTO APPROVAL_TYPE (APPR_TYPE_CODE, APPR_TYPE_NAME) VALUES (SEQ_APPROVAL_TYPE_CODE.NEXTVAL, '����');
INSERT INTO APPROVAL_TYPE (APPR_TYPE_CODE, APPR_TYPE_NAME) VALUES (SEQ_APPROVAL_TYPE_CODE.NEXTVAL, 'ó��');
INSERT INTO APPROVAL_TYPE (APPR_TYPE_CODE, APPR_TYPE_NAME) VALUES (SEQ_APPROVAL_TYPE_CODE.NEXTVAL, '����');

--�������------------------------------------------------------------------------
INSERT INTO DOC_FORM (FORM_CODE, FORM_NAME, FORM_INTRO) VALUES (SEQ_DOC_FORM_CODE.NEXTVAL, '������Ǽ�', '������Ǽ� �Դϴ�');
INSERT INTO DOC_FORM (FORM_CODE, FORM_NAME, FORM_INTRO) VALUES (SEQ_DOC_FORM_CODE.NEXTVAL, 'ǰ�Ǽ�', 'ǰ�Ǽ� �Դϴ�');
INSERT INTO DOC_FORM (FORM_CODE, FORM_NAME, FORM_INTRO) VALUES (SEQ_DOC_FORM_CODE.NEXTVAL, '��������', '�������� �Դϴ�');
INSERT INTO DOC_FORM (FORM_CODE, FORM_NAME, FORM_INTRO) VALUES (SEQ_DOC_FORM_CODE.NEXTVAL, '��������', '�������� �Դϴ�');

--������Ļ� ���ø�------------------------------------------------------------------------
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '����', 'textarea');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, 'ȸ���', 'month');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '����', 'textarea');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '������', 'text');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '�ŷ�ó', 'text');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '�����', 'text');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '���¹�ȣ', 'number');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '������', 'text');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '�۱ݾ�', 'number');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '�����', 'number');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '�۱ݿ�û��', 'date');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '����', 'text');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '����', 'text');
INSERT INTO DOC_FORM_DETAIL_TEMPLATE (FORM_DETAIL_CODE, FORM_DETAIL_NAME, FORM_DETAIL_TYPE) VALUES (SEQ_DOC_FORM_DETAIL_TEMPLATE_CODE.NEXTVAL, '�߽���', 'date');

--�������-�׸� ����------------------------------------------------------------------------
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (1, 2, 1);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (1, 3, 2);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (1, 4, 3);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (1, 5, 4);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (1, 6, 5);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (1, 7, 6);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (1, 10, 7);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (2, 1, 1);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (2, 5, 2);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (2, 6, 3);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (2, 7, 4);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (2, 8, 5);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (2, 9, 6);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (2, 11, 7);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (3, 1, 1);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (4, 12, 1);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (4, 13, 2);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (4, 14, 3);
INSERT INTO DOC_FORM_MAPPING (FORM_CODE, FORM_DETAIL_CODE, FORM_DETAIL_SEQ) VALUES (4, 1, 4);

--����------------------------------------------------------------------------
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,40,'2022.11.11 ���븮 ���� ����� ���� ��û',to_timestamp('22/11/11 03:46:35.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,40,'�� �߸� �ۼ��� ����',to_timestamp('22/11/11 03:50:03.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('22/11/11 03:50:08.000000000','RR/MM/DD HH24:MI:SSXFF'),'D',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,40,'�ӽ������� ���� 1',to_timestamp('22/11/11 03:51:11.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('22/11/11 03:51:21.000000000','RR/MM/DD HH24:MI:SSXFF'),'D',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,40,'�ӽ������� ���� 1',to_timestamp('22/11/11 03:51:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'T',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,40,'�ӽ����� ~~ ',to_timestamp('22/11/11 03:52:19.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'T',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,40,'ǰ�Ǽ� .. �ε� �ӽ�����',to_timestamp('22/11/11 03:53:06.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'T',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,40,'�������� �ʰ� ���� ���� ���� ��',to_timestamp('22/11/11 04:03:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'���� �д� ��',to_timestamp('22/11/11 04:16:01.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 18:09:20.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,42,'�����Ļ��� ���� ��',to_timestamp('22/11/11 04:18:00.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,42,'����ī�� ��� ������� ���� ��',to_timestamp('22/11/11 04:20:55.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'2022�� �λ��� ���� ��',to_timestamp('22/11/11 04:22:36.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,4,42,'����� ���� �ø��ϴ�.',to_timestamp('22/11/11 04:35:16.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'���� �Ϸ� ����',to_timestamp('22/11/11 04:37:15.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 18:08:52.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,40,'���� �帳�ϴ�.',to_timestamp('22/11/11 15:39:04.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 15:45:04.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,39,'2022.11 �μ��� ��ǰ ���� ��',to_timestamp('22/11/11 15:42:16.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,39,'2022 ������ ���� ������ ��',to_timestamp('22/11/11 15:44:24.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,39,'�λ��� �μ���� ���� ���� ��',to_timestamp('22/11/11 15:48:59.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 16:38:07.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,40,'ǰ�Ǽ� �Դϴ�',to_timestamp('22/11/11 16:35:40.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,40,'������Ǽ� �Դϴ�',to_timestamp('22/11/11 16:36:19.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 17:01:36.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,40,'�������� �Դϴ�',to_timestamp('22/11/11 16:36:44.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 17:01:28.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,4,40,'�������� �Դϴ�',to_timestamp('22/11/11 16:37:19.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 17:01:17.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'2022.11 �ǹ� ��ȭ �η� ���� ��',to_timestamp('22/11/11 16:39:28.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'2023 �ӿ��� ǰ�������� ���� ��',to_timestamp('22/11/11 16:40:32.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,42,'ǰ�� �帳�ϴ�',to_timestamp('22/11/11 16:42:42.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 18:09:56.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'2022.10 �系 ������ �޿� ���� ',to_timestamp('22/11/11 16:52:25.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,42,'����',to_timestamp('22/11/11 16:54:47.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('22/11/11 17:00:45.000000000','RR/MM/DD HH24:MI:SSXFF'),'N',to_timestamp('22/11/11 16:57:21.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,42,' ǰ�Ǽ�',to_timestamp('22/11/11 16:55:32.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('22/11/11 17:00:33.000000000','RR/MM/DD HH24:MI:SSXFF'),'N',to_timestamp('22/11/11 16:57:14.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'��������',to_timestamp('22/11/11 16:55:56.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('22/11/11 17:00:21.000000000','RR/MM/DD HH24:MI:SSXFF'),'N',to_timestamp('22/11/11 16:57:06.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,4,42,'��������',to_timestamp('22/11/11 16:56:22.000000000','RR/MM/DD HH24:MI:SSXFF'),to_timestamp('22/11/11 17:00:09.000000000','RR/MM/DD HH24:MI:SSXFF'),'N',to_timestamp('22/11/11 16:57:01.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,4,40,'2023 ���� �ʼ� ���� ������',to_timestamp('22/11/11 17:18:11.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,40,'2022.11.11 ���븮 ���������� ���� ��û',to_timestamp('22/11/11 17:19:25.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,40,'������Ǽ� �Դϴ�',to_timestamp('22/11/11 18:08:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,40,'�������� �Դϴ�',to_timestamp('22/11/11 18:11:30.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 18:12:02.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,39,'2022.11.11 �߱ٽĴ� ���� ��û',to_timestamp('22/11/11 18:13:15.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,39,'2022.11.11  ����� ������ ���� ��û',to_timestamp('22/11/11 18:13:59.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,39,'2022.11.11 ����� ����� ���� ��û',to_timestamp('22/11/11 18:14:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,39,'2023 �系 ����Ȱ�� ��ȹ��',to_timestamp('22/11/11 18:16:31.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',null);
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,42,'���� �Ϸ� ����',to_timestamp('22/11/11 18:58:04.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:00:48.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,42,'���� �Ϸ� ����',to_timestamp('22/11/11 18:58:36.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:00:52.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,4,42,'���� �Ϸ� ����',to_timestamp('22/11/11 18:58:48.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:00:45.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,42,'���� �Ϸ� ����',to_timestamp('22/11/11 18:59:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:00:38.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,1,42,'���� �Ϸ� ����',to_timestamp('22/11/11 18:59:37.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:00:35.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,2,40,'���� �Ϸ� ����',to_timestamp('22/11/11 19:01:38.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:02:54.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,3,40,'���� �Ϸ� ����',to_timestamp('22/11/11 19:01:57.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:02:51.000000000','RR/MM/DD HH24:MI:SSXFF'));
INSERT INTO APPROVAL_DOC (DOC_CODE,PERIOD_CODE,DOC_FORM_CODE,EMP_CODE,DOC_TITLE,DOC_ENROLL_DATE,DOC_UPDATED,DOC_STATUS,DOC_APPR_DATE) 
VALUES (SEQ_APPROVAL_DOC_CODE.NEXTVAL,1,4,40,'���� �Ϸ� ����',to_timestamp('22/11/11 19:02:13.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'N',to_timestamp('22/11/11 19:02:48.000000000','RR/MM/DD HH24:MI:SSXFF'));

-- ÷������------------------------------------------------------------------------
INSERT INTO APPROVAL_FILE (FILE_CODE,DOC_CODE,ORIGIN_NAME,UPLOAD_NAME) values (SEQ_APPROVAL_FILE_CODE.NEXTVAL,1,'���븮_����_ī�峻��.xlsx','1668105995393_87252.xlsx');

--������ ����Ʈ------------------------------------------------------------------------
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (1,4,36,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (1,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (1,4,31,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (2,3,13,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (2,3,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (2,3,11,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (3,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (3,4,6,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (4,4,6,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (4,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (5,4,10,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (5,3,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (5,3,2,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (6,3,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (6,3,5,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (7,2,109,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (7,2,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (7,2,106,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (8,4,40,2,to_date('22/11/11','RR/MM/DD'),'C');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (8,4,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (9,4,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (9,4,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (9,4,39,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (9,4,1,5,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (9,4,36,4,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (10,4,39,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (10,4,1,5,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (10,4,36,4,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (10,4,38,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (10,4,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (11,2,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (11,2,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (11,2,39,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (11,4,1,4,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (12,4,2,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (12,4,1,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (12,4,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (13,4,40,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (13,4,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (14,2,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (14,2,39,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (15,3,39,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (15,3,42,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (16,3,39,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (16,3,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (17,3,42,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (17,3,39,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (18,4,39,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (19,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (19,4,39,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (20,4,39,2,to_date('22/11/11','RR/MM/DD'),'C');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (20,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (21,4,39,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (21,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (22,3,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (22,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (23,4,39,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (24,4,40,2,to_date('22/11/11','RR/MM/DD'),'C');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (24,4,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (25,4,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (25,4,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (26,3,40,2,to_date('22/11/11','RR/MM/DD'),'C');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (26,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (27,3,40,2,to_date('22/11/11','RR/MM/DD'),'C');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (27,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (28,3,40,2,to_date('22/11/11','RR/MM/DD'),'C');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (28,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (29,3,40,2,to_date('22/11/11','RR/MM/DD'),'C');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (29,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (30,4,38,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (30,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (30,4,39,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (30,4,37,4,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (30,4,36,5,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (31,4,39,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (31,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (32,3,39,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (32,3,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (33,3,39,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (33,3,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (34,3,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (34,3,39,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (35,3,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (35,3,39,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (36,3,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (36,3,39,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (37,3,40,2,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (37,3,39,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (37,4,37,3,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (37,4,36,4,null,'W');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (38,3,40,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (38,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (39,3,40,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (39,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (40,3,40,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (40,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (41,3,40,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (41,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (42,3,40,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (42,3,42,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (43,3,39,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (43,3,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (44,3,39,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (44,3,40,1,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (45,4,39,2,to_date('22/11/11','RR/MM/DD'),'A');
INSERT INTO APPROVAL_LIST (DOC_CODE,APPR_TYPE_CODE,APPR_EMP_CODE,APPR_SEQ,APPR_DATE,APPR_STATUS) 
VALUES (45,4,40,1,to_date('22/11/11','RR/MM/DD'),'A');

--������------------------------------------------------------------------------
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (15,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (16,1,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (17,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (10,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (11,2,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (19,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (23,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (28,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (29,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (37,38,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (37,41,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (37,42,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (39,40,'N');
INSERT INTO APPROVAL_REF (DOC_CODE,REF_EMP_CODE,CHECK_YN) VALUES (41,40,'N');

--���� �ۼ� ������------------------------------------------------------------------------
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (1,2,'2022-11');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (1,3,'221111 ���븮 �����(����) ����� ����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (1,4,'���븮');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (1,5,'����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (1,6,'����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (1,7,'123456789123');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (1,10,'120000');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (2,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (3,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (3,3,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (3,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (3,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (3,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (3,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (3,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (4,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (4,3,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (4,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (4,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (4,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (4,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (4,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (5,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (6,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (6,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (6,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (6,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (6,8,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (6,9,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (6,11,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (7,1,'�ȳ��ϼ��� �λ��� ���븮 �Դϴ�.

���� ���� �ʰ� ���� ������ ������ �������� �帳�ϴ�.
');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (8,1,'���� ���� ���� �ּ���');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (9,1,'�������� ��û�� 10�� �����Ļ���  11.17 ���� ����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (9,5,'-');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (9,6,'�츮');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (9,7,'111111111111');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (9,8,'������');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (9,9,'2700000');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (9,11,'2022-11-17');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (10,2,'2022-11');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (10,3,'221111 ����ī�� ��� ������� ���� ��');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (10,4,'�ڻ��');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (10,5,'������');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (10,6,'����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (10,7,'111122223456');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (10,10,'50000');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (11,1,'�λ��� �� ��� �ϸ� ������� ?');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (12,12,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (12,13,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (12,14,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (12,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (13,1,'���� �Ϸ� ����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (14,1,'���� ��Ƚ��ϴ�.');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (15,1,'���븮�� Ȯ���ϼ��� ~~');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (16,1,'12�� ������ ���� (�ҳ�Ÿ) ���� �����Դϴ�');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (16,5,'���˼�');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (16,6,'����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (16,7,'12341234123412');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (16,8,'���˼�');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (16,9,'1000000');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (16,11,'2022-11-14');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (17,1,'����ó�� - �ڻ��
����å�� - ���븮');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (18,1,'���� �Ϸ� ���̵�����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (18,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (18,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (18,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (18,8,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (18,9,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (18,11,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (19,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (19,3,'������Ǽ� ���̵�����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (19,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (19,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (19,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (19,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (19,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (20,1,'�������� ���̵�����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (21,12,'���븮');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (21,13,'���븮');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (21,14,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (21,1,'����� ���� ���̵�����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (22,1,'�ǹ���ȭ �η� ���� ���ǰ� ������ �ֽ��ϴ�.
Ȯ�� ��Ź�帳�ϴ�.');
Insert into DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) values (23,1,'2023 �ӿ��� ǰ�������� ���� 
Ȯ�� ��Ź�帳�ϴ�');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (24,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (24,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (24,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (24,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (24,8,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (24,9,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (24,11,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (25,1,'2022.10 �系 ������ �޿� ���� �Ͽ� �����帳�ϴ�.');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (26,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (26,3,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (26,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (26,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (26,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (26,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (26,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (27,1,'���� �ݷ� ǰ�Ǽ�');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (27,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (27,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (27,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (27,8,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (27,9,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (27,11,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (28,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (29,12,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (29,13,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (29,14,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (29,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (30,12,'�λ���');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (30,13,'������');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (30,14,'2022-11-11');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (30,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (31,2,'2022-11');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (31,3,'2022.11.11 ���븮 �������� �����������');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (31,4,'���븮');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (31,5,'������������');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (31,6,'����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (31,7,'123412341234');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (31,10,'40000');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (32,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (32,3,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (32,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (32,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (32,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (32,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (32,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (33,1,'�������� �Դϴ�');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (34,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (34,3,'2022.11.11 �߱ٽĴ� ���� ��û');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (34,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (34,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (34,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (34,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (34,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (35,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (35,3,'2022.11.11 ����� ������ ���� ��û');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (35,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (35,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (35,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (35,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (35,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (36,2,'2022-11');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (36,3,'2022.11.11 ����� ����� ���� ��û');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (36,4,'�����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (36,5,'�����');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (36,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (36,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (36,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (37,1,'2023 �系 ����Ȱ�� ��ȹ�� Ȯ�� ���');
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (37,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (37,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (37,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (37,8,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (37,9,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (37,11,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (38,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (38,3,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (38,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (38,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (38,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (38,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (38,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (39,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (40,12,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (40,13,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (40,14,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (40,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (41,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (41,3,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (41,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (41,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (41,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (41,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (41,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (42,2,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (42,3,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (42,4,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (42,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (42,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (42,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (42,10,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (43,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (43,5,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (43,6,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (43,7,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (43,8,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (43,9,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (43,11,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (44,1,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (45,12,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (45,13,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (45,14,null);
INSERT INTO DOC_DATA (DOC_CODE,FORM_DETAIL_CODE,DOC_CONTENT) VALUES (45,1,null);

--�ǰ� �����------------------------------------------------------------------------
INSERT INTO DOC_COMMENT (COMMENT_CODE,DOC_CODE,WRITER_CODE,COM_ENROLL_DATE,COM_UPDATED,COM_CONTENT,COM_STATUS) 
VALUES (SEQ_DOC_COMMENT_CODE.NEXTVAL,29,40,to_timestamp('22/11/11 16:57:01.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'�ݷ��մϴ�','C');
INSERT INTO DOC_COMMENT (COMMENT_CODE,DOC_CODE,WRITER_CODE,COM_ENROLL_DATE,COM_UPDATED,COM_CONTENT,COM_STATUS) 
VALUES (SEQ_DOC_COMMENT_CODE.NEXTVAL,28,40,to_timestamp('22/11/11 16:57:06.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'�ݷ��մϴ�','C');
INSERT INTO DOC_COMMENT (COMMENT_CODE,DOC_CODE,WRITER_CODE,COM_ENROLL_DATE,COM_UPDATED,COM_CONTENT,COM_STATUS) 
VALUES (SEQ_DOC_COMMENT_CODE.NEXTVAL,27,40,to_timestamp('22/11/11 16:57:14.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'�ݷ��մϴ�','C');
INSERT INTO DOC_COMMENT (COMMENT_CODE,DOC_CODE,WRITER_CODE,COM_ENROLL_DATE,COM_UPDATED,COM_CONTENT,COM_STATUS) 
VALUES (SEQ_DOC_COMMENT_CODE.NEXTVAL,26,40,to_timestamp('22/11/11 16:57:21.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'�ݷ��մϴ�','C');
INSERT INTO DOC_COMMENT (COMMENT_CODE,DOC_CODE,WRITER_CODE,COM_ENROLL_DATE,COM_UPDATED,COM_CONTENT,COM_STATUS) 
VALUES (SEQ_DOC_COMMENT_CODE.NEXTVAL,20,39,to_timestamp('22/11/11 17:01:28.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'�ݷ��մϴ�','C');
INSERT INTO DOC_COMMENT (COMMENT_CODE,DOC_CODE,WRITER_CODE,COM_ENROLL_DATE,COM_UPDATED,COM_CONTENT,COM_STATUS) 
VALUES (SEQ_DOC_COMMENT_CODE.NEXTVAL,8,40,to_timestamp('22/11/11 18:09:20.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'�ݷ��մϴ�','C');
INSERT INTO DOC_COMMENT (COMMENT_CODE,DOC_CODE,WRITER_CODE,COM_ENROLL_DATE,COM_UPDATED,COM_CONTENT,COM_STATUS) 
VALUES (SEQ_DOC_COMMENT_CODE.NEXTVAL,24,40,to_timestamp('22/11/11 18:09:56.000000000','RR/MM/DD HH24:MI:SSXFF'),null,'�ݷ��մϴ�','C');




--COMMUTE ���̵�����

INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(883, 75, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(885, 11, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(886, 21, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(887, 22, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(888, 25, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(889, 28, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(890, 32, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(891, 42, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(892, 52, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(893, 62, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(894, 72, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(895, 82, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(896, 92, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(897, 102, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(898, 33, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(899, 35, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(901, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/02 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(902, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/03 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(903, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/04 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(904, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/05 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(905, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/06 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(906, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/07 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(907, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/08 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(908, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/09 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(909, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/10 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(910, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/11 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(911, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/12 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(912, 2, '19:00:00', '7:00:00 PM', '19:00:01', '7:00:01 PM', '22/10/13 17:34:26.000000000',  '���');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(913, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/14 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(914, 2, '9:00:00', '9:00:00 AM', '17:33:33', '5:33:33 PM', '22/10/15 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(915, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/16 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(916, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/17 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(917, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/18 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(918, 2, '9:00:00', '9:00:00 AM', '17:33:33', '5:33:33 PM', '22/10/19 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(919, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/20 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(920, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/21 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(921, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/22 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(922, 2, '9:12:00', '9:12:00 AM', '18:33:33', '6:33:33 PM', '22/10/23 17:34:26.000000000',  '����');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(923, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/24 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(924, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/25 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(925, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/26 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(926, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/27 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(927, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/28 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(928, 2, '9:12:00', '9:12:00 AM', '18:33:33', '6:33:33 PM', '22/10/29 17:34:26.000000000',  '����');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(929, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/30 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(930, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/10/31 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(932, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/01 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(933, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/02 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(934, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/03 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(935, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/04 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(936, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/05 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(937, 2, '19:00:00', '7:00:00 PM', '19:00:01', '7:00:01 PM', '22/11/06 17:34:26.000000000',  '���');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(938, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/07 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(939, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/08 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(940, 2, '9:00:00', '9:00:00 AM', '17:33:33', '5:33:33 PM', '22/11/09 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(941, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/10 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(942, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/11 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(943, 2, '9:00:00', '9:00:00 AM', '18:33:33', '6:33:33 PM', '22/11/12 17:34:26.000000000',  '�������');
INSERT INTO COMMUTE (COM_CODE, ECODE, START_TIME, START_TIME_FORMAT, END_TIME, END_TIME_FORMAT, ENROLL_DATE, COM_STATUS) 
VALUES(944, 2, '9:12:00', '9:12:00 AM', '18:33:33', '6:33:33 PM', '22/11/13 17:34:26.000000000',  '����');

COMMIT;

-- OVERWORK ���̵�����
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 5, 5, '2022-11-09', 3, '���� ����', '���', 'W');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 75, 5, '2022-11-11', 2, '���� ���� ȸ��', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 43, 5, '2022-11-12', 3, '��� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 6, 5, '2022-11-13', 2, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 55, 5, '2022-11-09', 3, '�İ� �ٹ�', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 60, 5, '2022-11-11', 2, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 77, 5, '2022-11-12', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 36, 5, '2022-11-13', 2, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 27, 5, '2022-11-09', 3, '�İ� �ٹ�', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 43, 5, '2022-11-11', 2, 'Ÿ ���� ȸ�� �ֽ��ϴ�.', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 19, 5, '2022-11-12', 3, '������ ȸ��', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 99, 5, '2022-11-13', 2, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-12', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-12', 3, '����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-12', 3, '���� �����ֽ��ϴ�.', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-12', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-12', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-12', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-12', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-14', 2, '������ ȸ��', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-15', 1, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-16', 2, '�İ� �ٹ�', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-18', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-19', 2, '����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-21', 3, '������ ȸ��', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-22', 1, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-25', 2, '��ȹ������ ȸ��', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-10-27', 3, '�׽�Ʈ �ڵ� �ۼ�', '���', 'C');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-01', 4, '���� ���', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-03', 2, '����', '���', 'C');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-04', 1, '���� ���� ȸ��', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-05', 2, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-07', 2, '�İ� �ٹ�', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-08', 1, '���� ����', '���', 'C');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-09', 3, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-11', 2, '���� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-12', 3, '��� ����', '���', 'A');
INSERT INTO OVERWORK (OVER_CODE, ECODE, DEPT_CODE, OVER_DATE, OVER_TIME, OVER_NAME, OVER_REASON, OVER_APPROVAL)
VALUES (SEQ_OVER_CODE_NO.NEXTVAL, 2, 5, '2022-11-13', 2, '���� ����', '���', 'A');

COMMIT;


--DAYOFF ���̵����� 
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 5, 2, '2022-11-01','2022-11-02', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 3, 1, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'W');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 4, 2, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 5, 3, '2022-11-06','2022-11-07', 2, '�ؿ� ����', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 6, 4, '2022-10-01','2022-10-05', 2, '������ ȫõ', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 7, 2, '2022-11-11','2022-11-11', 1, '���� �Ʒ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 8, 6, '2022-10-01','2022-10-05', 2, '���Ƹ� ��ũ��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 9, 7, '2022-10-01','2022-10-05', 2, '����', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 10, 2, '2022-11-13','2022-11-14', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 11, 2, '2022-11-09','2022-11-10', 2, '��������', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 12, 5, '2022-10-01','2022-10-05', 2, '���θ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 13, 4, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 14, 11, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 15, 3, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 16, 7, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 17, 9, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 18, 11, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 24, 15, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 23, 1, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 34, 6, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 56, 5, '2022-11-07','2022-11-08', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 67, 5, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 78, 3, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 89, 9, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 90, 8, '2022-10-01','2022-10-05', 2, '���θ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 12, 7, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 43, 6, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 54, 4, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 76, 5, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 33, 3, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 88, 2, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 55, 3, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 77, 4, '2022-10-01','2022-10-05', 2, '���θ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 99, 8, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 39, 10, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 49, 5, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 19, 4, '2022-11-01','2022-11-02', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 72, 10, '2022-11-07','2022-11-08', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 62, 11, '2022-10-01','2022-10-05', 2, '���θ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 32, 2, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 22, 5, '2022-10-01','2022-10-05', 2, '���θ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 97, 1, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 42, 8, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 76, 6, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 30, 3, '2022-10-01','2022-10-05', 2, '���θ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 80, 4, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 81, 14, '2022-11-09','2022-11-11', 3, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 84, 15, '2022-11-12','2022-11-12', 1, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 85, 16, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 86, 17, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 91, 13, '2022-10-01','2022-10-05', 2, '�λ꿩��', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 88, 11, '2022-10-01','2022-10-05', 2, '���θ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 85, 12, '2022-10-01','2022-10-05', 2, '�ؿ���', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 84, 14, '2022-10-01','2022-10-05', 2, '���� ���� ���ϴ�', 'A');
INSERT INTO DAYOFF (OFF_CODE, ECODE, DEPT_CODE, OFF_START_DATE, OFF_END_DATE, OFF_DAYS, OFF_REASON, OFF_APPROVAL)
VALUES (SEQ_DAYOFF_CODE_NO.NEXTVAL, 61, 5, '2022-10-01','2022-10-05', 2, '���θ�', 'A');


COMMIT;


--DAYOFF_COUNT ���̵�����
INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 1, 25);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 2, 23);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 3, 20);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 4, 19);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 5, 18);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 6, 16);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 7, 15);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 8, 10);

INSERT INTO DAYOFF_COUNT (COUNT_CODE, RANK_CODE, OFF_ALL)
VALUES(SEQ_DAYOFF_COUNT_CODE_NO.NEXTVAL, 9, 5);

COMMIT;




-----------------------
--���� ������
-----------------------

--���� Ȩ������ ����
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'������Ʈ ��ȹ' ,'WORK' ,'2022/10/17' ,'2022/10/24' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'����Ʈ���屸��' ,'WORK' ,'2022/10/25' ,'2022/10/31 11:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'�鿣�屸��' ,'WORK' ,'2022/11/01' ,'2022/11/14' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'������Ʈ ��ǥ' ,'WORK' ,'2022/11/15' ,'2022/11/15' ,'TRUE ' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'�ְ�����' ,'WORK' ,'2022/11/14 10:30:00' ,'2022/11/14 11:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'����ȸ��' ,'WORK' ,'2022/11/15 13:30:00' ,'2022/11/15 15:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'��ȹȸ��' ,'WORK' ,'2022/11/17 15:30:00' ,'2022/11/17 17:00:00' ,'FALSE' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'���� ����' ,'HOME' ,'2022/11/11 15:30:00' ,'2022/11/11 17:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'�Ա� ����' ,'HOME' ,'2022/11/15 15:30:00' ,'2022/11/15 17:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'���ø��� ����' ,'HOME' ,'2022/11/16 15:30:00' ,'2022/11/16 17:00:00' ,'FALSE' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'����� ������ ���ֱ�' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'���� ����' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'���๰ǰ üũ�ϱ�' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'�������� Ȯ��' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,1 ,'�̸��� Ȯ��' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'TRUE ' ,'N' ) ;

--EMPCODE 98�� �ÿ��� �����߰� �۰��� 98�� user28 / 1234
--�μ�����
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'������Ʈ ��ȹ' ,'WORK' ,'2022/10/17' ,'2022/10/24' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'����Ʈ���屸��' ,'WORK' ,'2022/10/25' ,'2022/10/31 11:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'�鿣�屸��' ,'WORK' ,'2022/11/01' ,'2022/11/14' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'������Ʈ ��ǥ' ,'WORK' ,'2022/11/15' ,'2022/11/15' ,'TRUE ' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'�ְ�����' ,'WORK' ,'2022/11/14 10:30:00' ,'2022/11/14 11:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'����ȸ��' ,'WORK' ,'2022/11/15 13:30:00' ,'2022/11/15 15:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'��ȹȸ��' ,'WORK' ,'2022/11/17 15:30:00' ,'2022/11/17 17:00:00' ,'FALSE' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'������Ʈ ��ȹ' ,'WORK' ,'2022/11/17' ,'2022/11/24' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'����Ʈ���屸��' ,'WORK' ,'2022/11/25' ,'2022/11/30 11:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'�鿣�屸��' ,'WORK' ,'2022/12/01' ,'2022/12/14' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'������Ʈ ��ǥ' ,'WORK' ,'2022/12/15' ,'2022/12/15' ,'TRUE ' ,'N' ) ;


INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'����ǰ ȫ�� ���� �� �����Ȳ' ,'WORK' ,'2022/11/1 11:30:00' ,'2022/11/4 17:00:00' ,'TRUE ' ,'N' ) ;

--��������


INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'���� ����' ,'HOME' ,'2022/11/11 15:30:00' ,'2022/11/11 17:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'�Ա� ����' ,'HOME' ,'2022/11/15 15:30:00' ,'2022/11/15 17:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'���ø��� ����' ,'HOME' ,'2022/11/16 15:30:00' ,'2022/11/16 17:00:00' ,'FALSE' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'����� ������ ���ֱ�' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'���� ����' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'���๰ǰ üũ�ϱ�' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'�������� Ȯ��' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'�̸��� Ȯ��' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'TRUE ' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,98 ,'ȸ��' ,'HOME' ,'2022/11/15 18:30:00' ,'2022/11/11 19:00:00' ,'TRUE ' ,'N' ) ;

--���� ������
--EMPCODE 101�� �ÿ��� �����߰� ������ ����� user31 / 1234
--���� �μ���ȣ�� �߰�X
--��������
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'�鿣�� MVC �����ϱ�' ,'HOME' ,'2022/11/01 12:30:00' ,'2022/11/03 15:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'�鿣�� ������ �۾�' ,'HOME' ,'2022/11/10 12:30:00' ,'2022/11/12 15:00:00' ,'TRUE ' ,'N' ) ;

INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'�۰���� ���� ���� �����帮��' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 15:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'�۰���� �Ա� ���� �����帮��' ,'HOME' ,'2022/11/15 13:30:00' ,'2022/11/15 15:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'�۰���� ���ø��� ���� �����帮��' ,'HOME' ,'2022/11/16 15:00:00' ,'2022/11/16 16:30:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'��ħ ȸ�� �غ�' ,'HOME' ,'2022/11/14 09:30:00' ,'2022/11/14 10:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'���� ������ ��帮��' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'TRUE ' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'���๰ǰ �ø���' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'�������� Ȯ���ϰ� �����帮��' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'FALSE' ,'N' ) ;
INSERT INTO CALENDAR ( CAL_CODE , EMP_CODE , CAL_TITLE , CAL_TYPE, CAL_START , CAL_END , CAL_ALLDAY , CAL_HOLIDAY ) VALUES ( SEQ_CAL_CODE.NEXTVAL ,101 ,'�̸��� Ȯ�� ' ,'HOME' ,'2022/11/11 12:30:00' ,'2022/11/11 13:00:00' ,'TRUE ' ,'N' ) ;
COMMIT;

--���� ������

--EMPCODE 98�� �ÿ��� ���ϸŴ��� �����߰� �۰��� 98�� user28 / 1234
INSERT INTO FILECLOUD ( FILE_CODE , EMP_CODE , FILE_TITLE , FILE_CONTENT , FILE_NAME , FILE_URL , FILE_ENROLLDATE , FILE_TYPE , FILE_SIZE )  VALUES ( SEQ_FILE_CODE.NEXTVAL , 98 , 'UI ���� �̹��� ����' , 'UI���� ������ ĸó�� �����Դϴ�.' , '1666872785465_17777.png' , 'D:\devFinal\ws\EveryWare\src\main\webapp\resources\upload\filemanager\' , SYSDATE , 'png' , '36KB' );
INSERT INTO FILECLOUD ( FILE_CODE , EMP_CODE , FILE_TITLE , FILE_CONTENT , FILE_NAME , FILE_URL , FILE_ENROLLDATE , FILE_TYPE , FILE_SIZE )  VALUES ( SEQ_FILE_CODE.NEXTVAL , 98 , '���� ���� ��Ű�Դϴ�' , '�� ���� ������' , '1666874923549_85432.jpg' , 'D:\devFinal\ws\EveryWare\src\main\webapp\resources\upload\filemanager\' , SYSDATE , 'jpg' , '8KB' );
INSERT INTO FILECLOUD ( FILE_CODE , EMP_CODE , FILE_TITLE , FILE_CONTENT , FILE_NAME , FILE_URL , FILE_ENROLLDATE , FILE_TYPE , FILE_SIZE )  VALUES ( SEQ_FILE_CODE.NEXTVAL , 98 , '�ι� ������ ����' , '�ι� ������ �����Դϴ�.' , '1666873632009_57231.png' , 'D:\devFinal\ws\EveryWare\src\main\webapp\resources\upload\filemanager\' , SYSDATE , 'png' , '16KB' );
INSERT INTO FILECLOUD ( FILE_CODE , EMP_CODE , FILE_TITLE , FILE_CONTENT , FILE_NAME , FILE_URL , FILE_ENROLLDATE , FILE_TYPE , FILE_SIZE )  VALUES ( SEQ_FILE_CODE.NEXTVAL , 98 , '���긮���� �ΰ� �����Դϴ�!' , '�α� ���� ÷���߽��ϴ�. ' , '1667372036602_56190.png' , 'D:\devFinal\ws\EveryWare\src\main\webapp\resources\upload\filemanager\' , SYSDATE , 'png' , '15KB' );

INSERT INTO FILECLOUD ( FILE_CODE , EMP_CODE , FILE_TITLE , FILE_CONTENT , FILE_NAME , FILE_URL , FILE_ENROLLDATE , FILE_TYPE , FILE_SIZE, FILE_BOOKMARK )  VALUES ( SEQ_FILE_CODE.NEXTVAL , 98 , '�ڷγ� ���� ���� �̹��� ����' , '�ڷγ� ���� ���� �̹��� �����Դϴ�. ' , '1668153574964_19142.zip' , 'D:\devFinal\ws\EveryWare\src\main\webapp\resources\upload\filemanager\' , SYSDATE , 'zip' , '37KB', '1' );
INSERT INTO FILECLOUD ( FILE_CODE , EMP_CODE , FILE_TITLE , FILE_CONTENT , FILE_NAME , FILE_URL , FILE_ENROLLDATE , FILE_TYPE , FILE_SIZE )  VALUES ( SEQ_FILE_CODE.NEXTVAL , 98 , '�۳� ����' , '�߾��� ����' , '1668153408093_71902.jpg' , 'D:\devFinal\ws\EveryWare\src\main\webapp\resources\upload\filemanager\' , SYSDATE , 'png' , '1MB' );

--EMPCODE 101�� �ÿ��� ���ϸŴ��� �����߰� ������ ����� user31 / 1234


--NOTICE

INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�1', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);

INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668140356406_77200  '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);


INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�2', '�ȳ��ϼ��� EVERYWARE �������Դϴ�2', SYSDATE, SYSDATE);

INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'1.jpg'
		 ,'1668139644688_67624 '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);

INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�3', '�ȳ��ϼ��� EVERYWARE �������Դϴ�3', SYSDATE, SYSDATE);

 INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'2.jpg'
		 ,'1668139572971_21010 '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);
INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�4', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);
 
 INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'4.jpg'
		 ,'1668139111683_27214'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);


INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�5', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);

INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668140356406_77200  '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);

INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�6', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);

INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'1.jpg'
		 ,'1668139644688_67624 '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);

INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�7', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);


 INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'2.jpg'
		 ,'1668139572971_21010 '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);

INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�8', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);

 INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'4.jpg'
		 ,'1668139111683_27214'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);

INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�9', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);
INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668140356406_77200  '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);
INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�10', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);
INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'1.jpg'
		 ,'1668139644688_67624 '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);
INSERT INTO NOTICE (NOTICE_CODE, NOTICE_TITLE, NOTICE_CONTENT ,NOTICE_DATE ,NOTICE_UPDATE)
VALUES (SEQ_NOTICE_CODE.NEXTVAL, '���������Դϴ�11', '�ȳ��ϼ��� EVERYWARE �������Դϴ�', SYSDATE, SYSDATE);

INSERT INTO NOTICE_FILE (NOTICE_FILE_CODE, NOTICE_CODE, NOTICE_ORIGIN_NAME, NOTICE_CHANGE_NAME, NOTICE_FILE_ROOT)
		VALUES
		(
		 SEQ_NOTICE_FILE_CODE.NEXTVAL
		 ,SEQ_NOTICE_CODE.CURRVAL
		 ,'2.jpg'
		 ,'1668139572971_21010 '
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\notice\'
		);

COMMIT;



INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', 'Ȯ�� �ٶ��ϴ�', '�׽�Ʈ�� 1', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668143830727_12028'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'1.jpg'
		 ,'1668144328960_76516'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);      
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'2.jpg'
		 ,'1668144328966_12249'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�2', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'3.jpg'
		 ,'1668144328970_86315'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);
 INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', 'Ȯ�� �ٶ��ϴ�', '�׽�Ʈ�� 1', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668143830727_12028'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'1.jpg'
		 ,'1668144328960_76516'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);      
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'2.jpg'
		 ,'1668144328966_12249'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�2', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'3.jpg'
		 ,'1668144328970_86315'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		); 
  INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', 'Ȯ�� �ٶ��ϴ�', '�׽�Ʈ�� 1', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668143830727_12028'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'1.jpg'
		 ,'1668144328960_76516'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);      
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'2.jpg'
		 ,'1668144328966_12249'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '1','admin@everyware.com', '���� �ٶ��ϴ�2', '������ �ݿ����Դϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'3.jpg'
		 ,'1668144328970_86315'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);       
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�', '�׽�Ʈ�� 1', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668143830727_12028'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);     
        COMMIT;        

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�2', '�׽�Ʈ�� 1', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�3', '�系 ������ ���� �������� �ֽ��ϴ�', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�4', '�系 ������ ���� �������� �ֽ��ϴ� 1', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', 'Ȯ�� �ٶ��ϴ�5', '�系 ������ ���� �������� �ֽ��ϴ� 2', SYSDATE,'user01@everyware.com');


INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�2', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�3', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�4', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�5', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�6', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�7', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�8', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�9', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�10', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '�ݰ����ϴ�', '���� ȸ�ǿ� ���� �����帱�� �ֽ��ϴ�11', SYSDATE,'admin@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '3','user02@everyware.com', '�̹��� Ȯ�� �ٶ��ϴ�', '�׽�Ʈ�� 1', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL_FILE (MAIL_FILE_CODE, MAIL_CODE, MAIL_ORIGIN_NAME, MAIL_CHANGE_NAME, MAIL_FILE_ROOT)
		VALUES
		(
		 SEQ_MAIL_FILE_CODE.NEXTVAL
		 ,SEQ_MAIL_CODE.CURRVAL
		 ,'guest.png'
		 ,'1668143830727_12028'
		 ,'D:\EveryWare hi\ws\EveryWare\src\main\webapp\resources\upload\mail\'
		);     
        
INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�', '���� �� ����', SYSDATE,'user01@everyware.com');


INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�2', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�3', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�4', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�5', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�6', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�7', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�8', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�9', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�10', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�', '���� �� ����', SYSDATE,'user01@everyware.com');

INSERT INTO MAIL (MAIL_CODE, EMP_CODE, MAIL_SENDER, MAIL_TITLE, MAIL_CONTENT, MAIL_SENDDATE, MAIL_RECEIVER)
VALUES (SEQ_MAIL_CODE.NEXTVAL, '2','user01@everyware.com', '���� ���� �޸�', '���� �� ����', SYSDATE,'user01@everyware.com');

COMMIT;

--�ּҷ� ���̵�����--------------------------------------------------
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh01@gmail.com', '010-3465-5325', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '�̾Ƹ�', 'kh02@gmail.com', '010-3463-5625', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '�ڻ��', 'kh03@gmail.com', '010-3092-1225', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh04@gmail.com', '010-9965-0105', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '�����', 'kh05@gmail.com', '010-8321-0455', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh06@gmail.com', '010-9941-1473', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '��ȿ��', 'kh07@gmail.com', '010-3335-7811', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh08@gmail.com', '010-2278-3678', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh09@gmail.com', '010-3865-5305', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh10@gmail.com', '010-3565-0005', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh11@gmail.com', '010-8542-3446', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '���ͼ�', 'kh12@gmail.com', '010-3904-2941', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '���ƿ�', 'kh13@gmail.com', '010-2039-3943', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh14@gmail.com', '010-3003-5325', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '���ؿ�', 'kh15@gmail.com', '010-3039-0881', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '�ڼ���', 'kh16@gmail.com', '010-2003-1923', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '���Ѽ�', 'kh17@gmail.com', '010-3004-1234', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh18@gmail.com', '010-4988-2358', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '������', 'kh19@gmail.com', '010-3379-3406', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');
INSERT INTO CONTACTS (CON_NO, CON_WRITER, CON_NAME, CON_EMAIL, CON_TEL, CON_COMPANY, CON_MEMO, FILE_NAME)
VALUES (SEQ_CONTACTS_NO.NEXTVAL, '1', '�ɿ���', 'kh20@gmail.com', '010-9812-7553', 'KH COMPANY', '�ּҷ� ��� �Ϸ�' , '1666956520181_55956.png');


--���� ���̵�����----------------------------------------------------
INSERT INTO BOOKING (BK_NO, BK_WRITER, BK_TYPE, BK_TARGET_NO, BK_START, START_TIME, BK_END, END_TIME)
VALUES (SEQ_BOOKING_NO.NEXTVAL, '1', 'A', '1', TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('16:00', 'HH24:MI'), TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('18:00', 'HH24:MI'));
INSERT INTO BOOKING (BK_NO, BK_WRITER, BK_TYPE, BK_TARGET_NO, BK_START, START_TIME, BK_END, END_TIME)
VALUES (SEQ_BOOKING_NO.NEXTVAL, '1', 'A', '2', TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('16:00', 'HH24:MI'), TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('18:00', 'HH24:MI'));
INSERT INTO BOOKING (BK_NO, BK_WRITER, BK_TYPE, BK_TARGET_NO, BK_START, START_TIME, BK_END, END_TIME)
VALUES (SEQ_BOOKING_NO.NEXTVAL, '1', 'A', '3', TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('15:00', 'HH24:MI'), TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('16:00', 'HH24:MI'));
INSERT INTO BOOKING (BK_NO, BK_WRITER, BK_TYPE, BK_TARGET_NO, BK_START, START_TIME, BK_END, END_TIME)
VALUES (SEQ_BOOKING_NO.NEXTVAL, '1', 'M', '4', TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('14:00', 'HH24:MI'), TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('16:00', 'HH24:MI'));
INSERT INTO BOOKING (BK_NO, BK_WRITER, BK_TYPE, BK_TARGET_NO, BK_START, START_TIME, BK_END, END_TIME)
VALUES (SEQ_BOOKING_NO.NEXTVAL, '1', 'M', '5', TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('17:00', 'HH24:MI'), TO_DATE('2022/11/14', 'YYYY/MM/DD'), TO_DATE('18:00', 'HH24:MI'));


-- Ÿ�� ���̵�����----------------------------------------------------        
INSERT INTO TARGET ( TARGET_NO ,TARGET_NAME , TARGET_TAG, TARGET_IMAGE)
VALUES ( SEQ_TARGET_NO.NEXTVAL , '��������Ʈ' , '��ǰ' , 'bim.png');
INSERT INTO TARGET ( TARGET_NO ,TARGET_NAME , TARGET_TAG, TARGET_IMAGE)
VALUES ( SEQ_TARGET_NO.NEXTVAL , 'Ŀ�Ǹӽ�' , '��ǰ' , 'illy.png');
INSERT INTO TARGET ( TARGET_NO ,TARGET_NAME , TARGET_TAG, TARGET_IMAGE)
VALUES ( SEQ_TARGET_NO.NEXTVAL , '��Ʈ��' , '��ǰ' , 'laptop.png');
INSERT INTO TARGET ( TARGET_NO ,TARGET_NAME , TARGET_TAG, TARGET_IMAGE)
VALUES ( SEQ_TARGET_NO.NEXTVAL , 'ȸ�ǽ�01' , 'ȸ�ǽ�' , 'meeting_room01.png');
INSERT INTO TARGET ( TARGET_NO ,TARGET_NAME , TARGET_TAG, TARGET_IMAGE)
VALUES ( SEQ_TARGET_NO.NEXTVAL , 'ȸ�ǽ�02' , 'ȸ�ǽ�' , 'meeting_room02.png');

COMMIT;
