CREATE TABLE CATEGORY (
  ID SERIAL PRIMARY KEY,
  NAME VARCHAR(255) NOT NULL
);

CREATE TABLE AUTHOR (
  ID SERIAL PRIMARY KEY,
  FULL_NAME VARCHAR(255) NOT NULL
);

CREATE TABLE BOOK (
  ID SERIAL PRIMARY KEY,
  ISBN VARCHAR(14) UNIQUE,
  TITLE VARCHAR(255) NOT NULL,
  PUBLICATION_DATE DATE NOT NULL
);

CREATE TABLE BOOK_CATEGORY (
  ID SERIAL PRIMARY KEY,
  BOOK INTEGER REFERENCES BOOK(ID),
  CATEGORY INTEGER REFERENCES CATEGORY(ID),
  UNIQUE(BOOK, CATEGORY)
);

CREATE TABLE BOOK_AUTHOR (
  ID SERIAL PRIMARY KEY,
  BOOK INTEGER REFERENCES BOOK(ID),
  AUTHOR INTEGER REFERENCES AUTHOR(ID),
  UNIQUE(BOOK, AUTHOR)
);