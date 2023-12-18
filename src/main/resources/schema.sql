CREATE TABLE researcher(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    budget DOUBLE
);

CREATE TABLE project(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    specialization TEXT
);

CREATE TABLE researcher_project(
    researcherId INT,
    projectId INT,
    PRIMARY KEY(researcherId, projectId),
    FOREIGN KEY(researcherId) REFERENCES researcher(id),
    FOREIGN KEY(projectId) REFERENCES project(id)
);