-- Schema: CREATE TABLE "twofer" ("input" TEXT, "response" TEXT);
-- Task: update the twofer table and set the response based on the input.
UPDATE twofer SET response = 'One for you, one for me.' WHERE input = '';
UPDATE twofer SET response = 'One for ' || input || ', one for me.' WHERE input <> '';