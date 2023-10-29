package models

import (
	"database/sql"
	"fmt"
	"time"
)

type Snippet struct {
	ID      int
	Title   string
	Content string
	Created time.Time
	Expires time.Time
}

type SnippetModel struct {
	DB *sql.DB
}

func (m *SnippetModel) Get(id int) (Snippet, error) {
	return Snippet{}, nil
}

func (m *SnippetModel) Insert(title string, content string, expires int) (int, error) {
	query := `
		INSERT INTO snippets (title, content, created_date, expires_date)
		VALUES (
				   '%s',
				   '%s',
				   datetime(),
				   datetime(datetime(), '+%d days')
			   );
	`
	cleansedQuery := fmt.Sprintf(query, title, content, expires)
	result, err := m.DB.Exec(cleansedQuery)
	if err != nil {
		return 0, err
	}
	id, err := result.LastInsertId()
	if err != nil {
		return 0, err
	}
	return int(id), nil
}
