CREATE TABLE snippets (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    content TEXT not null,
    created_date TEXT NOT NULL,
    expires_date TEXT NOT NULL
);

CREATE INDEX idx_snippets_created ON snippets(created_date);