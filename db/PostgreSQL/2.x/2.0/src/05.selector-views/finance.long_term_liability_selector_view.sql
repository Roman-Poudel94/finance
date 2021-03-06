﻿DROP VIEW IF EXISTS finance.long_term_liability_selector_view;

CREATE VIEW finance.long_term_liability_selector_view
AS
SELECT 
    finance.account_scrud_view.account_id AS long_term_liability_id,
    finance.account_scrud_view.account_name AS long_term_liability_name
FROM finance.account_scrud_view
WHERE account_master_id IN(SELECT * FROM finance.get_account_master_ids(15100))
ORDER BY account_id;


