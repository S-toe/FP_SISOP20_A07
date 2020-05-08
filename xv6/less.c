#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
#include "vim.h"

#define BUF_SIZE 256
#define MAX_LINE_NUMBER 256
#define MAX_LINE_LENGTH 256
#define NULL 0

void show(char *text[])
{
	int j = 0;
	printf(1, "\033[2J\033[1;1H\n");
    printf(1, "****************************************\n\n");
	for (; text[j] != NULL; j++)
		printf(1, "%d%d%d:%s\n", (j+1)/100, ((j+1)%100)/10, (j+1)%10, text[j]);
    printf(1, "\n\n****************************************\n");
}

int main(int argc, char *argv[])
{
	if (argc == 1)
	{
		printf(1, "please input the command as [less file_name]\n");
		exit();
	}
	
	char *text[MAX_LINE_NUMBER] = {};
	text[0] = malloc(MAX_LINE_LENGTH);
	memset(text[0], 0, MAX_LINE_LENGTH);

	int line_number = 0;
    
	int fd = open(argv[1], O_RDONLY);

	if (fd != -1)
	{
		char buf[BUF_SIZE] = {};
		int len = 0;
		while ((len = read(fd, buf, BUF_SIZE)) > 0)
		{
			int i = 0;
			int next = 0;
			int is_full = 0;
			while (i < len)
			{
				for (i = next; i < len && buf[i] != '\n'; i++)
					;
				strcat_n(text[line_number], buf+next, i-next);

				if (i < len && buf[i] == '\n')
				{
					if (line_number >= MAX_LINE_NUMBER - 1)
						is_full = 1;
					else
					{
						line_number++;
						text[line_number] = malloc(MAX_LINE_LENGTH);
						memset(text[line_number], 0, MAX_LINE_LENGTH);
					}
				}
				if (is_full == 1 || i >= len - 1)
					break;
				else
					next = i + 1;
			}
			if (is_full == 1)
				break;
		}
		close(fd);
	} else{
		printf(1,"File nope exist\n");
		exit();
	}
	
	show(text);
	
	char input[MAX_LINE_LENGTH] = {};
	while (1)
	{
		printf(1, "\nplease input q or exit to out:\n");
		memset(input, 0, MAX_LINE_LENGTH);
		gets(input, MAX_LINE_LENGTH);
		int len = strlen(input);
		input[len-1] = '\0';

		if(strcmp(input, "exit") == 0 || strcmp(input, "q") == 0)
			com_exit(text, argv[1],0,0);
		else
		{
			printf(1, "invalid command.\n");
		}
	}
	exit();
}
