create table employees(
		id serial primary key,
		employee_name VARCHAR(50) not null,
		department VARCHAR(50) not null,
		chief integer references employees(id)
);
