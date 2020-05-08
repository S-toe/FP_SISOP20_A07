#include "types.h"
#include "stat.h"
#include "user.h"
#include "fcntl.h"
#include "fs.h"
#include "vim.h"

int changed = 0;
int auto_show = 1;
int hapus = 0;

int main(int argc, char *argv[])
{
	if (argc == 1)
	{
		printf(1, "please input the command as [vim file_name]\n");
		exit();
	}

	char *text[256] = {};
	text[0] = malloc(256);
	memset(text[0], 0, 256);

	int line_number = 0;
    
	int fd = open(argv[1], O_RDONLY);
    if((fd == -1)){
		// printf(1,"File do not exist\n");
        fd = open(argv[1], O_RDONLY | O_CREATE);
        hapus=1;
	}

	if((fd != -1))
	{
		// printf(1, "file exist\n");
		char buf[256] = {};
		int len = 0;
		while ((len = read(fd, buf, 256)) > 0)
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
					if (line_number >= 256 - 1)
						is_full = 1;
					else
					{
						line_number++;
						text[line_number] = malloc(256);
						memset(text[line_number], 0, 256);
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
	}
	
	show_text(text);
    
	com_help(text);

	char input[256] = {};
	while (1)
	{
		printf(1, "\nplease input command:\n");
		memset(input, 0, 256);
		gets(input, 256);
		int len = strlen(input);
		input[len-1] = '\0';
		len --;

		int pos = 256 - 1;
		int j = 0;
		for (; j < 8; j++)
		{
			if (input[j] == ' ')
			{
				pos = j + 1;
				break;
			}
		}

		if (input[0] == 'i' && input[1] == 'n' && input[2] == 's')
		{
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
			{
				changed=com_ins(text, stringtonumber(&input[4]), &input[pos],changed, auto_show);

				line_number = get_line_number(text);
			}
			else if(input[3] == ' '||input[3] == '\0')
			{
				changed=com_ins(text, line_number+1, &input[pos],changed, auto_show);
                                line_number = get_line_number(text);
			}
			else
			{
				printf(1, "invalid command.\n");
				com_help(text);
			}
		}

		else if (input[0] == 'm' && input[1] == 'o' && input[2] == 'd')
		{
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
				changed=com_mod(text, atoi(&input[4]), &input[pos],changed,auto_show);
			else if(input[3] == ' '||input[3] == '\0')
				changed=com_mod(text, line_number + 1, &input[pos],changed,auto_show);
			else
			{
				printf(1, "invalid command.\n");
				com_help(text);
			}
		}

		else if (input[0] == 'd' && input[1] == 'e' && input[2] == 'l')
		{
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
			{
				changed=com_del(text, atoi(&input[4]),changed,auto_show);
                
				line_number = get_line_number(text);
			}	
			else if(input[3]=='\0')
			{
				changed=com_del(text, line_number + 1,changed,auto_show);
				line_number = get_line_number(text);
			}
			else
			{
				printf(1, "invalid command.\n");
				com_help(text);
			}
			
		}
		
		else if (strcmp(input, "save") == 0 || strcmp(input, "CTRL+S\n") == 0)
			changed=com_save(text, argv[1],changed);
		else if (strcmp(input, "exit") == 0)
			com_exit(text, argv[1],changed,hapus);
		else
		{
			printf(1, "invalid command.\n");
			com_help(text);
		}
	}
	
	exit();
}