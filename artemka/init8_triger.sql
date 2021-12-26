CREATE OR REPLACE FUNCTION log1() RETURNS trigger AS $$
BEGIN 
insert into logtable_11(id_ticket_type, oldcost, date_log, operation_type) values(OLD.id, OLD.cost, current_date, 'Update');
RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trig1
AFTER UPDATE ON TICKET_TYPE_11  FOR EACH ROW
EXECUTE PROCEDURE log1();



CREATE OR REPLACE FUNCTION log2() RETURNS trigger AS $$
BEGIN 
insert into logtable_112(id_payment, oldpay, date_log, operation_type) values(OLD.id, OLD.Total, current_date, 'Update');
RETURN OLD;
END;
$$
LANGUAGE plpgsql;

CREATE TRIGGER trig2
AFTER UPDATE ON Payment_11 FOR EACH ROW
EXECUTE PROCEDURE log2();
