-- @block
CREATE TABLE Users(
    id INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    bio TEXT,
    country VARCHAR(2)
);
-- @block
INSERT INTO Users (email, bio, country)
VALUES
('hello@world.com','i am so tired','US'),
('hellos@world.com','i am so tired','US'),
('tom@field.com','i am tom field','US'),
('broom@stick.com','sweep sweep','TX')
-- @block
INSERT INTO Users (email, bio, country)
VALUES 
('froom@stick.com','sweeeep','TX')
-- @block
SELECT email, id FROM Users

WHERE country = 'TX'
AND email LIKE 'b%'
OR email LIKE 'f%'

ORDER BY ID ASC
LIMIT 2;
-- @block
CREATE INDEX email_index ON Users(email);