from flask import Flask
import redis

# App
app = Flask(__name__)

# Redis
r = redis.StrictRedis(host='redis', port=6379, db=0)
r.set('place', 'pyWorld')


@app.route('/')
def hello_word():
    return 'Hello {0}!!\n'.format(r.get('place'))


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)
