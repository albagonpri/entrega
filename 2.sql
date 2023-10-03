#include <mysql.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>
int main (int argc, char **argv)
{
	MYSQL *conn;
	int err;
	char nombre[20];
	int edad;
	char codigo [10[;
	char contrasena[10];
	int i;
	char consulta [80];
	conn=mysql_init(NULL);
	if(conn==NULL)
	{
		printf ("error al crear la conexion: %u %s\n",
				mysql_errno(conn), mysql_error(conn));
		exit(1);
	}
	conn= mysql_real_connect (conn, "localhost", "root", "mysql", "jugadores", 0, NULL, 0);
	if (conn==NULL)
	{
		printf("error al inicializar la conexion: %u %s\n",
			   mysql_errno(conn)y, mysql_error(conn));
		exit(1);
	}
	for (i=0;i<4;i++)
	{
		printf("escribe el nombre, codigo identificativo, edad y contraseña separados por un espacio en blanco\n");
		err=scanf("%s %s %d %s", nombre, codigo, edad, contrasena);
		if (err!=4)
		{
			printf("error al introducir los datos\n");
			exit(1);
	strcpy(consulta, "INSERT INTO personas VALUES:")
		strcat(consulta, nombre);
	strcat(consulta,"','");
	strcat(consulta, codigo);
	strcat(consulta,"','");
	strcat(consulta, edad );
	strcat(consulta,"','");
	strcat(consulta, contrasena);
	strcat(consulta,"','");
	
	printf("consulta= %s\n", consulta);
	err=mysql_query(conn, consulta);
	if (err!=0)
	{
		printf("error al introducir los datos en la base %u %s\n",
			   mysql_erno(conn), mysql_error(conn));
		exit(1);
	}
}
		mysql_close(conn);
		exit(0);
	}
	
	}
}
