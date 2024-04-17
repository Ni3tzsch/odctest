CREATE TABLE User (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(100),
  prenom VARCHAR(100),
  sexe VARCHAR(10)
);

CREATE TABLE Produit (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nom VARCHAR(255),
  stock INT
);

CREATE TABLE Commande (
  id INT AUTO_INCREMENT PRIMARY KEY,
  date DATE,
  id_user INT,
  id_produit INT,
  FOREIGN KEY (id_user) REFERENCES User(id),
  FOREIGN KEY (id_produit) REFERENCES Produit(id)
);

CREATE TABLE Categorie (
  id INT AUTO_INCREMENT PRIMARY KEY,
  description VARCHAR(255)
);
