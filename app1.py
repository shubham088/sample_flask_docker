from flask import Flask

from flask_restx import Resource, Api


app1 = Flask(__name__)
api1 = Api(app1)

@api1.route('/hello')
class HelloWorld(Resource):
    def get(self):
        return {'hello': 'world'}

if __name__ == '__main__':
    app1.run(host='0.0.0.0', port=5005)


