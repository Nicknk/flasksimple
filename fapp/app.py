import os
import sys
import argparse

from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'My first flask application for docker'

def createParser():
    parser = argparse.ArgumentParser()
    parser.add_argument('-p', '--port', default='5000')
    parser.add_argument('-a', '--address', default='0.0.0.0')
    parser.add_argument('-d', '--debug', default=False)

    return parser

if __name__ == '__main__':
    parser = createParser()
    params = parser.parse_args(sys.argv[1:])
    print(params)
    app.run(debug=params.debug,host=params.address,port=params.port)