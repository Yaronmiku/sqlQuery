CREATE DATABASE soccer_match;

USE soccer_match;

CREATE TABLE Clubs(
	ClubID int NOT NULL UNIQUE,
    ClubName varchar(255) NOT NULL,
    SponsorName varchar(255),
    PRIMARY KEY (ClubID)
);

CREATE TABLE Players(
	PlayerID int NOT NULL UNIQUE,
    PlayerName varchar(30) NOT NULL,
    DoB date NOT NULL,
    YellowCards int CONSTRAINT YellowCards
    CHECK (YellowCards >= 0),
    RedCards int CONSTRAINT RedCards
    CHECK (RedCards >= 0),
	SquadNumber int CONSTRAINT SquadNumber
    CHECK (SquadNumber >= 0),
    Position varchar(30) NOT NULL,
    ClubID int NOT NULL,
    PRIMARY KEY (PlayerID),
    FOREIGN KEY (ClubID) REFERENCES Clubs(ClubID) 
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

CREATE TABLE Stadiums(
	StadiumID int NOT NULL UNIQUE,
    StadiumName varchar(255) NOT NULL,
    Location varchar(255) NOT NULL,
    PRIMARY KEY (StadiumID)
);

CREATE TABLE Matches(
    MatchID int NOT NULL UNIQUE,
    HomeClubID int NOT NULL,
    AwayClubID int NOT NULL,
    Score text NOT NULL,
    StadiumID int NOT NULL,
    StartTime datetime NOT NULL,
    PRIMARY KEY (MatchID),
    CONSTRAINT fk_matches_1 FOREIGN KEY (HomeClubID) REFERENCES Clubs(ClubID),
    CONSTRAINT fk_matches_2 FOREIGN KEY (HomeClubID) REFERENCES Clubs(ClubID),
    CONSTRAINT fk_matches_3 FOREIGN KEY (StadiumID) REFERENCES Stadiums(StadiumID)
);

INSERT INTO Clubs
VALUES (1, 'Chelsea', 'Yokohama'),
(2, 'MU', 'Chevrolet'),
(3, 'Real Madrid', 'Fly Emirates'),
(4, 'Juventus', ''),
(5, 'Liverpool', 'ADIDAS'),
(6, 'Bayern Munich', 'Nike'),
(7, 'Arsenal', 'Florentino Perez'),
(8, 'Manchester City', ''),
(9, 'Viet Nam', 'So1HungVuong'),
(10, 'Barcelona', 'Rakuten');

INSERT INTO Players
VALUES (1, 'Eden Hazard', '1991-01-07', 0, 0, 10, 'Tien Dao', 1),
(2, 'Maxwell Nguyen', '1998-05-30', 2, 1, 11, 'Thu Mon', 1),
(3, 'Mewcos Hiep', '1998-01-06', 0, 1, 12, 'Tien Ve', 1),
(4, 'Gary Cahill', '1985-12-19', 1, 1, 13, 'Hau Ve', 1),
(5, 'Adnan Januzaj', '1995-02-05', 0, 0, 09, 'Tien Ve', 1),
(6, 'Luke Xuan Phu', '1998-08-18', 0, 0, 06, 'Tien Ve', 2),
(7, 'David De', '1990-01-10', 0, 0, 09, 'Thu Mon', 2),
(8, 'Cristiano', '1998-11-23', 2, 0, 07, 'Tien Dao', 2),
(9, 'Ronado', '1996-02-07', 2, 1, 10, 'Hau Ve', 2),
(10, 'Doan Van Hau', '1992-01-01', 1, 0, 01, 'Hau Ve', 4);

INSERT INTO Stadiums
VALUES (1, 'Stamford Bridge', 'Fulham, London'),
(2, 'My Dinh', 'Ha Noi, Viet Nam'),
(3, 'Rungrado', 'Binh Nhuong, Trieu Tien'),
(4, 'Michigan', 'Ann Arbor, Hoa Ky'),
(5, 'Camp Nou', 'Barcelona, Tay Ban Nha'),
(6, 'Rose Bowl', 'California, Hoa Ky'),
(7, 'Azadi', 'Tehran, Iran'),
(8, 'Gelora Bung Karno', 'Jakarta, Indonesia'),
(9, 'Old Trafford', 'Manchester, Anh'),
(10, 'Allianz Arena', 'Munich, Duc');

INSERT INTO Matches
VALUES (1, 1, 2, '2-0', 1, '2021-01-01 10:00:00'),
(2, 1, 3, '2-5', 2, '2021-02-01 01:00:00'),
(3, 2, 1, '0-3', 2, '2021-03-01 13:45:00'),
(4, 3, 4, '1-0', 1, '2021-11-01 15:30:00'),
(5, 4, 5, '2-2', 10, '2021-11-11 00:30:00'),
(6, 4, 8, '1-0', 9, '2021-12-15 08:05:00'),
(7, 2, 5, '1-1', 5, '2022-01-06 12:25:00'),
(8, 8, 9, '1-3', 4, '2022-01-12 05:20:00'),
(9, 9, 10, '2-0', 4, '2022-03-02 10:30:00'),
(10, 5, 10, '0-2', 3, '2022-03-10 03:15:00');
