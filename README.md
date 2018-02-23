docker build -t muriloacs/pydocker-flask .

docker run --rm -d -p 8080:8080 -v "$(pwd)"/app:/usr/src/app --name app -e "ENV=DEV" muriloacs/pydocker-flask