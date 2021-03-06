/*
* @Author: taoyage
* @Date:   2016-12-20 23:15:13
* @Last Modified by:   taoyage
* @Last Modified time: 2016-12-27 21:08:30
*/

CREATE DATABASE IF NOT EXISTS blogosphere;

use blogosphere;

CREATE TABLE users(
	id INT PRIMARY KEY auto_increment,
	username VARCHAR(20) NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	avatar VARCHAR(100) NULL,
	name VARCHAr(20) NULL,
	gender bit NULL,
	introduce VARCHAR(100) NULL
)engine=MyISAM charset=utf8;

CREATE TABLE articles(
	id INT PRIMARY KEY auto_increment,
	title VARCHAR(100) NOT NULL,
	content TEXT NOT NULL,
	time DATETIME NOT NULL,
	uid INT NOT NULL
)engine=MyISAM charset=utf8;

CREATE TABLE comments(
	id INT PRIMARY KEY auto_increment,
	content TEXT NOT NULL,
	time DATETIME NOT NULL,
	uid INT NOT NULL,
	aid INT NOT NULL
)engine=MyISAM charset=utf8;