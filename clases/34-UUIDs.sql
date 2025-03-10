SELECT gen_random_uuid();

CREATE EXTENSION IF NOT EXISTS "uuid-ossp";
DROP EXTENSION "uuid-ossp";

SELECT uuid_generate_v4();

CREATE TABLE "users5" (
	"user_id" UUID DEFAULT uuid_generate_v4() PRIMARY KEY,
	"username" VARCHAR
);