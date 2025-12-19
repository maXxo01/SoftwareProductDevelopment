CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(15) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL
);

CREATE OR REPLACE FUNCTION add_user(
    p_username VARCHAR,
    p_password VARCHAR
)
RETURNS INTEGER AS $$
BEGIN
    IF length(p_username) < 3 THEN
        RETURN -2;
    END IF;

    IF length(p_password) < 8 THEN
        RETURN -3;
    END IF;

    INSERT INTO users(username, password)
    VALUES (p_username, p_password);

    RETURN 1;

EXCEPTION
    WHEN unique_violation THEN
        RETURN -1;
END;
$$ LANGUAGE plpgsql;
