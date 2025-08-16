use lab_activity_2;

DELIMITER $$

CREATE PROCEDURE FullWatchHistoryReport()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sub_id INT;

    DECLARE cur CURSOR FOR 
        SELECT SubscriberID FROM Subscribers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO sub_id;
        IF done THEN
            LEAVE read_loop;
        END IF;

        SELECT SubscriberName 
        FROM Subscribers 
        WHERE SubscriberID = sub_id;

        CALL GetWatchHistoryBySubscriber(sub_id);
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;

call GetWatchHistoryBySubscriber(1);

call GetWatchHistoryBySubscriber(2);

call GetWatchHistoryBySubscriber(3);


