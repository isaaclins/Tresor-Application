# Tresor Application / Password Hash

## Use-Case

- Ein User registiert sich mit username und passwort.
- Ein User kommt zurück und macht ein login mit username und passwort.

# Requirement

- Beim Registrieren wird das Passwort als Hash in der DB gespeichert.
- Der Hash verwendet Salt und Pepper.
- Beim Anmelden (login) wird das Passwort erneut ge-hashed und mit den Hash in der Datenbank verglichen werden.
- Bestehende Klartext-Passwörter in der DB müssen ersetzt werden.

# Kompetenz

- Kryptographie (HZ2, HZ3, HZ4, D)
- Hash-Verfahren kennen und anwenden
- Salt and Pepper kennen und anwenden

# Aufgaben

- Aufgabe Umsetzung Passwort Hash
- Informieren Sie sich über Hashverfahren.
- Informieren Sie sich über Salt and Pepper
- Implementieren Sie die Anforderungen
- Dokumentieren Sie die Umsetzung (nur Essenz) der Aufgaben mit markdown

Hilfe zum Vorgehen: Passwort-Hash bei Registrierung

# Backend:

- UserController
- createUser()
- bereits vorhander Aufruf: passwordService.hashPassword...
- PasswordEncryptionService
- vorhandene Methoden mit hash Algorythmus ergänzen
- Salt and Pepper berücksichtigen

Hilfe zum Vorgehen: Passwort-Hash bei login

# Backend:

- PasswordEncryptionService
- neue Methode: public boolean doPasswordMatch(String password, String hashedPassword)
- UserController
- neue Methode ergänzen: public ResponseEntity doLoginUser(@RequestBody LoginUser loginUser, BindingResult bindingResult) {
- ...user...findByEmail...
- ...doPasswordMatch... vergleich Passwort von login und hash aus db
- neue Klasse LoginUser mit Attribut email und password
- neue Klasse LoginResponse mit Attribut message und userId
- UserRequests.http
- bei Bedarf login request hinzufügen mit Attributen email und password

# Frontend:

- LoginUser
- handleSubmit muss neu einen Request auslösen
- Sich orientieren an Vorgehen bei RegisterUser.js
- Request übergibt email und password
