# API Summary

## 1. What is a REST API?

A REST API is a way for two programs to communicate over the internet using standard HTTP methods like GET, POST, PUT and DELETE. The client sends a request to a URL called an endpoint, and the server responds with data, usually in JSON format. In this task I used GET requests with curl to fetch my GitHub profile and sample posts from JSONPlaceholder.

## 2. HTTP Status Codes Observed

| Code | Meaning | Where I saw it |
|------|---------|----------------|
| 200 OK | The request was successful and the server returned the data. | Fetching https://api.github.com/users/paribansal3112-hub |
| 404 Not Found | The requested resource does not exist on the server. | Fetching a GitHub username that does not exist |

Command used to check the status code:

    curl -s -o /dev/null -w "Status: %{http_code}\n" <url>

## 3. jq Filter Used

    cat API/github_profile.json | jq '{name:.name, repos:.public_repos, followers:.followers, joined:.created_at}'

| Part | What it does |
|------|--------------|
| cat API/github_profile.json | Prints the saved JSON file |
| pipe symbol | Sends that output into jq as input |
| jq '...' | Runs a jq filter on the JSON |
| { ... } | Builds a new JSON object with only the chosen fields |
| name:.name | Creates key "name" with the value of the name field |
| repos:.public_repos | Creates key "repos" with the number of public repositories |
| followers:.followers | Creates key "followers" with the follower count |
| joined:.created_at | Creates key "joined" with the account creation date |

I also used `jq length` on sample_posts.json, which counts the items in the JSON array. It returned 100 posts.
