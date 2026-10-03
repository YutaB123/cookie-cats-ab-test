-- One row per version: player count, retention rates, and average rounds
CREATE TABLE `acoustic-scarab-406920.cookie_cats.version_summary` AS
SELECT
  version,
  COUNT(*) AS player_count,
  COUNTIF(retention_1) / COUNT(*) AS retention_1_rate,
  COUNTIF(retention_7) / COUNT(*) AS retention_7_rate,
  AVG(sum_gamerounds) AS average_rounds
FROM `acoustic-scarab-406920.cookie_cats.players_clean`
GROUP BY version;
