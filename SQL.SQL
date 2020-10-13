	CREATE TABLE IF NOT EXISTS `User` (
	  `id` varchar(6) not null,
	  `email` varchar(50) NOT NULL,
	  `password` varchar(50) NOT NULL,
	  `name` varchar(256) NOT NULL,
	  `status` varchar(256) ,
		`image` varchar(256),
	  PRIMARY KEY (`email`)
	) ;

	CREATE TABLE IF NOT EXISTS `Class` (
	  `id` varchar(6) NOT NULL,
	  `name` varchar(50) NOT NULL,
	   `decription`varchar(256) NOT NULL,
	  `create_by` varchar(256) NOT NULL,
	  `date_create` BIGINT(8),
	  PRIMARY KEY (`id`)
	) ;


	CREATE TABLE IF NOT EXISTS `ClassInfo` (
	  `id_user` varchar(6) NOT NULL,
	  `id_class` varchar(6) NOT NULL,
	  `role` varchar(256) NOT NULL,
	   PRIMARY KEY (`id_user`, `id_class`)
	) ;


	CREATE table if not EXISTS `Stream`(
		`id_stream` varchar (6) not null,
		`id_class` varchar (6) not null ,
		`id_user_post` varchar(6) not null,
		`date_post` bigint(6) not null,
		`content` varchar(500),
		primary key (`id_stream`)
		);
	 

	CREATE table if not EXISTS `Comment`(
		`id_comment` varchar (6) not null,	
		`id_stream` varchar (6) not null,
		`id_user_comment` varchar (6) not null ,
		`date_comment` bigint(6) not null,
		`content` varchar(500),
		primary key (`id_comment`)
		);


CREATE TABLE `ClassWork` (
    `id_class` varchar(6) not null ,
    `user_create` varchar(6),
    `date_begin` bigint(6),
    `date_end` bigint(6)
     );



