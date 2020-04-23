from flask import Flask
app = Flask(__name__)


@app.route('/')
def index_route():
	return "I am from startapp dot sh, uhhuuuu"
	
if __name__ == "__main__":
	app.run(host='0.0.0.0')
