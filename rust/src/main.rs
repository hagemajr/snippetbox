use std::net::SocketAddr;

use axum::{routing::get, Router};

// basic handler that responds with a static string
async fn home() -> &'static str {
	"Hello from Snippetbox"
}

async fn snippet_view() -> &'static str {
	"Display a specific snippet...."
}

async fn snippet_create() -> &'static str {
	"Create a new snippet...."
}

#[tokio::main]
async fn main() {
	let app = Router::new()
    	.route("/", get(home))
    	.route("/snippet/view", get(snippet_view))
    	.route("/snippet/create", get(snippet_create));

	let addr = SocketAddr::from(([127, 0, 0, 1], 3000));
	axum::Server::bind(&addr)
    	.serve(app.into_make_service())
    	.await
    	.unwrap();
}