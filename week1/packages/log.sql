
-- *** The Lost Letter ***
SELECT "id" FROM "addresses"
WHERE "address" = '900 Somerville Avenue';

SELECT "id" FROM "packages"
WHERE ("from_address_id" = 432)
AND ("contents"='Congratulatory letter');

SELECT "address", "type" FROM "addresses" WHERE "id" = 854;

-- *** The Devious Delivery ***
SELECT "contents" FROM packages WHERE "id" = (
    SELECT "id" FROM "packages" WHERE "from_address_id" IS NULL);

SELECT "address_id" FROM "scans" WHERE ("package_id" = 5098) AND ("action" = 'Drop');

SELECT "type" FROM "addresses" WHERE "id" = 348;

-- JOIN method:

SELECT "addresses.type" FROM "scans"
JOIN "addresses" ON "scans.address_id" = "addresses.id"
WHERE "scans.package_id" = 5098 AND "scans.action" = 'Drop';

-- *** The Forgotten Gift ***

SELECT * FROM "packages" WHERE "from_address_id" = (
    SELECT "id" FROM "addresses" WHERE "address" = '109 Tileston Street');

-- JOIN method (get both id and content together)
SELECT "p.id", "p.contents", "a.address" FROM "packages" p JOIN "addresses" a
ON "p.from_address_id" = "a.id" WHERE "a.address" = '109 Tileston Street';

SELECT * FROM "scans" s JOIN "drivers" d ON "s.driver_id" = "d.id"
WHERE "s.package_id" = 9523 ORDER BY "s.timestamp" DESC;


