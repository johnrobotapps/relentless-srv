
from pathlib import Path

from flask import Flask, request, jsonify
#from wsgi import something

from relentlessdrv import FoodJournal





app = Flask(__name__)
app.config["DEBUG"] = True



#class FoodJournals:
#
#    def __init__(self):
#        self._dict = dict()
#
#    def __contains__(self, username):
#
#        if username in self._dict:
#            return True
#        else:
#            return False
#
#    def get(self, username, ifmissing=dict()):
#
#        return self._dict.get(
#            username, ifmissing
#        )



@app.route(routes["home"], methods=["GET"])
def home():
    return "API for Relentless Performance App"


@app.route(routes["foodJournal"], methods=["GET"])
def logentry():

    user = request.args.get("user", None)
    date = request.args.get("date", None)

    if None in {user,date}:
        result = {}

    else:
        foodjournal = foodjournals.get(user)
        result = foodjournal.get_log_entry(date)

    return jsonify(result)



if __name__ == "__main__":

    app.run()

