from flask import Flask, request, jsonify, json
from flask_sqlalchemy import SQLAlchemy
from flask_mysqldb import MySQL
from flask_marshmallow import Marshmallow



app = Flask(__name__)



db = SQLAlchemy()
ma = Marshmallow()

mysql = MySQL(app)

class Jadwal(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    tanggal = db.Column(db.String(30), nullable=False)
    imsak = db.Column(db.String(10), nullable=False)
    subuh = db.Column(db.String(10), nullable=False)
    terbit = db.Column(db.String(10), nullable=False)
    duha = db.Column(db.String(10), nullable=False)
    zuhur = db.Column(db.String(10), nullable=False)
    asar = db.Column(db.String(10), nullable=False)
    magrib = db.Column(db.String(10), nullable=False)
    isya = db.Column(db.String(10), nullable=False)

    def __init__(self, tanggal, imsak, subuh, terbit, duha, zuhur, asar, magrib, isya):
        self.tanggal=tanggal
        self.imsak=imsak
        self.subuh=subuh
        self.terbit=terbit
        self.duha=duha
        self.zuhur=zuhur
        self.asar=asar
        self.magrib=magrib
        self.isya=isya

class ProductSchema(ma.Schema):
    class Meta:
        fields = ("id", "tanggal", "imsak", "subuh", "terbit", "duha", "zuhur", "asar", "magrib", "isya")


product_schema = ProductSchema()
products_schema = ProductSchema(many=True)





app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql+pymysql://root@localhost/imsak'
db.init_app(app)
with app.app_context():
    db.create_all()


@app.route("/jadwal/add", methods=["POST"])
def add_product():
    _json = request.json
    tanggal = _json['tanggal']
    imsak = _json['imsak']
    subuh = _json['subuh']
    terbit = _json['terbit']
    duha = _json['duha']
    zuhur = _json['zuhur']
    asar = _json['asar']
    magrib = _json['magrib']
    isya = _json['isya']
    new_product = Jadwal(tanggal, imsak, subuh, terbit, duha, zuhur, asar, magrib, isya)
    db.session.add(new_product)
    db.session.commit()
    return jsonify({"Message" : "Data Imsak dan jadwal Sholat BERHASIL DI TAMBAHKAN"})


@app.route("/jadwal", methods=["GET"])
def get_product():
    products = []
    data = Jadwal.query.all()
    products = products_schema.dump(data)
    return jsonify(products)


@app.route("/jadwal/<id>", methods=["GET"])
def product_byid(id):
    if str.isdigit(id) == False:
        return jsonify(f"Message: Id yang di masukkan tidak boleh String!!!")
    else:
        data = []
        product = Jadwal.query.get(id)
        if product is None:
            return jsonify(f"NO product was found")
        data = product_schema.dump(product)
        return jsonify(data)

@app.route("/jadwal/delete/<id>", methods=["POST"])
def delete_product_byid(id):
    product = Jadwal.query.get(id)
    db.session.delete(product)
    db.session.commit()
    return jsonify(f"Data Imsak dan Jadwal Sholat BERHASIL DI HAPUS")



if __name__ == "__main__":
    app.run(debug=True)