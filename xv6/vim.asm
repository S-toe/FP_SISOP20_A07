
_vim:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
int changed = 0;
int auto_show = 1;
int hapus = 0;

int main(int argc, char *argv[])
{
       0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
       4:	83 e4 f0             	and    $0xfffffff0,%esp
       7:	ff 71 fc             	pushl  -0x4(%ecx)
       a:	55                   	push   %ebp
       b:	89 e5                	mov    %esp,%ebp
       d:	57                   	push   %edi
       e:	56                   	push   %esi
       f:	53                   	push   %ebx
      10:	51                   	push   %ecx
      11:	81 ec 28 05 00 00    	sub    $0x528,%esp
	if (argc == 1)
      17:	83 39 01             	cmpl   $0x1,(%ecx)
{
      1a:	8b 41 04             	mov    0x4(%ecx),%eax
      1d:	89 85 d8 fa ff ff    	mov    %eax,-0x528(%ebp)
	if (argc == 1)
      23:	0f 84 94 04 00 00    	je     4bd <main+0x4bd>
	{
		printf(1, "please input the command as [vim file_name]\n");
		exit();
	}

	char *text[256] = {};
      29:	8d bd e8 fb ff ff    	lea    -0x418(%ebp),%edi
	text[0] = malloc(256);
      2f:	83 ec 0c             	sub    $0xc,%esp
	char *text[256] = {};
      32:	31 c0                	xor    %eax,%eax
      34:	b9 00 01 00 00       	mov    $0x100,%ecx
      39:	f3 ab                	rep stos %eax,%es:(%edi)
	text[0] = malloc(256);
      3b:	68 00 01 00 00       	push   $0x100
      40:	e8 fb 14 00 00       	call   1540 <malloc>
	memset(text[0], 0, 256);
      45:	83 c4 0c             	add    $0xc,%esp
	text[0] = malloc(256);
      48:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%ebp)
	memset(text[0], 0, 256);
      4e:	68 00 01 00 00       	push   $0x100
      53:	6a 00                	push   $0x0
      55:	50                   	push   %eax
      56:	e8 95 0f 00 00       	call   ff0 <memset>

	int line_number = 0;
    
	int fd = open(argv[1], O_RDONLY);
      5b:	58                   	pop    %eax
      5c:	8b 85 d8 fa ff ff    	mov    -0x528(%ebp),%eax
      62:	5a                   	pop    %edx
      63:	6a 00                	push   $0x0
      65:	ff 70 04             	pushl  0x4(%eax)
      68:	e8 65 11 00 00       	call   11d2 <open>
    if((fd == -1)){
      6d:	83 c4 10             	add    $0x10,%esp
      70:	83 f8 ff             	cmp    $0xffffffff,%eax
	int fd = open(argv[1], O_RDONLY);
      73:	89 85 d4 fa ff ff    	mov    %eax,-0x52c(%ebp)
    if((fd == -1)){
      79:	0f 84 51 04 00 00    	je     4d0 <main+0x4d0>
	}

	if((fd != -1))
	{
		// printf(1, "file exist\n");
		char buf[256] = {};
      7f:	8d b5 e8 fa ff ff    	lea    -0x518(%ebp),%esi
      85:	b9 40 00 00 00       	mov    $0x40,%ecx
      8a:	31 c0                	xor    %eax,%eax
	int line_number = 0;
      8c:	c7 85 e4 fa ff ff 00 	movl   $0x0,-0x51c(%ebp)
      93:	00 00 00 
		char buf[256] = {};
      96:	89 f7                	mov    %esi,%edi
      98:	f3 ab                	rep stos %eax,%es:(%edi)
      9a:	89 f7                	mov    %esi,%edi
      9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		int len = 0;
		while ((len = read(fd, buf, 256)) > 0)
      a0:	83 ec 04             	sub    $0x4,%esp
      a3:	68 00 01 00 00       	push   $0x100
      a8:	57                   	push   %edi
      a9:	ff b5 d4 fa ff ff    	pushl  -0x52c(%ebp)
      af:	e8 f6 10 00 00       	call   11aa <read>
      b4:	83 c4 10             	add    $0x10,%esp
      b7:	85 c0                	test   %eax,%eax
      b9:	89 c6                	mov    %eax,%esi
      bb:	0f 8e ec 00 00 00    	jle    1ad <main+0x1ad>
						line_number++;
						text[line_number] = malloc(256);
						memset(text[line_number], 0, 256);
					}
				}
				if (is_full == 1 || i >= len - 1)
      c1:	8d 46 ff             	lea    -0x1(%esi),%eax
			int next = 0;
      c4:	31 d2                	xor    %edx,%edx
				if (is_full == 1 || i >= len - 1)
      c6:	89 85 dc fa ff ff    	mov    %eax,-0x524(%ebp)
      cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
				for (i = next; i < len && buf[i] != '\n'; i++)
      d0:	39 d6                	cmp    %edx,%esi
      d2:	89 d3                	mov    %edx,%ebx
      d4:	7e 54                	jle    12a <main+0x12a>
      d6:	80 bc 15 e8 fa ff ff 	cmpb   $0xa,-0x518(%ebp,%edx,1)
      dd:	0a 
      de:	75 0e                	jne    ee <main+0xee>
      e0:	eb 3e                	jmp    120 <main+0x120>
      e2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      e8:	80 3c 1f 0a          	cmpb   $0xa,(%edi,%ebx,1)
      ec:	74 5a                	je     148 <main+0x148>
      ee:	83 c3 01             	add    $0x1,%ebx
      f1:	39 de                	cmp    %ebx,%esi
      f3:	75 f3                	jne    e8 <main+0xe8>
				strcat_n(text[line_number], buf+next, i-next);
      f5:	8d 04 17             	lea    (%edi,%edx,1),%eax
char* strcat_n(char* dest, char* src, int len)
{
	if (len <= 0)
      f8:	89 f1                	mov    %esi,%ecx
      fa:	29 d1                	sub    %edx,%ecx
      fc:	89 85 e0 fa ff ff    	mov    %eax,-0x520(%ebp)
     102:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     108:	8b 84 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%eax
     10f:	74 8f                	je     a0 <main+0xa0>
     111:	8b 95 e0 fa ff ff    	mov    -0x520(%ebp),%edx
     117:	e8 44 05 00 00       	call   660 <strcat_n.part.0>
				if (i < len && buf[i] == '\n')
     11c:	39 de                	cmp    %ebx,%esi
     11e:	7e 80                	jle    a0 <main+0xa0>
     120:	80 bc 1d e8 fa ff ff 	cmpb   $0xa,-0x518(%ebp,%ebx,1)
     127:	0a 
     128:	74 31                	je     15b <main+0x15b>
				if (is_full == 1 || i >= len - 1)
     12a:	39 9d dc fa ff ff    	cmp    %ebx,-0x524(%ebp)
     130:	0f 8e 6a ff ff ff    	jle    a0 <main+0xa0>
			while (i < len)
     136:	39 de                	cmp    %ebx,%esi
					break;
				else
					next = i + 1;
     138:	8d 53 01             	lea    0x1(%ebx),%edx
			while (i < len)
     13b:	7f 93                	jg     d0 <main+0xd0>
     13d:	e9 5e ff ff ff       	jmp    a0 <main+0xa0>
     142:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
				strcat_n(text[line_number], buf+next, i-next);
     148:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     14e:	89 d9                	mov    %ebx,%ecx
     150:	29 d1                	sub    %edx,%ecx
     152:	8b 84 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%eax
     159:	75 45                	jne    1a0 <main+0x1a0>
					if (line_number >= 256 - 1)
     15b:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     161:	3d fe 00 00 00       	cmp    $0xfe,%eax
     166:	7f 45                	jg     1ad <main+0x1ad>
						text[line_number] = malloc(256);
     168:	83 ec 0c             	sub    $0xc,%esp
						line_number++;
     16b:	83 c0 01             	add    $0x1,%eax
						text[line_number] = malloc(256);
     16e:	68 00 01 00 00       	push   $0x100
						line_number++;
     173:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
						text[line_number] = malloc(256);
     179:	e8 c2 13 00 00       	call   1540 <malloc>
						memset(text[line_number], 0, 256);
     17e:	83 c4 0c             	add    $0xc,%esp
						text[line_number] = malloc(256);
     181:	8b 8d e4 fa ff ff    	mov    -0x51c(%ebp),%ecx
						memset(text[line_number], 0, 256);
     187:	68 00 01 00 00       	push   $0x100
     18c:	6a 00                	push   $0x0
     18e:	50                   	push   %eax
						text[line_number] = malloc(256);
     18f:	89 84 8d e8 fb ff ff 	mov    %eax,-0x418(%ebp,%ecx,4)
						memset(text[line_number], 0, 256);
     196:	e8 55 0e 00 00       	call   ff0 <memset>
     19b:	83 c4 10             	add    $0x10,%esp
     19e:	eb 8a                	jmp    12a <main+0x12a>
				strcat_n(text[line_number], buf+next, i-next);
     1a0:	01 fa                	add    %edi,%edx
     1a2:	89 95 e0 fa ff ff    	mov    %edx,-0x520(%ebp)
     1a8:	e9 64 ff ff ff       	jmp    111 <main+0x111>
			}
			if (is_full == 1)
				break;
		}
		close(fd);
     1ad:	83 ec 0c             	sub    $0xc,%esp
     1b0:	ff b5 d4 fa ff ff    	pushl  -0x52c(%ebp)
     1b6:	89 fe                	mov    %edi,%esi
     1b8:	e8 fd 0f 00 00       	call   11ba <close>
     1bd:	83 c4 10             	add    $0x10,%esp
	}
	
	show_text(text);
     1c0:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     1c6:	83 ec 0c             	sub    $0xc,%esp
    
	com_help(text);

	char input[256] = {};
     1c9:	89 f7                	mov    %esi,%edi
	show_text(text);
     1cb:	50                   	push   %eax
     1cc:	e8 1f 05 00 00       	call   6f0 <show_text>
	com_help(text);
     1d1:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     1d7:	89 04 24             	mov    %eax,(%esp)
     1da:	e8 b1 0a 00 00       	call   c90 <com_help>
	char input[256] = {};
     1df:	b9 40 00 00 00       	mov    $0x40,%ecx
     1e4:	31 c0                	xor    %eax,%eax
     1e6:	83 c4 10             	add    $0x10,%esp
     1e9:	f3 ab                	rep stos %eax,%es:(%edi)
			}
		}

		else if (input[0] == 'd' && input[1] == 'e' && input[2] == 'l')
		{
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     1eb:	8d bd ec fa ff ff    	lea    -0x514(%ebp),%edi
     1f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
		printf(1, "\nplease input command:\n");
     1f8:	83 ec 08             	sub    $0x8,%esp
     1fb:	68 58 17 00 00       	push   $0x1758
     200:	6a 01                	push   $0x1
     202:	e8 d9 10 00 00       	call   12e0 <printf>
		memset(input, 0, 256);
     207:	83 c4 0c             	add    $0xc,%esp
     20a:	68 00 01 00 00       	push   $0x100
     20f:	6a 00                	push   $0x0
     211:	56                   	push   %esi
     212:	e8 d9 0d 00 00       	call   ff0 <memset>
		gets(input, 256);
     217:	5b                   	pop    %ebx
     218:	58                   	pop    %eax
     219:	68 00 01 00 00       	push   $0x100
     21e:	56                   	push   %esi
		int j = 0;
     21f:	31 db                	xor    %ebx,%ebx
		gets(input, 256);
     221:	e8 2a 0e 00 00       	call   1050 <gets>
		int len = strlen(input);
     226:	89 34 24             	mov    %esi,(%esp)
     229:	e8 92 0d 00 00       	call   fc0 <strlen>
		input[len-1] = '\0';
     22e:	83 c4 10             	add    $0x10,%esp
     231:	c6 84 05 e7 fa ff ff 	movb   $0x0,-0x519(%ebp,%eax,1)
     238:	00 
     239:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
			if (input[j] == ' ')
     240:	0f b6 04 1e          	movzbl (%esi,%ebx,1),%eax
     244:	83 c3 01             	add    $0x1,%ebx
     247:	3c 20                	cmp    $0x20,%al
     249:	74 0a                	je     255 <main+0x255>
		for (; j < 8; j++)
     24b:	83 fb 08             	cmp    $0x8,%ebx
     24e:	75 f0                	jne    240 <main+0x240>
		int pos = 256 - 1;
     250:	bb ff 00 00 00       	mov    $0xff,%ebx
		if (input[0] == 'i' && input[1] == 'n' && input[2] == 's')
     255:	0f b6 85 e8 fa ff ff 	movzbl -0x518(%ebp),%eax
     25c:	3c 69                	cmp    $0x69,%al
     25e:	0f 84 b4 00 00 00    	je     318 <main+0x318>
		else if (input[0] == 'm' && input[1] == 'o' && input[2] == 'd')
     264:	3c 6d                	cmp    $0x6d,%al
     266:	0f 85 44 01 00 00    	jne    3b0 <main+0x3b0>
     26c:	80 bd e9 fa ff ff 6f 	cmpb   $0x6f,-0x517(%ebp)
     273:	0f 84 c7 01 00 00    	je     440 <main+0x440>
				com_help(text);
			}
			
		}
		
		else if (strcmp(input, "save") == 0 || strcmp(input, "CTRL+S\n") == 0)
     279:	83 ec 08             	sub    $0x8,%esp
     27c:	68 82 17 00 00       	push   $0x1782
     281:	56                   	push   %esi
     282:	e8 e9 0c 00 00       	call   f70 <strcmp>
     287:	83 c4 10             	add    $0x10,%esp
     28a:	85 c0                	test   %eax,%eax
     28c:	74 5a                	je     2e8 <main+0x2e8>
     28e:	83 ec 08             	sub    $0x8,%esp
     291:	68 87 17 00 00       	push   $0x1787
     296:	56                   	push   %esi
     297:	e8 d4 0c 00 00       	call   f70 <strcmp>
     29c:	83 c4 10             	add    $0x10,%esp
     29f:	85 c0                	test   %eax,%eax
     2a1:	74 45                	je     2e8 <main+0x2e8>
			changed=com_save(text, argv[1],changed);
		else if (strcmp(input, "exit") == 0)
     2a3:	83 ec 08             	sub    $0x8,%esp
     2a6:	68 8f 17 00 00       	push   $0x178f
     2ab:	56                   	push   %esi
     2ac:	e8 bf 0c 00 00       	call   f70 <strcmp>
     2b1:	83 c4 10             	add    $0x10,%esp
     2b4:	85 c0                	test   %eax,%eax
     2b6:	0f 84 e0 01 00 00    	je     49c <main+0x49c>
			com_exit(text, argv[1],changed,hapus);
		else
		{
			printf(1, "invalid command.\n");
     2bc:	83 ec 08             	sub    $0x8,%esp
     2bf:	68 70 17 00 00       	push   $0x1770
     2c4:	6a 01                	push   $0x1
     2c6:	e8 15 10 00 00       	call   12e0 <printf>
			com_help(text);
     2cb:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     2d1:	89 04 24             	mov    %eax,(%esp)
     2d4:	e8 b7 09 00 00       	call   c90 <com_help>
     2d9:	83 c4 10             	add    $0x10,%esp
     2dc:	e9 17 ff ff ff       	jmp    1f8 <main+0x1f8>
     2e1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
			changed=com_save(text, argv[1],changed);
     2e8:	8b 85 d8 fa ff ff    	mov    -0x528(%ebp),%eax
     2ee:	83 ec 04             	sub    $0x4,%esp
     2f1:	ff 35 30 1d 00 00    	pushl  0x1d30
     2f7:	ff 70 04             	pushl  0x4(%eax)
     2fa:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     300:	50                   	push   %eax
     301:	e8 2a 0a 00 00       	call   d30 <com_save>
     306:	83 c4 10             	add    $0x10,%esp
     309:	a3 30 1d 00 00       	mov    %eax,0x1d30
     30e:	e9 e5 fe ff ff       	jmp    1f8 <main+0x1f8>
     313:	90                   	nop
     314:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if (input[0] == 'i' && input[1] == 'n' && input[2] == 's')
     318:	80 bd e9 fa ff ff 6e 	cmpb   $0x6e,-0x517(%ebp)
     31f:	0f 85 54 ff ff ff    	jne    279 <main+0x279>
     325:	80 bd ea fa ff ff 73 	cmpb   $0x73,-0x516(%ebp)
     32c:	0f 85 47 ff ff ff    	jne    279 <main+0x279>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     332:	80 bd eb fa ff ff 2d 	cmpb   $0x2d,-0x515(%ebp)
     339:	0f 84 d7 01 00 00    	je     516 <main+0x516>
			else if(input[3] == ' '||input[3] == '\0')
     33f:	f6 85 eb fa ff ff df 	testb  $0xdf,-0x515(%ebp)
     346:	0f 85 70 ff ff ff    	jne    2bc <main+0x2bc>
				changed=com_ins(text, line_number+1, &input[pos],changed, auto_show);
     34c:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     352:	83 ec 0c             	sub    $0xc,%esp
     355:	01 f3                	add    %esi,%ebx
     357:	ff 35 28 1d 00 00    	pushl  0x1d28
     35d:	ff 35 30 1d 00 00    	pushl  0x1d30
     363:	53                   	push   %ebx
     364:	83 c0 01             	add    $0x1,%eax
     367:	50                   	push   %eax
     368:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     36e:	50                   	push   %eax
     36f:	e8 dc 04 00 00       	call   850 <com_ins>
     374:	83 c4 20             	add    $0x20,%esp
     377:	a3 30 1d 00 00       	mov    %eax,0x1d30
    printf(1, "\n\n");
}

int get_line_number(char *text[])
{
	int i = 0;
     37c:	31 c0                	xor    %eax,%eax
     37e:	eb 0e                	jmp    38e <main+0x38e>
	for (; i < 256; i++)
     380:	83 c0 01             	add    $0x1,%eax
     383:	3d 00 01 00 00       	cmp    $0x100,%eax
     388:	0f 84 bc 02 00 00    	je     64a <main+0x64a>
		if (text[i] == 0)
     38e:	8b 8c 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%ecx
     395:	85 c9                	test   %ecx,%ecx
     397:	75 e7                	jne    380 <main+0x380>
			return i - 1;
     399:	83 e8 01             	sub    $0x1,%eax
     39c:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
     3a2:	e9 51 fe ff ff       	jmp    1f8 <main+0x1f8>
     3a7:	89 f6                	mov    %esi,%esi
     3a9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		else if (input[0] == 'd' && input[1] == 'e' && input[2] == 'l')
     3b0:	3c 64                	cmp    $0x64,%al
     3b2:	0f 85 c1 fe ff ff    	jne    279 <main+0x279>
     3b8:	80 bd e9 fa ff ff 65 	cmpb   $0x65,-0x517(%ebp)
     3bf:	0f 85 b4 fe ff ff    	jne    279 <main+0x279>
     3c5:	80 bd ea fa ff ff 6c 	cmpb   $0x6c,-0x516(%ebp)
     3cc:	0f 85 a7 fe ff ff    	jne    279 <main+0x279>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     3d2:	80 bd eb fa ff ff 2d 	cmpb   $0x2d,-0x515(%ebp)
     3d9:	0f 84 b5 01 00 00    	je     594 <main+0x594>
			else if(input[3]=='\0')
     3df:	80 bd eb fa ff ff 00 	cmpb   $0x0,-0x515(%ebp)
     3e6:	0f 85 d0 fe ff ff    	jne    2bc <main+0x2bc>
				changed=com_del(text, line_number + 1,changed,auto_show);
     3ec:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     3f2:	ff 35 28 1d 00 00    	pushl  0x1d28
     3f8:	ff 35 30 1d 00 00    	pushl  0x1d30
     3fe:	83 c0 01             	add    $0x1,%eax
     401:	50                   	push   %eax
     402:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     408:	50                   	push   %eax
     409:	e8 62 07 00 00       	call   b70 <com_del>
     40e:	83 c4 10             	add    $0x10,%esp
     411:	a3 30 1d 00 00       	mov    %eax,0x1d30
	int i = 0;
     416:	31 c0                	xor    %eax,%eax
     418:	eb 14                	jmp    42e <main+0x42e>
     41a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	for (; i < 256; i++)
     420:	83 c0 01             	add    $0x1,%eax
     423:	3d 00 01 00 00       	cmp    $0x100,%eax
     428:	0f 84 1c 02 00 00    	je     64a <main+0x64a>
		if (text[i] == 0)
     42e:	8b 94 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%edx
     435:	85 d2                	test   %edx,%edx
     437:	75 e7                	jne    420 <main+0x420>
     439:	e9 5b ff ff ff       	jmp    399 <main+0x399>
     43e:	66 90                	xchg   %ax,%ax
		else if (input[0] == 'm' && input[1] == 'o' && input[2] == 'd')
     440:	80 bd ea fa ff ff 64 	cmpb   $0x64,-0x516(%ebp)
     447:	0f 85 2c fe ff ff    	jne    279 <main+0x279>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     44d:	80 bd eb fa ff ff 2d 	cmpb   $0x2d,-0x515(%ebp)
     454:	0f 84 a3 01 00 00    	je     5fd <main+0x5fd>
			else if(input[3] == ' '||input[3] == '\0')
     45a:	f6 85 eb fa ff ff df 	testb  $0xdf,-0x515(%ebp)
     461:	0f 85 55 fe ff ff    	jne    2bc <main+0x2bc>
				changed=com_mod(text, line_number + 1, &input[pos],changed,auto_show);
     467:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     46d:	83 ec 0c             	sub    $0xc,%esp
     470:	01 f3                	add    %esi,%ebx
     472:	ff 35 28 1d 00 00    	pushl  0x1d28
     478:	ff 35 30 1d 00 00    	pushl  0x1d30
     47e:	53                   	push   %ebx
     47f:	83 c0 01             	add    $0x1,%eax
     482:	50                   	push   %eax
     483:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     489:	50                   	push   %eax
     48a:	e8 c1 05 00 00       	call   a50 <com_mod>
     48f:	83 c4 20             	add    $0x20,%esp
     492:	a3 30 1d 00 00       	mov    %eax,0x1d30
     497:	e9 5c fd ff ff       	jmp    1f8 <main+0x1f8>
			com_exit(text, argv[1],changed,hapus);
     49c:	8b 85 d8 fa ff ff    	mov    -0x528(%ebp),%eax
     4a2:	ff 35 2c 1d 00 00    	pushl  0x1d2c
     4a8:	ff 35 30 1d 00 00    	pushl  0x1d30
     4ae:	ff 70 04             	pushl  0x4(%eax)
     4b1:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     4b7:	50                   	push   %eax
     4b8:	e8 63 09 00 00       	call   e20 <com_exit>
		printf(1, "please input the command as [vim file_name]\n");
     4bd:	51                   	push   %ecx
     4be:	51                   	push   %ecx
     4bf:	68 2c 18 00 00       	push   $0x182c
     4c4:	6a 01                	push   $0x1
     4c6:	e8 15 0e 00 00       	call   12e0 <printf>
		exit();
     4cb:	e8 c2 0c 00 00       	call   1192 <exit>
        fd = open(argv[1], O_RDONLY | O_CREATE);
     4d0:	50                   	push   %eax
     4d1:	50                   	push   %eax
     4d2:	8d b5 e8 fa ff ff    	lea    -0x518(%ebp),%esi
     4d8:	8b 85 d8 fa ff ff    	mov    -0x528(%ebp),%eax
     4de:	68 00 02 00 00       	push   $0x200
     4e3:	ff 70 04             	pushl  0x4(%eax)
     4e6:	e8 e7 0c 00 00       	call   11d2 <open>
	if((fd != -1))
     4eb:	83 c4 10             	add    $0x10,%esp
        fd = open(argv[1], O_RDONLY | O_CREATE);
     4ee:	89 85 d4 fa ff ff    	mov    %eax,-0x52c(%ebp)
	if((fd != -1))
     4f4:	83 c0 01             	add    $0x1,%eax
        hapus=1;
     4f7:	c7 05 2c 1d 00 00 01 	movl   $0x1,0x1d2c
     4fe:	00 00 00 
	int line_number = 0;
     501:	c7 85 e4 fa ff ff 00 	movl   $0x0,-0x51c(%ebp)
     508:	00 00 00 
	if((fd != -1))
     50b:	0f 84 af fc ff ff    	je     1c0 <main+0x1c0>
     511:	e9 69 fb ff ff       	jmp    7f <main+0x7f>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     516:	83 ec 0c             	sub    $0xc,%esp
     519:	57                   	push   %edi
     51a:	e8 b1 02 00 00       	call   7d0 <stringtonumber>
     51f:	83 c4 10             	add    $0x10,%esp
     522:	85 c0                	test   %eax,%eax
     524:	0f 88 15 fe ff ff    	js     33f <main+0x33f>
				changed=com_ins(text, stringtonumber(&input[4]), &input[pos],changed, auto_show);
     52a:	83 ec 0c             	sub    $0xc,%esp
     52d:	8b 0d 28 1d 00 00    	mov    0x1d28,%ecx
     533:	8b 15 30 1d 00 00    	mov    0x1d30,%edx
     539:	57                   	push   %edi
     53a:	01 f3                	add    %esi,%ebx
     53c:	89 8d e0 fa ff ff    	mov    %ecx,-0x520(%ebp)
     542:	89 95 e4 fa ff ff    	mov    %edx,-0x51c(%ebp)
     548:	e8 83 02 00 00       	call   7d0 <stringtonumber>
     54d:	8b 8d e0 fa ff ff    	mov    -0x520(%ebp),%ecx
     553:	8b 95 e4 fa ff ff    	mov    -0x51c(%ebp),%edx
     559:	89 0c 24             	mov    %ecx,(%esp)
     55c:	52                   	push   %edx
     55d:	53                   	push   %ebx
     55e:	50                   	push   %eax
     55f:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     565:	50                   	push   %eax
     566:	e8 e5 02 00 00       	call   850 <com_ins>
     56b:	83 c4 20             	add    $0x20,%esp
     56e:	a3 30 1d 00 00       	mov    %eax,0x1d30
	int i = 0;
     573:	31 c0                	xor    %eax,%eax
     575:	eb 0e                	jmp    585 <main+0x585>
	for (; i < 256; i++)
     577:	83 c0 01             	add    $0x1,%eax
     57a:	3d 00 01 00 00       	cmp    $0x100,%eax
     57f:	0f 84 c5 00 00 00    	je     64a <main+0x64a>
		if (text[i] == 0)
     585:	83 bc 85 e8 fb ff ff 	cmpl   $0x0,-0x418(%ebp,%eax,4)
     58c:	00 
     58d:	75 e8                	jne    577 <main+0x577>
     58f:	e9 05 fe ff ff       	jmp    399 <main+0x399>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     594:	83 ec 0c             	sub    $0xc,%esp
     597:	57                   	push   %edi
     598:	e8 33 02 00 00       	call   7d0 <stringtonumber>
     59d:	83 c4 10             	add    $0x10,%esp
     5a0:	85 c0                	test   %eax,%eax
     5a2:	0f 88 37 fe ff ff    	js     3df <main+0x3df>
				changed=com_del(text, atoi(&input[4]),changed,auto_show);
     5a8:	83 ec 0c             	sub    $0xc,%esp
     5ab:	8b 15 28 1d 00 00    	mov    0x1d28,%edx
     5b1:	8b 1d 30 1d 00 00    	mov    0x1d30,%ebx
     5b7:	57                   	push   %edi
     5b8:	89 95 e4 fa ff ff    	mov    %edx,-0x51c(%ebp)
     5be:	e8 5d 0b 00 00       	call   1120 <atoi>
     5c3:	8b 95 e4 fa ff ff    	mov    -0x51c(%ebp),%edx
     5c9:	52                   	push   %edx
     5ca:	53                   	push   %ebx
     5cb:	50                   	push   %eax
     5cc:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     5d2:	50                   	push   %eax
     5d3:	e8 98 05 00 00       	call   b70 <com_del>
     5d8:	83 c4 20             	add    $0x20,%esp
     5db:	a3 30 1d 00 00       	mov    %eax,0x1d30
	int i = 0;
     5e0:	31 c0                	xor    %eax,%eax
     5e2:	eb 0a                	jmp    5ee <main+0x5ee>
	for (; i < 256; i++)
     5e4:	83 c0 01             	add    $0x1,%eax
     5e7:	3d 00 01 00 00       	cmp    $0x100,%eax
     5ec:	74 5c                	je     64a <main+0x64a>
		if (text[i] == 0)
     5ee:	83 bc 85 e8 fb ff ff 	cmpl   $0x0,-0x418(%ebp,%eax,4)
     5f5:	00 
     5f6:	75 ec                	jne    5e4 <main+0x5e4>
     5f8:	e9 9c fd ff ff       	jmp    399 <main+0x399>
			if (input[3] == '-'&&stringtonumber(&input[4])>=0)
     5fd:	83 ec 0c             	sub    $0xc,%esp
     600:	57                   	push   %edi
     601:	e8 ca 01 00 00       	call   7d0 <stringtonumber>
     606:	83 c4 10             	add    $0x10,%esp
     609:	85 c0                	test   %eax,%eax
     60b:	0f 88 49 fe ff ff    	js     45a <main+0x45a>
				changed=com_mod(text, atoi(&input[4]), &input[pos],changed,auto_show);
     611:	83 ec 0c             	sub    $0xc,%esp
     614:	8b 0d 28 1d 00 00    	mov    0x1d28,%ecx
     61a:	8b 15 30 1d 00 00    	mov    0x1d30,%edx
     620:	57                   	push   %edi
     621:	01 f3                	add    %esi,%ebx
     623:	89 8d dc fa ff ff    	mov    %ecx,-0x524(%ebp)
     629:	89 95 e0 fa ff ff    	mov    %edx,-0x520(%ebp)
     62f:	e8 ec 0a 00 00       	call   1120 <atoi>
     634:	8b 8d dc fa ff ff    	mov    -0x524(%ebp),%ecx
     63a:	8b 95 e0 fa ff ff    	mov    -0x520(%ebp),%edx
     640:	89 0c 24             	mov    %ecx,(%esp)
     643:	52                   	push   %edx
     644:	53                   	push   %ebx
     645:	e9 38 fe ff ff       	jmp    482 <main+0x482>
	return i - 1;
     64a:	c7 85 e4 fa ff ff ff 	movl   $0xff,-0x51c(%ebp)
     651:	00 00 00 
     654:	e9 9f fb ff ff       	jmp    1f8 <main+0x1f8>
     659:	66 90                	xchg   %ax,%ax
     65b:	66 90                	xchg   %ax,%ax
     65d:	66 90                	xchg   %ax,%ax
     65f:	90                   	nop

00000660 <strcat_n.part.0>:
char* strcat_n(char* dest, char* src, int len)
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	57                   	push   %edi
     664:	56                   	push   %esi
     665:	53                   	push   %ebx
     666:	89 ce                	mov    %ecx,%esi
     668:	89 c7                	mov    %eax,%edi
     66a:	83 ec 28             	sub    $0x28,%esp
     66d:	89 55 e4             	mov    %edx,-0x1c(%ebp)
	int pos = strlen(dest);
     670:	50                   	push   %eax
     671:	e8 4a 09 00 00       	call   fc0 <strlen>
	if (len + pos >= 256)
     676:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
     679:	83 c4 10             	add    $0x10,%esp
     67c:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
     682:	7f 29                	jg     6ad <strcat_n.part.0+0x4d>
	for (; i < len; i++)
     684:	85 f6                	test   %esi,%esi
     686:	7e 21                	jle    6a9 <strcat_n.part.0+0x49>
     688:	8b 55 e4             	mov    -0x1c(%ebp),%edx
	int i = 0;
     68b:	31 db                	xor    %ebx,%ebx
     68d:	01 f8                	add    %edi,%eax
     68f:	89 4d e0             	mov    %ecx,-0x20(%ebp)
     692:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		dest[i+pos] = src[i];
     698:	0f b6 0c 1a          	movzbl (%edx,%ebx,1),%ecx
     69c:	88 0c 18             	mov    %cl,(%eax,%ebx,1)
	for (; i < len; i++)
     69f:	83 c3 01             	add    $0x1,%ebx
     6a2:	39 de                	cmp    %ebx,%esi
     6a4:	75 f2                	jne    698 <strcat_n.part.0+0x38>
     6a6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
	dest[len+pos] = '\0';
     6a9:	c6 04 0f 00          	movb   $0x0,(%edi,%ecx,1)
}
     6ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
     6b0:	5b                   	pop    %ebx
     6b1:	5e                   	pop    %esi
     6b2:	5f                   	pop    %edi
     6b3:	5d                   	pop    %ebp
     6b4:	c3                   	ret    
     6b5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     6b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006c0 <strcat_n>:
{
     6c0:	55                   	push   %ebp
     6c1:	89 e5                	mov    %esp,%ebp
     6c3:	53                   	push   %ebx
     6c4:	83 ec 04             	sub    $0x4,%esp
     6c7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     6ca:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (len <= 0)
     6cd:	85 c9                	test   %ecx,%ecx
     6cf:	7e 0a                	jle    6db <strcat_n+0x1b>
     6d1:	8b 55 0c             	mov    0xc(%ebp),%edx
     6d4:	89 d8                	mov    %ebx,%eax
     6d6:	e8 85 ff ff ff       	call   660 <strcat_n.part.0>
}
     6db:	83 c4 04             	add    $0x4,%esp
     6de:	89 d8                	mov    %ebx,%eax
     6e0:	5b                   	pop    %ebx
     6e1:	5d                   	pop    %ebp
     6e2:	c3                   	ret    
     6e3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     6e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000006f0 <show_text>:
{
     6f0:	55                   	push   %ebp
     6f1:	89 e5                	mov    %esp,%ebp
     6f3:	57                   	push   %edi
     6f4:	56                   	push   %esi
     6f5:	53                   	push   %ebx
     6f6:	83 ec 14             	sub    $0x14,%esp
     6f9:	8b 7d 08             	mov    0x8(%ebp),%edi
    printf(1, "\033[2J\033[1;1H\n");
     6fc:	68 38 16 00 00       	push   $0x1638
     701:	6a 01                	push   $0x1
     703:	e8 d8 0b 00 00       	call   12e0 <printf>
	for (; text[j] != 0; j++)
     708:	8b 07                	mov    (%edi),%eax
     70a:	83 c4 10             	add    $0x10,%esp
     70d:	85 c0                	test   %eax,%eax
     70f:	74 59                	je     76a <show_text+0x7a>
	int j = 0;
     711:	31 db                	xor    %ebx,%ebx
		printf(1, "%d%d%d:%s\n", (j+1)/100, ((j+1)%100)/10, (j+1)%10, text[j]);
     713:	be cd cc cc cc       	mov    $0xcccccccd,%esi
     718:	90                   	nop
     719:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     720:	83 ec 08             	sub    $0x8,%esp
     723:	83 c3 01             	add    $0x1,%ebx
     726:	50                   	push   %eax
     727:	89 d8                	mov    %ebx,%eax
     729:	89 d9                	mov    %ebx,%ecx
     72b:	f7 e6                	mul    %esi
     72d:	c1 ea 03             	shr    $0x3,%edx
     730:	8d 04 92             	lea    (%edx,%edx,4),%eax
     733:	01 c0                	add    %eax,%eax
     735:	29 c1                	sub    %eax,%ecx
     737:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     73c:	f7 e3                	mul    %ebx
     73e:	51                   	push   %ecx
     73f:	89 d1                	mov    %edx,%ecx
     741:	89 da                	mov    %ebx,%edx
     743:	c1 e9 05             	shr    $0x5,%ecx
     746:	6b c1 64             	imul   $0x64,%ecx,%eax
     749:	29 c2                	sub    %eax,%edx
     74b:	89 d0                	mov    %edx,%eax
     74d:	f7 e6                	mul    %esi
     74f:	c1 ea 03             	shr    $0x3,%edx
     752:	52                   	push   %edx
     753:	51                   	push   %ecx
     754:	68 44 16 00 00       	push   $0x1644
     759:	6a 01                	push   $0x1
     75b:	e8 80 0b 00 00       	call   12e0 <printf>
	for (; text[j] != 0; j++)
     760:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
     763:	83 c4 20             	add    $0x20,%esp
     766:	85 c0                	test   %eax,%eax
     768:	75 b6                	jne    720 <show_text+0x30>
    printf(1, "\n\n");
     76a:	83 ec 08             	sub    $0x8,%esp
     76d:	68 4f 16 00 00       	push   $0x164f
     772:	6a 01                	push   $0x1
     774:	e8 67 0b 00 00       	call   12e0 <printf>
}
     779:	83 c4 10             	add    $0x10,%esp
     77c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     77f:	5b                   	pop    %ebx
     780:	5e                   	pop    %esi
     781:	5f                   	pop    %edi
     782:	5d                   	pop    %ebp
     783:	c3                   	ret    
     784:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     78a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000790 <get_line_number>:
{
     790:	55                   	push   %ebp
	int i = 0;
     791:	31 c0                	xor    %eax,%eax
{
     793:	89 e5                	mov    %esp,%ebp
     795:	8b 55 08             	mov    0x8(%ebp),%edx
     798:	eb 10                	jmp    7aa <get_line_number+0x1a>
     79a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	for (; i < 256; i++)
     7a0:	83 c0 01             	add    $0x1,%eax
     7a3:	3d 00 01 00 00       	cmp    $0x100,%eax
     7a8:	74 16                	je     7c0 <get_line_number+0x30>
		if (text[i] == 0)
     7aa:	8b 0c 82             	mov    (%edx,%eax,4),%ecx
     7ad:	85 c9                	test   %ecx,%ecx
     7af:	75 ef                	jne    7a0 <get_line_number+0x10>
			return i - 1;
     7b1:	83 e8 01             	sub    $0x1,%eax
}
     7b4:	5d                   	pop    %ebp
     7b5:	c3                   	ret    
     7b6:	8d 76 00             	lea    0x0(%esi),%esi
     7b9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	return i - 1;
     7c0:	b8 ff 00 00 00       	mov    $0xff,%eax
}
     7c5:	5d                   	pop    %ebp
     7c6:	c3                   	ret    
     7c7:	89 f6                	mov    %esi,%esi
     7c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000007d0 <stringtonumber>:

int stringtonumber(char* src)
{
     7d0:	55                   	push   %ebp
     7d1:	89 e5                	mov    %esp,%ebp
     7d3:	57                   	push   %edi
     7d4:	56                   	push   %esi
     7d5:	53                   	push   %ebx
     7d6:	83 ec 18             	sub    $0x18,%esp
     7d9:	8b 5d 08             	mov    0x8(%ebp),%ebx
	int number = 0; 
	int i=0;
	int pos = strlen(src);
     7dc:	53                   	push   %ebx
     7dd:	e8 de 07 00 00       	call   fc0 <strlen>
	for(;i<pos;i++)
     7e2:	83 c4 10             	add    $0x10,%esp
     7e5:	85 c0                	test   %eax,%eax
     7e7:	7e 57                	jle    840 <stringtonumber+0x70>
	{
		if(src[i]==' ') break;
     7e9:	0f be 13             	movsbl (%ebx),%edx
     7ec:	80 fa 20             	cmp    $0x20,%dl
     7ef:	74 4f                	je     840 <stringtonumber+0x70>
		if(src[i]>57||src[i]<48) return -1;
     7f1:	8d 4a d0             	lea    -0x30(%edx),%ecx
     7f4:	80 f9 09             	cmp    $0x9,%cl
     7f7:	77 37                	ja     830 <stringtonumber+0x60>
     7f9:	8d 3c 03             	lea    (%ebx,%eax,1),%edi
     7fc:	8d 4b 01             	lea    0x1(%ebx),%ecx
	int number = 0; 
     7ff:	31 c0                	xor    %eax,%eax
     801:	eb 1a                	jmp    81d <stringtonumber+0x4d>
     803:	90                   	nop
     804:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if(src[i]==' ') break;
     808:	0f be 11             	movsbl (%ecx),%edx
     80b:	80 fa 20             	cmp    $0x20,%dl
     80e:	74 18                	je     828 <stringtonumber+0x58>
		if(src[i]>57||src[i]<48) return -1;
     810:	8d 72 d0             	lea    -0x30(%edx),%esi
     813:	83 c1 01             	add    $0x1,%ecx
     816:	89 f3                	mov    %esi,%ebx
     818:	80 fb 09             	cmp    $0x9,%bl
     81b:	77 13                	ja     830 <stringtonumber+0x60>
		number=10*number+(src[i]-48);
     81d:	8d 04 80             	lea    (%eax,%eax,4),%eax
	for(;i<pos;i++)
     820:	39 f9                	cmp    %edi,%ecx
		number=10*number+(src[i]-48);
     822:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
	for(;i<pos;i++)
     826:	75 e0                	jne    808 <stringtonumber+0x38>
	}
	return number;
}
     828:	8d 65 f4             	lea    -0xc(%ebp),%esp
     82b:	5b                   	pop    %ebx
     82c:	5e                   	pop    %esi
     82d:	5f                   	pop    %edi
     82e:	5d                   	pop    %ebp
     82f:	c3                   	ret    
     830:	8d 65 f4             	lea    -0xc(%ebp),%esp
		if(src[i]>57||src[i]<48) return -1;
     833:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     838:	5b                   	pop    %ebx
     839:	5e                   	pop    %esi
     83a:	5f                   	pop    %edi
     83b:	5d                   	pop    %ebp
     83c:	c3                   	ret    
     83d:	8d 76 00             	lea    0x0(%esi),%esi
	int number = 0; 
     840:	31 c0                	xor    %eax,%eax
     842:	eb e4                	jmp    828 <stringtonumber+0x58>
     844:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     84a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000850 <com_ins>:

int com_ins(char *text[], int n, char *extra, int changed,int auto_show)
{
     850:	55                   	push   %ebp
     851:	89 e5                	mov    %esp,%ebp
     853:	57                   	push   %edi
     854:	56                   	push   %esi
     855:	53                   	push   %ebx
     856:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
	if (n < 0 || n > get_line_number(text) + 1)
     85c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
     85f:	8b 75 08             	mov    0x8(%ebp),%esi
	if (n < 0 || n > get_line_number(text) + 1)
     862:	85 c9                	test   %ecx,%ecx
     864:	0f 88 e6 00 00 00    	js     950 <com_ins+0x100>
	int i = 0;
     86a:	31 c0                	xor    %eax,%eax
     86c:	eb 0c                	jmp    87a <com_ins+0x2a>
     86e:	66 90                	xchg   %ax,%ax
	for (; i < 256; i++)
     870:	83 c0 01             	add    $0x1,%eax
     873:	3d 00 01 00 00       	cmp    $0x100,%eax
     878:	74 07                	je     881 <com_ins+0x31>
		if (text[i] == 0)
     87a:	8b 14 86             	mov    (%esi,%eax,4),%edx
     87d:	85 d2                	test   %edx,%edx
     87f:	75 ef                	jne    870 <com_ins+0x20>
	if (n < 0 || n > get_line_number(text) + 1)
     881:	3b 45 0c             	cmp    0xc(%ebp),%eax
     884:	0f 8c c6 00 00 00    	jl     950 <com_ins+0x100>
	{
		printf(1, "invalid line number\n");
		return changed;
	}
	char input[256] = {};
     88a:	8d bd e8 fe ff ff    	lea    -0x118(%ebp),%edi
     890:	31 c0                	xor    %eax,%eax
     892:	b9 40 00 00 00       	mov    $0x40,%ecx
     897:	f3 ab                	rep stos %eax,%es:(%edi)
	if (*extra == '\0')
     899:	8b 45 10             	mov    0x10(%ebp),%eax
     89c:	80 38 00             	cmpb   $0x0,(%eax)
     89f:	0f 85 1b 01 00 00    	jne    9c0 <com_ins+0x170>
	{
		printf(1, "please input content:\n");
     8a5:	83 ec 08             	sub    $0x8,%esp
     8a8:	68 67 16 00 00       	push   $0x1667
     8ad:	6a 01                	push   $0x1
     8af:	e8 2c 0a 00 00       	call   12e0 <printf>
		gets(input, 256);
     8b4:	5b                   	pop    %ebx
     8b5:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     8bb:	5f                   	pop    %edi
     8bc:	68 00 01 00 00       	push   $0x100
     8c1:	50                   	push   %eax
     8c2:	e8 89 07 00 00       	call   1050 <gets>
		input[strlen(input)-1] = '\0';
     8c7:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     8cd:	89 04 24             	mov    %eax,(%esp)
     8d0:	e8 eb 06 00 00       	call   fc0 <strlen>
     8d5:	83 c4 10             	add    $0x10,%esp
     8d8:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     8df:	00 
	}
	else
		strcpy(input, extra);
	int i = 256 - 1;
	for (; i > n; i--)
     8e0:	81 7d 0c fe 00 00 00 	cmpl   $0xfe,0xc(%ebp)
     8e7:	0f 8f 83 00 00 00    	jg     970 <com_ins+0x120>
     8ed:	8b 45 0c             	mov    0xc(%ebp),%eax
     8f0:	8d 9e fc 03 00 00    	lea    0x3fc(%esi),%ebx
     8f6:	8d 3c 86             	lea    (%esi,%eax,4),%edi
     8f9:	eb 2b                	jmp    926 <com_ins+0xd6>
     8fb:	90                   	nop
     8fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
			memset(text[i], 0, 256);
			strcpy(text[i], text[i-1]);
		}
		else if (text[i] != 0 && text[i-1] != 0)
		{
			memset(text[i], 0, 256);
     900:	83 ec 04             	sub    $0x4,%esp
     903:	68 00 01 00 00       	push   $0x100
     908:	6a 00                	push   $0x0
     90a:	50                   	push   %eax
     90b:	e8 e0 06 00 00       	call   ff0 <memset>
			strcpy(text[i], text[i-1]);
     910:	58                   	pop    %eax
     911:	5a                   	pop    %edx
     912:	ff 73 fc             	pushl  -0x4(%ebx)
     915:	ff 33                	pushl  (%ebx)
     917:	e8 24 06 00 00       	call   f40 <strcpy>
     91c:	83 c4 10             	add    $0x10,%esp
     91f:	83 eb 04             	sub    $0x4,%ebx
	for (; i > n; i--)
     922:	39 fb                	cmp    %edi,%ebx
     924:	74 4a                	je     970 <com_ins+0x120>
		if (text[i-1] == 0)
     926:	8b 4b fc             	mov    -0x4(%ebx),%ecx
     929:	85 c9                	test   %ecx,%ecx
     92b:	74 f2                	je     91f <com_ins+0xcf>
		else if (text[i] == 0 && text[i-1] != 0)
     92d:	8b 03                	mov    (%ebx),%eax
     92f:	85 c0                	test   %eax,%eax
     931:	75 cd                	jne    900 <com_ins+0xb0>
			text[i] = malloc(256);
     933:	83 ec 0c             	sub    $0xc,%esp
     936:	68 00 01 00 00       	push   $0x100
     93b:	e8 00 0c 00 00       	call   1540 <malloc>
			memset(text[i], 0, 256);
     940:	83 c4 0c             	add    $0xc,%esp
			text[i] = malloc(256);
     943:	89 03                	mov    %eax,(%ebx)
     945:	eb bc                	jmp    903 <com_ins+0xb3>
     947:	89 f6                	mov    %esi,%esi
     949:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		printf(1, "invalid line number\n");
     950:	83 ec 08             	sub    $0x8,%esp
     953:	68 52 16 00 00       	push   $0x1652
     958:	6a 01                	push   $0x1
     95a:	e8 81 09 00 00       	call   12e0 <printf>
		return changed;
     95f:	8b 45 14             	mov    0x14(%ebp),%eax
     962:	83 c4 10             	add    $0x10,%esp
	strcpy(text[n], input);
	changed = 1;
	if (auto_show == 1)
		show_text(text);
    return changed;
}
     965:	8d 65 f4             	lea    -0xc(%ebp),%esp
     968:	5b                   	pop    %ebx
     969:	5e                   	pop    %esi
     96a:	5f                   	pop    %edi
     96b:	5d                   	pop    %ebp
     96c:	c3                   	ret    
     96d:	8d 76 00             	lea    0x0(%esi),%esi
	if (text[n] == 0)
     970:	8b 45 0c             	mov    0xc(%ebp),%eax
     973:	8d 1c 85 00 00 00 00 	lea    0x0(,%eax,4),%ebx
     97a:	8d 3c 1e             	lea    (%esi,%ebx,1),%edi
     97d:	8b 07                	mov    (%edi),%eax
     97f:	85 c0                	test   %eax,%eax
     981:	74 5d                	je     9e0 <com_ins+0x190>
	memset(text[n], 0, 256);
     983:	83 ec 04             	sub    $0x4,%esp
     986:	68 00 01 00 00       	push   $0x100
     98b:	6a 00                	push   $0x0
     98d:	50                   	push   %eax
     98e:	e8 5d 06 00 00       	call   ff0 <memset>
	strcpy(text[n], input);
     993:	58                   	pop    %eax
     994:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     99a:	5a                   	pop    %edx
     99b:	50                   	push   %eax
     99c:	ff 37                	pushl  (%edi)
     99e:	e8 9d 05 00 00       	call   f40 <strcpy>
	if (auto_show == 1)
     9a3:	83 c4 10             	add    $0x10,%esp
     9a6:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
     9aa:	0f 84 80 00 00 00    	je     a30 <com_ins+0x1e0>
}
     9b0:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9b3:	b8 01 00 00 00       	mov    $0x1,%eax
     9b8:	5b                   	pop    %ebx
     9b9:	5e                   	pop    %esi
     9ba:	5f                   	pop    %edi
     9bb:	5d                   	pop    %ebp
     9bc:	c3                   	ret    
     9bd:	8d 76 00             	lea    0x0(%esi),%esi
		strcpy(input, extra);
     9c0:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     9c6:	83 ec 08             	sub    $0x8,%esp
     9c9:	ff 75 10             	pushl  0x10(%ebp)
     9cc:	50                   	push   %eax
     9cd:	e8 6e 05 00 00       	call   f40 <strcpy>
     9d2:	83 c4 10             	add    $0x10,%esp
     9d5:	e9 06 ff ff ff       	jmp    8e0 <com_ins+0x90>
     9da:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		text[n] = malloc(256);
     9e0:	83 ec 0c             	sub    $0xc,%esp
		if (text[n-1][0] == '\0')
     9e3:	8d 5c 1e fc          	lea    -0x4(%esi,%ebx,1),%ebx
		text[n] = malloc(256);
     9e7:	68 00 01 00 00       	push   $0x100
     9ec:	e8 4f 0b 00 00       	call   1540 <malloc>
     9f1:	89 07                	mov    %eax,(%edi)
		if (text[n-1][0] == '\0')
     9f3:	8b 0b                	mov    (%ebx),%ecx
     9f5:	83 c4 10             	add    $0x10,%esp
     9f8:	80 39 00             	cmpb   $0x0,(%ecx)
     9fb:	75 86                	jne    983 <com_ins+0x133>
			memset(text[n], 0, 256);
     9fd:	83 ec 04             	sub    $0x4,%esp
     a00:	68 00 01 00 00       	push   $0x100
     a05:	6a 00                	push   $0x0
     a07:	50                   	push   %eax
     a08:	e8 e3 05 00 00       	call   ff0 <memset>
			strcpy(text[n-1], input);
     a0d:	59                   	pop    %ecx
     a0e:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     a14:	5f                   	pop    %edi
     a15:	50                   	push   %eax
     a16:	ff 33                	pushl  (%ebx)
     a18:	e8 23 05 00 00       	call   f40 <strcpy>
			if (auto_show == 1)
     a1d:	83 c4 10             	add    $0x10,%esp
     a20:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
     a24:	75 8a                	jne    9b0 <com_ins+0x160>
     a26:	8d 76 00             	lea    0x0(%esi),%esi
     a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
				show_text(text);
     a30:	83 ec 0c             	sub    $0xc,%esp
     a33:	56                   	push   %esi
     a34:	e8 b7 fc ff ff       	call   6f0 <show_text>
     a39:	83 c4 10             	add    $0x10,%esp
     a3c:	e9 6f ff ff ff       	jmp    9b0 <com_ins+0x160>
     a41:	eb 0d                	jmp    a50 <com_mod>
     a43:	90                   	nop
     a44:	90                   	nop
     a45:	90                   	nop
     a46:	90                   	nop
     a47:	90                   	nop
     a48:	90                   	nop
     a49:	90                   	nop
     a4a:	90                   	nop
     a4b:	90                   	nop
     a4c:	90                   	nop
     a4d:	90                   	nop
     a4e:	90                   	nop
     a4f:	90                   	nop

00000a50 <com_mod>:

int com_mod(char *text[], int n, char *extra,int changed, int auto_show)
{
     a50:	55                   	push   %ebp
     a51:	89 e5                	mov    %esp,%ebp
     a53:	57                   	push   %edi
     a54:	56                   	push   %esi
     a55:	53                   	push   %ebx
     a56:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
     a5c:	8b 55 0c             	mov    0xc(%ebp),%edx
     a5f:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (n <= 0 || n > get_line_number(text) + 1)
     a62:	85 d2                	test   %edx,%edx
     a64:	0f 8e b6 00 00 00    	jle    b20 <com_mod+0xd0>
	int i = 0;
     a6a:	31 c0                	xor    %eax,%eax
     a6c:	eb 0c                	jmp    a7a <com_mod+0x2a>
     a6e:	66 90                	xchg   %ax,%ax
	for (; i < 256; i++)
     a70:	83 c0 01             	add    $0x1,%eax
     a73:	3d 00 01 00 00       	cmp    $0x100,%eax
     a78:	74 07                	je     a81 <com_mod+0x31>
		if (text[i] == 0)
     a7a:	8b 0c 83             	mov    (%ebx,%eax,4),%ecx
     a7d:	85 c9                	test   %ecx,%ecx
     a7f:	75 ef                	jne    a70 <com_mod+0x20>
	if (n <= 0 || n > get_line_number(text) + 1)
     a81:	39 c2                	cmp    %eax,%edx
     a83:	0f 8f 97 00 00 00    	jg     b20 <com_mod+0xd0>
	{
		printf(1, "invalid line number\n");
		return changed;
	}
	char input[256] = {};
     a89:	8d b5 e8 fe ff ff    	lea    -0x118(%ebp),%esi
     a8f:	31 c0                	xor    %eax,%eax
     a91:	b9 40 00 00 00       	mov    $0x40,%ecx
     a96:	89 f7                	mov    %esi,%edi
     a98:	f3 ab                	rep stos %eax,%es:(%edi)
	if (*extra == '\0')
     a9a:	8b 45 10             	mov    0x10(%ebp),%eax
     a9d:	80 38 00             	cmpb   $0x0,(%eax)
     aa0:	0f 85 9a 00 00 00    	jne    b40 <com_mod+0xf0>
	{
		printf(1, "please input content:\n");
     aa6:	83 ec 08             	sub    $0x8,%esp
     aa9:	89 95 e4 fe ff ff    	mov    %edx,-0x11c(%ebp)
     aaf:	68 67 16 00 00       	push   $0x1667
     ab4:	6a 01                	push   $0x1
     ab6:	e8 25 08 00 00       	call   12e0 <printf>
		gets(input, 256);
     abb:	59                   	pop    %ecx
     abc:	5f                   	pop    %edi
     abd:	68 00 01 00 00       	push   $0x100
     ac2:	56                   	push   %esi
     ac3:	e8 88 05 00 00       	call   1050 <gets>
		input[strlen(input)-1] = '\0';
     ac8:	89 34 24             	mov    %esi,(%esp)
     acb:	e8 f0 04 00 00       	call   fc0 <strlen>
     ad0:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
     ad6:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     add:	00 
     ade:	83 c4 10             	add    $0x10,%esp
	}
	else
		strcpy(input, extra);
	memset(text[n-1], 0, 256);
     ae1:	8d 7c 93 fc          	lea    -0x4(%ebx,%edx,4),%edi
     ae5:	83 ec 04             	sub    $0x4,%esp
     ae8:	68 00 01 00 00       	push   $0x100
     aed:	6a 00                	push   $0x0
     aef:	ff 37                	pushl  (%edi)
     af1:	e8 fa 04 00 00       	call   ff0 <memset>
	strcpy(text[n-1], input);
     af6:	58                   	pop    %eax
     af7:	5a                   	pop    %edx
     af8:	56                   	push   %esi
     af9:	ff 37                	pushl  (%edi)
     afb:	e8 40 04 00 00       	call   f40 <strcpy>
	changed = 1;
	if (auto_show == 1)
     b00:	83 c4 10             	add    $0x10,%esp
     b03:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
     b07:	74 57                	je     b60 <com_mod+0x110>
		show_text(text);
    return changed;
}
     b09:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b0c:	b8 01 00 00 00       	mov    $0x1,%eax
     b11:	5b                   	pop    %ebx
     b12:	5e                   	pop    %esi
     b13:	5f                   	pop    %edi
     b14:	5d                   	pop    %ebp
     b15:	c3                   	ret    
     b16:	8d 76 00             	lea    0x0(%esi),%esi
     b19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		printf(1, "invalid line number\n");
     b20:	83 ec 08             	sub    $0x8,%esp
     b23:	68 52 16 00 00       	push   $0x1652
     b28:	6a 01                	push   $0x1
     b2a:	e8 b1 07 00 00       	call   12e0 <printf>
		return changed;
     b2f:	8b 45 14             	mov    0x14(%ebp),%eax
     b32:	83 c4 10             	add    $0x10,%esp
}
     b35:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b38:	5b                   	pop    %ebx
     b39:	5e                   	pop    %esi
     b3a:	5f                   	pop    %edi
     b3b:	5d                   	pop    %ebp
     b3c:	c3                   	ret    
     b3d:	8d 76 00             	lea    0x0(%esi),%esi
		strcpy(input, extra);
     b40:	83 ec 08             	sub    $0x8,%esp
     b43:	ff 75 10             	pushl  0x10(%ebp)
     b46:	89 95 e4 fe ff ff    	mov    %edx,-0x11c(%ebp)
     b4c:	56                   	push   %esi
     b4d:	e8 ee 03 00 00       	call   f40 <strcpy>
     b52:	83 c4 10             	add    $0x10,%esp
     b55:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
     b5b:	eb 84                	jmp    ae1 <com_mod+0x91>
     b5d:	8d 76 00             	lea    0x0(%esi),%esi
		show_text(text);
     b60:	83 ec 0c             	sub    $0xc,%esp
     b63:	53                   	push   %ebx
     b64:	e8 87 fb ff ff       	call   6f0 <show_text>
     b69:	83 c4 10             	add    $0x10,%esp
     b6c:	eb 9b                	jmp    b09 <com_mod+0xb9>
     b6e:	66 90                	xchg   %ax,%ax

00000b70 <com_del>:

int com_del(char *text[], int n,int changed,int auto_show)
{
     b70:	55                   	push   %ebp
     b71:	89 e5                	mov    %esp,%ebp
     b73:	57                   	push   %edi
     b74:	56                   	push   %esi
     b75:	53                   	push   %ebx
     b76:	83 ec 1c             	sub    $0x1c,%esp
     b79:	8b 7d 0c             	mov    0xc(%ebp),%edi
     b7c:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (n <= 0 || n > get_line_number(text) + 1)
     b7f:	85 ff                	test   %edi,%edi
     b81:	7e 22                	jle    ba5 <com_del+0x35>
	int i = 0;
     b83:	31 c0                	xor    %eax,%eax
     b85:	eb 13                	jmp    b9a <com_del+0x2a>
     b87:	89 f6                	mov    %esi,%esi
     b89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (; i < 256; i++)
     b90:	83 c0 01             	add    $0x1,%eax
     b93:	3d 00 01 00 00       	cmp    $0x100,%eax
     b98:	74 07                	je     ba1 <com_del+0x31>
		if (text[i] == 0)
     b9a:	8b 14 83             	mov    (%ebx,%eax,4),%edx
     b9d:	85 d2                	test   %edx,%edx
     b9f:	75 ef                	jne    b90 <com_del+0x20>
	if (n <= 0 || n > get_line_number(text) + 1)
     ba1:	39 c7                	cmp    %eax,%edi
     ba3:	7e 23                	jle    bc8 <com_del+0x58>
	{
		printf(1, "invalid line number\n");
     ba5:	83 ec 08             	sub    $0x8,%esp
     ba8:	68 52 16 00 00       	push   $0x1652
     bad:	6a 01                	push   $0x1
     baf:	e8 2c 07 00 00       	call   12e0 <printf>
		return changed;
     bb4:	8b 45 10             	mov    0x10(%ebp),%eax
     bb7:	83 c4 10             	add    $0x10,%esp
	}
	changed = 1;
	if (auto_show == 1)
		show_text(text);
    return changed;
}
     bba:	8d 65 f4             	lea    -0xc(%ebp),%esp
     bbd:	5b                   	pop    %ebx
     bbe:	5e                   	pop    %esi
     bbf:	5f                   	pop    %edi
     bc0:	5d                   	pop    %ebp
     bc1:	c3                   	ret    
     bc2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	memset(text[n-1], 0, 256);
     bc8:	8d 87 ff ff ff 3f    	lea    0x3fffffff(%edi),%eax
     bce:	83 ec 04             	sub    $0x4,%esp
	int i = n - 1;
     bd1:	8d 77 ff             	lea    -0x1(%edi),%esi
	memset(text[n-1], 0, 256);
     bd4:	68 00 01 00 00       	push   $0x100
     bd9:	6a 00                	push   $0x0
     bdb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
     be2:	ff 34 83             	pushl  (%ebx,%eax,4)
     be5:	89 55 e4             	mov    %edx,-0x1c(%ebp)
     be8:	e8 03 04 00 00       	call   ff0 <memset>
	for (; text[i+1] != 0; i++)
     bed:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     bf0:	83 c4 10             	add    $0x10,%esp
     bf3:	8d 4c 13 04          	lea    0x4(%ebx,%edx,1),%ecx
     bf7:	8b 01                	mov    (%ecx),%eax
     bf9:	85 c0                	test   %eax,%eax
     bfb:	0f 84 80 00 00 00    	je     c81 <com_del+0x111>
     c01:	c1 e7 02             	shl    $0x2,%edi
     c04:	8d 54 13 08          	lea    0x8(%ebx,%edx,1),%edx
     c08:	29 f9                	sub    %edi,%ecx
     c0a:	89 cf                	mov    %ecx,%edi
     c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		strcpy(text[i], text[i+1]);
     c10:	83 ec 08             	sub    $0x8,%esp
     c13:	89 55 e4             	mov    %edx,-0x1c(%ebp)
     c16:	50                   	push   %eax
     c17:	ff 72 f8             	pushl  -0x8(%edx)
     c1a:	e8 21 03 00 00       	call   f40 <strcpy>
		memset(text[i+1], 0, 256);
     c1f:	83 c4 0c             	add    $0xc,%esp
     c22:	68 00 01 00 00       	push   $0x100
     c27:	6a 00                	push   $0x0
     c29:	ff 74 b7 04          	pushl  0x4(%edi,%esi,4)
	for (; text[i+1] != 0; i++)
     c2d:	83 c6 01             	add    $0x1,%esi
		memset(text[i+1], 0, 256);
     c30:	e8 bb 03 00 00       	call   ff0 <memset>
     c35:	8b 55 e4             	mov    -0x1c(%ebp),%edx
	for (; text[i+1] != 0; i++)
     c38:	83 c4 10             	add    $0x10,%esp
     c3b:	83 c2 04             	add    $0x4,%edx
     c3e:	8b 42 fc             	mov    -0x4(%edx),%eax
     c41:	85 c0                	test   %eax,%eax
     c43:	75 cb                	jne    c10 <com_del+0xa0>
		free(text[i]);
     c45:	8d 34 b3             	lea    (%ebx,%esi,4),%esi
     c48:	83 ec 0c             	sub    $0xc,%esp
     c4b:	ff 36                	pushl  (%esi)
     c4d:	e8 5e 08 00 00       	call   14b0 <free>
		text[i] = 0;
     c52:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
     c58:	83 c4 10             	add    $0x10,%esp
	if (auto_show == 1)
     c5b:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
     c5f:	b8 01 00 00 00       	mov    $0x1,%eax
     c64:	0f 85 50 ff ff ff    	jne    bba <com_del+0x4a>
		show_text(text);
     c6a:	83 ec 0c             	sub    $0xc,%esp
     c6d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     c70:	53                   	push   %ebx
     c71:	e8 7a fa ff ff       	call   6f0 <show_text>
     c76:	83 c4 10             	add    $0x10,%esp
     c79:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     c7c:	e9 39 ff ff ff       	jmp    bba <com_del+0x4a>
	if (i != 0)
     c81:	85 f6                	test   %esi,%esi
     c83:	74 d6                	je     c5b <com_del+0xeb>
     c85:	eb be                	jmp    c45 <com_del+0xd5>
     c87:	89 f6                	mov    %esi,%esi
     c89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c90 <com_help>:

void com_help(char *text[])
{
     c90:	55                   	push   %ebp
     c91:	89 e5                	mov    %esp,%ebp
     c93:	83 ec 10             	sub    $0x10,%esp
	printf(1, "****************************************\n");
     c96:	68 94 17 00 00       	push   $0x1794
     c9b:	6a 01                	push   $0x1
     c9d:	e8 3e 06 00 00       	call   12e0 <printf>
	printf(1, "instructions for use:\n");
     ca2:	58                   	pop    %eax
     ca3:	5a                   	pop    %edx
     ca4:	68 7e 16 00 00       	push   $0x167e
     ca9:	6a 01                	push   $0x1
     cab:	e8 30 06 00 00       	call   12e0 <printf>
	printf(1, "ins-n, insert a line after line n\n");
     cb0:	59                   	pop    %ecx
     cb1:	58                   	pop    %eax
     cb2:	68 c0 17 00 00       	push   $0x17c0
     cb7:	6a 01                	push   $0x1
     cb9:	e8 22 06 00 00       	call   12e0 <printf>
	printf(1, "mod-n, modify line n\n");
     cbe:	58                   	pop    %eax
     cbf:	5a                   	pop    %edx
     cc0:	68 95 16 00 00       	push   $0x1695
     cc5:	6a 01                	push   $0x1
     cc7:	e8 14 06 00 00       	call   12e0 <printf>
	printf(1, "del-n, hapus line n\n");
     ccc:	59                   	pop    %ecx
     ccd:	58                   	pop    %eax
     cce:	68 ab 16 00 00       	push   $0x16ab
     cd3:	6a 01                	push   $0x1
     cd5:	e8 06 06 00 00       	call   12e0 <printf>
	printf(1, "ins, insert a line after the last line\n");
     cda:	58                   	pop    %eax
     cdb:	5a                   	pop    %edx
     cdc:	68 e4 17 00 00       	push   $0x17e4
     ce1:	6a 01                	push   $0x1
     ce3:	e8 f8 05 00 00       	call   12e0 <printf>
	printf(1, "mod, modify the last line\n");
     ce8:	59                   	pop    %ecx
     ce9:	58                   	pop    %eax
     cea:	68 c0 16 00 00       	push   $0x16c0
     cef:	6a 01                	push   $0x1
     cf1:	e8 ea 05 00 00       	call   12e0 <printf>
	printf(1, "del, hapus the last line\n");
     cf6:	58                   	pop    %eax
     cf7:	5a                   	pop    %edx
     cf8:	68 db 16 00 00       	push   $0x16db
     cfd:	6a 01                	push   $0x1
     cff:	e8 dc 05 00 00       	call   12e0 <printf>
	printf(1, "save, save the file\n");
     d04:	59                   	pop    %ecx
     d05:	58                   	pop    %eax
     d06:	68 f5 16 00 00       	push   $0x16f5
     d0b:	6a 01                	push   $0x1
     d0d:	e8 ce 05 00 00       	call   12e0 <printf>
	printf(1, "exit, exit editor\n");
     d12:	58                   	pop    %eax
     d13:	5a                   	pop    %edx
     d14:	68 0a 17 00 00       	push   $0x170a
     d19:	6a 01                	push   $0x1
     d1b:	e8 c0 05 00 00       	call   12e0 <printf>
}
     d20:	83 c4 10             	add    $0x10,%esp
     d23:	c9                   	leave  
     d24:	c3                   	ret    
     d25:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d30 <com_save>:

int com_save(char *text[], char *path,int changed)
{
     d30:	55                   	push   %ebp
     d31:	89 e5                	mov    %esp,%ebp
     d33:	57                   	push   %edi
     d34:	56                   	push   %esi
     d35:	53                   	push   %ebx
     d36:	83 ec 18             	sub    $0x18,%esp
     d39:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     d3c:	8b 7d 08             	mov    0x8(%ebp),%edi

	unlink(path);
     d3f:	53                   	push   %ebx
     d40:	e8 9d 04 00 00       	call   11e2 <unlink>

	int fd = open(path, O_WRONLY|O_CREATE);
     d45:	58                   	pop    %eax
     d46:	5a                   	pop    %edx
     d47:	68 01 02 00 00       	push   $0x201
     d4c:	53                   	push   %ebx
     d4d:	e8 80 04 00 00       	call   11d2 <open>
	if (fd == -1)
     d52:	83 c4 10             	add    $0x10,%esp
     d55:	83 f8 ff             	cmp    $0xffffffff,%eax
     d58:	0f 84 a1 00 00 00    	je     dff <com_save+0xcf>
     d5e:	89 c6                	mov    %eax,%esi
	{
		printf(1, "save failed, file can't open:\n");

		exit();
	}
	if (text[0] == 0)
     d60:	8b 07                	mov    (%edi),%eax
     d62:	85 c0                	test   %eax,%eax
     d64:	0f 84 7e 00 00 00    	je     de8 <com_save+0xb8>
	{
		close(fd);
		return changed;
	}

	write(fd, text[0], strlen(text[0]));
     d6a:	83 ec 0c             	sub    $0xc,%esp
	int i = 1;
	for (; text[i] != 0; i++)
     d6d:	8d 5f 04             	lea    0x4(%edi),%ebx
	write(fd, text[0], strlen(text[0]));
     d70:	50                   	push   %eax
     d71:	e8 4a 02 00 00       	call   fc0 <strlen>
     d76:	83 c4 0c             	add    $0xc,%esp
     d79:	50                   	push   %eax
     d7a:	ff 37                	pushl  (%edi)
     d7c:	56                   	push   %esi
     d7d:	e8 30 04 00 00       	call   11b2 <write>
	for (; text[i] != 0; i++)
     d82:	8b 47 04             	mov    0x4(%edi),%eax
     d85:	83 c4 10             	add    $0x10,%esp
     d88:	85 c0                	test   %eax,%eax
     d8a:	74 34                	je     dc0 <com_save+0x90>
     d8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	{
		printf(fd, "\n");
     d90:	83 ec 08             	sub    $0x8,%esp
     d93:	83 c3 04             	add    $0x4,%ebx
     d96:	68 50 16 00 00       	push   $0x1650
     d9b:	56                   	push   %esi
     d9c:	e8 3f 05 00 00       	call   12e0 <printf>
		write(fd, text[i], strlen(text[i]));
     da1:	59                   	pop    %ecx
     da2:	ff 73 fc             	pushl  -0x4(%ebx)
     da5:	e8 16 02 00 00       	call   fc0 <strlen>
     daa:	83 c4 0c             	add    $0xc,%esp
     dad:	50                   	push   %eax
     dae:	ff 73 fc             	pushl  -0x4(%ebx)
     db1:	56                   	push   %esi
     db2:	e8 fb 03 00 00       	call   11b2 <write>
	for (; text[i] != 0; i++)
     db7:	8b 3b                	mov    (%ebx),%edi
     db9:	83 c4 10             	add    $0x10,%esp
     dbc:	85 ff                	test   %edi,%edi
     dbe:	75 d0                	jne    d90 <com_save+0x60>
	}
	close(fd);
     dc0:	83 ec 0c             	sub    $0xc,%esp
     dc3:	56                   	push   %esi
     dc4:	e8 f1 03 00 00       	call   11ba <close>
	printf(1, "saved successfully\n");
     dc9:	58                   	pop    %eax
     dca:	5a                   	pop    %edx
     dcb:	68 1d 17 00 00       	push   $0x171d
     dd0:	6a 01                	push   $0x1
     dd2:	e8 09 05 00 00       	call   12e0 <printf>
	changed = 0;
	return changed;
     dd7:	83 c4 10             	add    $0x10,%esp
}
     dda:	8d 65 f4             	lea    -0xc(%ebp),%esp
	return changed;
     ddd:	31 c0                	xor    %eax,%eax
}
     ddf:	5b                   	pop    %ebx
     de0:	5e                   	pop    %esi
     de1:	5f                   	pop    %edi
     de2:	5d                   	pop    %ebp
     de3:	c3                   	ret    
     de4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		close(fd);
     de8:	83 ec 0c             	sub    $0xc,%esp
     deb:	56                   	push   %esi
     dec:	e8 c9 03 00 00       	call   11ba <close>
		return changed;
     df1:	8b 45 10             	mov    0x10(%ebp),%eax
     df4:	83 c4 10             	add    $0x10,%esp
}
     df7:	8d 65 f4             	lea    -0xc(%ebp),%esp
     dfa:	5b                   	pop    %ebx
     dfb:	5e                   	pop    %esi
     dfc:	5f                   	pop    %edi
     dfd:	5d                   	pop    %ebp
     dfe:	c3                   	ret    
		printf(1, "save failed, file can't open:\n");
     dff:	50                   	push   %eax
     e00:	50                   	push   %eax
     e01:	68 0c 18 00 00       	push   $0x180c
     e06:	6a 01                	push   $0x1
     e08:	e8 d3 04 00 00       	call   12e0 <printf>
		exit();
     e0d:	e8 80 03 00 00       	call   1192 <exit>
     e12:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     e19:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000e20 <com_exit>:

void com_exit(char *text[], char *path,int changed,int hapus)
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	57                   	push   %edi
     e24:	56                   	push   %esi
     e25:	53                   	push   %ebx
     e26:	81 ec 0c 01 00 00    	sub    $0x10c,%esp

	while (changed == 1)
     e2c:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
{
     e30:	8b 75 08             	mov    0x8(%ebp),%esi
	while (changed == 1)
     e33:	75 7b                	jne    eb0 <com_exit+0x90>
     e35:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     e3b:	89 75 08             	mov    %esi,0x8(%ebp)
     e3e:	89 c3                	mov    %eax,%ebx
     e40:	89 c6                	mov    %eax,%esi
     e42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	{
		printf(1, "save the file? y/n\n");
     e48:	83 ec 08             	sub    $0x8,%esp
		char input[256] = {};
     e4b:	89 f7                	mov    %esi,%edi
		gets(input, 256);
     e4d:	89 de                	mov    %ebx,%esi
		printf(1, "save the file? y/n\n");
     e4f:	68 31 17 00 00       	push   $0x1731
     e54:	6a 01                	push   $0x1
     e56:	e8 85 04 00 00       	call   12e0 <printf>
		char input[256] = {};
     e5b:	31 c0                	xor    %eax,%eax
     e5d:	b9 40 00 00 00       	mov    $0x40,%ecx
     e62:	f3 ab                	rep stos %eax,%es:(%edi)
		gets(input, 256);
     e64:	58                   	pop    %eax
     e65:	5a                   	pop    %edx
     e66:	68 00 01 00 00       	push   $0x100
     e6b:	53                   	push   %ebx
     e6c:	e8 df 01 00 00       	call   1050 <gets>
		input[strlen(input)-1] = '\0';
     e71:	89 1c 24             	mov    %ebx,(%esp)
     e74:	e8 47 01 00 00       	call   fc0 <strlen>
		if (strcmp(input, "y") == 0)
     e79:	59                   	pop    %ecx
     e7a:	5f                   	pop    %edi
     e7b:	68 45 17 00 00       	push   $0x1745
     e80:	53                   	push   %ebx
		input[strlen(input)-1] = '\0';
     e81:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     e88:	00 
		if (strcmp(input, "y") == 0)
     e89:	e8 e2 00 00 00       	call   f70 <strcmp>
     e8e:	83 c4 10             	add    $0x10,%esp
     e91:	85 c0                	test   %eax,%eax
     e93:	75 5b                	jne    ef0 <com_exit+0xd0>
			changed=com_save(text, path,changed);
     e95:	83 ec 04             	sub    $0x4,%esp
     e98:	6a 01                	push   $0x1
     e9a:	ff 75 0c             	pushl  0xc(%ebp)
     e9d:	ff 75 08             	pushl  0x8(%ebp)
     ea0:	e8 8b fe ff ff       	call   d30 <com_save>
	while (changed == 1)
     ea5:	83 c4 10             	add    $0x10,%esp
     ea8:	83 f8 01             	cmp    $0x1,%eax
     eab:	74 9b                	je     e48 <com_exit+0x28>
     ead:	8b 75 08             	mov    0x8(%ebp),%esi
		else
		printf(2, "wrong answer?\n");
	}

	int i = 0;
	for (; text[i] != 0; i++)
     eb0:	8b 06                	mov    (%esi),%eax
     eb2:	85 c0                	test   %eax,%eax
     eb4:	74 1c                	je     ed2 <com_exit+0xb2>
	{
		free(text[i]);
     eb6:	83 ec 0c             	sub    $0xc,%esp
     eb9:	83 c6 04             	add    $0x4,%esi
     ebc:	50                   	push   %eax
     ebd:	e8 ee 05 00 00       	call   14b0 <free>
		text[i] = 0;
     ec2:	c7 46 fc 00 00 00 00 	movl   $0x0,-0x4(%esi)
	for (; text[i] != 0; i++)
     ec9:	8b 06                	mov    (%esi),%eax
     ecb:	83 c4 10             	add    $0x10,%esp
     ece:	85 c0                	test   %eax,%eax
     ed0:	75 e4                	jne    eb6 <com_exit+0x96>
	}

    printf(1, "\033[2J\033[1;1H\n");
     ed2:	83 ec 08             	sub    $0x8,%esp
     ed5:	68 38 16 00 00       	push   $0x1638
     eda:	6a 01                	push   $0x1
     edc:	e8 ff 03 00 00       	call   12e0 <printf>
	exit();
     ee1:	e8 ac 02 00 00       	call   1192 <exit>
     ee6:	8d 76 00             	lea    0x0(%esi),%esi
     ee9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		else if(strcmp(input, "n") == 0){
     ef0:	83 ec 08             	sub    $0x8,%esp
     ef3:	68 47 17 00 00       	push   $0x1747
     ef8:	53                   	push   %ebx
     ef9:	e8 72 00 00 00       	call   f70 <strcmp>
     efe:	83 c4 10             	add    $0x10,%esp
     f01:	85 c0                	test   %eax,%eax
     f03:	74 17                	je     f1c <com_exit+0xfc>
		printf(2, "wrong answer?\n");
     f05:	83 ec 08             	sub    $0x8,%esp
     f08:	68 49 17 00 00       	push   $0x1749
     f0d:	6a 02                	push   $0x2
     f0f:	e8 cc 03 00 00       	call   12e0 <printf>
     f14:	83 c4 10             	add    $0x10,%esp
     f17:	e9 2c ff ff ff       	jmp    e48 <com_exit+0x28>
            if(hapus==1)
     f1c:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
     f20:	8b 75 08             	mov    0x8(%ebp),%esi
     f23:	75 8b                	jne    eb0 <com_exit+0x90>
        		unlink(path);
     f25:	83 ec 0c             	sub    $0xc,%esp
     f28:	ff 75 0c             	pushl  0xc(%ebp)
     f2b:	e8 b2 02 00 00       	call   11e2 <unlink>
     f30:	83 c4 10             	add    $0x10,%esp
     f33:	e9 78 ff ff ff       	jmp    eb0 <com_exit+0x90>
     f38:	66 90                	xchg   %ax,%ax
     f3a:	66 90                	xchg   %ax,%ax
     f3c:	66 90                	xchg   %ax,%ax
     f3e:	66 90                	xchg   %ax,%ax

00000f40 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     f40:	55                   	push   %ebp
     f41:	89 e5                	mov    %esp,%ebp
     f43:	53                   	push   %ebx
     f44:	8b 45 08             	mov    0x8(%ebp),%eax
     f47:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     f4a:	89 c2                	mov    %eax,%edx
     f4c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     f50:	83 c1 01             	add    $0x1,%ecx
     f53:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     f57:	83 c2 01             	add    $0x1,%edx
     f5a:	84 db                	test   %bl,%bl
     f5c:	88 5a ff             	mov    %bl,-0x1(%edx)
     f5f:	75 ef                	jne    f50 <strcpy+0x10>
    ;
  return os;
}
     f61:	5b                   	pop    %ebx
     f62:	5d                   	pop    %ebp
     f63:	c3                   	ret    
     f64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     f6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000f70 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     f70:	55                   	push   %ebp
     f71:	89 e5                	mov    %esp,%ebp
     f73:	53                   	push   %ebx
     f74:	8b 55 08             	mov    0x8(%ebp),%edx
     f77:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     f7a:	0f b6 02             	movzbl (%edx),%eax
     f7d:	0f b6 19             	movzbl (%ecx),%ebx
     f80:	84 c0                	test   %al,%al
     f82:	75 1c                	jne    fa0 <strcmp+0x30>
     f84:	eb 2a                	jmp    fb0 <strcmp+0x40>
     f86:	8d 76 00             	lea    0x0(%esi),%esi
     f89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     f90:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     f93:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     f96:	83 c1 01             	add    $0x1,%ecx
     f99:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     f9c:	84 c0                	test   %al,%al
     f9e:	74 10                	je     fb0 <strcmp+0x40>
     fa0:	38 d8                	cmp    %bl,%al
     fa2:	74 ec                	je     f90 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     fa4:	29 d8                	sub    %ebx,%eax
}
     fa6:	5b                   	pop    %ebx
     fa7:	5d                   	pop    %ebp
     fa8:	c3                   	ret    
     fa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     fb0:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     fb2:	29 d8                	sub    %ebx,%eax
}
     fb4:	5b                   	pop    %ebx
     fb5:	5d                   	pop    %ebp
     fb6:	c3                   	ret    
     fb7:	89 f6                	mov    %esi,%esi
     fb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000fc0 <strlen>:

uint
strlen(const char *s)
{
     fc0:	55                   	push   %ebp
     fc1:	89 e5                	mov    %esp,%ebp
     fc3:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     fc6:	80 39 00             	cmpb   $0x0,(%ecx)
     fc9:	74 15                	je     fe0 <strlen+0x20>
     fcb:	31 d2                	xor    %edx,%edx
     fcd:	8d 76 00             	lea    0x0(%esi),%esi
     fd0:	83 c2 01             	add    $0x1,%edx
     fd3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     fd7:	89 d0                	mov    %edx,%eax
     fd9:	75 f5                	jne    fd0 <strlen+0x10>
    ;
  return n;
}
     fdb:	5d                   	pop    %ebp
     fdc:	c3                   	ret    
     fdd:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     fe0:	31 c0                	xor    %eax,%eax
}
     fe2:	5d                   	pop    %ebp
     fe3:	c3                   	ret    
     fe4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     fea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000ff0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     ff0:	55                   	push   %ebp
     ff1:	89 e5                	mov    %esp,%ebp
     ff3:	57                   	push   %edi
     ff4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     ff7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     ffa:	8b 45 0c             	mov    0xc(%ebp),%eax
     ffd:	89 d7                	mov    %edx,%edi
     fff:	fc                   	cld    
    1000:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
    1002:	89 d0                	mov    %edx,%eax
    1004:	5f                   	pop    %edi
    1005:	5d                   	pop    %ebp
    1006:	c3                   	ret    
    1007:	89 f6                	mov    %esi,%esi
    1009:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001010 <strchr>:

char*
strchr(const char *s, char c)
{
    1010:	55                   	push   %ebp
    1011:	89 e5                	mov    %esp,%ebp
    1013:	53                   	push   %ebx
    1014:	8b 45 08             	mov    0x8(%ebp),%eax
    1017:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
    101a:	0f b6 10             	movzbl (%eax),%edx
    101d:	84 d2                	test   %dl,%dl
    101f:	74 1d                	je     103e <strchr+0x2e>
    if(*s == c)
    1021:	38 d3                	cmp    %dl,%bl
    1023:	89 d9                	mov    %ebx,%ecx
    1025:	75 0d                	jne    1034 <strchr+0x24>
    1027:	eb 17                	jmp    1040 <strchr+0x30>
    1029:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    1030:	38 ca                	cmp    %cl,%dl
    1032:	74 0c                	je     1040 <strchr+0x30>
  for(; *s; s++)
    1034:	83 c0 01             	add    $0x1,%eax
    1037:	0f b6 10             	movzbl (%eax),%edx
    103a:	84 d2                	test   %dl,%dl
    103c:	75 f2                	jne    1030 <strchr+0x20>
      return (char*)s;
  return 0;
    103e:	31 c0                	xor    %eax,%eax
}
    1040:	5b                   	pop    %ebx
    1041:	5d                   	pop    %ebp
    1042:	c3                   	ret    
    1043:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    1049:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001050 <gets>:

char*
gets(char *buf, int max)
{
    1050:	55                   	push   %ebp
    1051:	89 e5                	mov    %esp,%ebp
    1053:	57                   	push   %edi
    1054:	56                   	push   %esi
    1055:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
    1056:	31 f6                	xor    %esi,%esi
    1058:	89 f3                	mov    %esi,%ebx
{
    105a:	83 ec 1c             	sub    $0x1c,%esp
    105d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
    1060:	eb 2f                	jmp    1091 <gets+0x41>
    1062:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
    1068:	8d 45 e7             	lea    -0x19(%ebp),%eax
    106b:	83 ec 04             	sub    $0x4,%esp
    106e:	6a 01                	push   $0x1
    1070:	50                   	push   %eax
    1071:	6a 00                	push   $0x0
    1073:	e8 32 01 00 00       	call   11aa <read>
    if(cc < 1)
    1078:	83 c4 10             	add    $0x10,%esp
    107b:	85 c0                	test   %eax,%eax
    107d:	7e 1c                	jle    109b <gets+0x4b>
      break;
    buf[i++] = c;
    107f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
    1083:	83 c7 01             	add    $0x1,%edi
    1086:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
    1089:	3c 0a                	cmp    $0xa,%al
    108b:	74 23                	je     10b0 <gets+0x60>
    108d:	3c 0d                	cmp    $0xd,%al
    108f:	74 1f                	je     10b0 <gets+0x60>
  for(i=0; i+1 < max; ){
    1091:	83 c3 01             	add    $0x1,%ebx
    1094:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
    1097:	89 fe                	mov    %edi,%esi
    1099:	7c cd                	jl     1068 <gets+0x18>
    109b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
    109d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
    10a0:	c6 03 00             	movb   $0x0,(%ebx)
}
    10a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10a6:	5b                   	pop    %ebx
    10a7:	5e                   	pop    %esi
    10a8:	5f                   	pop    %edi
    10a9:	5d                   	pop    %ebp
    10aa:	c3                   	ret    
    10ab:	90                   	nop
    10ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10b0:	8b 75 08             	mov    0x8(%ebp),%esi
    10b3:	8b 45 08             	mov    0x8(%ebp),%eax
    10b6:	01 de                	add    %ebx,%esi
    10b8:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
    10ba:	c6 03 00             	movb   $0x0,(%ebx)
}
    10bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
    10c0:	5b                   	pop    %ebx
    10c1:	5e                   	pop    %esi
    10c2:	5f                   	pop    %edi
    10c3:	5d                   	pop    %ebp
    10c4:	c3                   	ret    
    10c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    10c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000010d0 <stat>:

int
stat(const char *n, struct stat *st)
{
    10d0:	55                   	push   %ebp
    10d1:	89 e5                	mov    %esp,%ebp
    10d3:	56                   	push   %esi
    10d4:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
    10d5:	83 ec 08             	sub    $0x8,%esp
    10d8:	6a 00                	push   $0x0
    10da:	ff 75 08             	pushl  0x8(%ebp)
    10dd:	e8 f0 00 00 00       	call   11d2 <open>
  if(fd < 0)
    10e2:	83 c4 10             	add    $0x10,%esp
    10e5:	85 c0                	test   %eax,%eax
    10e7:	78 27                	js     1110 <stat+0x40>
    return -1;
  r = fstat(fd, st);
    10e9:	83 ec 08             	sub    $0x8,%esp
    10ec:	ff 75 0c             	pushl  0xc(%ebp)
    10ef:	89 c3                	mov    %eax,%ebx
    10f1:	50                   	push   %eax
    10f2:	e8 f3 00 00 00       	call   11ea <fstat>
  close(fd);
    10f7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
    10fa:	89 c6                	mov    %eax,%esi
  close(fd);
    10fc:	e8 b9 00 00 00       	call   11ba <close>
  return r;
    1101:	83 c4 10             	add    $0x10,%esp
}
    1104:	8d 65 f8             	lea    -0x8(%ebp),%esp
    1107:	89 f0                	mov    %esi,%eax
    1109:	5b                   	pop    %ebx
    110a:	5e                   	pop    %esi
    110b:	5d                   	pop    %ebp
    110c:	c3                   	ret    
    110d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
    1110:	be ff ff ff ff       	mov    $0xffffffff,%esi
    1115:	eb ed                	jmp    1104 <stat+0x34>
    1117:	89 f6                	mov    %esi,%esi
    1119:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00001120 <atoi>:

int
atoi(const char *s)
{
    1120:	55                   	push   %ebp
    1121:	89 e5                	mov    %esp,%ebp
    1123:	53                   	push   %ebx
    1124:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
    1127:	0f be 11             	movsbl (%ecx),%edx
    112a:	8d 42 d0             	lea    -0x30(%edx),%eax
    112d:	3c 09                	cmp    $0x9,%al
  n = 0;
    112f:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
    1134:	77 1f                	ja     1155 <atoi+0x35>
    1136:	8d 76 00             	lea    0x0(%esi),%esi
    1139:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
    1140:	8d 04 80             	lea    (%eax,%eax,4),%eax
    1143:	83 c1 01             	add    $0x1,%ecx
    1146:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
    114a:	0f be 11             	movsbl (%ecx),%edx
    114d:	8d 5a d0             	lea    -0x30(%edx),%ebx
    1150:	80 fb 09             	cmp    $0x9,%bl
    1153:	76 eb                	jbe    1140 <atoi+0x20>
  return n;
}
    1155:	5b                   	pop    %ebx
    1156:	5d                   	pop    %ebp
    1157:	c3                   	ret    
    1158:	90                   	nop
    1159:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00001160 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
    1160:	55                   	push   %ebp
    1161:	89 e5                	mov    %esp,%ebp
    1163:	56                   	push   %esi
    1164:	53                   	push   %ebx
    1165:	8b 5d 10             	mov    0x10(%ebp),%ebx
    1168:	8b 45 08             	mov    0x8(%ebp),%eax
    116b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
    116e:	85 db                	test   %ebx,%ebx
    1170:	7e 14                	jle    1186 <memmove+0x26>
    1172:	31 d2                	xor    %edx,%edx
    1174:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
    1178:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
    117c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
    117f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
    1182:	39 d3                	cmp    %edx,%ebx
    1184:	75 f2                	jne    1178 <memmove+0x18>
  return vdst;
}
    1186:	5b                   	pop    %ebx
    1187:	5e                   	pop    %esi
    1188:	5d                   	pop    %ebp
    1189:	c3                   	ret    

0000118a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
    118a:	b8 01 00 00 00       	mov    $0x1,%eax
    118f:	cd 40                	int    $0x40
    1191:	c3                   	ret    

00001192 <exit>:
SYSCALL(exit)
    1192:	b8 02 00 00 00       	mov    $0x2,%eax
    1197:	cd 40                	int    $0x40
    1199:	c3                   	ret    

0000119a <wait>:
SYSCALL(wait)
    119a:	b8 03 00 00 00       	mov    $0x3,%eax
    119f:	cd 40                	int    $0x40
    11a1:	c3                   	ret    

000011a2 <pipe>:
SYSCALL(pipe)
    11a2:	b8 04 00 00 00       	mov    $0x4,%eax
    11a7:	cd 40                	int    $0x40
    11a9:	c3                   	ret    

000011aa <read>:
SYSCALL(read)
    11aa:	b8 05 00 00 00       	mov    $0x5,%eax
    11af:	cd 40                	int    $0x40
    11b1:	c3                   	ret    

000011b2 <write>:
SYSCALL(write)
    11b2:	b8 10 00 00 00       	mov    $0x10,%eax
    11b7:	cd 40                	int    $0x40
    11b9:	c3                   	ret    

000011ba <close>:
SYSCALL(close)
    11ba:	b8 15 00 00 00       	mov    $0x15,%eax
    11bf:	cd 40                	int    $0x40
    11c1:	c3                   	ret    

000011c2 <kill>:
SYSCALL(kill)
    11c2:	b8 06 00 00 00       	mov    $0x6,%eax
    11c7:	cd 40                	int    $0x40
    11c9:	c3                   	ret    

000011ca <exec>:
SYSCALL(exec)
    11ca:	b8 07 00 00 00       	mov    $0x7,%eax
    11cf:	cd 40                	int    $0x40
    11d1:	c3                   	ret    

000011d2 <open>:
SYSCALL(open)
    11d2:	b8 0f 00 00 00       	mov    $0xf,%eax
    11d7:	cd 40                	int    $0x40
    11d9:	c3                   	ret    

000011da <mknod>:
SYSCALL(mknod)
    11da:	b8 11 00 00 00       	mov    $0x11,%eax
    11df:	cd 40                	int    $0x40
    11e1:	c3                   	ret    

000011e2 <unlink>:
SYSCALL(unlink)
    11e2:	b8 12 00 00 00       	mov    $0x12,%eax
    11e7:	cd 40                	int    $0x40
    11e9:	c3                   	ret    

000011ea <fstat>:
SYSCALL(fstat)
    11ea:	b8 08 00 00 00       	mov    $0x8,%eax
    11ef:	cd 40                	int    $0x40
    11f1:	c3                   	ret    

000011f2 <link>:
SYSCALL(link)
    11f2:	b8 13 00 00 00       	mov    $0x13,%eax
    11f7:	cd 40                	int    $0x40
    11f9:	c3                   	ret    

000011fa <mkdir>:
SYSCALL(mkdir)
    11fa:	b8 14 00 00 00       	mov    $0x14,%eax
    11ff:	cd 40                	int    $0x40
    1201:	c3                   	ret    

00001202 <chdir>:
SYSCALL(chdir)
    1202:	b8 09 00 00 00       	mov    $0x9,%eax
    1207:	cd 40                	int    $0x40
    1209:	c3                   	ret    

0000120a <dup>:
SYSCALL(dup)
    120a:	b8 0a 00 00 00       	mov    $0xa,%eax
    120f:	cd 40                	int    $0x40
    1211:	c3                   	ret    

00001212 <getpid>:
SYSCALL(getpid)
    1212:	b8 0b 00 00 00       	mov    $0xb,%eax
    1217:	cd 40                	int    $0x40
    1219:	c3                   	ret    

0000121a <sbrk>:
SYSCALL(sbrk)
    121a:	b8 0c 00 00 00       	mov    $0xc,%eax
    121f:	cd 40                	int    $0x40
    1221:	c3                   	ret    

00001222 <sleep>:
SYSCALL(sleep)
    1222:	b8 0d 00 00 00       	mov    $0xd,%eax
    1227:	cd 40                	int    $0x40
    1229:	c3                   	ret    

0000122a <uptime>:
SYSCALL(uptime)
    122a:	b8 0e 00 00 00       	mov    $0xe,%eax
    122f:	cd 40                	int    $0x40
    1231:	c3                   	ret    
    1232:	66 90                	xchg   %ax,%ax
    1234:	66 90                	xchg   %ax,%ax
    1236:	66 90                	xchg   %ax,%ax
    1238:	66 90                	xchg   %ax,%ax
    123a:	66 90                	xchg   %ax,%ax
    123c:	66 90                	xchg   %ax,%ax
    123e:	66 90                	xchg   %ax,%ax

00001240 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
    1240:	55                   	push   %ebp
    1241:	89 e5                	mov    %esp,%ebp
    1243:	57                   	push   %edi
    1244:	56                   	push   %esi
    1245:	53                   	push   %ebx
    1246:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    1249:	85 d2                	test   %edx,%edx
{
    124b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
    124e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
    1250:	79 76                	jns    12c8 <printint+0x88>
    1252:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
    1256:	74 70                	je     12c8 <printint+0x88>
    x = -xx;
    1258:	f7 d8                	neg    %eax
    neg = 1;
    125a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
    1261:	31 f6                	xor    %esi,%esi
    1263:	8d 5d d7             	lea    -0x29(%ebp),%ebx
    1266:	eb 0a                	jmp    1272 <printint+0x32>
    1268:	90                   	nop
    1269:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
    1270:	89 fe                	mov    %edi,%esi
    1272:	31 d2                	xor    %edx,%edx
    1274:	8d 7e 01             	lea    0x1(%esi),%edi
    1277:	f7 f1                	div    %ecx
    1279:	0f b6 92 64 18 00 00 	movzbl 0x1864(%edx),%edx
  }while((x /= base) != 0);
    1280:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
    1282:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
    1285:	75 e9                	jne    1270 <printint+0x30>
  if(neg)
    1287:	8b 45 c4             	mov    -0x3c(%ebp),%eax
    128a:	85 c0                	test   %eax,%eax
    128c:	74 08                	je     1296 <printint+0x56>
    buf[i++] = '-';
    128e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
    1293:	8d 7e 02             	lea    0x2(%esi),%edi
    1296:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
    129a:	8b 7d c0             	mov    -0x40(%ebp),%edi
    129d:	8d 76 00             	lea    0x0(%esi),%esi
    12a0:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
    12a3:	83 ec 04             	sub    $0x4,%esp
    12a6:	83 ee 01             	sub    $0x1,%esi
    12a9:	6a 01                	push   $0x1
    12ab:	53                   	push   %ebx
    12ac:	57                   	push   %edi
    12ad:	88 45 d7             	mov    %al,-0x29(%ebp)
    12b0:	e8 fd fe ff ff       	call   11b2 <write>

  while(--i >= 0)
    12b5:	83 c4 10             	add    $0x10,%esp
    12b8:	39 de                	cmp    %ebx,%esi
    12ba:	75 e4                	jne    12a0 <printint+0x60>
    putc(fd, buf[i]);
}
    12bc:	8d 65 f4             	lea    -0xc(%ebp),%esp
    12bf:	5b                   	pop    %ebx
    12c0:	5e                   	pop    %esi
    12c1:	5f                   	pop    %edi
    12c2:	5d                   	pop    %ebp
    12c3:	c3                   	ret    
    12c4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
    12c8:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
    12cf:	eb 90                	jmp    1261 <printint+0x21>
    12d1:	eb 0d                	jmp    12e0 <printf>
    12d3:	90                   	nop
    12d4:	90                   	nop
    12d5:	90                   	nop
    12d6:	90                   	nop
    12d7:	90                   	nop
    12d8:	90                   	nop
    12d9:	90                   	nop
    12da:	90                   	nop
    12db:	90                   	nop
    12dc:	90                   	nop
    12dd:	90                   	nop
    12de:	90                   	nop
    12df:	90                   	nop

000012e0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
    12e0:	55                   	push   %ebp
    12e1:	89 e5                	mov    %esp,%ebp
    12e3:	57                   	push   %edi
    12e4:	56                   	push   %esi
    12e5:	53                   	push   %ebx
    12e6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    12e9:	8b 75 0c             	mov    0xc(%ebp),%esi
    12ec:	0f b6 1e             	movzbl (%esi),%ebx
    12ef:	84 db                	test   %bl,%bl
    12f1:	0f 84 b3 00 00 00    	je     13aa <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
    12f7:	8d 45 10             	lea    0x10(%ebp),%eax
    12fa:	83 c6 01             	add    $0x1,%esi
  state = 0;
    12fd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
    12ff:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    1302:	eb 2f                	jmp    1333 <printf+0x53>
    1304:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
    1308:	83 f8 25             	cmp    $0x25,%eax
    130b:	0f 84 a7 00 00 00    	je     13b8 <printf+0xd8>
  write(fd, &c, 1);
    1311:	8d 45 e2             	lea    -0x1e(%ebp),%eax
    1314:	83 ec 04             	sub    $0x4,%esp
    1317:	88 5d e2             	mov    %bl,-0x1e(%ebp)
    131a:	6a 01                	push   $0x1
    131c:	50                   	push   %eax
    131d:	ff 75 08             	pushl  0x8(%ebp)
    1320:	e8 8d fe ff ff       	call   11b2 <write>
    1325:	83 c4 10             	add    $0x10,%esp
    1328:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
    132b:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
    132f:	84 db                	test   %bl,%bl
    1331:	74 77                	je     13aa <printf+0xca>
    if(state == 0){
    1333:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
    1335:	0f be cb             	movsbl %bl,%ecx
    1338:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
    133b:	74 cb                	je     1308 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
    133d:	83 ff 25             	cmp    $0x25,%edi
    1340:	75 e6                	jne    1328 <printf+0x48>
      if(c == 'd'){
    1342:	83 f8 64             	cmp    $0x64,%eax
    1345:	0f 84 05 01 00 00    	je     1450 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    134b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1351:	83 f9 70             	cmp    $0x70,%ecx
    1354:	74 72                	je     13c8 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1356:	83 f8 73             	cmp    $0x73,%eax
    1359:	0f 84 99 00 00 00    	je     13f8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    135f:	83 f8 63             	cmp    $0x63,%eax
    1362:	0f 84 08 01 00 00    	je     1470 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1368:	83 f8 25             	cmp    $0x25,%eax
    136b:	0f 84 ef 00 00 00    	je     1460 <printf+0x180>
  write(fd, &c, 1);
    1371:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1374:	83 ec 04             	sub    $0x4,%esp
    1377:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    137b:	6a 01                	push   $0x1
    137d:	50                   	push   %eax
    137e:	ff 75 08             	pushl  0x8(%ebp)
    1381:	e8 2c fe ff ff       	call   11b2 <write>
    1386:	83 c4 0c             	add    $0xc,%esp
    1389:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    138c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    138f:	6a 01                	push   $0x1
    1391:	50                   	push   %eax
    1392:	ff 75 08             	pushl  0x8(%ebp)
    1395:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1398:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    139a:	e8 13 fe ff ff       	call   11b2 <write>
  for(i = 0; fmt[i]; i++){
    139f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    13a3:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    13a6:	84 db                	test   %bl,%bl
    13a8:	75 89                	jne    1333 <printf+0x53>
    }
  }
}
    13aa:	8d 65 f4             	lea    -0xc(%ebp),%esp
    13ad:	5b                   	pop    %ebx
    13ae:	5e                   	pop    %esi
    13af:	5f                   	pop    %edi
    13b0:	5d                   	pop    %ebp
    13b1:	c3                   	ret    
    13b2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    13b8:	bf 25 00 00 00       	mov    $0x25,%edi
    13bd:	e9 66 ff ff ff       	jmp    1328 <printf+0x48>
    13c2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    13c8:	83 ec 0c             	sub    $0xc,%esp
    13cb:	b9 10 00 00 00       	mov    $0x10,%ecx
    13d0:	6a 00                	push   $0x0
    13d2:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    13d5:	8b 45 08             	mov    0x8(%ebp),%eax
    13d8:	8b 17                	mov    (%edi),%edx
    13da:	e8 61 fe ff ff       	call   1240 <printint>
        ap++;
    13df:	89 f8                	mov    %edi,%eax
    13e1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    13e4:	31 ff                	xor    %edi,%edi
        ap++;
    13e6:	83 c0 04             	add    $0x4,%eax
    13e9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    13ec:	e9 37 ff ff ff       	jmp    1328 <printf+0x48>
    13f1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    13f8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    13fb:	8b 08                	mov    (%eax),%ecx
        ap++;
    13fd:	83 c0 04             	add    $0x4,%eax
    1400:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    1403:	85 c9                	test   %ecx,%ecx
    1405:	0f 84 8e 00 00 00    	je     1499 <printf+0x1b9>
        while(*s != 0){
    140b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    140e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    1410:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    1412:	84 c0                	test   %al,%al
    1414:	0f 84 0e ff ff ff    	je     1328 <printf+0x48>
    141a:	89 75 d0             	mov    %esi,-0x30(%ebp)
    141d:	89 de                	mov    %ebx,%esi
    141f:	8b 5d 08             	mov    0x8(%ebp),%ebx
    1422:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    1425:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    1428:	83 ec 04             	sub    $0x4,%esp
          s++;
    142b:	83 c6 01             	add    $0x1,%esi
    142e:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    1431:	6a 01                	push   $0x1
    1433:	57                   	push   %edi
    1434:	53                   	push   %ebx
    1435:	e8 78 fd ff ff       	call   11b2 <write>
        while(*s != 0){
    143a:	0f b6 06             	movzbl (%esi),%eax
    143d:	83 c4 10             	add    $0x10,%esp
    1440:	84 c0                	test   %al,%al
    1442:	75 e4                	jne    1428 <printf+0x148>
    1444:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1447:	31 ff                	xor    %edi,%edi
    1449:	e9 da fe ff ff       	jmp    1328 <printf+0x48>
    144e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1450:	83 ec 0c             	sub    $0xc,%esp
    1453:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1458:	6a 01                	push   $0x1
    145a:	e9 73 ff ff ff       	jmp    13d2 <printf+0xf2>
    145f:	90                   	nop
  write(fd, &c, 1);
    1460:	83 ec 04             	sub    $0x4,%esp
    1463:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1466:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1469:	6a 01                	push   $0x1
    146b:	e9 21 ff ff ff       	jmp    1391 <printf+0xb1>
        putc(fd, *ap);
    1470:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1473:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1476:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1478:	6a 01                	push   $0x1
        ap++;
    147a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    147d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1480:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1483:	50                   	push   %eax
    1484:	ff 75 08             	pushl  0x8(%ebp)
    1487:	e8 26 fd ff ff       	call   11b2 <write>
        ap++;
    148c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    148f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1492:	31 ff                	xor    %edi,%edi
    1494:	e9 8f fe ff ff       	jmp    1328 <printf+0x48>
          s = "(null)";
    1499:	bb 5c 18 00 00       	mov    $0x185c,%ebx
        while(*s != 0){
    149e:	b8 28 00 00 00       	mov    $0x28,%eax
    14a3:	e9 72 ff ff ff       	jmp    141a <printf+0x13a>
    14a8:	66 90                	xchg   %ax,%ax
    14aa:	66 90                	xchg   %ax,%ax
    14ac:	66 90                	xchg   %ax,%ax
    14ae:	66 90                	xchg   %ax,%ax

000014b0 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    14b0:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14b1:	a1 34 1d 00 00       	mov    0x1d34,%eax
{
    14b6:	89 e5                	mov    %esp,%ebp
    14b8:	57                   	push   %edi
    14b9:	56                   	push   %esi
    14ba:	53                   	push   %ebx
    14bb:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    14be:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    14c1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    14c8:	39 c8                	cmp    %ecx,%eax
    14ca:	8b 10                	mov    (%eax),%edx
    14cc:	73 32                	jae    1500 <free+0x50>
    14ce:	39 d1                	cmp    %edx,%ecx
    14d0:	72 04                	jb     14d6 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    14d2:	39 d0                	cmp    %edx,%eax
    14d4:	72 32                	jb     1508 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    14d6:	8b 73 fc             	mov    -0x4(%ebx),%esi
    14d9:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    14dc:	39 fa                	cmp    %edi,%edx
    14de:	74 30                	je     1510 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    14e0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    14e3:	8b 50 04             	mov    0x4(%eax),%edx
    14e6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    14e9:	39 f1                	cmp    %esi,%ecx
    14eb:	74 3a                	je     1527 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    14ed:	89 08                	mov    %ecx,(%eax)
  freep = p;
    14ef:	a3 34 1d 00 00       	mov    %eax,0x1d34
}
    14f4:	5b                   	pop    %ebx
    14f5:	5e                   	pop    %esi
    14f6:	5f                   	pop    %edi
    14f7:	5d                   	pop    %ebp
    14f8:	c3                   	ret    
    14f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1500:	39 d0                	cmp    %edx,%eax
    1502:	72 04                	jb     1508 <free+0x58>
    1504:	39 d1                	cmp    %edx,%ecx
    1506:	72 ce                	jb     14d6 <free+0x26>
{
    1508:	89 d0                	mov    %edx,%eax
    150a:	eb bc                	jmp    14c8 <free+0x18>
    150c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    1510:	03 72 04             	add    0x4(%edx),%esi
    1513:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    1516:	8b 10                	mov    (%eax),%edx
    1518:	8b 12                	mov    (%edx),%edx
    151a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    151d:	8b 50 04             	mov    0x4(%eax),%edx
    1520:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    1523:	39 f1                	cmp    %esi,%ecx
    1525:	75 c6                	jne    14ed <free+0x3d>
    p->s.size += bp->s.size;
    1527:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    152a:	a3 34 1d 00 00       	mov    %eax,0x1d34
    p->s.size += bp->s.size;
    152f:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    1532:	8b 53 f8             	mov    -0x8(%ebx),%edx
    1535:	89 10                	mov    %edx,(%eax)
}
    1537:	5b                   	pop    %ebx
    1538:	5e                   	pop    %esi
    1539:	5f                   	pop    %edi
    153a:	5d                   	pop    %ebp
    153b:	c3                   	ret    
    153c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001540 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1540:	55                   	push   %ebp
    1541:	89 e5                	mov    %esp,%ebp
    1543:	57                   	push   %edi
    1544:	56                   	push   %esi
    1545:	53                   	push   %ebx
    1546:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1549:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    154c:	8b 15 34 1d 00 00    	mov    0x1d34,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1552:	8d 78 07             	lea    0x7(%eax),%edi
    1555:	c1 ef 03             	shr    $0x3,%edi
    1558:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    155b:	85 d2                	test   %edx,%edx
    155d:	0f 84 9d 00 00 00    	je     1600 <malloc+0xc0>
    1563:	8b 02                	mov    (%edx),%eax
    1565:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1568:	39 cf                	cmp    %ecx,%edi
    156a:	76 6c                	jbe    15d8 <malloc+0x98>
    156c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1572:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1577:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    157a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1581:	eb 0e                	jmp    1591 <malloc+0x51>
    1583:	90                   	nop
    1584:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1588:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    158a:	8b 48 04             	mov    0x4(%eax),%ecx
    158d:	39 f9                	cmp    %edi,%ecx
    158f:	73 47                	jae    15d8 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1591:	39 05 34 1d 00 00    	cmp    %eax,0x1d34
    1597:	89 c2                	mov    %eax,%edx
    1599:	75 ed                	jne    1588 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    159b:	83 ec 0c             	sub    $0xc,%esp
    159e:	56                   	push   %esi
    159f:	e8 76 fc ff ff       	call   121a <sbrk>
  if(p == (char*)-1)
    15a4:	83 c4 10             	add    $0x10,%esp
    15a7:	83 f8 ff             	cmp    $0xffffffff,%eax
    15aa:	74 1c                	je     15c8 <malloc+0x88>
  hp->s.size = nu;
    15ac:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    15af:	83 ec 0c             	sub    $0xc,%esp
    15b2:	83 c0 08             	add    $0x8,%eax
    15b5:	50                   	push   %eax
    15b6:	e8 f5 fe ff ff       	call   14b0 <free>
  return freep;
    15bb:	8b 15 34 1d 00 00    	mov    0x1d34,%edx
      if((p = morecore(nunits)) == 0)
    15c1:	83 c4 10             	add    $0x10,%esp
    15c4:	85 d2                	test   %edx,%edx
    15c6:	75 c0                	jne    1588 <malloc+0x48>
        return 0;
  }
}
    15c8:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    15cb:	31 c0                	xor    %eax,%eax
}
    15cd:	5b                   	pop    %ebx
    15ce:	5e                   	pop    %esi
    15cf:	5f                   	pop    %edi
    15d0:	5d                   	pop    %ebp
    15d1:	c3                   	ret    
    15d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    15d8:	39 cf                	cmp    %ecx,%edi
    15da:	74 54                	je     1630 <malloc+0xf0>
        p->s.size -= nunits;
    15dc:	29 f9                	sub    %edi,%ecx
    15de:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    15e1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    15e4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    15e7:	89 15 34 1d 00 00    	mov    %edx,0x1d34
}
    15ed:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    15f0:	83 c0 08             	add    $0x8,%eax
}
    15f3:	5b                   	pop    %ebx
    15f4:	5e                   	pop    %esi
    15f5:	5f                   	pop    %edi
    15f6:	5d                   	pop    %ebp
    15f7:	c3                   	ret    
    15f8:	90                   	nop
    15f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1600:	c7 05 34 1d 00 00 38 	movl   $0x1d38,0x1d34
    1607:	1d 00 00 
    160a:	c7 05 38 1d 00 00 38 	movl   $0x1d38,0x1d38
    1611:	1d 00 00 
    base.s.size = 0;
    1614:	b8 38 1d 00 00       	mov    $0x1d38,%eax
    1619:	c7 05 3c 1d 00 00 00 	movl   $0x0,0x1d3c
    1620:	00 00 00 
    1623:	e9 44 ff ff ff       	jmp    156c <malloc+0x2c>
    1628:	90                   	nop
    1629:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    1630:	8b 08                	mov    (%eax),%ecx
    1632:	89 0a                	mov    %ecx,(%edx)
    1634:	eb b1                	jmp    15e7 <malloc+0xa7>
