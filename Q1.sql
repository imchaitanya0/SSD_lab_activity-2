use lab_activity_2;

DELIMITER $$

CREATE PROCEDURE ListAllSubscribers()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE sub_name VARCHAR(100);
    
    DECLARE cur CURSOR FOR 
        SELECT SubscriberName FROM Subscribers;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
    
    DROP TEMPORARY TABLE IF EXISTS TempSubscribers;

    CREATE TEMPORARY TABLE TempSubscribers (
        SubscriberName VARCHAR(100)
    );
    


    

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO sub_name;
        

        INSERT INTO TempSubscribers(SubscriberName) VALUES(sub_name);
   
		 IF done THEN
            LEAVE read_loop;
        END IF; 
	END LOOP;
    CLOSE cur;

    
    SELECT * FROM TempSubscribers;
END$$

DELIMITER ;

CALL ListAllSubscribers();
