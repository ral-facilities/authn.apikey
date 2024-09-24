CREATE TABLE IF NOT EXISTS APP_KEYS (
    ID BIGINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    USERNAME VARCHAR(255) NOT NULL,
    API_KEY VARCHAR(255) NOT NULL,
    EXPIRY BIGINT NOT NULL
    );

-- Inserting data into the APP_KEYS table
INSERT INTO APP_KEYS (USERNAME, API_KEY, EXPIRY)
VALUES ('app1', 'db74c940d447e877d119df613edd2700c4a84cd1cf08beb7cbc319bcfaeab97a', '1695543307'); -- expired

INSERT INTO APP_KEYS (USERNAME, API_KEY, EXPIRY)
VALUES ('app3', 'f82578ee7624ea0a1b7a266d33d79095795e5557abaa189076241d3ce9fdd47b', '1695543307'); -- expired

INSERT INTO APP_KEYS (USERNAME, API_KEY, EXPIRY)
VALUES ('app2', '0059bfc57922c1708b63e31c04589f4b33155c5b24327bcb5b7b25859c84e399', '1695543307'); -- expired

INSERT INTO APP_KEYS (USERNAME, API_KEY, EXPIRY)
VALUES ('app2', '1159bfc57922c1708b63e31c04589f4b33155c5b24327bcb5b7b25859c84e399', '1758701707'); -- 2025-09-24T08:15:07+0000