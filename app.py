
from flask import Flask
app= Flask(__name__)
print("Hello!!")


@app.route("/info")
def info():
    return ("name:Riya")
@app.route("/branch")
def branch():
    return ("branch:csai") 
app.run(host=0.0.0.0)
