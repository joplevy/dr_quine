#include <unistd.h>

void ft_output(){
	char *prog_str="#include <unistd.h>~\
~\
void ft_output(){~\
	char *prog_str=@;~\
	char *st_ptr = prog_str;~\
	char *nd_ptr = prog_str;~\
	char nline = 10;~\
	char at = 64;~\
	char bslash = 92;~\
	char tild = 126;~\
	char quote = 34;~\
	while (*st_ptr)~\
	{~\
		if (*st_ptr == at)~\
		{~\
			write(1, &quote, 1);~\
			while (*nd_ptr)~\
			{~\
				write(1, nd_ptr, 1);~\
				if (*nd_ptr == tild)~\
				{~\
					write(1, &bslash, 1);~\
					write(1, &nline, 1);~\
				}~\
				nd_ptr++;~\
			}~\
			write(1, &quote, 1);~\
		}~\
		else{~\
			if (*st_ptr == tild)~\
				write(1, &nline, 1);~\
			else~\
				write(1, st_ptr, 1);~\
		}~\
		st_ptr++;~\
	}~\
}~\
~\
int 	main()~\
{~\
	ft_output();~\
	return(0);~\
}~\
";
	char *st_ptr = prog_str;
	char *nd_ptr = prog_str;
	char nline = 10;
	char at = 64;
	char bslash = 92;
	char tild = 126;
	char quote = 34;
	while (*st_ptr)
	{
		if (*st_ptr == at)
		{
			write(1, &quote, 1);
			while (*nd_ptr)
			{
				write(1, nd_ptr, 1);
				if (*nd_ptr == tild)
				{
					write(1, &bslash, 1);
					write(1, &nline, 1);
				}
				nd_ptr++;
			}
			write(1, &quote, 1);
		}
		else{
			if (*st_ptr == tild)
				write(1, &nline, 1);
			else
				write(1, st_ptr, 1);
		}
		st_ptr++;
	}
}

int 	main()
{
	ft_output();
	return(0);
}
