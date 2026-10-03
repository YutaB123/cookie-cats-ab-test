-- Remove the one unrealistic player (49,854 rounds, likely a bot or data error)
-- Expected result: 90,188 rows (original 90,189 minus 1)
CREATE TABLE `acoustic-scarab-406920.cookie_cats.players_clean` AS
SELECT *
FROM `acoustic-scarab-406920.cookie_cats.cookie_cats`
WHERE sum_gamerounds < 49854;
