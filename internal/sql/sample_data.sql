INSERT INTO snippets (title, content, created_date, expires_date)
VALUES (
           'An old silent pond',
           'An old silent pond...\nA frog jumps into the pond, \nsplash! Silence again.\n\n- Matsuo Basho',
           datetime(),
           datetime(datetime(), '+365 days')
       );

INSERT INTO snippets (title, content, created_date, expires_date)
VALUES (
           'Over the wintry forest',
           'Over the wintry\nforest, winds how in rage\nwith no leaves to blow.\n\n- Natsume Soseki',
           datetime(),
           datetime(datetime(), '+365 days')
       );

INSERT INTO snippets (title, content, created_date, expires_date)
VALUES (
           'First autumn morning',
           'First autumn morning\nthe mirror I state into\nshows my father''s face.\n\n- Murakami Kijo',
           datetime(),
           datetime(datetime(), '+365 days')
       );
