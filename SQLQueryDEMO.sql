/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [PlayerID]
      ,[PlayerName]
      ,[DoB]
      ,[YellowCards]
      ,[RedCards]
      ,[SquadNumber]
      ,[Position]
      ,[ClubID]r
  FROM [DEMO].[dbo].[Players]
//Liệt kê tất cả CLB có cầu thủ nhận thẻ vàng 
SELECT ClubName, PlayerName, YellowCards
FROM Players
JOIN Clubs
ON Players.PlayerID = Clubs.ClubID
Where YellowCards>0

SELECT [Clubs].[ClubName], [Players].[PlayerName], [Players].[YellowCards]
FROM ([soccer_match].[dbo].[Players]
INNER JOIN [Clubs] ON [Players].[ClubID] = [Clubs].[ClubID])
WHERE [YellowCards] > 0