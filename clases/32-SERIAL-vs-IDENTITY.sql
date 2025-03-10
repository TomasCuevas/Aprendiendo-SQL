CREATE TABLE "users" (
	"user_id" SERIAL PRIMARY KEY,
	"username" VARCHAR
);

CREATE TABLE "users2" (
	"user_id" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
	"username" VARCHAR
);

CREATE TABLE "users3" (
	"user_id" INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
	"username" VARCHAR
);

CREATE TABLE "users4" (
	"user_id" INTEGER GENERATED ALWAYS AS IDENTITY (START WITH 100 INCREMENT BY 2),
	"username" VARCHAR
);