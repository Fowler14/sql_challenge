create table employees (
		emp_no int primary key not null,
		emp_title_id VARCHAR(8) NOT NULL,
		birth_date date not null,
		first_name VARCHAR(35) not null,
		last_name VARCHAR(35) not null,
		sex VARCHAR(1) not null,
		hire_date date not null
);

create table departments (
		dept_no VARCHAR(8) primary key not null,
		dept_name VARCHAR(40) not null
);

create table titles (
		title_id varchar(8) not null,
		title VARCHAR(40) not null
);

create table dept_emp (
		emp_no int not null,
		dept_no VARCHAR(8) not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);

create table salaries (
		emp_no int not null,
		salary int not null,
	foreign key (emp_no) references employees (emp_no)
);

create table dept_manager (
		dept_no VARCHAR(8) not null,
		emp_no int not null,
	foreign key (emp_no) references employees (emp_no),
	foreign key (dept_no) references departments (dept_no)
);
