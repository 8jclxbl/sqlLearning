--sqlite
DROP TABLE audit;
CREATE TABLE audit(
	    EMP_no INT NOT NULL,
	    create_date datetime NOT NULL,
	    FOREIGN KEY(EMP_no) REFERENCES employees_test(ID));

-- mysql
ALTER TABLE audit
ADD  foreign key(emp_no) references employees_test(id)
