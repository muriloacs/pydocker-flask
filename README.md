docker build -t muriloacs/pydocker-flask .

docker run -d -p 8080:8080 -v "$(pwd)"/app:/usr/src/app --name app muriloacs/pydocker-flask