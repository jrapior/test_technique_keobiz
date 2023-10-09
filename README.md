# Test technique Keobiz

### Lancement de l'application
- Configurer le fichier .env
- Exécuter 'node index.js'

### Endpoints

```
/api/client 
GET(:id) - Récupération utilisateur par id
POST(firstName, lastName) - Création d'un nouvel utilisateur
PATCH(:id, firstName, lastName) - Modification d'un utilisateur
DELETE(:id) - Suppression d'un utilisateur (Destruction en cascade de ses bilans comptables)

/api/balancesheet
GET(clientId) - Récupération des bilans comptables d'un utilisateur
POST(year, result, clientId) Création d'un bilan comptable pour un utilisateur et une année
PUT(year, result, clientId) Mise à jour d'un bilan comptable
DELETE(year, clientId) Suppression d'un bilan comptable
```

### Script de détection des doublons
- Le script est à trouver dans le dossier 'scripts' à la racine du projet
- Il permet de récupérer directement en une requête SQL les doublons
