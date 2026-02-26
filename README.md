# Verify Docker Socket Access
Verify Jenkins can access Docker on the host:

Go to Jenkins Dashboard
Manage Jenkins → Script Console
Run this Groovy script:
```bash
def process = "docker ps".execute()
process.waitFor()
println process.text
```

# Running the project
Run: `docker compose up` or `docker-compose up` depending on your docker compose version. 