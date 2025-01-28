CREATE TABLE "category" (
  "category_id" VARCHAR PRIMARY KEY,
  "category" VARCHAR NOT NULL
);

CREATE TABLE "subcategory" (
  "subcategory_id" VARCHAR PRIMARY KEY,
  "subcategory" VARCHAR NOT NULL
);

CREATE TABLE "contacts" (
  "contact_id" INT PRIMARY KEY,
  "first_name" VARCHAR NOT NULL,
  "last_name" VARCHAR NOT NULL,
  "email" VARCHAR NOT NULL
);

CREATE TABLE "campaign" (
  "cf_id" INT PRIMARY KEY,
  "contact_id" INT NOT NULL,
  "company_name" VARCHAR NOT NULL,
  "description" TEXT NOT NULL,
  "goal" FLOAT NOT NULL,
  "pledged" FLOAT NOT NULL,
  "outcome" VARCHAR NOT NULL,
  "backers_count" INT NOT NULL,
  "country" VARCHAR NOT NULL,
  "currency" VARCHAR NOT NULL,
  "launch_date" TIMESTAMP NOT NULL,
  "end_date" TIMESTAMP NOT NULL,
  "category_id" VARCHAR NOT NULL,
  "subcategory_id" VARCHAR NOT NULL
);

ALTER TABLE "campaign" ADD FOREIGN KEY ("contact_id") REFERENCES "contacts" ("contact_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("category_id") REFERENCES "category" ("category_id");

ALTER TABLE "campaign" ADD FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id");

SELECT table_name FROM information_schema.tables WHERE table_schema = 'public';

SELECT * FROM category LIMIT 5;
SELECT * FROM subcategory LIMIT 5;
SELECT * FROM contacts LIMIT 5;
SELECT * FROM campaign LIMIT 5;
