#include <iostream>
using namespace std;

int main(int argc, char *argv[]) {
	MYSQL *conn;
	int error;
	conn= mysql_init(NULL);
	if (con==NULL)
	{
		printf("Error al crear la conexion:%u%s\n", mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	conn =mysql_real_connect (conn, "localhost", "root". "mysql",NULL,0,NULL,0);
	if(conn==NULL)
	{
		printf("Error al inicializar la conexion:%u%s\n",
			   mysql_errno(conn),mysql_error(conn));
		exit(1);
	}
	mysql_query(conn, "drop database if exists jugadores;");
	err=mysql_query(onn, "create database jugadores;");
	if (err!=0)
	{
		printf("error al crear la base de datos %u &s\n,
			   mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	mysql_query(conn, "use jugadores;");
	if(err!=0)
	{
		printf("error al crear la nase de datos %u %s\n",
			   mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	err=mysql_query(conn, "CREATE TABLE personas (codigo VARCHAR(10) not null primary key, nombre VARCHAR (25). edad int, contraseña VARCHAR(10))");
	if(err!=0)
	{
		printf("error al definir la tabla %u %s\n",
			   mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	err=mysql_query(conn, "CREATE TABLE partida (id int, codigo VARCHAR (10) not null primary key)");
	if(err!=0)
	{
		printf("error al definir la tabla %u %s\n",
			   mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	err=mysql_query(conn, "CREATE TABLE partidas_jugadadas (id int, codigo VARCHAR(10) not null primary key)");
	return 0;
	if(err!=0)
	{
		printf("error al definir la tabla %u %s\n",
			   mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	mysql_close(conn);
	exit(0);
}

