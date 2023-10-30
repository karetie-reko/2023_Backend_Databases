/* Write a stored procedure TransferMoney which implements the first task's functionality.
The procedure takes three parameters: source_account_id, destination_account_id, and transfer_amount.
All of the parameters are IN type. transfer_amount should be type DECIMAL and other parameter should be type INT.
The transfer has to be implemented as a transaction which is
rolled back in a case of an error. If the transaction succeeds the money has been deducted from the source
account and is added to the destination account. Define an OUT parameter exitValue as well and define
all possible error codes.

Kirjoita tallennettu proseduuri TransferMoney, joka toteuttaa tehtävä 1:n toiminnallisuuden.
Proseduuri ottaa kolme parametria, source_account_id, destination_account_id ja transfer_amount.
Kaikki parametrit ovat tyypiltään IN. transfer_amount on tyyppiä DECIMAL ja muut parametrit ovat
tyyppiä INT. Siirron tulee tapahtua transaktiona, joka perutaan virheen sattuessa.
Onnistuneessa tapauksessa transfer_amount -määrä rahaa on siirtynyt tililtä id:llä source_account_id
tilille id:llä destination_account_id. Määritä OUT tyyppinen parametri exitValue, joka palauttaa koodin sen perusteella,
onnistuuko transaktio vai ei. Määritä virhekoodit kommenttina.
*/
/* Parametrit:
- IN source:account_id: INT; lähdetili
- IN destination_account_id: INT; kohdetili
- OUT exitValue: INT; poistumiskoodi
  - 0: Tilisiirto onnistui
  - -1: source_account-id Tiliä ei ole olemassa
  - -2: destination_account_id tiliä ei ole olemassa
  - -3: Lähdetilillä ei ole katetta
  - -4: er@r4${6rr */
DROP PROCEDURE IF EXISTS TransferMoney;
DELIMITER //
CREATE PROCEDURE TransferMoney(
IN source_account_id INT,
IN destination_account_id INT,
IN transfer_amount DECIMAL(10, 2),
OUT exitValue INT )
BEGIN
DECLARE SAccountExist BOOL DEFAULT FALSE;
DECLARE DAccountExist BOOL DEFAULT FALSE;
SELECT EXISTS (SELECT * FROM bankNotes WHERE id = source_account_id) INTO accountExist;
IF NOT SAccountExist THEN
    SET exitValue = -1;
END IF;
    SELECT EXISTS (SELECT * FROM bankNotes WHERE id = destination_account_id) INTO DAccountExist;
    IF NOT DAccountExist THEN
        SET exitValue = -2;
    END IF;
    IF SAccountExist AND DAccountExist THEN
        START TRANSACTION;
        IF source_account_id >= transfer_amount THEN
UPDATE bankNotes
        SET balance = balance - transfer_amount
        WHERE id = source_account_id;
        UPDATE bankNotes
        SET balance = balance + transfer_amount
        WHERE id = destination_account_id;
    COMMIT;
        SET exitValue = 0;
    ELSE
    ROLLBACK;
        SET exitValue = -3;
    END IF;
    END IF;
END;
//
DELIMITER ;