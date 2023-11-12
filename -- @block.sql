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

-- @block
CREATE TABLE HiddenWorlds(
    id INT AUTO_INCREMENT,
    street VARCHAR(255),
    owner_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (owner_id) REFERENCES Users(id)
);
-- @block
INSERT INTO HiddenWorlds (owner_id, street)
VALUES 
    (1, 'san diego sail'),
    (1, 'gp smol home'),
    (1, 'arlington mansion'),
    (1, 'irving box');