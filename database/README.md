``` powershell
docker run --name budget -d -p  5432:5432 `
-e POSTGRES_USER=postgres `
-e POSTGRES_PASSWORD=admin `
-e POSTGRES_DB=Budget `
-v C:\Users\user\Desktop\Project-Budget\database:/docker-entrypoint-initdb.d `
-v postgres-data:/var/lib/postgresql/data `
postgres:15.2 
```

docker run --name budget -d -p  2022:5432 `
-e POSTGRES_USER=postgres `
-e POSTGRES_PASSWORD=admin `
-v C:\Users\user\Desktop\Project-Budget\database:/docker-entrypoint-initdb.d `
-v postgres-data:/var/lib/postgresql/data `
postgres:15.2 