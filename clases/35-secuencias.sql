CREATE SEQUENCE user_sequence;
DROP SEQUENCE user_sequence;

SELECT currval('user_sequence'), nextval('user_sequence');

CREATE TABLE "users6" (
	"user_id" INTEGER PRIMARY KEY default nextval('user_sequence'),
	"username" VARCHAR
);