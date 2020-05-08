char* strcat_n(char* dest, char* src, int len)
{
	if (len <= 0)
		return dest;
	int pos = strlen(dest);
	if (len + pos >= 256)
		return dest;
	int i = 0;
	for (; i < len; i++)
		dest[i+pos] = src[i];
	dest[len+pos] = '\0';
	return dest;
}

void show_text(char *text[])
{
	int j = 0;
    printf(1, "\033[2J\033[1;1H\n");
	for (; text[j] != 0; j++)
		printf(1, "%d%d%d:%s\n", (j+1)/100, ((j+1)%100)/10, (j+1)%10, text[j]);
    printf(1, "\n\n");
}

int get_line_number(char *text[])
{
	int i = 0;
	for (; i < 256; i++)
		if (text[i] == 0)
			return i - 1;
	return i - 1;
}

int stringtonumber(char* src)
{
	int number = 0; 
	int i=0;
	int pos = strlen(src);
	for(;i<pos;i++)
	{
		if(src[i]==' ') break;
		if(src[i]>57||src[i]<48) return -1;
		number=10*number+(src[i]-48);
	}
	return number;
}

int com_ins(char *text[], int n, char *extra, int changed,int auto_show)
{
	if (n < 0 || n > get_line_number(text) + 1)
	{
		printf(1, "invalid line number\n");
		return changed;
	}
	char input[256] = {};
	if (*extra == '\0')
	{
		printf(1, "please input content:\n");
		gets(input, 256);
		input[strlen(input)-1] = '\0';
	}
	else
		strcpy(input, extra);
	int i = 256 - 1;
	for (; i > n; i--)
	{
		if (text[i-1] == 0)
			continue;
		else if (text[i] == 0 && text[i-1] != 0)
		{
			text[i] = malloc(256);
			memset(text[i], 0, 256);
			strcpy(text[i], text[i-1]);
		}
		else if (text[i] != 0 && text[i-1] != 0)
		{
			memset(text[i], 0, 256);
			strcpy(text[i], text[i-1]);
		}
	}
	if (text[n] == 0)
	{
		text[n] = malloc(256);
		if (text[n-1][0] == '\0')
		{
			memset(text[n], 0, 256);
			strcpy(text[n-1], input);
			changed = 1;
			if (auto_show == 1)
				show_text(text);
			return changed;
		}
	}
	memset(text[n], 0, 256);
	strcpy(text[n], input);
	changed = 1;
	if (auto_show == 1)
		show_text(text);
    return changed;
}

int com_mod(char *text[], int n, char *extra,int changed, int auto_show)
{
	if (n <= 0 || n > get_line_number(text) + 1)
	{
		printf(1, "invalid line number\n");
		return changed;
	}
	char input[256] = {};
	if (*extra == '\0')
	{
		printf(1, "please input content:\n");
		gets(input, 256);
		input[strlen(input)-1] = '\0';
	}
	else
		strcpy(input, extra);
	memset(text[n-1], 0, 256);
	strcpy(text[n-1], input);
	changed = 1;
	if (auto_show == 1)
		show_text(text);
    return changed;
}

int com_del(char *text[], int n,int changed,int auto_show)
{
	if (n <= 0 || n > get_line_number(text) + 1)
	{
		printf(1, "invalid line number\n");
		return changed;
	}
	memset(text[n-1], 0, 256);
	int i = n - 1;
	for (; text[i+1] != 0; i++)
	{
		strcpy(text[i], text[i+1]);
		memset(text[i+1], 0, 256);
	}
	if (i != 0)
	{
		free(text[i]);
		text[i] = 0;
	}
	changed = 1;
	if (auto_show == 1)
		show_text(text);
    return changed;
}

void com_help(char *text[])
{
	printf(1, "****************************************\n");
	printf(1, "instructions for use:\n");
	printf(1, "ins-n, insert a line after line n\n");
	printf(1, "mod-n, modify line n\n");
	printf(1, "del-n, hapus line n\n");
	printf(1, "ins, insert a line after the last line\n");
	printf(1, "mod, modify the last line\n");
	printf(1, "del, hapus the last line\n");
	printf(1, "save, save the file\n");
	printf(1, "exit, exit editor\n");
}

int com_save(char *text[], char *path,int changed)
{

	unlink(path);

	int fd = open(path, O_WRONLY|O_CREATE);
	if (fd == -1)
	{
		printf(1, "save failed, file can't open:\n");

		exit();
	}
	if (text[0] == 0)
	{
		close(fd);
		return changed;
	}

	write(fd, text[0], strlen(text[0]));
	int i = 1;
	for (; text[i] != 0; i++)
	{
		printf(fd, "\n");
		write(fd, text[i], strlen(text[i]));
	}
	close(fd);
	printf(1, "saved successfully\n");
	changed = 0;
	return changed;
}

void com_exit(char *text[], char *path,int changed,int hapus)
{

	while (changed == 1)
	{
		printf(1, "save the file? y/n\n");
		char input[256] = {};
		gets(input, 256);
		input[strlen(input)-1] = '\0';
		if (strcmp(input, "y") == 0)
			changed=com_save(text, path,changed);
		else if(strcmp(input, "n") == 0){
            if(hapus==1)
        		unlink(path);
        	break;
        }
		else
		printf(2, "wrong answer?\n");
	}

	int i = 0;
	for (; text[i] != 0; i++)
	{
		free(text[i]);
		text[i] = 0;
	}

    printf(1, "\033[2J\033[1;1H\n");
	exit();
}