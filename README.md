Projet Ruby – Gestion d'Événements

## Description

Ce projet est une application simple développée en Ruby pour comprendre les bases de la Programmation Orientée Objet (POO).
Il permet de créer des utilisateurs et des événements en utilisant des classes Ruby.
L’objectif est d’apprendre :
* La création de classes
* L’utilisation des attributs
* L’instanciation d’objets avec `.new`
* L’organisation d’un petit projet Ruby

## Structure du projet

Le projet est organisé de cette manière :

* `app.rb` → Fichier principal qui exécute le programme
* `lib/user.rb` → Définition de la classe User
* `lib/event.rb` → Définition de la classe Event
* `README.md` → Documentation du projet

## Classe User

La classe User représente un utilisateur.

Elle contient :
* un email
* un âge
Un utilisateur peut être créé avec :

```ruby
User.new("email@example.com", 25)
```
## Classe Event

La classe Event représente un événement.

Elle contient :

* une date
* un lieu
* un créateur (qui est un objet User)

Cela permet de relier un événement à un utilisateur.

## Comment lancer le projet

1. Ouvrir un terminal
2. Aller dans le dossier du projet
3. Lancer la commande :

```bash
ruby app.rb

## Objectif pédagogique

Ce projet permet de comprendre :

* La Programmation Orientée Objet en Ruby
* Comment créer et utiliser des classes
* Comment organiser un projet avec plusieurs fichiers
* Comment utiliser Git et GitHub pour versionner un projet

## Auteur

Projet réalisé par Dicko Elhadj Sekou dans le cadre de l’apprentissage de Ruby.
