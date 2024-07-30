// Tipos de declaração no SQL DML
CREATE TABLE my_employees(
    employee_id number(4),
    firs_name varchar2(10),
    last_name varchar2(10),
    email varchar2(30),
    phone_number number(20),
    hire_date date,
    job_id varchar2(30),
    salary number(10)
);  
//****** INSERT *******
//INSERT INTO <nome_tabela> VALUES( <valor1>,<valor2>,...,<valorN>);
INSERT INTO my_employees VALUES(
//  id  nome   sobren  email  telefone    data de contratação             idTrabalho salário
    100,'Steve','King','SKING',5151234567,to_date('17-06-03','DD-MM-YY'),'AD_PRES',2400
    //100,'Steve','King','SKING',5151234567,'17-June-2003','AD_PRES',2400
);
//Inserindo em colunas específicas, resto das colunas vai ficar vázia (null)
//INSERT INTO <nome_tabela> COLUMNS(<col_1>,<col_2>) VALUES(<valor1>,<valor2>)
INSERT INTO my_employees
    COLUMNS (employee_id, first_name, salary, hire_date)
    VALUES (200,'Jorge',5000, to_date('170603','DDMMYY'));
    
SELECT * FROM my_employees;

// ****DELETE ***

//Deleta a informação de uma tabela
//DELETE FROM <nome_tabela> WHERE <condição>
DELETE FROM my_employees WHERE employee_id = 200;

// ***UPDATE***
//UPDATE <nome_tabela> SET <nome_coluna> = <valor_novo> WHERE <condição>
UPDATE my_employees SET employee_id = 200 WHERE first_name = 'Jorge';