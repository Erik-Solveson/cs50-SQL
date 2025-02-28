-- SELECT "address_id", "action", "package_id" FROM "scans" 
SELECT "address" FROM "addresses" WHERE "id" = (
    SELECT "to_address_id" FROM "packages" WHERE "id" = (
        SELECT "package_id" FROM "scans" WHERE "address_id" = (    
            SELECT "id" FROM "addresses" WHERE "address" = '900 Somerville Avenue')));


        -- SELECT * FROM "addresses" WHERE "address" = '2 Finnigan Street';