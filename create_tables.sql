CREATE TABLE submissions (
    downs INTEGER,   
    url TEXT,
    id TEXT UNIQUE,  
    edited BOOLEAN, 
    num_reports TEXT,
    created_utc BIGINT,
    name TEXT,
    title TEXT,
    author TEXT,
    permalink TEXT,
    num_comments INTEGER,
    likes BOOLEAN,  
    subreddit_id TEXT,
    ups INTEGER
);

CREATE TABLE comments (
    distinguished TEXT,
    downs INTEGER,
    created_utc BIGINT,
    controversiality INTEGER, 
    edited BOOLEAN, 
    gilded INTEGER,  
    author_flair_css_class TEXT,
    id TEXT UNIQUE,  
    author TEXT,
    retrieved_on BIGINT,
    score_hidden BOOLEAN, 
    subreddit_id TEXT,
    score INTEGER,
    name TEXT,
    author_flair_text TEXT,
    link_id TEXT,
    archived BOOLEAN, 
    ups INTEGER,
    parent_id TEXT,
    subreddit TEXT,
    body TEXT
);

CREATE TABLE authors (
    id TEXT UNIQUE,       
    retrieved_on BIGINT,
    name TEXT UNIQUE,   
    created_utc BIGINT,
    link_karma INTEGER,
    comment_karma INTEGER,
    profile_img TEXT,
    profile_color TEXT,
    profile_over_18 BOOLEAN 
);

CREATE TABLE subreddits (
    banner_background_image TEXT,
    created_utc BIGINT,
    description TEXT,
    display_name TEXT UNIQUE,
    header_img TEXT,
    hide_ads TEXT,
    id TEXT UNIQUE, 
    over18 TEXT,
    public_description TEXT,
    retrieved_utc BIGINT,
    name TEXT UNIQUE,
    subreddit_type TEXT,
    subscribers INTEGER,
    title TEXT,
    whitelist_status TEXT
);
