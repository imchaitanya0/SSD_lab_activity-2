USE lab_activity_2;

DELIMITER $$

CREATE PROCEDURE AddSubscriberIfNotExists(IN subName VARCHAR(100))
BEGIN
    DECLARE sub_count INT;
    DECLARE new_id INT;

    SELECT COUNT(*) INTO sub_count
    FROM Subscribers
    WHERE SubscriberName = subName;

    IF sub_count = 0 THEN
        -- get max SubscriberID and add 1
        SELECT IFNULL(MAX(SubscriberID), 0) + 1 INTO new_id
        FROM Subscribers;

        INSERT INTO Subscribers(SubscriberID, SubscriberName, SubscriptionDate)
        VALUES(new_id, subName, CURDATE());
    END IF;
END$$

DELIMITER ;



CALL AddSubscriberIfNotExists('John Doe');

CALL AddSubscriberIfNotExists('Emily Clark');
