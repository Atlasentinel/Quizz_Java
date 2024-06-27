INSERT INTO utilisateur (email, password, administrateur) VALUES
("a@a.com", "$2a$10$KIp0gvyA4WJO.EtUtJYUr.Dn8oJAZUh7g7FV9.c3uEpV4ozbo5a1e", 1),
("b@b.com", "$2a$10$KIp0gvyA4WJO.EtUtJYUr.Dn8oJAZUh7g7FV9.c3uEpV4ozbo5a1e", 0),
("c@c.com", "$2a$10$KIp0gvyA4WJO.EtUtJYUr.Dn8oJAZUh7g7FV9.c3uEpV4ozbo5a1e", 0);

INSERT INTO quizz (nom, niveau, createur_id) VALUES
("pokemon", 1, 1),
("manga", 3, 1),
("serie 90", 4, 2);

INSERT INTO categorie (nom) VALUES
("Culture G"),
("Culture geek"),
("Geographie"),
("Japon"),
("Serie");

INSERT INTO categorie_quizz (quizz_id, categorie_id) VALUES
(1, 2),
(1, 4),
(1, 5),
(2, 2),
(2, 4);

-- Insertion de nouvelles questions
INSERT INTO question (texte, quizz_id) VALUES
("Quel est le type de Pikachu?", 1),
("Quel est le Pokémon légendaire de la version Bleu?", 1);

-- Insertion de nouvelles réponses possibles
INSERT INTO reponse_possible (texte, bonne_reponse, question_id) VALUES
("Électrique", true, 1),
("Feu", false, 1),
("Eau", false, 1),
("Vol", false, 1),
("Artikodin", true, 2),
("Électhor", false, 2),
("Sulfura", false, 2),
("Mewtwo", false, 2);

-- Mise à jour des réponses des utilisateurs
INSERT INTO reponse_utilisateur (utilisateur_id, reponse_possible_id) VALUES
(1, 1),
(1, 5),
(2, 3),
(2, 6);
