from pymongo import MongoClient

# Conectarse al servidor de MongoDB
client = MongoClient('mongodb://localhost:27017/')

# Seleccionar la base de datos
db = client['nombre_de_la_base_de_datos']  # Reemplaza 'nombre_de_la_base_de_datos' con el nombre de tu base de datos

# Seleccionar una colección
collection = db['nombre_de_la_coleccion']  # Reemplaza 'nombre_de_la_coleccion' con el nombre de tu colección

# Insertar un documento
document = {"key": "value"}
collection.insert_one(document)

# Realizar una consulta
result = collection.find_one({"key": "value"})
print(result)
