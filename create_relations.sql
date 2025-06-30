ALTER TABLE authors ADD CONSTRAINT pk_authors PRIMARY KEY (id);
ALTER TABLE subreddits ADD CONSTRAINT pk_subreddits PRIMARY KEY (id);
ALTER TABLE submissions ADD CONSTRAINT pk_submissions PRIMARY KEY (id);
ALTER TABLE comments ADD CONSTRAINT pk_comments PRIMARY KEY (id);

ALTER TABLE comments
ADD CONSTRAINT fk_comments_author
FOREIGN KEY (author) REFERENCES authors(name);

ALTER TABLE comments
ADD CONSTRAINT fk_comments_subreddit
FOREIGN KEY (subreddit_id) REFERENCES subreddits(name);

ALTER TABLE comments
ADD CONSTRAINT fk_comments_link
FOREIGN KEY (subreddit) REFERENCES subreddits(display_name);

ALTER TABLE submissions
ADD CONSTRAINT fk_submissions_author
FOREIGN KEY (author) REFERENCES authors(name);

ALTER TABLE submissions
ADD CONSTRAINT fk_submissions_subreddit
FOREIGN KEY (subreddit_id) REFERENCES subreddits(name);