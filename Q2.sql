use lab_activity_2;

DELIMITER $$

CREATE PROCEDURE GetWatchHistoryBySubscriber(IN sub_id INT)
BEGIN
    SELECT s.Title, w.WatchTime
    FROM WatchHistory w
    JOIN Shows s ON w.ShowID = s.ShowID
    WHERE w.SubscriberID = sub_id;
END$$

DELIMITER ;

call GetWatchHistoryBySubscriber(1);

call GetWatchHistoryBySubscriber(2);

call GetWatchHistoryBySubscriber(3);