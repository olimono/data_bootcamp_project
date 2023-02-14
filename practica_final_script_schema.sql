--Creamos el esquema

create schema practica_final authorization npmjcswr;

--Creamos la tabla amenities
create table practica_final.amenities(
	amenity_id integer not null UNIQUE, -- PK
	amenity_name varchar(10) not null UNIQUE,
	constraint amenity_PK primary key (amenity_id)
	
);

--Creamos la tabla neighbourhoods

create table practica_final.neighbourhoods(
	neighbourhood_id integer not null UNIQUE, -- PK 
	neighbourhood_name varchar(10) not null UNIQUE,
	constraint neighbourhood_PK primary key (neighbourhood_id)
	
);

--Creamos la tabla properties
create table practica_final.properties(
	property_id integer not null, -- PK
	amenity_id int, --FK
	neighbourhood_id int, --FK
	host_since date,
	city varchar(30),
	latitude float,
	longitude float, 
	zipcode int,
	property_type varchar(30),
	room_type varchar(30),
	accommodates int,
	bathrooms int,
	bedrooms int,
	beds int,
	n_reviews int,
	review_scores float,
	monthly_reviews float,
	cancellation_policy varchar(30),
	total_price int,
	avg_neighbourhood_price int,
	constraint property_PK primary key (property_id),
	constraint property_FK1 foreign key (neighbourhood_id) references practica_final.neighbourhoods(neighbourhood_id),
	constraint property_FK2 foreign key (amenity_id) references practica_final.amenities(amenity_id)
);

--Creamos la tabla properties_amenities
create table practica_final.properties_amenities(
	property_id integer not null, -- PK, FK
	amenity_id int not null, --PK, FK
	constraint property_PK1 primary key (property_id, amenity_id),
	constraint property_FK1 foreign key (property_id) references practica_final.properties(property_id),
	constraint property_FK2 foreign key (amenity_id) references practica_final.amenities(amenity_id)
);




