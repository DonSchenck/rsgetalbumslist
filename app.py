from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route("/albums")
def getalbumlist():
    album_list = [{
        "albumID": 1,
        "albumTitle": "Exile on Main Street",
        "releaseYear": 1972
    },
    {
        "albumID": 2,
        "albumTitle": "Some Girls",
        "releaseYear": 1978}
    ]
    return jsonify(album_list), 200

if __name__ == "__main__":
    app.run(debug=True)

