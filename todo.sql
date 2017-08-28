
-- 1
CREATE TABLE todos (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(800),
  priority INTEGER NOT NULL DEFAULT '1',
  created_at  TIMESTAMP NOT NULL,
  completed_at  TIMESTAMP
);
-- 2
INSERT into todos (title, priority, created_at) VALUES('Make Dinner',1, current_TIMESTAMP );

INSERT into todos (title, priority, created_at) VALUES('Give elephant a bath',3, current_TIMESTAMP );

INSERT into todos (title, priority, created_at) VALUES('Practice skiping',1, current_TIMESTAMP );

INSERT into todos (title, details, priority, created_at) VALUES('Steal back kitty pillow','Pillow is at Lucas house on the downstairs couch',5, current_TIMESTAMP );

INSERT into todos (title, priority, created_at) VALUES('Be rude to Andrew',1, current_TIMESTAMP );

-- 3
SELECT * FROM todos WHERE completed_at is NULL;

-- 4
SELECT * FROM todos WHERE priority > 1;

--  5
UPDATE todos SET completed_at = current_TIMESTAMP WHERE id = 5;

-- 6
DELETE FROM todos WHERE completed_at is NOT NULL;
