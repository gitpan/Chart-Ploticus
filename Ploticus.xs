#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

/* this is a quick adaptation of the functions in api.c, since there is no
 * public .h file. */

int  ploticus_init(char *, char *);
int  ploticus_arg(char *, char *);
int  ploticus_begin();
void ploticus_end();
void ploticus_execline(char *);
int  ploticus_execscript(char *, int);
int  ploticus_getvar(char *, char *);
void ploticus_setvar(char *, char *);

MODULE = Chart::Ploticus		PACKAGE = Chart::Ploticus		

int
ploticus_init(device, outfilename)
	char *	device
	char *	outfilename

int
ploticus_arg(name, value)
	char *	name
	char *	value

int
ploticus_begin()

void
ploticus_end()

void
ploticus_execline(line)
	char *	line

int
ploticus_execscript(scriptfile, prefab)
	char *	scriptfile
	int	prefab

int
ploticus_getvar(name, value)
	char *	name
	char *	value

void
ploticus_setvar(name, value)
	char *	name
	char *	value
