import firebase_admin
from firebase_admin import credentials,firestore
import time

credentialData = credentials.Certificate("dolapyonetim-43466-firebase-adminsdk-vj5x9-ed7905e65b.json")
app = firebase_admin.initialize_app(credentialData)

db = firestore.client()


GPIO.setwarnings(False)

GPIO.setmode(GPIO.BCM)

GPIO.setup(18, GPIO.OUT)

while True:
    document = db.collection("dolaplar").document("0")
    data = document.get().to_dict()
    print(data["password"])
    print(data["isOpen"])
    
    if data["isOpen"] == "False":
        GPIO.output(18, 1)
    else:
         GPIO.output(18, 0)
    
    time.sleep(1)    
