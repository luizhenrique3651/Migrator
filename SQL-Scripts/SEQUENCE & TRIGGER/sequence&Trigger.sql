CREATE SEQUENCE ProdutoSequencia;
 CREATE OR REPLACE FUNCTION ProdutoFunction()
 RETURNS "trigger" AS
 $BODY$
 BEGIN
   New.id:=nextval('ProdutoSequencia');
   Return NEW;
 END;
 $BODY$
 LANGUAGE 'plpgsql' VOLATILE;

 CREATE TRIGGER ProdutoTrigger
 BEFORE INSERT
 ON produto
 FOR EACH ROW
 EXECUTE PROCEDURE ProdutoFunction();
