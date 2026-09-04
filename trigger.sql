USE library_db;

DELIMITER //

CREATE TRIGGER calculate_fine
AFTER UPDATE ON Borrow_Records
FOR EACH ROW
BEGIN
    DECLARE days_late INT;

    IF NEW.return_date IS NOT NULL AND NEW.return_date > NEW.due_date THEN
        SET days_late = DATEDIFF(NEW.return_date, NEW.due_date);

        INSERT INTO Fines (record_id, fine_amount, paid)
        VALUES (NEW.record_id, days_late * 5.00, FALSE);
    END IF;
END //

DELIMITER ;
