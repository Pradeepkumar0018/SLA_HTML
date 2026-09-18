CREATE DATABASE ElectionDB;
USE ElectionDB;
CREATE TABLE PoliticalParties (
    party_id INT PRIMARY KEY AUTO_INCREMENT,
    party_name VARCHAR(100) NOT NULL,
    party_symbol VARCHAR(100)
);
CREATE TABLE Constituencies (
    constituency_id INT PRIMARY KEY AUTO_INCREMENT,
    constituency_name VARCHAR(100) NOT NULL,
    district VARCHAR(100),
    state VARCHAR(100)
);
CREATE TABLE PollingBooths (
    booth_id INT PRIMARY KEY AUTO_INCREMENT,
    booth_name VARCHAR(100) NOT NULL,
    location VARCHAR(150),
    constituency_id INT,
    FOREIGN KEY (constituency_id)
        REFERENCES Constituencies(constituency_id)
);
CREATE TABLE Voters (
    voter_id INT PRIMARY KEY AUTO_INCREMENT,
    voter_name VARCHAR(100) NOT NULL,
    age INT,
    gender VARCHAR(10),
    address VARCHAR(200),
    booth_id INT,
    FOREIGN KEY (booth_id)
        REFERENCES PollingBooths(booth_id)
);
CREATE TABLE Candidates (
    candidate_id INT PRIMARY KEY AUTO_INCREMENT,
    candidate_name VARCHAR(100) NOT NULL,
    age INT,
    party_id INT,
    constituency_id INT,
    FOREIGN KEY (party_id)
        REFERENCES PoliticalParties(party_id),
    FOREIGN KEY (constituency_id)
        REFERENCES Constituencies(constituency_id)
);
CREATE TABLE Elections (
    election_id INT PRIMARY KEY AUTO_INCREMENT,
    election_name VARCHAR(100),
    election_date DATE,
    election_type VARCHAR(50)
);
CREATE TABLE Votes (
    vote_id INT PRIMARY KEY AUTO_INCREMENT,
    voter_id INT,
    candidate_id INT,
    election_id INT,
    vote_time DATETIME,
    FOREIGN KEY (voter_id)
        REFERENCES Voters(voter_id),
    FOREIGN KEY (candidate_id)
        REFERENCES Candidates(candidate_id),
    FOREIGN KEY (election_id)
        REFERENCES Elections(election_id)
);