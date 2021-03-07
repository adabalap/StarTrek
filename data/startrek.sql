# sequence | season | episode | character | quote

CREATE TABLE startrek (
	character VARCHAR(50),
	quote VARCHAR(1000) UNIQUE,
	season VARCHAR(100),
	episod VARCHAR(10)
);
