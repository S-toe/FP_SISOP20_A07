
_less:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
		printf(1, "%d%d%d:%s\n", (j+1)/100, ((j+1)%100)/10, (j+1)%10, text[j]);
    printf(1, "\n\n****************************************\n");
}

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
      11:	81 ec 18 05 00 00    	sub    $0x518,%esp
	if (argc == 1)
      17:	83 39 01             	cmpl   $0x1,(%ecx)
{
      1a:	8b 41 04             	mov    0x4(%ecx),%eax
      1d:	89 85 d8 fa ff ff    	mov    %eax,-0x528(%ebp)
	if (argc == 1)
      23:	0f 84 1f 02 00 00    	je     248 <main+0x248>
	{
		printf(1, "please input the command as [less file_name]\n");
		exit();
	}
	
	char *text[MAX_LINE_NUMBER] = {};
      29:	31 db                	xor    %ebx,%ebx
      2b:	8d bd e8 fb ff ff    	lea    -0x418(%ebp),%edi
	text[0] = malloc(MAX_LINE_LENGTH);
      31:	83 ec 0c             	sub    $0xc,%esp
	char *text[MAX_LINE_NUMBER] = {};
      34:	89 d8                	mov    %ebx,%eax
      36:	b9 00 01 00 00       	mov    $0x100,%ecx
      3b:	f3 ab                	rep stos %eax,%es:(%edi)
	text[0] = malloc(MAX_LINE_LENGTH);
      3d:	68 00 01 00 00       	push   $0x100
      42:	e8 b9 11 00 00       	call   1200 <malloc>
	memset(text[0], 0, MAX_LINE_LENGTH);
      47:	83 c4 0c             	add    $0xc,%esp
	text[0] = malloc(MAX_LINE_LENGTH);
      4a:	89 85 e8 fb ff ff    	mov    %eax,-0x418(%ebp)
	memset(text[0], 0, MAX_LINE_LENGTH);
      50:	68 00 01 00 00       	push   $0x100
      55:	6a 00                	push   $0x0
      57:	50                   	push   %eax
      58:	e8 53 0c 00 00       	call   cb0 <memset>

	int line_number = 0;
    
	int fd = open(argv[1], O_RDONLY);
      5d:	5f                   	pop    %edi
      5e:	58                   	pop    %eax
      5f:	8b 85 d8 fa ff ff    	mov    -0x528(%ebp),%eax
      65:	6a 00                	push   $0x0
      67:	ff 70 04             	pushl  0x4(%eax)
      6a:	e8 23 0e 00 00       	call   e92 <open>

	if (fd != -1)
      6f:	83 c4 10             	add    $0x10,%esp
      72:	83 f8 ff             	cmp    $0xffffffff,%eax
	int fd = open(argv[1], O_RDONLY);
      75:	89 85 dc fa ff ff    	mov    %eax,-0x524(%ebp)
	if (fd != -1)
      7b:	0f 84 da 01 00 00    	je     25b <main+0x25b>
	{
		char buf[BUF_SIZE] = {};
      81:	8d b5 e8 fa ff ff    	lea    -0x518(%ebp),%esi
      87:	b9 40 00 00 00       	mov    $0x40,%ecx
      8c:	89 d8                	mov    %ebx,%eax
	int line_number = 0;
      8e:	c7 85 e4 fa ff ff 00 	movl   $0x0,-0x51c(%ebp)
      95:	00 00 00 
		char buf[BUF_SIZE] = {};
      98:	89 f7                	mov    %esi,%edi
      9a:	f3 ab                	rep stos %eax,%es:(%edi)
      9c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		int len = 0;
		while ((len = read(fd, buf, BUF_SIZE)) > 0)
      a0:	83 ec 04             	sub    $0x4,%esp
      a3:	68 00 01 00 00       	push   $0x100
      a8:	56                   	push   %esi
      a9:	ff b5 dc fa ff ff    	pushl  -0x524(%ebp)
      af:	e8 b6 0d 00 00       	call   e6a <read>
      b4:	83 c4 10             	add    $0x10,%esp
      b7:	85 c0                	test   %eax,%eax
      b9:	89 c7                	mov    %eax,%edi
      bb:	0f 8e c7 00 00 00    	jle    188 <main+0x188>
						line_number++;
						text[line_number] = malloc(MAX_LINE_LENGTH);
						memset(text[line_number], 0, MAX_LINE_LENGTH);
					}
				}
				if (is_full == 1 || i >= len - 1)
      c1:	8d 47 ff             	lea    -0x1(%edi),%eax
			int next = 0;
      c4:	31 d2                	xor    %edx,%edx
				if (is_full == 1 || i >= len - 1)
      c6:	89 85 e0 fa ff ff    	mov    %eax,-0x520(%ebp)
      cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
				for (i = next; i < len && buf[i] != '\n'; i++)
      d0:	80 bc 15 e8 fa ff ff 	cmpb   $0xa,-0x518(%ebp,%edx,1)
      d7:	0a 
      d8:	89 d3                	mov    %edx,%ebx
      da:	75 0a                	jne    e6 <main+0xe6>
      dc:	eb 2d                	jmp    10b <main+0x10b>
      de:	66 90                	xchg   %ax,%ax
      e0:	80 3c 1e 0a          	cmpb   $0xa,(%esi,%ebx,1)
      e4:	74 4a                	je     130 <main+0x130>
      e6:	83 c3 01             	add    $0x1,%ebx
      e9:	39 df                	cmp    %ebx,%edi
      eb:	75 f3                	jne    e0 <main+0xe0>
				strcat_n(text[line_number], buf+next, i-next);
      ed:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
char* strcat_n(char* dest, char* src, int len)
{
	if (len <= 0)
      f3:	89 f9                	mov    %edi,%ecx
      f5:	29 d1                	sub    %edx,%ecx
      f7:	8b 84 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%eax
      fe:	74 a0                	je     a0 <main+0xa0>
     100:	01 f2                	add    %esi,%edx
     102:	e8 69 01 00 00       	call   270 <strcat_n.part.0>
				if (i < len && buf[i] == '\n')
     107:	39 df                	cmp    %ebx,%edi
     109:	7e 95                	jle    a0 <main+0xa0>
     10b:	80 bc 1d e8 fa ff ff 	cmpb   $0xa,-0x518(%ebp,%ebx,1)
     112:	0a 
     113:	74 2e                	je     143 <main+0x143>
				if (is_full == 1 || i >= len - 1)
     115:	3b 9d e0 fa ff ff    	cmp    -0x520(%ebp),%ebx
     11b:	7d 83                	jge    a0 <main+0xa0>
					break;
				else
					next = i + 1;
     11d:	8d 53 01             	lea    0x1(%ebx),%edx
				for (i = next; i < len && buf[i] != '\n'; i++)
     120:	39 fa                	cmp    %edi,%edx
     122:	7c ac                	jl     d0 <main+0xd0>
     124:	e9 77 ff ff ff       	jmp    a0 <main+0xa0>
     129:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
				strcat_n(text[line_number], buf+next, i-next);
     130:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     136:	89 d9                	mov    %ebx,%ecx
     138:	29 d1                	sub    %edx,%ecx
     13a:	8b 84 85 e8 fb ff ff 	mov    -0x418(%ebp,%eax,4),%eax
     141:	75 bd                	jne    100 <main+0x100>
					if (line_number >= MAX_LINE_NUMBER - 1)
     143:	8b 85 e4 fa ff ff    	mov    -0x51c(%ebp),%eax
     149:	3d fe 00 00 00       	cmp    $0xfe,%eax
     14e:	7f 38                	jg     188 <main+0x188>
						text[line_number] = malloc(MAX_LINE_LENGTH);
     150:	83 ec 0c             	sub    $0xc,%esp
						line_number++;
     153:	83 c0 01             	add    $0x1,%eax
						text[line_number] = malloc(MAX_LINE_LENGTH);
     156:	68 00 01 00 00       	push   $0x100
						line_number++;
     15b:	89 85 e4 fa ff ff    	mov    %eax,-0x51c(%ebp)
						text[line_number] = malloc(MAX_LINE_LENGTH);
     161:	e8 9a 10 00 00       	call   1200 <malloc>
						memset(text[line_number], 0, MAX_LINE_LENGTH);
     166:	83 c4 0c             	add    $0xc,%esp
						text[line_number] = malloc(MAX_LINE_LENGTH);
     169:	8b 8d e4 fa ff ff    	mov    -0x51c(%ebp),%ecx
						memset(text[line_number], 0, MAX_LINE_LENGTH);
     16f:	68 00 01 00 00       	push   $0x100
     174:	6a 00                	push   $0x0
     176:	50                   	push   %eax
						text[line_number] = malloc(MAX_LINE_LENGTH);
     177:	89 84 8d e8 fb ff ff 	mov    %eax,-0x418(%ebp,%ecx,4)
						memset(text[line_number], 0, MAX_LINE_LENGTH);
     17e:	e8 2d 0b 00 00       	call   cb0 <memset>
     183:	83 c4 10             	add    $0x10,%esp
     186:	eb 8d                	jmp    115 <main+0x115>
			}
			if (is_full == 1)
				break;
		}
		close(fd);
     188:	83 ec 0c             	sub    $0xc,%esp
     18b:	ff b5 dc fa ff ff    	pushl  -0x524(%ebp)
		exit();
	}
	
	show(text);
	
	char input[MAX_LINE_LENGTH] = {};
     191:	89 f7                	mov    %esi,%edi
		close(fd);
     193:	e8 e2 0c 00 00       	call   e7a <close>
	show(text);
     198:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     19e:	89 04 24             	mov    %eax,(%esp)
     1a1:	e8 aa 09 00 00       	call   b50 <show>
	char input[MAX_LINE_LENGTH] = {};
     1a6:	b9 40 00 00 00       	mov    $0x40,%ecx
     1ab:	31 c0                	xor    %eax,%eax
     1ad:	83 c4 10             	add    $0x10,%esp
     1b0:	f3 ab                	rep stos %eax,%es:(%edi)
     1b2:	eb 2b                	jmp    1df <main+0x1df>
     1b4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		memset(input, 0, MAX_LINE_LENGTH);
		gets(input, MAX_LINE_LENGTH);
		int len = strlen(input);
		input[len-1] = '\0';

		if(strcmp(input, "exit") == 0 || strcmp(input, "q") == 0)
     1b8:	83 ec 08             	sub    $0x8,%esp
     1bb:	68 2e 14 00 00       	push   $0x142e
     1c0:	56                   	push   %esi
     1c1:	e8 6a 0a 00 00       	call   c30 <strcmp>
     1c6:	83 c4 10             	add    $0x10,%esp
     1c9:	85 c0                	test   %eax,%eax
     1cb:	74 62                	je     22f <main+0x22f>
			com_exit(text, argv[1],0,0);
		else
		{
			printf(1, "invalid command.\n");
     1cd:	83 ec 08             	sub    $0x8,%esp
     1d0:	68 30 14 00 00       	push   $0x1430
     1d5:	6a 01                	push   $0x1
     1d7:	e8 c4 0d 00 00       	call   fa0 <printf>
     1dc:	83 c4 10             	add    $0x10,%esp
		printf(1, "\nplease input q or exit to out:\n");
     1df:	83 ec 08             	sub    $0x8,%esp
     1e2:	68 64 15 00 00       	push   $0x1564
     1e7:	6a 01                	push   $0x1
     1e9:	e8 b2 0d 00 00       	call   fa0 <printf>
		memset(input, 0, MAX_LINE_LENGTH);
     1ee:	83 c4 0c             	add    $0xc,%esp
     1f1:	68 00 01 00 00       	push   $0x100
     1f6:	6a 00                	push   $0x0
     1f8:	56                   	push   %esi
     1f9:	e8 b2 0a 00 00       	call   cb0 <memset>
		gets(input, MAX_LINE_LENGTH);
     1fe:	58                   	pop    %eax
     1ff:	5a                   	pop    %edx
     200:	68 00 01 00 00       	push   $0x100
     205:	56                   	push   %esi
     206:	e8 05 0b 00 00       	call   d10 <gets>
		int len = strlen(input);
     20b:	89 34 24             	mov    %esi,(%esp)
     20e:	e8 6d 0a 00 00       	call   c80 <strlen>
		if(strcmp(input, "exit") == 0 || strcmp(input, "q") == 0)
     213:	59                   	pop    %ecx
     214:	5b                   	pop    %ebx
     215:	68 29 14 00 00       	push   $0x1429
     21a:	56                   	push   %esi
		input[len-1] = '\0';
     21b:	c6 84 05 e7 fa ff ff 	movb   $0x0,-0x519(%ebp,%eax,1)
     222:	00 
		if(strcmp(input, "exit") == 0 || strcmp(input, "q") == 0)
     223:	e8 08 0a 00 00       	call   c30 <strcmp>
     228:	83 c4 10             	add    $0x10,%esp
     22b:	85 c0                	test   %eax,%eax
     22d:	75 89                	jne    1b8 <main+0x1b8>
			com_exit(text, argv[1],0,0);
     22f:	8b 85 d8 fa ff ff    	mov    -0x528(%ebp),%eax
     235:	6a 00                	push   $0x0
     237:	6a 00                	push   $0x0
     239:	ff 70 04             	pushl  0x4(%eax)
     23c:	8d 85 e8 fb ff ff    	lea    -0x418(%ebp),%eax
     242:	50                   	push   %eax
     243:	e8 e8 07 00 00       	call   a30 <com_exit>
		printf(1, "please input the command as [less file_name]\n");
     248:	50                   	push   %eax
     249:	50                   	push   %eax
     24a:	68 34 15 00 00       	push   $0x1534
     24f:	6a 01                	push   $0x1
     251:	e8 4a 0d 00 00       	call   fa0 <printf>
		exit();
     256:	e8 f7 0b 00 00       	call   e52 <exit>
		printf(1,"File nope exist\n");
     25b:	56                   	push   %esi
     25c:	56                   	push   %esi
     25d:	68 18 14 00 00       	push   $0x1418
     262:	6a 01                	push   $0x1
     264:	e8 37 0d 00 00       	call   fa0 <printf>
		exit();
     269:	e8 e4 0b 00 00       	call   e52 <exit>
     26e:	66 90                	xchg   %ax,%ax

00000270 <strcat_n.part.0>:
char* strcat_n(char* dest, char* src, int len)
     270:	55                   	push   %ebp
     271:	89 e5                	mov    %esp,%ebp
     273:	57                   	push   %edi
     274:	56                   	push   %esi
     275:	53                   	push   %ebx
     276:	89 ce                	mov    %ecx,%esi
     278:	89 c7                	mov    %eax,%edi
     27a:	83 ec 28             	sub    $0x28,%esp
     27d:	89 55 e4             	mov    %edx,-0x1c(%ebp)
		return dest;
	int pos = strlen(dest);
     280:	50                   	push   %eax
     281:	e8 fa 09 00 00       	call   c80 <strlen>
	if (len + pos >= 256)
     286:	8d 0c 30             	lea    (%eax,%esi,1),%ecx
     289:	83 c4 10             	add    $0x10,%esp
     28c:	81 f9 ff 00 00 00    	cmp    $0xff,%ecx
     292:	7f 29                	jg     2bd <strcat_n.part.0+0x4d>
		return dest;
	int i = 0;
	for (; i < len; i++)
     294:	85 f6                	test   %esi,%esi
     296:	7e 21                	jle    2b9 <strcat_n.part.0+0x49>
     298:	8b 55 e4             	mov    -0x1c(%ebp),%edx
	int i = 0;
     29b:	31 db                	xor    %ebx,%ebx
     29d:	01 f8                	add    %edi,%eax
     29f:	89 4d e0             	mov    %ecx,-0x20(%ebp)
     2a2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		dest[i+pos] = src[i];
     2a8:	0f b6 0c 1a          	movzbl (%edx,%ebx,1),%ecx
     2ac:	88 0c 18             	mov    %cl,(%eax,%ebx,1)
	for (; i < len; i++)
     2af:	83 c3 01             	add    $0x1,%ebx
     2b2:	39 de                	cmp    %ebx,%esi
     2b4:	75 f2                	jne    2a8 <strcat_n.part.0+0x38>
     2b6:	8b 4d e0             	mov    -0x20(%ebp),%ecx
	dest[len+pos] = '\0';
     2b9:	c6 04 0f 00          	movb   $0x0,(%edi,%ecx,1)
	return dest;
}
     2bd:	8d 65 f4             	lea    -0xc(%ebp),%esp
     2c0:	5b                   	pop    %ebx
     2c1:	5e                   	pop    %esi
     2c2:	5f                   	pop    %edi
     2c3:	5d                   	pop    %ebp
     2c4:	c3                   	ret    
     2c5:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     2c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002d0 <strcat_n>:
{
     2d0:	55                   	push   %ebp
     2d1:	89 e5                	mov    %esp,%ebp
     2d3:	53                   	push   %ebx
     2d4:	83 ec 04             	sub    $0x4,%esp
     2d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     2da:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (len <= 0)
     2dd:	85 c9                	test   %ecx,%ecx
     2df:	7e 0a                	jle    2eb <strcat_n+0x1b>
     2e1:	8b 55 0c             	mov    0xc(%ebp),%edx
     2e4:	89 d8                	mov    %ebx,%eax
     2e6:	e8 85 ff ff ff       	call   270 <strcat_n.part.0>
}
     2eb:	83 c4 04             	add    $0x4,%esp
     2ee:	89 d8                	mov    %ebx,%eax
     2f0:	5b                   	pop    %ebx
     2f1:	5d                   	pop    %ebp
     2f2:	c3                   	ret    
     2f3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     2f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000300 <show_text>:

void show_text(char *text[])
{
     300:	55                   	push   %ebp
     301:	89 e5                	mov    %esp,%ebp
     303:	57                   	push   %edi
     304:	56                   	push   %esi
     305:	53                   	push   %ebx
     306:	83 ec 14             	sub    $0x14,%esp
     309:	8b 7d 08             	mov    0x8(%ebp),%edi
	int j = 0;
    printf(1, "\033[2J\033[1;1H\n");
     30c:	68 f8 12 00 00       	push   $0x12f8
     311:	6a 01                	push   $0x1
     313:	e8 88 0c 00 00       	call   fa0 <printf>
	for (; text[j] != 0; j++)
     318:	8b 07                	mov    (%edi),%eax
     31a:	83 c4 10             	add    $0x10,%esp
     31d:	85 c0                	test   %eax,%eax
     31f:	74 59                	je     37a <show_text+0x7a>
	int j = 0;
     321:	31 db                	xor    %ebx,%ebx
		printf(1, "%d%d%d:%s\n", (j+1)/100, ((j+1)%100)/10, (j+1)%10, text[j]);
     323:	be cd cc cc cc       	mov    $0xcccccccd,%esi
     328:	90                   	nop
     329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     330:	83 ec 08             	sub    $0x8,%esp
     333:	83 c3 01             	add    $0x1,%ebx
     336:	50                   	push   %eax
     337:	89 d8                	mov    %ebx,%eax
     339:	89 d9                	mov    %ebx,%ecx
     33b:	f7 e6                	mul    %esi
     33d:	c1 ea 03             	shr    $0x3,%edx
     340:	8d 04 92             	lea    (%edx,%edx,4),%eax
     343:	01 c0                	add    %eax,%eax
     345:	29 c1                	sub    %eax,%ecx
     347:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     34c:	f7 e3                	mul    %ebx
     34e:	51                   	push   %ecx
     34f:	89 d1                	mov    %edx,%ecx
     351:	89 da                	mov    %ebx,%edx
     353:	c1 e9 05             	shr    $0x5,%ecx
     356:	6b c1 64             	imul   $0x64,%ecx,%eax
     359:	29 c2                	sub    %eax,%edx
     35b:	89 d0                	mov    %edx,%eax
     35d:	f7 e6                	mul    %esi
     35f:	c1 ea 03             	shr    $0x3,%edx
     362:	52                   	push   %edx
     363:	51                   	push   %ecx
     364:	68 04 13 00 00       	push   $0x1304
     369:	6a 01                	push   $0x1
     36b:	e8 30 0c 00 00       	call   fa0 <printf>
	for (; text[j] != 0; j++)
     370:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
     373:	83 c4 20             	add    $0x20,%esp
     376:	85 c0                	test   %eax,%eax
     378:	75 b6                	jne    330 <show_text+0x30>
    printf(1, "\n\n");
     37a:	83 ec 08             	sub    $0x8,%esp
     37d:	68 0f 13 00 00       	push   $0x130f
     382:	6a 01                	push   $0x1
     384:	e8 17 0c 00 00       	call   fa0 <printf>
}
     389:	83 c4 10             	add    $0x10,%esp
     38c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     38f:	5b                   	pop    %ebx
     390:	5e                   	pop    %esi
     391:	5f                   	pop    %edi
     392:	5d                   	pop    %ebp
     393:	c3                   	ret    
     394:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     39a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000003a0 <get_line_number>:

int get_line_number(char *text[])
{
     3a0:	55                   	push   %ebp
	int i = 0;
     3a1:	31 c0                	xor    %eax,%eax
{
     3a3:	89 e5                	mov    %esp,%ebp
     3a5:	8b 55 08             	mov    0x8(%ebp),%edx
     3a8:	eb 10                	jmp    3ba <get_line_number+0x1a>
     3aa:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	for (; i < 256; i++)
     3b0:	83 c0 01             	add    $0x1,%eax
     3b3:	3d 00 01 00 00       	cmp    $0x100,%eax
     3b8:	74 16                	je     3d0 <get_line_number+0x30>
		if (text[i] == 0)
     3ba:	8b 0c 82             	mov    (%edx,%eax,4),%ecx
     3bd:	85 c9                	test   %ecx,%ecx
     3bf:	75 ef                	jne    3b0 <get_line_number+0x10>
			return i - 1;
     3c1:	83 e8 01             	sub    $0x1,%eax
	return i - 1;
}
     3c4:	5d                   	pop    %ebp
     3c5:	c3                   	ret    
     3c6:	8d 76 00             	lea    0x0(%esi),%esi
     3c9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	return i - 1;
     3d0:	b8 ff 00 00 00       	mov    $0xff,%eax
}
     3d5:	5d                   	pop    %ebp
     3d6:	c3                   	ret    
     3d7:	89 f6                	mov    %esi,%esi
     3d9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000003e0 <stringtonumber>:

int stringtonumber(char* src)
{
     3e0:	55                   	push   %ebp
     3e1:	89 e5                	mov    %esp,%ebp
     3e3:	57                   	push   %edi
     3e4:	56                   	push   %esi
     3e5:	53                   	push   %ebx
     3e6:	83 ec 18             	sub    $0x18,%esp
     3e9:	8b 5d 08             	mov    0x8(%ebp),%ebx
	int number = 0; 
	int i=0;
	int pos = strlen(src);
     3ec:	53                   	push   %ebx
     3ed:	e8 8e 08 00 00       	call   c80 <strlen>
	for(;i<pos;i++)
     3f2:	83 c4 10             	add    $0x10,%esp
     3f5:	85 c0                	test   %eax,%eax
     3f7:	7e 57                	jle    450 <stringtonumber+0x70>
	{
		if(src[i]==' ') break;
     3f9:	0f be 13             	movsbl (%ebx),%edx
     3fc:	80 fa 20             	cmp    $0x20,%dl
     3ff:	74 4f                	je     450 <stringtonumber+0x70>
		if(src[i]>57||src[i]<48) return -1;
     401:	8d 4a d0             	lea    -0x30(%edx),%ecx
     404:	80 f9 09             	cmp    $0x9,%cl
     407:	77 37                	ja     440 <stringtonumber+0x60>
     409:	8d 3c 03             	lea    (%ebx,%eax,1),%edi
     40c:	8d 4b 01             	lea    0x1(%ebx),%ecx
	int number = 0; 
     40f:	31 c0                	xor    %eax,%eax
     411:	eb 1a                	jmp    42d <stringtonumber+0x4d>
     413:	90                   	nop
     414:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		if(src[i]==' ') break;
     418:	0f be 11             	movsbl (%ecx),%edx
     41b:	80 fa 20             	cmp    $0x20,%dl
     41e:	74 18                	je     438 <stringtonumber+0x58>
		if(src[i]>57||src[i]<48) return -1;
     420:	8d 72 d0             	lea    -0x30(%edx),%esi
     423:	83 c1 01             	add    $0x1,%ecx
     426:	89 f3                	mov    %esi,%ebx
     428:	80 fb 09             	cmp    $0x9,%bl
     42b:	77 13                	ja     440 <stringtonumber+0x60>
		number=10*number+(src[i]-48);
     42d:	8d 04 80             	lea    (%eax,%eax,4),%eax
	for(;i<pos;i++)
     430:	39 f9                	cmp    %edi,%ecx
		number=10*number+(src[i]-48);
     432:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
	for(;i<pos;i++)
     436:	75 e0                	jne    418 <stringtonumber+0x38>
	}
	return number;
}
     438:	8d 65 f4             	lea    -0xc(%ebp),%esp
     43b:	5b                   	pop    %ebx
     43c:	5e                   	pop    %esi
     43d:	5f                   	pop    %edi
     43e:	5d                   	pop    %ebp
     43f:	c3                   	ret    
     440:	8d 65 f4             	lea    -0xc(%ebp),%esp
		if(src[i]>57||src[i]<48) return -1;
     443:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
}
     448:	5b                   	pop    %ebx
     449:	5e                   	pop    %esi
     44a:	5f                   	pop    %edi
     44b:	5d                   	pop    %ebp
     44c:	c3                   	ret    
     44d:	8d 76 00             	lea    0x0(%esi),%esi
	int number = 0; 
     450:	31 c0                	xor    %eax,%eax
     452:	eb e4                	jmp    438 <stringtonumber+0x58>
     454:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     45a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000460 <com_ins>:

int com_ins(char *text[], int n, char *extra, int changed,int auto_show)
{
     460:	55                   	push   %ebp
     461:	89 e5                	mov    %esp,%ebp
     463:	57                   	push   %edi
     464:	56                   	push   %esi
     465:	53                   	push   %ebx
     466:	81 ec 0c 01 00 00    	sub    $0x10c,%esp
	if (n < 0 || n > get_line_number(text) + 1)
     46c:	8b 4d 0c             	mov    0xc(%ebp),%ecx
{
     46f:	8b 75 08             	mov    0x8(%ebp),%esi
	if (n < 0 || n > get_line_number(text) + 1)
     472:	85 c9                	test   %ecx,%ecx
     474:	0f 88 e6 00 00 00    	js     560 <com_ins+0x100>
	int i = 0;
     47a:	31 c0                	xor    %eax,%eax
     47c:	eb 0c                	jmp    48a <com_ins+0x2a>
     47e:	66 90                	xchg   %ax,%ax
	for (; i < 256; i++)
     480:	83 c0 01             	add    $0x1,%eax
     483:	3d 00 01 00 00       	cmp    $0x100,%eax
     488:	74 07                	je     491 <com_ins+0x31>
		if (text[i] == 0)
     48a:	8b 14 86             	mov    (%esi,%eax,4),%edx
     48d:	85 d2                	test   %edx,%edx
     48f:	75 ef                	jne    480 <com_ins+0x20>
	if (n < 0 || n > get_line_number(text) + 1)
     491:	39 45 0c             	cmp    %eax,0xc(%ebp)
     494:	0f 8f c6 00 00 00    	jg     560 <com_ins+0x100>
	{
		printf(1, "invalid line number\n");
		return changed;
	}
	char input[256] = {};
     49a:	8d bd e8 fe ff ff    	lea    -0x118(%ebp),%edi
     4a0:	31 c0                	xor    %eax,%eax
     4a2:	b9 40 00 00 00       	mov    $0x40,%ecx
     4a7:	f3 ab                	rep stos %eax,%es:(%edi)
	if (*extra == '\0')
     4a9:	8b 45 10             	mov    0x10(%ebp),%eax
     4ac:	80 38 00             	cmpb   $0x0,(%eax)
     4af:	0f 85 1b 01 00 00    	jne    5d0 <com_ins+0x170>
	{
		printf(1, "please input content:\n");
     4b5:	83 ec 08             	sub    $0x8,%esp
     4b8:	68 27 13 00 00       	push   $0x1327
     4bd:	6a 01                	push   $0x1
     4bf:	e8 dc 0a 00 00       	call   fa0 <printf>
		gets(input, 256);
     4c4:	5b                   	pop    %ebx
     4c5:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     4cb:	5f                   	pop    %edi
     4cc:	68 00 01 00 00       	push   $0x100
     4d1:	50                   	push   %eax
     4d2:	e8 39 08 00 00       	call   d10 <gets>
		input[strlen(input)-1] = '\0';
     4d7:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     4dd:	89 04 24             	mov    %eax,(%esp)
     4e0:	e8 9b 07 00 00       	call   c80 <strlen>
     4e5:	83 c4 10             	add    $0x10,%esp
     4e8:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     4ef:	00 
	}
	else
		strcpy(input, extra);
	int i = 256 - 1;
	for (; i > n; i--)
     4f0:	81 7d 0c fe 00 00 00 	cmpl   $0xfe,0xc(%ebp)
     4f7:	0f 8f 83 00 00 00    	jg     580 <com_ins+0x120>
     4fd:	8b 45 0c             	mov    0xc(%ebp),%eax
     500:	8d 9e fc 03 00 00    	lea    0x3fc(%esi),%ebx
     506:	8d 3c 86             	lea    (%esi,%eax,4),%edi
     509:	eb 2b                	jmp    536 <com_ins+0xd6>
     50b:	90                   	nop
     50c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
			memset(text[i], 0, 256);
			strcpy(text[i], text[i-1]);
		}
		else if (text[i] != 0 && text[i-1] != 0)
		{
			memset(text[i], 0, 256);
     510:	83 ec 04             	sub    $0x4,%esp
     513:	68 00 01 00 00       	push   $0x100
     518:	6a 00                	push   $0x0
     51a:	50                   	push   %eax
     51b:	e8 90 07 00 00       	call   cb0 <memset>
			strcpy(text[i], text[i-1]);
     520:	58                   	pop    %eax
     521:	5a                   	pop    %edx
     522:	ff 73 fc             	pushl  -0x4(%ebx)
     525:	ff 33                	pushl  (%ebx)
     527:	e8 d4 06 00 00       	call   c00 <strcpy>
     52c:	83 c4 10             	add    $0x10,%esp
     52f:	83 eb 04             	sub    $0x4,%ebx
	for (; i > n; i--)
     532:	39 fb                	cmp    %edi,%ebx
     534:	74 4a                	je     580 <com_ins+0x120>
		if (text[i-1] == 0)
     536:	8b 4b fc             	mov    -0x4(%ebx),%ecx
     539:	85 c9                	test   %ecx,%ecx
     53b:	74 f2                	je     52f <com_ins+0xcf>
		else if (text[i] == 0 && text[i-1] != 0)
     53d:	8b 03                	mov    (%ebx),%eax
     53f:	85 c0                	test   %eax,%eax
     541:	75 cd                	jne    510 <com_ins+0xb0>
			text[i] = malloc(256);
     543:	83 ec 0c             	sub    $0xc,%esp
     546:	68 00 01 00 00       	push   $0x100
     54b:	e8 b0 0c 00 00       	call   1200 <malloc>
			memset(text[i], 0, 256);
     550:	83 c4 0c             	add    $0xc,%esp
			text[i] = malloc(256);
     553:	89 03                	mov    %eax,(%ebx)
     555:	eb bc                	jmp    513 <com_ins+0xb3>
     557:	89 f6                	mov    %esi,%esi
     559:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		printf(1, "invalid line number\n");
     560:	83 ec 08             	sub    $0x8,%esp
     563:	68 12 13 00 00       	push   $0x1312
     568:	6a 01                	push   $0x1
     56a:	e8 31 0a 00 00       	call   fa0 <printf>
		return changed;
     56f:	8b 45 14             	mov    0x14(%ebp),%eax
     572:	83 c4 10             	add    $0x10,%esp
	strcpy(text[n], input);
	changed = 1;
	if (auto_show == 1)
		show_text(text);
    return changed;
}
     575:	8d 65 f4             	lea    -0xc(%ebp),%esp
     578:	5b                   	pop    %ebx
     579:	5e                   	pop    %esi
     57a:	5f                   	pop    %edi
     57b:	5d                   	pop    %ebp
     57c:	c3                   	ret    
     57d:	8d 76 00             	lea    0x0(%esi),%esi
	if (text[n] == 0)
     580:	8b 45 0c             	mov    0xc(%ebp),%eax
     583:	8d 1c 85 00 00 00 00 	lea    0x0(,%eax,4),%ebx
     58a:	8d 3c 1e             	lea    (%esi,%ebx,1),%edi
     58d:	8b 07                	mov    (%edi),%eax
     58f:	85 c0                	test   %eax,%eax
     591:	74 5d                	je     5f0 <com_ins+0x190>
	memset(text[n], 0, 256);
     593:	83 ec 04             	sub    $0x4,%esp
     596:	68 00 01 00 00       	push   $0x100
     59b:	6a 00                	push   $0x0
     59d:	50                   	push   %eax
     59e:	e8 0d 07 00 00       	call   cb0 <memset>
	strcpy(text[n], input);
     5a3:	58                   	pop    %eax
     5a4:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     5aa:	5a                   	pop    %edx
     5ab:	50                   	push   %eax
     5ac:	ff 37                	pushl  (%edi)
     5ae:	e8 4d 06 00 00       	call   c00 <strcpy>
	if (auto_show == 1)
     5b3:	83 c4 10             	add    $0x10,%esp
     5b6:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
     5ba:	0f 84 80 00 00 00    	je     640 <com_ins+0x1e0>
}
     5c0:	8d 65 f4             	lea    -0xc(%ebp),%esp
			return changed;
     5c3:	b8 01 00 00 00       	mov    $0x1,%eax
}
     5c8:	5b                   	pop    %ebx
     5c9:	5e                   	pop    %esi
     5ca:	5f                   	pop    %edi
     5cb:	5d                   	pop    %ebp
     5cc:	c3                   	ret    
     5cd:	8d 76 00             	lea    0x0(%esi),%esi
		strcpy(input, extra);
     5d0:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     5d6:	83 ec 08             	sub    $0x8,%esp
     5d9:	ff 75 10             	pushl  0x10(%ebp)
     5dc:	50                   	push   %eax
     5dd:	e8 1e 06 00 00       	call   c00 <strcpy>
     5e2:	83 c4 10             	add    $0x10,%esp
     5e5:	e9 06 ff ff ff       	jmp    4f0 <com_ins+0x90>
     5ea:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
		text[n] = malloc(256);
     5f0:	83 ec 0c             	sub    $0xc,%esp
		if (text[n-1][0] == '\0')
     5f3:	8d 5c 1e fc          	lea    -0x4(%esi,%ebx,1),%ebx
		text[n] = malloc(256);
     5f7:	68 00 01 00 00       	push   $0x100
     5fc:	e8 ff 0b 00 00       	call   1200 <malloc>
     601:	89 07                	mov    %eax,(%edi)
		if (text[n-1][0] == '\0')
     603:	8b 0b                	mov    (%ebx),%ecx
     605:	83 c4 10             	add    $0x10,%esp
     608:	80 39 00             	cmpb   $0x0,(%ecx)
     60b:	75 86                	jne    593 <com_ins+0x133>
			memset(text[n], 0, 256);
     60d:	83 ec 04             	sub    $0x4,%esp
     610:	68 00 01 00 00       	push   $0x100
     615:	6a 00                	push   $0x0
     617:	50                   	push   %eax
     618:	e8 93 06 00 00       	call   cb0 <memset>
			strcpy(text[n-1], input);
     61d:	59                   	pop    %ecx
     61e:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     624:	5f                   	pop    %edi
     625:	50                   	push   %eax
     626:	ff 33                	pushl  (%ebx)
     628:	e8 d3 05 00 00       	call   c00 <strcpy>
			if (auto_show == 1)
     62d:	83 c4 10             	add    $0x10,%esp
     630:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
     634:	75 8a                	jne    5c0 <com_ins+0x160>
     636:	8d 76 00             	lea    0x0(%esi),%esi
     639:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
				show_text(text);
     640:	83 ec 0c             	sub    $0xc,%esp
     643:	56                   	push   %esi
     644:	e8 b7 fc ff ff       	call   300 <show_text>
     649:	83 c4 10             	add    $0x10,%esp
     64c:	e9 6f ff ff ff       	jmp    5c0 <com_ins+0x160>
     651:	eb 0d                	jmp    660 <com_mod>
     653:	90                   	nop
     654:	90                   	nop
     655:	90                   	nop
     656:	90                   	nop
     657:	90                   	nop
     658:	90                   	nop
     659:	90                   	nop
     65a:	90                   	nop
     65b:	90                   	nop
     65c:	90                   	nop
     65d:	90                   	nop
     65e:	90                   	nop
     65f:	90                   	nop

00000660 <com_mod>:

int com_mod(char *text[], int n, char *extra,int changed, int auto_show)
{
     660:	55                   	push   %ebp
     661:	89 e5                	mov    %esp,%ebp
     663:	57                   	push   %edi
     664:	56                   	push   %esi
     665:	53                   	push   %ebx
     666:	81 ec 1c 01 00 00    	sub    $0x11c,%esp
     66c:	8b 55 0c             	mov    0xc(%ebp),%edx
     66f:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (n <= 0 || n > get_line_number(text) + 1)
     672:	85 d2                	test   %edx,%edx
     674:	0f 8e c6 00 00 00    	jle    740 <com_mod+0xe0>
	int i = 0;
     67a:	31 c0                	xor    %eax,%eax
     67c:	eb 0c                	jmp    68a <com_mod+0x2a>
     67e:	66 90                	xchg   %ax,%ax
	for (; i < 256; i++)
     680:	83 c0 01             	add    $0x1,%eax
     683:	3d 00 01 00 00       	cmp    $0x100,%eax
     688:	74 07                	je     691 <com_mod+0x31>
		if (text[i] == 0)
     68a:	8b 0c 83             	mov    (%ebx,%eax,4),%ecx
     68d:	85 c9                	test   %ecx,%ecx
     68f:	75 ef                	jne    680 <com_mod+0x20>
	if (n <= 0 || n > get_line_number(text) + 1)
     691:	39 c2                	cmp    %eax,%edx
     693:	0f 8f a7 00 00 00    	jg     740 <com_mod+0xe0>
	{
		printf(1, "invalid line number\n");
		return changed;
	}
	char input[256] = {};
     699:	8d b5 e8 fe ff ff    	lea    -0x118(%ebp),%esi
     69f:	31 c0                	xor    %eax,%eax
     6a1:	b9 40 00 00 00       	mov    $0x40,%ecx
     6a6:	89 f7                	mov    %esi,%edi
     6a8:	f3 ab                	rep stos %eax,%es:(%edi)
	if (*extra == '\0')
     6aa:	8b 45 10             	mov    0x10(%ebp),%eax
     6ad:	80 38 00             	cmpb   $0x0,(%eax)
     6b0:	0f 85 aa 00 00 00    	jne    760 <com_mod+0x100>
	{
		printf(1, "please input content:\n");
     6b6:	83 ec 08             	sub    $0x8,%esp
     6b9:	89 95 e4 fe ff ff    	mov    %edx,-0x11c(%ebp)
     6bf:	68 27 13 00 00       	push   $0x1327
     6c4:	6a 01                	push   $0x1
     6c6:	e8 d5 08 00 00       	call   fa0 <printf>
		gets(input, 256);
     6cb:	59                   	pop    %ecx
     6cc:	5f                   	pop    %edi
     6cd:	68 00 01 00 00       	push   $0x100
     6d2:	56                   	push   %esi
     6d3:	e8 38 06 00 00       	call   d10 <gets>
		input[strlen(input)-1] = '\0';
     6d8:	89 34 24             	mov    %esi,(%esp)
     6db:	e8 a0 05 00 00       	call   c80 <strlen>
     6e0:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
     6e6:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     6ed:	00 
     6ee:	83 c4 10             	add    $0x10,%esp
	}
	else
		strcpy(input, extra);
	memset(text[n-1], 0, 256);
     6f1:	8d 7c 93 fc          	lea    -0x4(%ebx,%edx,4),%edi
     6f5:	83 ec 04             	sub    $0x4,%esp
     6f8:	68 00 01 00 00       	push   $0x100
     6fd:	6a 00                	push   $0x0
     6ff:	ff 37                	pushl  (%edi)
     701:	e8 aa 05 00 00       	call   cb0 <memset>
	strcpy(text[n-1], input);
     706:	58                   	pop    %eax
     707:	5a                   	pop    %edx
     708:	56                   	push   %esi
     709:	ff 37                	pushl  (%edi)
     70b:	e8 f0 04 00 00       	call   c00 <strcpy>
	changed = 1;
	if (auto_show == 1)
     710:	83 c4 10             	add    $0x10,%esp
     713:	83 7d 18 01          	cmpl   $0x1,0x18(%ebp)
		show_text(text);
    return changed;
     717:	b8 01 00 00 00       	mov    $0x1,%eax
	if (auto_show == 1)
     71c:	75 37                	jne    755 <com_mod+0xf5>
		show_text(text);
     71e:	83 ec 0c             	sub    $0xc,%esp
     721:	89 85 e4 fe ff ff    	mov    %eax,-0x11c(%ebp)
     727:	53                   	push   %ebx
     728:	e8 d3 fb ff ff       	call   300 <show_text>
     72d:	8b 85 e4 fe ff ff    	mov    -0x11c(%ebp),%eax
     733:	83 c4 10             	add    $0x10,%esp
}
     736:	8d 65 f4             	lea    -0xc(%ebp),%esp
     739:	5b                   	pop    %ebx
     73a:	5e                   	pop    %esi
     73b:	5f                   	pop    %edi
     73c:	5d                   	pop    %ebp
     73d:	c3                   	ret    
     73e:	66 90                	xchg   %ax,%ax
		printf(1, "invalid line number\n");
     740:	83 ec 08             	sub    $0x8,%esp
     743:	68 12 13 00 00       	push   $0x1312
     748:	6a 01                	push   $0x1
     74a:	e8 51 08 00 00       	call   fa0 <printf>
		return changed;
     74f:	8b 45 14             	mov    0x14(%ebp),%eax
     752:	83 c4 10             	add    $0x10,%esp
}
     755:	8d 65 f4             	lea    -0xc(%ebp),%esp
     758:	5b                   	pop    %ebx
     759:	5e                   	pop    %esi
     75a:	5f                   	pop    %edi
     75b:	5d                   	pop    %ebp
     75c:	c3                   	ret    
     75d:	8d 76 00             	lea    0x0(%esi),%esi
		strcpy(input, extra);
     760:	83 ec 08             	sub    $0x8,%esp
     763:	ff 75 10             	pushl  0x10(%ebp)
     766:	89 95 e4 fe ff ff    	mov    %edx,-0x11c(%ebp)
     76c:	56                   	push   %esi
     76d:	e8 8e 04 00 00       	call   c00 <strcpy>
     772:	83 c4 10             	add    $0x10,%esp
     775:	8b 95 e4 fe ff ff    	mov    -0x11c(%ebp),%edx
     77b:	e9 71 ff ff ff       	jmp    6f1 <com_mod+0x91>

00000780 <com_del>:

int com_del(char *text[], int n,int changed,int auto_show)
{
     780:	55                   	push   %ebp
     781:	89 e5                	mov    %esp,%ebp
     783:	57                   	push   %edi
     784:	56                   	push   %esi
     785:	53                   	push   %ebx
     786:	83 ec 1c             	sub    $0x1c,%esp
     789:	8b 7d 0c             	mov    0xc(%ebp),%edi
     78c:	8b 5d 08             	mov    0x8(%ebp),%ebx
	if (n <= 0 || n > get_line_number(text) + 1)
     78f:	85 ff                	test   %edi,%edi
     791:	7e 22                	jle    7b5 <com_del+0x35>
	int i = 0;
     793:	31 c0                	xor    %eax,%eax
     795:	eb 13                	jmp    7aa <com_del+0x2a>
     797:	89 f6                	mov    %esi,%esi
     799:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
	for (; i < 256; i++)
     7a0:	83 c0 01             	add    $0x1,%eax
     7a3:	3d 00 01 00 00       	cmp    $0x100,%eax
     7a8:	74 07                	je     7b1 <com_del+0x31>
		if (text[i] == 0)
     7aa:	8b 14 83             	mov    (%ebx,%eax,4),%edx
     7ad:	85 d2                	test   %edx,%edx
     7af:	75 ef                	jne    7a0 <com_del+0x20>
	if (n <= 0 || n > get_line_number(text) + 1)
     7b1:	39 c7                	cmp    %eax,%edi
     7b3:	7e 23                	jle    7d8 <com_del+0x58>
	{
		printf(1, "invalid line number\n");
     7b5:	83 ec 08             	sub    $0x8,%esp
     7b8:	68 12 13 00 00       	push   $0x1312
     7bd:	6a 01                	push   $0x1
     7bf:	e8 dc 07 00 00       	call   fa0 <printf>
		return changed;
     7c4:	8b 45 10             	mov    0x10(%ebp),%eax
     7c7:	83 c4 10             	add    $0x10,%esp
	}
	changed = 1;
	if (auto_show == 1)
		show_text(text);
    return changed;
}
     7ca:	8d 65 f4             	lea    -0xc(%ebp),%esp
     7cd:	5b                   	pop    %ebx
     7ce:	5e                   	pop    %esi
     7cf:	5f                   	pop    %edi
     7d0:	5d                   	pop    %ebp
     7d1:	c3                   	ret    
     7d2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	memset(text[n-1], 0, 256);
     7d8:	8d 87 ff ff ff 3f    	lea    0x3fffffff(%edi),%eax
     7de:	83 ec 04             	sub    $0x4,%esp
	int i = n - 1;
     7e1:	8d 77 ff             	lea    -0x1(%edi),%esi
	memset(text[n-1], 0, 256);
     7e4:	68 00 01 00 00       	push   $0x100
     7e9:	6a 00                	push   $0x0
     7eb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
     7f2:	ff 34 83             	pushl  (%ebx,%eax,4)
     7f5:	89 55 e4             	mov    %edx,-0x1c(%ebp)
     7f8:	e8 b3 04 00 00       	call   cb0 <memset>
	for (; text[i+1] != 0; i++)
     7fd:	8b 55 e4             	mov    -0x1c(%ebp),%edx
     800:	83 c4 10             	add    $0x10,%esp
     803:	8d 4c 13 04          	lea    0x4(%ebx,%edx,1),%ecx
     807:	8b 01                	mov    (%ecx),%eax
     809:	85 c0                	test   %eax,%eax
     80b:	0f 84 80 00 00 00    	je     891 <com_del+0x111>
     811:	c1 e7 02             	shl    $0x2,%edi
     814:	8d 54 13 08          	lea    0x8(%ebx,%edx,1),%edx
     818:	29 f9                	sub    %edi,%ecx
     81a:	89 cf                	mov    %ecx,%edi
     81c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		strcpy(text[i], text[i+1]);
     820:	83 ec 08             	sub    $0x8,%esp
     823:	89 55 e4             	mov    %edx,-0x1c(%ebp)
     826:	50                   	push   %eax
     827:	ff 72 f8             	pushl  -0x8(%edx)
     82a:	e8 d1 03 00 00       	call   c00 <strcpy>
		memset(text[i+1], 0, 256);
     82f:	83 c4 0c             	add    $0xc,%esp
     832:	68 00 01 00 00       	push   $0x100
     837:	6a 00                	push   $0x0
     839:	ff 74 b7 04          	pushl  0x4(%edi,%esi,4)
	for (; text[i+1] != 0; i++)
     83d:	83 c6 01             	add    $0x1,%esi
		memset(text[i+1], 0, 256);
     840:	e8 6b 04 00 00       	call   cb0 <memset>
     845:	8b 55 e4             	mov    -0x1c(%ebp),%edx
	for (; text[i+1] != 0; i++)
     848:	83 c4 10             	add    $0x10,%esp
     84b:	83 c2 04             	add    $0x4,%edx
     84e:	8b 42 fc             	mov    -0x4(%edx),%eax
     851:	85 c0                	test   %eax,%eax
     853:	75 cb                	jne    820 <com_del+0xa0>
		free(text[i]);
     855:	8d 34 b3             	lea    (%ebx,%esi,4),%esi
     858:	83 ec 0c             	sub    $0xc,%esp
     85b:	ff 36                	pushl  (%esi)
     85d:	e8 0e 09 00 00       	call   1170 <free>
		text[i] = 0;
     862:	c7 06 00 00 00 00    	movl   $0x0,(%esi)
     868:	83 c4 10             	add    $0x10,%esp
	if (auto_show == 1)
     86b:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
    return changed;
     86f:	b8 01 00 00 00       	mov    $0x1,%eax
	if (auto_show == 1)
     874:	0f 85 50 ff ff ff    	jne    7ca <com_del+0x4a>
		show_text(text);
     87a:	83 ec 0c             	sub    $0xc,%esp
     87d:	89 45 e4             	mov    %eax,-0x1c(%ebp)
     880:	53                   	push   %ebx
     881:	e8 7a fa ff ff       	call   300 <show_text>
     886:	83 c4 10             	add    $0x10,%esp
     889:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     88c:	e9 39 ff ff ff       	jmp    7ca <com_del+0x4a>
	if (i != 0)
     891:	85 f6                	test   %esi,%esi
     893:	74 d6                	je     86b <com_del+0xeb>
     895:	eb be                	jmp    855 <com_del+0xd5>
     897:	89 f6                	mov    %esi,%esi
     899:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000008a0 <com_help>:

void com_help(char *text[])
{
     8a0:	55                   	push   %ebp
     8a1:	89 e5                	mov    %esp,%ebp
     8a3:	83 ec 10             	sub    $0x10,%esp
	printf(1, "****************************************\n");
     8a6:	68 44 14 00 00       	push   $0x1444
     8ab:	6a 01                	push   $0x1
     8ad:	e8 ee 06 00 00       	call   fa0 <printf>
	printf(1, "instructions for use:\n");
     8b2:	58                   	pop    %eax
     8b3:	5a                   	pop    %edx
     8b4:	68 3e 13 00 00       	push   $0x133e
     8b9:	6a 01                	push   $0x1
     8bb:	e8 e0 06 00 00       	call   fa0 <printf>
	printf(1, "ins-n, insert a line after line n\n");
     8c0:	59                   	pop    %ecx
     8c1:	58                   	pop    %eax
     8c2:	68 70 14 00 00       	push   $0x1470
     8c7:	6a 01                	push   $0x1
     8c9:	e8 d2 06 00 00       	call   fa0 <printf>
	printf(1, "mod-n, modify line n\n");
     8ce:	58                   	pop    %eax
     8cf:	5a                   	pop    %edx
     8d0:	68 55 13 00 00       	push   $0x1355
     8d5:	6a 01                	push   $0x1
     8d7:	e8 c4 06 00 00       	call   fa0 <printf>
	printf(1, "del-n, hapus line n\n");
     8dc:	59                   	pop    %ecx
     8dd:	58                   	pop    %eax
     8de:	68 6b 13 00 00       	push   $0x136b
     8e3:	6a 01                	push   $0x1
     8e5:	e8 b6 06 00 00       	call   fa0 <printf>
	printf(1, "ins, insert a line after the last line\n");
     8ea:	58                   	pop    %eax
     8eb:	5a                   	pop    %edx
     8ec:	68 94 14 00 00       	push   $0x1494
     8f1:	6a 01                	push   $0x1
     8f3:	e8 a8 06 00 00       	call   fa0 <printf>
	printf(1, "mod, modify the last line\n");
     8f8:	59                   	pop    %ecx
     8f9:	58                   	pop    %eax
     8fa:	68 80 13 00 00       	push   $0x1380
     8ff:	6a 01                	push   $0x1
     901:	e8 9a 06 00 00       	call   fa0 <printf>
	printf(1, "del, hapus the last line\n");
     906:	58                   	pop    %eax
     907:	5a                   	pop    %edx
     908:	68 9b 13 00 00       	push   $0x139b
     90d:	6a 01                	push   $0x1
     90f:	e8 8c 06 00 00       	call   fa0 <printf>
	printf(1, "save, save the file\n");
     914:	59                   	pop    %ecx
     915:	58                   	pop    %eax
     916:	68 b5 13 00 00       	push   $0x13b5
     91b:	6a 01                	push   $0x1
     91d:	e8 7e 06 00 00       	call   fa0 <printf>
	printf(1, "exit, exit editor\n");
     922:	58                   	pop    %eax
     923:	5a                   	pop    %edx
     924:	68 ca 13 00 00       	push   $0x13ca
     929:	6a 01                	push   $0x1
     92b:	e8 70 06 00 00       	call   fa0 <printf>
}
     930:	83 c4 10             	add    $0x10,%esp
     933:	c9                   	leave  
     934:	c3                   	ret    
     935:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     939:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000940 <com_save>:

int com_save(char *text[], char *path,int changed)
{
     940:	55                   	push   %ebp
     941:	89 e5                	mov    %esp,%ebp
     943:	57                   	push   %edi
     944:	56                   	push   %esi
     945:	53                   	push   %ebx
     946:	83 ec 18             	sub    $0x18,%esp
     949:	8b 5d 0c             	mov    0xc(%ebp),%ebx
     94c:	8b 7d 08             	mov    0x8(%ebp),%edi

	unlink(path);
     94f:	53                   	push   %ebx
     950:	e8 4d 05 00 00       	call   ea2 <unlink>

	int fd = open(path, O_WRONLY|O_CREATE);
     955:	58                   	pop    %eax
     956:	5a                   	pop    %edx
     957:	68 01 02 00 00       	push   $0x201
     95c:	53                   	push   %ebx
     95d:	e8 30 05 00 00       	call   e92 <open>
	if (fd == -1)
     962:	83 c4 10             	add    $0x10,%esp
     965:	83 f8 ff             	cmp    $0xffffffff,%eax
     968:	0f 84 a1 00 00 00    	je     a0f <com_save+0xcf>
     96e:	89 c6                	mov    %eax,%esi
	{
		printf(1, "save failed, file can't open:\n");

		exit();
	}
	if (text[0] == 0)
     970:	8b 07                	mov    (%edi),%eax
     972:	85 c0                	test   %eax,%eax
     974:	0f 84 7e 00 00 00    	je     9f8 <com_save+0xb8>
	{
		close(fd);
		return changed;
	}

	write(fd, text[0], strlen(text[0]));
     97a:	83 ec 0c             	sub    $0xc,%esp
	int i = 1;
	for (; text[i] != 0; i++)
     97d:	8d 5f 04             	lea    0x4(%edi),%ebx
	write(fd, text[0], strlen(text[0]));
     980:	50                   	push   %eax
     981:	e8 fa 02 00 00       	call   c80 <strlen>
     986:	83 c4 0c             	add    $0xc,%esp
     989:	50                   	push   %eax
     98a:	ff 37                	pushl  (%edi)
     98c:	56                   	push   %esi
     98d:	e8 e0 04 00 00       	call   e72 <write>
	for (; text[i] != 0; i++)
     992:	8b 47 04             	mov    0x4(%edi),%eax
     995:	83 c4 10             	add    $0x10,%esp
     998:	85 c0                	test   %eax,%eax
     99a:	74 34                	je     9d0 <com_save+0x90>
     99c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
	{
		printf(fd, "\n");
     9a0:	83 ec 08             	sub    $0x8,%esp
     9a3:	83 c3 04             	add    $0x4,%ebx
     9a6:	68 10 13 00 00       	push   $0x1310
     9ab:	56                   	push   %esi
     9ac:	e8 ef 05 00 00       	call   fa0 <printf>
		write(fd, text[i], strlen(text[i]));
     9b1:	59                   	pop    %ecx
     9b2:	ff 73 fc             	pushl  -0x4(%ebx)
     9b5:	e8 c6 02 00 00       	call   c80 <strlen>
     9ba:	83 c4 0c             	add    $0xc,%esp
     9bd:	50                   	push   %eax
     9be:	ff 73 fc             	pushl  -0x4(%ebx)
     9c1:	56                   	push   %esi
     9c2:	e8 ab 04 00 00       	call   e72 <write>
	for (; text[i] != 0; i++)
     9c7:	8b 3b                	mov    (%ebx),%edi
     9c9:	83 c4 10             	add    $0x10,%esp
     9cc:	85 ff                	test   %edi,%edi
     9ce:	75 d0                	jne    9a0 <com_save+0x60>
	}
	close(fd);
     9d0:	83 ec 0c             	sub    $0xc,%esp
     9d3:	56                   	push   %esi
     9d4:	e8 a1 04 00 00       	call   e7a <close>
	printf(1, "saved successfully\n");
     9d9:	58                   	pop    %eax
     9da:	5a                   	pop    %edx
     9db:	68 dd 13 00 00       	push   $0x13dd
     9e0:	6a 01                	push   $0x1
     9e2:	e8 b9 05 00 00       	call   fa0 <printf>
	changed = 0;
	return changed;
     9e7:	83 c4 10             	add    $0x10,%esp
}
     9ea:	8d 65 f4             	lea    -0xc(%ebp),%esp
	return changed;
     9ed:	31 c0                	xor    %eax,%eax
}
     9ef:	5b                   	pop    %ebx
     9f0:	5e                   	pop    %esi
     9f1:	5f                   	pop    %edi
     9f2:	5d                   	pop    %ebp
     9f3:	c3                   	ret    
     9f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
		close(fd);
     9f8:	83 ec 0c             	sub    $0xc,%esp
     9fb:	56                   	push   %esi
     9fc:	e8 79 04 00 00       	call   e7a <close>
		return changed;
     a01:	8b 45 10             	mov    0x10(%ebp),%eax
     a04:	83 c4 10             	add    $0x10,%esp
}
     a07:	8d 65 f4             	lea    -0xc(%ebp),%esp
     a0a:	5b                   	pop    %ebx
     a0b:	5e                   	pop    %esi
     a0c:	5f                   	pop    %edi
     a0d:	5d                   	pop    %ebp
     a0e:	c3                   	ret    
		printf(1, "save failed, file can't open:\n");
     a0f:	50                   	push   %eax
     a10:	50                   	push   %eax
     a11:	68 bc 14 00 00       	push   $0x14bc
     a16:	6a 01                	push   $0x1
     a18:	e8 83 05 00 00       	call   fa0 <printf>
		exit();
     a1d:	e8 30 04 00 00       	call   e52 <exit>
     a22:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a29:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a30 <com_exit>:

void com_exit(char *text[], char *path,int changed,int hapus)
{
     a30:	55                   	push   %ebp
     a31:	89 e5                	mov    %esp,%ebp
     a33:	57                   	push   %edi
     a34:	56                   	push   %esi
     a35:	53                   	push   %ebx
     a36:	81 ec 0c 01 00 00    	sub    $0x10c,%esp

	while (changed == 1)
     a3c:	83 7d 10 01          	cmpl   $0x1,0x10(%ebp)
{
     a40:	8b 75 08             	mov    0x8(%ebp),%esi
	while (changed == 1)
     a43:	75 7b                	jne    ac0 <com_exit+0x90>
     a45:	8d 85 e8 fe ff ff    	lea    -0x118(%ebp),%eax
     a4b:	89 75 08             	mov    %esi,0x8(%ebp)
     a4e:	89 c3                	mov    %eax,%ebx
     a50:	89 c6                	mov    %eax,%esi
     a52:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
	{
		printf(1, "save the file? y/n\n");
     a58:	83 ec 08             	sub    $0x8,%esp
		char input[256] = {};
     a5b:	89 f7                	mov    %esi,%edi
		gets(input, 256);
     a5d:	89 de                	mov    %ebx,%esi
		printf(1, "save the file? y/n\n");
     a5f:	68 f1 13 00 00       	push   $0x13f1
     a64:	6a 01                	push   $0x1
     a66:	e8 35 05 00 00       	call   fa0 <printf>
		char input[256] = {};
     a6b:	31 c0                	xor    %eax,%eax
     a6d:	b9 40 00 00 00       	mov    $0x40,%ecx
     a72:	f3 ab                	rep stos %eax,%es:(%edi)
		gets(input, 256);
     a74:	58                   	pop    %eax
     a75:	5a                   	pop    %edx
     a76:	68 00 01 00 00       	push   $0x100
     a7b:	53                   	push   %ebx
     a7c:	e8 8f 02 00 00       	call   d10 <gets>
		input[strlen(input)-1] = '\0';
     a81:	89 1c 24             	mov    %ebx,(%esp)
     a84:	e8 f7 01 00 00       	call   c80 <strlen>
		if (strcmp(input, "y") == 0)
     a89:	59                   	pop    %ecx
     a8a:	5f                   	pop    %edi
     a8b:	68 05 14 00 00       	push   $0x1405
     a90:	53                   	push   %ebx
		input[strlen(input)-1] = '\0';
     a91:	c6 84 05 e7 fe ff ff 	movb   $0x0,-0x119(%ebp,%eax,1)
     a98:	00 
		if (strcmp(input, "y") == 0)
     a99:	e8 92 01 00 00       	call   c30 <strcmp>
     a9e:	83 c4 10             	add    $0x10,%esp
     aa1:	85 c0                	test   %eax,%eax
     aa3:	75 5b                	jne    b00 <com_exit+0xd0>
			changed=com_save(text, path,changed);
     aa5:	83 ec 04             	sub    $0x4,%esp
     aa8:	6a 01                	push   $0x1
     aaa:	ff 75 0c             	pushl  0xc(%ebp)
     aad:	ff 75 08             	pushl  0x8(%ebp)
     ab0:	e8 8b fe ff ff       	call   940 <com_save>
	while (changed == 1)
     ab5:	83 c4 10             	add    $0x10,%esp
     ab8:	83 f8 01             	cmp    $0x1,%eax
     abb:	74 9b                	je     a58 <com_exit+0x28>
     abd:	8b 75 08             	mov    0x8(%ebp),%esi
		else
		printf(2, "wrong answer?\n");
	}

	int i = 0;
	for (; text[i] != 0; i++)
     ac0:	8b 06                	mov    (%esi),%eax
     ac2:	85 c0                	test   %eax,%eax
     ac4:	74 1c                	je     ae2 <com_exit+0xb2>
	{
		free(text[i]);
     ac6:	83 ec 0c             	sub    $0xc,%esp
     ac9:	83 c6 04             	add    $0x4,%esi
     acc:	50                   	push   %eax
     acd:	e8 9e 06 00 00       	call   1170 <free>
		text[i] = 0;
     ad2:	c7 46 fc 00 00 00 00 	movl   $0x0,-0x4(%esi)
	for (; text[i] != 0; i++)
     ad9:	8b 06                	mov    (%esi),%eax
     adb:	83 c4 10             	add    $0x10,%esp
     ade:	85 c0                	test   %eax,%eax
     ae0:	75 e4                	jne    ac6 <com_exit+0x96>
	}

    printf(1, "\033[2J\033[1;1H\n");
     ae2:	83 ec 08             	sub    $0x8,%esp
     ae5:	68 f8 12 00 00       	push   $0x12f8
     aea:	6a 01                	push   $0x1
     aec:	e8 af 04 00 00       	call   fa0 <printf>
	exit();
     af1:	e8 5c 03 00 00       	call   e52 <exit>
     af6:	8d 76 00             	lea    0x0(%esi),%esi
     af9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
		else if(strcmp(input, "n") == 0){
     b00:	83 ec 08             	sub    $0x8,%esp
     b03:	68 07 14 00 00       	push   $0x1407
     b08:	53                   	push   %ebx
     b09:	e8 22 01 00 00       	call   c30 <strcmp>
     b0e:	83 c4 10             	add    $0x10,%esp
     b11:	85 c0                	test   %eax,%eax
     b13:	74 17                	je     b2c <com_exit+0xfc>
		printf(2, "wrong answer?\n");
     b15:	83 ec 08             	sub    $0x8,%esp
     b18:	68 09 14 00 00       	push   $0x1409
     b1d:	6a 02                	push   $0x2
     b1f:	e8 7c 04 00 00       	call   fa0 <printf>
     b24:	83 c4 10             	add    $0x10,%esp
     b27:	e9 2c ff ff ff       	jmp    a58 <com_exit+0x28>
            if(hapus==1)
     b2c:	83 7d 14 01          	cmpl   $0x1,0x14(%ebp)
     b30:	8b 75 08             	mov    0x8(%ebp),%esi
     b33:	75 8b                	jne    ac0 <com_exit+0x90>
        		unlink(path);
     b35:	83 ec 0c             	sub    $0xc,%esp
     b38:	ff 75 0c             	pushl  0xc(%ebp)
     b3b:	e8 62 03 00 00       	call   ea2 <unlink>
     b40:	83 c4 10             	add    $0x10,%esp
     b43:	e9 78 ff ff ff       	jmp    ac0 <com_exit+0x90>
     b48:	90                   	nop
     b49:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000b50 <show>:
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	57                   	push   %edi
     b54:	56                   	push   %esi
     b55:	53                   	push   %ebx
     b56:	83 ec 14             	sub    $0x14,%esp
     b59:	8b 7d 08             	mov    0x8(%ebp),%edi
	printf(1, "\033[2J\033[1;1H\n");
     b5c:	68 f8 12 00 00       	push   $0x12f8
     b61:	6a 01                	push   $0x1
     b63:	e8 38 04 00 00       	call   fa0 <printf>
    printf(1, "****************************************\n\n");
     b68:	58                   	pop    %eax
     b69:	5a                   	pop    %edx
     b6a:	68 dc 14 00 00       	push   $0x14dc
     b6f:	6a 01                	push   $0x1
     b71:	e8 2a 04 00 00       	call   fa0 <printf>
	for (; text[j] != NULL; j++)
     b76:	8b 07                	mov    (%edi),%eax
     b78:	83 c4 10             	add    $0x10,%esp
     b7b:	85 c0                	test   %eax,%eax
     b7d:	74 5b                	je     bda <show+0x8a>
	int j = 0;
     b7f:	31 db                	xor    %ebx,%ebx
		printf(1, "%d%d%d:%s\n", (j+1)/100, ((j+1)%100)/10, (j+1)%10, text[j]);
     b81:	be cd cc cc cc       	mov    $0xcccccccd,%esi
     b86:	8d 76 00             	lea    0x0(%esi),%esi
     b89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
     b90:	83 ec 08             	sub    $0x8,%esp
     b93:	83 c3 01             	add    $0x1,%ebx
     b96:	50                   	push   %eax
     b97:	89 d8                	mov    %ebx,%eax
     b99:	89 d9                	mov    %ebx,%ecx
     b9b:	f7 e6                	mul    %esi
     b9d:	c1 ea 03             	shr    $0x3,%edx
     ba0:	8d 04 92             	lea    (%edx,%edx,4),%eax
     ba3:	01 c0                	add    %eax,%eax
     ba5:	29 c1                	sub    %eax,%ecx
     ba7:	b8 1f 85 eb 51       	mov    $0x51eb851f,%eax
     bac:	f7 e3                	mul    %ebx
     bae:	51                   	push   %ecx
     baf:	89 d1                	mov    %edx,%ecx
     bb1:	89 da                	mov    %ebx,%edx
     bb3:	c1 e9 05             	shr    $0x5,%ecx
     bb6:	6b c1 64             	imul   $0x64,%ecx,%eax
     bb9:	29 c2                	sub    %eax,%edx
     bbb:	89 d0                	mov    %edx,%eax
     bbd:	f7 e6                	mul    %esi
     bbf:	c1 ea 03             	shr    $0x3,%edx
     bc2:	52                   	push   %edx
     bc3:	51                   	push   %ecx
     bc4:	68 04 13 00 00       	push   $0x1304
     bc9:	6a 01                	push   $0x1
     bcb:	e8 d0 03 00 00       	call   fa0 <printf>
	for (; text[j] != NULL; j++)
     bd0:	8b 04 9f             	mov    (%edi,%ebx,4),%eax
     bd3:	83 c4 20             	add    $0x20,%esp
     bd6:	85 c0                	test   %eax,%eax
     bd8:	75 b6                	jne    b90 <show+0x40>
    printf(1, "\n\n****************************************\n");
     bda:	83 ec 08             	sub    $0x8,%esp
     bdd:	68 08 15 00 00       	push   $0x1508
     be2:	6a 01                	push   $0x1
     be4:	e8 b7 03 00 00       	call   fa0 <printf>
}
     be9:	83 c4 10             	add    $0x10,%esp
     bec:	8d 65 f4             	lea    -0xc(%ebp),%esp
     bef:	5b                   	pop    %ebx
     bf0:	5e                   	pop    %esi
     bf1:	5f                   	pop    %edi
     bf2:	5d                   	pop    %ebp
     bf3:	c3                   	ret    
     bf4:	66 90                	xchg   %ax,%ax
     bf6:	66 90                	xchg   %ax,%ax
     bf8:	66 90                	xchg   %ax,%ax
     bfa:	66 90                	xchg   %ax,%ax
     bfc:	66 90                	xchg   %ax,%ax
     bfe:	66 90                	xchg   %ax,%ax

00000c00 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     c00:	55                   	push   %ebp
     c01:	89 e5                	mov    %esp,%ebp
     c03:	53                   	push   %ebx
     c04:	8b 45 08             	mov    0x8(%ebp),%eax
     c07:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     c0a:	89 c2                	mov    %eax,%edx
     c0c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     c10:	83 c1 01             	add    $0x1,%ecx
     c13:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     c17:	83 c2 01             	add    $0x1,%edx
     c1a:	84 db                	test   %bl,%bl
     c1c:	88 5a ff             	mov    %bl,-0x1(%edx)
     c1f:	75 ef                	jne    c10 <strcpy+0x10>
    ;
  return os;
}
     c21:	5b                   	pop    %ebx
     c22:	5d                   	pop    %ebp
     c23:	c3                   	ret    
     c24:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     c2a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000c30 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     c30:	55                   	push   %ebp
     c31:	89 e5                	mov    %esp,%ebp
     c33:	53                   	push   %ebx
     c34:	8b 55 08             	mov    0x8(%ebp),%edx
     c37:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     c3a:	0f b6 02             	movzbl (%edx),%eax
     c3d:	0f b6 19             	movzbl (%ecx),%ebx
     c40:	84 c0                	test   %al,%al
     c42:	75 1c                	jne    c60 <strcmp+0x30>
     c44:	eb 2a                	jmp    c70 <strcmp+0x40>
     c46:	8d 76 00             	lea    0x0(%esi),%esi
     c49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     c50:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     c53:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     c56:	83 c1 01             	add    $0x1,%ecx
     c59:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     c5c:	84 c0                	test   %al,%al
     c5e:	74 10                	je     c70 <strcmp+0x40>
     c60:	38 d8                	cmp    %bl,%al
     c62:	74 ec                	je     c50 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     c64:	29 d8                	sub    %ebx,%eax
}
     c66:	5b                   	pop    %ebx
     c67:	5d                   	pop    %ebp
     c68:	c3                   	ret    
     c69:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     c70:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     c72:	29 d8                	sub    %ebx,%eax
}
     c74:	5b                   	pop    %ebx
     c75:	5d                   	pop    %ebp
     c76:	c3                   	ret    
     c77:	89 f6                	mov    %esi,%esi
     c79:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000c80 <strlen>:

uint
strlen(const char *s)
{
     c80:	55                   	push   %ebp
     c81:	89 e5                	mov    %esp,%ebp
     c83:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     c86:	80 39 00             	cmpb   $0x0,(%ecx)
     c89:	74 15                	je     ca0 <strlen+0x20>
     c8b:	31 d2                	xor    %edx,%edx
     c8d:	8d 76 00             	lea    0x0(%esi),%esi
     c90:	83 c2 01             	add    $0x1,%edx
     c93:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     c97:	89 d0                	mov    %edx,%eax
     c99:	75 f5                	jne    c90 <strlen+0x10>
    ;
  return n;
}
     c9b:	5d                   	pop    %ebp
     c9c:	c3                   	ret    
     c9d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     ca0:	31 c0                	xor    %eax,%eax
}
     ca2:	5d                   	pop    %ebp
     ca3:	c3                   	ret    
     ca4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     caa:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000cb0 <memset>:

void*
memset(void *dst, int c, uint n)
{
     cb0:	55                   	push   %ebp
     cb1:	89 e5                	mov    %esp,%ebp
     cb3:	57                   	push   %edi
     cb4:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     cb7:	8b 4d 10             	mov    0x10(%ebp),%ecx
     cba:	8b 45 0c             	mov    0xc(%ebp),%eax
     cbd:	89 d7                	mov    %edx,%edi
     cbf:	fc                   	cld    
     cc0:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     cc2:	89 d0                	mov    %edx,%eax
     cc4:	5f                   	pop    %edi
     cc5:	5d                   	pop    %ebp
     cc6:	c3                   	ret    
     cc7:	89 f6                	mov    %esi,%esi
     cc9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000cd0 <strchr>:

char*
strchr(const char *s, char c)
{
     cd0:	55                   	push   %ebp
     cd1:	89 e5                	mov    %esp,%ebp
     cd3:	53                   	push   %ebx
     cd4:	8b 45 08             	mov    0x8(%ebp),%eax
     cd7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     cda:	0f b6 10             	movzbl (%eax),%edx
     cdd:	84 d2                	test   %dl,%dl
     cdf:	74 1d                	je     cfe <strchr+0x2e>
    if(*s == c)
     ce1:	38 d3                	cmp    %dl,%bl
     ce3:	89 d9                	mov    %ebx,%ecx
     ce5:	75 0d                	jne    cf4 <strchr+0x24>
     ce7:	eb 17                	jmp    d00 <strchr+0x30>
     ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     cf0:	38 ca                	cmp    %cl,%dl
     cf2:	74 0c                	je     d00 <strchr+0x30>
  for(; *s; s++)
     cf4:	83 c0 01             	add    $0x1,%eax
     cf7:	0f b6 10             	movzbl (%eax),%edx
     cfa:	84 d2                	test   %dl,%dl
     cfc:	75 f2                	jne    cf0 <strchr+0x20>
      return (char*)s;
  return 0;
     cfe:	31 c0                	xor    %eax,%eax
}
     d00:	5b                   	pop    %ebx
     d01:	5d                   	pop    %ebp
     d02:	c3                   	ret    
     d03:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     d09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d10 <gets>:

char*
gets(char *buf, int max)
{
     d10:	55                   	push   %ebp
     d11:	89 e5                	mov    %esp,%ebp
     d13:	57                   	push   %edi
     d14:	56                   	push   %esi
     d15:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     d16:	31 f6                	xor    %esi,%esi
     d18:	89 f3                	mov    %esi,%ebx
{
     d1a:	83 ec 1c             	sub    $0x1c,%esp
     d1d:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     d20:	eb 2f                	jmp    d51 <gets+0x41>
     d22:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     d28:	8d 45 e7             	lea    -0x19(%ebp),%eax
     d2b:	83 ec 04             	sub    $0x4,%esp
     d2e:	6a 01                	push   $0x1
     d30:	50                   	push   %eax
     d31:	6a 00                	push   $0x0
     d33:	e8 32 01 00 00       	call   e6a <read>
    if(cc < 1)
     d38:	83 c4 10             	add    $0x10,%esp
     d3b:	85 c0                	test   %eax,%eax
     d3d:	7e 1c                	jle    d5b <gets+0x4b>
      break;
    buf[i++] = c;
     d3f:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     d43:	83 c7 01             	add    $0x1,%edi
     d46:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     d49:	3c 0a                	cmp    $0xa,%al
     d4b:	74 23                	je     d70 <gets+0x60>
     d4d:	3c 0d                	cmp    $0xd,%al
     d4f:	74 1f                	je     d70 <gets+0x60>
  for(i=0; i+1 < max; ){
     d51:	83 c3 01             	add    $0x1,%ebx
     d54:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     d57:	89 fe                	mov    %edi,%esi
     d59:	7c cd                	jl     d28 <gets+0x18>
     d5b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     d5d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     d60:	c6 03 00             	movb   $0x0,(%ebx)
}
     d63:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d66:	5b                   	pop    %ebx
     d67:	5e                   	pop    %esi
     d68:	5f                   	pop    %edi
     d69:	5d                   	pop    %ebp
     d6a:	c3                   	ret    
     d6b:	90                   	nop
     d6c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d70:	8b 75 08             	mov    0x8(%ebp),%esi
     d73:	8b 45 08             	mov    0x8(%ebp),%eax
     d76:	01 de                	add    %ebx,%esi
     d78:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     d7a:	c6 03 00             	movb   $0x0,(%ebx)
}
     d7d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d80:	5b                   	pop    %ebx
     d81:	5e                   	pop    %esi
     d82:	5f                   	pop    %edi
     d83:	5d                   	pop    %ebp
     d84:	c3                   	ret    
     d85:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     d89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000d90 <stat>:

int
stat(const char *n, struct stat *st)
{
     d90:	55                   	push   %ebp
     d91:	89 e5                	mov    %esp,%ebp
     d93:	56                   	push   %esi
     d94:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     d95:	83 ec 08             	sub    $0x8,%esp
     d98:	6a 00                	push   $0x0
     d9a:	ff 75 08             	pushl  0x8(%ebp)
     d9d:	e8 f0 00 00 00       	call   e92 <open>
  if(fd < 0)
     da2:	83 c4 10             	add    $0x10,%esp
     da5:	85 c0                	test   %eax,%eax
     da7:	78 27                	js     dd0 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     da9:	83 ec 08             	sub    $0x8,%esp
     dac:	ff 75 0c             	pushl  0xc(%ebp)
     daf:	89 c3                	mov    %eax,%ebx
     db1:	50                   	push   %eax
     db2:	e8 f3 00 00 00       	call   eaa <fstat>
  close(fd);
     db7:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     dba:	89 c6                	mov    %eax,%esi
  close(fd);
     dbc:	e8 b9 00 00 00       	call   e7a <close>
  return r;
     dc1:	83 c4 10             	add    $0x10,%esp
}
     dc4:	8d 65 f8             	lea    -0x8(%ebp),%esp
     dc7:	89 f0                	mov    %esi,%eax
     dc9:	5b                   	pop    %ebx
     dca:	5e                   	pop    %esi
     dcb:	5d                   	pop    %ebp
     dcc:	c3                   	ret    
     dcd:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     dd0:	be ff ff ff ff       	mov    $0xffffffff,%esi
     dd5:	eb ed                	jmp    dc4 <stat+0x34>
     dd7:	89 f6                	mov    %esi,%esi
     dd9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000de0 <atoi>:

int
atoi(const char *s)
{
     de0:	55                   	push   %ebp
     de1:	89 e5                	mov    %esp,%ebp
     de3:	53                   	push   %ebx
     de4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     de7:	0f be 11             	movsbl (%ecx),%edx
     dea:	8d 42 d0             	lea    -0x30(%edx),%eax
     ded:	3c 09                	cmp    $0x9,%al
  n = 0;
     def:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     df4:	77 1f                	ja     e15 <atoi+0x35>
     df6:	8d 76 00             	lea    0x0(%esi),%esi
     df9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     e00:	8d 04 80             	lea    (%eax,%eax,4),%eax
     e03:	83 c1 01             	add    $0x1,%ecx
     e06:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     e0a:	0f be 11             	movsbl (%ecx),%edx
     e0d:	8d 5a d0             	lea    -0x30(%edx),%ebx
     e10:	80 fb 09             	cmp    $0x9,%bl
     e13:	76 eb                	jbe    e00 <atoi+0x20>
  return n;
}
     e15:	5b                   	pop    %ebx
     e16:	5d                   	pop    %ebp
     e17:	c3                   	ret    
     e18:	90                   	nop
     e19:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000e20 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     e20:	55                   	push   %ebp
     e21:	89 e5                	mov    %esp,%ebp
     e23:	56                   	push   %esi
     e24:	53                   	push   %ebx
     e25:	8b 5d 10             	mov    0x10(%ebp),%ebx
     e28:	8b 45 08             	mov    0x8(%ebp),%eax
     e2b:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     e2e:	85 db                	test   %ebx,%ebx
     e30:	7e 14                	jle    e46 <memmove+0x26>
     e32:	31 d2                	xor    %edx,%edx
     e34:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     e38:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     e3c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     e3f:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     e42:	39 d3                	cmp    %edx,%ebx
     e44:	75 f2                	jne    e38 <memmove+0x18>
  return vdst;
}
     e46:	5b                   	pop    %ebx
     e47:	5e                   	pop    %esi
     e48:	5d                   	pop    %ebp
     e49:	c3                   	ret    

00000e4a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     e4a:	b8 01 00 00 00       	mov    $0x1,%eax
     e4f:	cd 40                	int    $0x40
     e51:	c3                   	ret    

00000e52 <exit>:
SYSCALL(exit)
     e52:	b8 02 00 00 00       	mov    $0x2,%eax
     e57:	cd 40                	int    $0x40
     e59:	c3                   	ret    

00000e5a <wait>:
SYSCALL(wait)
     e5a:	b8 03 00 00 00       	mov    $0x3,%eax
     e5f:	cd 40                	int    $0x40
     e61:	c3                   	ret    

00000e62 <pipe>:
SYSCALL(pipe)
     e62:	b8 04 00 00 00       	mov    $0x4,%eax
     e67:	cd 40                	int    $0x40
     e69:	c3                   	ret    

00000e6a <read>:
SYSCALL(read)
     e6a:	b8 05 00 00 00       	mov    $0x5,%eax
     e6f:	cd 40                	int    $0x40
     e71:	c3                   	ret    

00000e72 <write>:
SYSCALL(write)
     e72:	b8 10 00 00 00       	mov    $0x10,%eax
     e77:	cd 40                	int    $0x40
     e79:	c3                   	ret    

00000e7a <close>:
SYSCALL(close)
     e7a:	b8 15 00 00 00       	mov    $0x15,%eax
     e7f:	cd 40                	int    $0x40
     e81:	c3                   	ret    

00000e82 <kill>:
SYSCALL(kill)
     e82:	b8 06 00 00 00       	mov    $0x6,%eax
     e87:	cd 40                	int    $0x40
     e89:	c3                   	ret    

00000e8a <exec>:
SYSCALL(exec)
     e8a:	b8 07 00 00 00       	mov    $0x7,%eax
     e8f:	cd 40                	int    $0x40
     e91:	c3                   	ret    

00000e92 <open>:
SYSCALL(open)
     e92:	b8 0f 00 00 00       	mov    $0xf,%eax
     e97:	cd 40                	int    $0x40
     e99:	c3                   	ret    

00000e9a <mknod>:
SYSCALL(mknod)
     e9a:	b8 11 00 00 00       	mov    $0x11,%eax
     e9f:	cd 40                	int    $0x40
     ea1:	c3                   	ret    

00000ea2 <unlink>:
SYSCALL(unlink)
     ea2:	b8 12 00 00 00       	mov    $0x12,%eax
     ea7:	cd 40                	int    $0x40
     ea9:	c3                   	ret    

00000eaa <fstat>:
SYSCALL(fstat)
     eaa:	b8 08 00 00 00       	mov    $0x8,%eax
     eaf:	cd 40                	int    $0x40
     eb1:	c3                   	ret    

00000eb2 <link>:
SYSCALL(link)
     eb2:	b8 13 00 00 00       	mov    $0x13,%eax
     eb7:	cd 40                	int    $0x40
     eb9:	c3                   	ret    

00000eba <mkdir>:
SYSCALL(mkdir)
     eba:	b8 14 00 00 00       	mov    $0x14,%eax
     ebf:	cd 40                	int    $0x40
     ec1:	c3                   	ret    

00000ec2 <chdir>:
SYSCALL(chdir)
     ec2:	b8 09 00 00 00       	mov    $0x9,%eax
     ec7:	cd 40                	int    $0x40
     ec9:	c3                   	ret    

00000eca <dup>:
SYSCALL(dup)
     eca:	b8 0a 00 00 00       	mov    $0xa,%eax
     ecf:	cd 40                	int    $0x40
     ed1:	c3                   	ret    

00000ed2 <getpid>:
SYSCALL(getpid)
     ed2:	b8 0b 00 00 00       	mov    $0xb,%eax
     ed7:	cd 40                	int    $0x40
     ed9:	c3                   	ret    

00000eda <sbrk>:
SYSCALL(sbrk)
     eda:	b8 0c 00 00 00       	mov    $0xc,%eax
     edf:	cd 40                	int    $0x40
     ee1:	c3                   	ret    

00000ee2 <sleep>:
SYSCALL(sleep)
     ee2:	b8 0d 00 00 00       	mov    $0xd,%eax
     ee7:	cd 40                	int    $0x40
     ee9:	c3                   	ret    

00000eea <uptime>:
SYSCALL(uptime)
     eea:	b8 0e 00 00 00       	mov    $0xe,%eax
     eef:	cd 40                	int    $0x40
     ef1:	c3                   	ret    
     ef2:	66 90                	xchg   %ax,%ax
     ef4:	66 90                	xchg   %ax,%ax
     ef6:	66 90                	xchg   %ax,%ax
     ef8:	66 90                	xchg   %ax,%ax
     efa:	66 90                	xchg   %ax,%ax
     efc:	66 90                	xchg   %ax,%ax
     efe:	66 90                	xchg   %ax,%ax

00000f00 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     f00:	55                   	push   %ebp
     f01:	89 e5                	mov    %esp,%ebp
     f03:	57                   	push   %edi
     f04:	56                   	push   %esi
     f05:	53                   	push   %ebx
     f06:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     f09:	85 d2                	test   %edx,%edx
{
     f0b:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
     f0e:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
     f10:	79 76                	jns    f88 <printint+0x88>
     f12:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     f16:	74 70                	je     f88 <printint+0x88>
    x = -xx;
     f18:	f7 d8                	neg    %eax
    neg = 1;
     f1a:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     f21:	31 f6                	xor    %esi,%esi
     f23:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     f26:	eb 0a                	jmp    f32 <printint+0x32>
     f28:	90                   	nop
     f29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
     f30:	89 fe                	mov    %edi,%esi
     f32:	31 d2                	xor    %edx,%edx
     f34:	8d 7e 01             	lea    0x1(%esi),%edi
     f37:	f7 f1                	div    %ecx
     f39:	0f b6 92 90 15 00 00 	movzbl 0x1590(%edx),%edx
  }while((x /= base) != 0);
     f40:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
     f42:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
     f45:	75 e9                	jne    f30 <printint+0x30>
  if(neg)
     f47:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     f4a:	85 c0                	test   %eax,%eax
     f4c:	74 08                	je     f56 <printint+0x56>
    buf[i++] = '-';
     f4e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
     f53:	8d 7e 02             	lea    0x2(%esi),%edi
     f56:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
     f5a:	8b 7d c0             	mov    -0x40(%ebp),%edi
     f5d:	8d 76 00             	lea    0x0(%esi),%esi
     f60:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
     f63:	83 ec 04             	sub    $0x4,%esp
     f66:	83 ee 01             	sub    $0x1,%esi
     f69:	6a 01                	push   $0x1
     f6b:	53                   	push   %ebx
     f6c:	57                   	push   %edi
     f6d:	88 45 d7             	mov    %al,-0x29(%ebp)
     f70:	e8 fd fe ff ff       	call   e72 <write>

  while(--i >= 0)
     f75:	83 c4 10             	add    $0x10,%esp
     f78:	39 de                	cmp    %ebx,%esi
     f7a:	75 e4                	jne    f60 <printint+0x60>
    putc(fd, buf[i]);
}
     f7c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     f7f:	5b                   	pop    %ebx
     f80:	5e                   	pop    %esi
     f81:	5f                   	pop    %edi
     f82:	5d                   	pop    %ebp
     f83:	c3                   	ret    
     f84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     f88:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     f8f:	eb 90                	jmp    f21 <printint+0x21>
     f91:	eb 0d                	jmp    fa0 <printf>
     f93:	90                   	nop
     f94:	90                   	nop
     f95:	90                   	nop
     f96:	90                   	nop
     f97:	90                   	nop
     f98:	90                   	nop
     f99:	90                   	nop
     f9a:	90                   	nop
     f9b:	90                   	nop
     f9c:	90                   	nop
     f9d:	90                   	nop
     f9e:	90                   	nop
     f9f:	90                   	nop

00000fa0 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     fa0:	55                   	push   %ebp
     fa1:	89 e5                	mov    %esp,%ebp
     fa3:	57                   	push   %edi
     fa4:	56                   	push   %esi
     fa5:	53                   	push   %ebx
     fa6:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     fa9:	8b 75 0c             	mov    0xc(%ebp),%esi
     fac:	0f b6 1e             	movzbl (%esi),%ebx
     faf:	84 db                	test   %bl,%bl
     fb1:	0f 84 b3 00 00 00    	je     106a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
     fb7:	8d 45 10             	lea    0x10(%ebp),%eax
     fba:	83 c6 01             	add    $0x1,%esi
  state = 0;
     fbd:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
     fbf:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     fc2:	eb 2f                	jmp    ff3 <printf+0x53>
     fc4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     fc8:	83 f8 25             	cmp    $0x25,%eax
     fcb:	0f 84 a7 00 00 00    	je     1078 <printf+0xd8>
  write(fd, &c, 1);
     fd1:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     fd4:	83 ec 04             	sub    $0x4,%esp
     fd7:	88 5d e2             	mov    %bl,-0x1e(%ebp)
     fda:	6a 01                	push   $0x1
     fdc:	50                   	push   %eax
     fdd:	ff 75 08             	pushl  0x8(%ebp)
     fe0:	e8 8d fe ff ff       	call   e72 <write>
     fe5:	83 c4 10             	add    $0x10,%esp
     fe8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
     feb:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
     fef:	84 db                	test   %bl,%bl
     ff1:	74 77                	je     106a <printf+0xca>
    if(state == 0){
     ff3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
     ff5:	0f be cb             	movsbl %bl,%ecx
     ff8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     ffb:	74 cb                	je     fc8 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     ffd:	83 ff 25             	cmp    $0x25,%edi
    1000:	75 e6                	jne    fe8 <printf+0x48>
      if(c == 'd'){
    1002:	83 f8 64             	cmp    $0x64,%eax
    1005:	0f 84 05 01 00 00    	je     1110 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
    100b:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
    1011:	83 f9 70             	cmp    $0x70,%ecx
    1014:	74 72                	je     1088 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
    1016:	83 f8 73             	cmp    $0x73,%eax
    1019:	0f 84 99 00 00 00    	je     10b8 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
    101f:	83 f8 63             	cmp    $0x63,%eax
    1022:	0f 84 08 01 00 00    	je     1130 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
    1028:	83 f8 25             	cmp    $0x25,%eax
    102b:	0f 84 ef 00 00 00    	je     1120 <printf+0x180>
  write(fd, &c, 1);
    1031:	8d 45 e7             	lea    -0x19(%ebp),%eax
    1034:	83 ec 04             	sub    $0x4,%esp
    1037:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
    103b:	6a 01                	push   $0x1
    103d:	50                   	push   %eax
    103e:	ff 75 08             	pushl  0x8(%ebp)
    1041:	e8 2c fe ff ff       	call   e72 <write>
    1046:	83 c4 0c             	add    $0xc,%esp
    1049:	8d 45 e6             	lea    -0x1a(%ebp),%eax
    104c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
    104f:	6a 01                	push   $0x1
    1051:	50                   	push   %eax
    1052:	ff 75 08             	pushl  0x8(%ebp)
    1055:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
    1058:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
    105a:	e8 13 fe ff ff       	call   e72 <write>
  for(i = 0; fmt[i]; i++){
    105f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
    1063:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
    1066:	84 db                	test   %bl,%bl
    1068:	75 89                	jne    ff3 <printf+0x53>
    }
  }
}
    106a:	8d 65 f4             	lea    -0xc(%ebp),%esp
    106d:	5b                   	pop    %ebx
    106e:	5e                   	pop    %esi
    106f:	5f                   	pop    %edi
    1070:	5d                   	pop    %ebp
    1071:	c3                   	ret    
    1072:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
    1078:	bf 25 00 00 00       	mov    $0x25,%edi
    107d:	e9 66 ff ff ff       	jmp    fe8 <printf+0x48>
    1082:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
    1088:	83 ec 0c             	sub    $0xc,%esp
    108b:	b9 10 00 00 00       	mov    $0x10,%ecx
    1090:	6a 00                	push   $0x0
    1092:	8b 7d d4             	mov    -0x2c(%ebp),%edi
    1095:	8b 45 08             	mov    0x8(%ebp),%eax
    1098:	8b 17                	mov    (%edi),%edx
    109a:	e8 61 fe ff ff       	call   f00 <printint>
        ap++;
    109f:	89 f8                	mov    %edi,%eax
    10a1:	83 c4 10             	add    $0x10,%esp
      state = 0;
    10a4:	31 ff                	xor    %edi,%edi
        ap++;
    10a6:	83 c0 04             	add    $0x4,%eax
    10a9:	89 45 d4             	mov    %eax,-0x2c(%ebp)
    10ac:	e9 37 ff ff ff       	jmp    fe8 <printf+0x48>
    10b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
    10b8:	8b 45 d4             	mov    -0x2c(%ebp),%eax
    10bb:	8b 08                	mov    (%eax),%ecx
        ap++;
    10bd:	83 c0 04             	add    $0x4,%eax
    10c0:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
    10c3:	85 c9                	test   %ecx,%ecx
    10c5:	0f 84 8e 00 00 00    	je     1159 <printf+0x1b9>
        while(*s != 0){
    10cb:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
    10ce:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
    10d0:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
    10d2:	84 c0                	test   %al,%al
    10d4:	0f 84 0e ff ff ff    	je     fe8 <printf+0x48>
    10da:	89 75 d0             	mov    %esi,-0x30(%ebp)
    10dd:	89 de                	mov    %ebx,%esi
    10df:	8b 5d 08             	mov    0x8(%ebp),%ebx
    10e2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
    10e5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
    10e8:	83 ec 04             	sub    $0x4,%esp
          s++;
    10eb:	83 c6 01             	add    $0x1,%esi
    10ee:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
    10f1:	6a 01                	push   $0x1
    10f3:	57                   	push   %edi
    10f4:	53                   	push   %ebx
    10f5:	e8 78 fd ff ff       	call   e72 <write>
        while(*s != 0){
    10fa:	0f b6 06             	movzbl (%esi),%eax
    10fd:	83 c4 10             	add    $0x10,%esp
    1100:	84 c0                	test   %al,%al
    1102:	75 e4                	jne    10e8 <printf+0x148>
    1104:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
    1107:	31 ff                	xor    %edi,%edi
    1109:	e9 da fe ff ff       	jmp    fe8 <printf+0x48>
    110e:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
    1110:	83 ec 0c             	sub    $0xc,%esp
    1113:	b9 0a 00 00 00       	mov    $0xa,%ecx
    1118:	6a 01                	push   $0x1
    111a:	e9 73 ff ff ff       	jmp    1092 <printf+0xf2>
    111f:	90                   	nop
  write(fd, &c, 1);
    1120:	83 ec 04             	sub    $0x4,%esp
    1123:	88 5d e5             	mov    %bl,-0x1b(%ebp)
    1126:	8d 45 e5             	lea    -0x1b(%ebp),%eax
    1129:	6a 01                	push   $0x1
    112b:	e9 21 ff ff ff       	jmp    1051 <printf+0xb1>
        putc(fd, *ap);
    1130:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
    1133:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
    1136:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
    1138:	6a 01                	push   $0x1
        ap++;
    113a:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
    113d:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
    1140:	8d 45 e4             	lea    -0x1c(%ebp),%eax
    1143:	50                   	push   %eax
    1144:	ff 75 08             	pushl  0x8(%ebp)
    1147:	e8 26 fd ff ff       	call   e72 <write>
        ap++;
    114c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
    114f:	83 c4 10             	add    $0x10,%esp
      state = 0;
    1152:	31 ff                	xor    %edi,%edi
    1154:	e9 8f fe ff ff       	jmp    fe8 <printf+0x48>
          s = "(null)";
    1159:	bb 88 15 00 00       	mov    $0x1588,%ebx
        while(*s != 0){
    115e:	b8 28 00 00 00       	mov    $0x28,%eax
    1163:	e9 72 ff ff ff       	jmp    10da <printf+0x13a>
    1168:	66 90                	xchg   %ax,%ax
    116a:	66 90                	xchg   %ax,%ax
    116c:	66 90                	xchg   %ax,%ax
    116e:	66 90                	xchg   %ax,%ax

00001170 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
    1170:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1171:	a1 80 1a 00 00       	mov    0x1a80,%eax
{
    1176:	89 e5                	mov    %esp,%ebp
    1178:	57                   	push   %edi
    1179:	56                   	push   %esi
    117a:	53                   	push   %ebx
    117b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
    117e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
    1181:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    1188:	39 c8                	cmp    %ecx,%eax
    118a:	8b 10                	mov    (%eax),%edx
    118c:	73 32                	jae    11c0 <free+0x50>
    118e:	39 d1                	cmp    %edx,%ecx
    1190:	72 04                	jb     1196 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    1192:	39 d0                	cmp    %edx,%eax
    1194:	72 32                	jb     11c8 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
    1196:	8b 73 fc             	mov    -0x4(%ebx),%esi
    1199:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
    119c:	39 fa                	cmp    %edi,%edx
    119e:	74 30                	je     11d0 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
    11a0:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    11a3:	8b 50 04             	mov    0x4(%eax),%edx
    11a6:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    11a9:	39 f1                	cmp    %esi,%ecx
    11ab:	74 3a                	je     11e7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
    11ad:	89 08                	mov    %ecx,(%eax)
  freep = p;
    11af:	a3 80 1a 00 00       	mov    %eax,0x1a80
}
    11b4:	5b                   	pop    %ebx
    11b5:	5e                   	pop    %esi
    11b6:	5f                   	pop    %edi
    11b7:	5d                   	pop    %ebp
    11b8:	c3                   	ret    
    11b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
    11c0:	39 d0                	cmp    %edx,%eax
    11c2:	72 04                	jb     11c8 <free+0x58>
    11c4:	39 d1                	cmp    %edx,%ecx
    11c6:	72 ce                	jb     1196 <free+0x26>
{
    11c8:	89 d0                	mov    %edx,%eax
    11ca:	eb bc                	jmp    1188 <free+0x18>
    11cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
    11d0:	03 72 04             	add    0x4(%edx),%esi
    11d3:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
    11d6:	8b 10                	mov    (%eax),%edx
    11d8:	8b 12                	mov    (%edx),%edx
    11da:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
    11dd:	8b 50 04             	mov    0x4(%eax),%edx
    11e0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
    11e3:	39 f1                	cmp    %esi,%ecx
    11e5:	75 c6                	jne    11ad <free+0x3d>
    p->s.size += bp->s.size;
    11e7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
    11ea:	a3 80 1a 00 00       	mov    %eax,0x1a80
    p->s.size += bp->s.size;
    11ef:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
    11f2:	8b 53 f8             	mov    -0x8(%ebx),%edx
    11f5:	89 10                	mov    %edx,(%eax)
}
    11f7:	5b                   	pop    %ebx
    11f8:	5e                   	pop    %esi
    11f9:	5f                   	pop    %edi
    11fa:	5d                   	pop    %ebp
    11fb:	c3                   	ret    
    11fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00001200 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
    1200:	55                   	push   %ebp
    1201:	89 e5                	mov    %esp,%ebp
    1203:	57                   	push   %edi
    1204:	56                   	push   %esi
    1205:	53                   	push   %ebx
    1206:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1209:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
    120c:	8b 15 80 1a 00 00    	mov    0x1a80,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
    1212:	8d 78 07             	lea    0x7(%eax),%edi
    1215:	c1 ef 03             	shr    $0x3,%edi
    1218:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
    121b:	85 d2                	test   %edx,%edx
    121d:	0f 84 9d 00 00 00    	je     12c0 <malloc+0xc0>
    1223:	8b 02                	mov    (%edx),%eax
    1225:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
    1228:	39 cf                	cmp    %ecx,%edi
    122a:	76 6c                	jbe    1298 <malloc+0x98>
    122c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
    1232:	bb 00 10 00 00       	mov    $0x1000,%ebx
    1237:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
    123a:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1241:	eb 0e                	jmp    1251 <malloc+0x51>
    1243:	90                   	nop
    1244:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1248:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    124a:	8b 48 04             	mov    0x4(%eax),%ecx
    124d:	39 f9                	cmp    %edi,%ecx
    124f:	73 47                	jae    1298 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1251:	39 05 80 1a 00 00    	cmp    %eax,0x1a80
    1257:	89 c2                	mov    %eax,%edx
    1259:	75 ed                	jne    1248 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    125b:	83 ec 0c             	sub    $0xc,%esp
    125e:	56                   	push   %esi
    125f:	e8 76 fc ff ff       	call   eda <sbrk>
  if(p == (char*)-1)
    1264:	83 c4 10             	add    $0x10,%esp
    1267:	83 f8 ff             	cmp    $0xffffffff,%eax
    126a:	74 1c                	je     1288 <malloc+0x88>
  hp->s.size = nu;
    126c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    126f:	83 ec 0c             	sub    $0xc,%esp
    1272:	83 c0 08             	add    $0x8,%eax
    1275:	50                   	push   %eax
    1276:	e8 f5 fe ff ff       	call   1170 <free>
  return freep;
    127b:	8b 15 80 1a 00 00    	mov    0x1a80,%edx
      if((p = morecore(nunits)) == 0)
    1281:	83 c4 10             	add    $0x10,%esp
    1284:	85 d2                	test   %edx,%edx
    1286:	75 c0                	jne    1248 <malloc+0x48>
        return 0;
  }
}
    1288:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    128b:	31 c0                	xor    %eax,%eax
}
    128d:	5b                   	pop    %ebx
    128e:	5e                   	pop    %esi
    128f:	5f                   	pop    %edi
    1290:	5d                   	pop    %ebp
    1291:	c3                   	ret    
    1292:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1298:	39 cf                	cmp    %ecx,%edi
    129a:	74 54                	je     12f0 <malloc+0xf0>
        p->s.size -= nunits;
    129c:	29 f9                	sub    %edi,%ecx
    129e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    12a1:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    12a4:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    12a7:	89 15 80 1a 00 00    	mov    %edx,0x1a80
}
    12ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    12b0:	83 c0 08             	add    $0x8,%eax
}
    12b3:	5b                   	pop    %ebx
    12b4:	5e                   	pop    %esi
    12b5:	5f                   	pop    %edi
    12b6:	5d                   	pop    %ebp
    12b7:	c3                   	ret    
    12b8:	90                   	nop
    12b9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    12c0:	c7 05 80 1a 00 00 84 	movl   $0x1a84,0x1a80
    12c7:	1a 00 00 
    12ca:	c7 05 84 1a 00 00 84 	movl   $0x1a84,0x1a84
    12d1:	1a 00 00 
    base.s.size = 0;
    12d4:	b8 84 1a 00 00       	mov    $0x1a84,%eax
    12d9:	c7 05 88 1a 00 00 00 	movl   $0x0,0x1a88
    12e0:	00 00 00 
    12e3:	e9 44 ff ff ff       	jmp    122c <malloc+0x2c>
    12e8:	90                   	nop
    12e9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    12f0:	8b 08                	mov    (%eax),%ecx
    12f2:	89 0a                	mov    %ecx,(%edx)
    12f4:	eb b1                	jmp    12a7 <malloc+0xa7>
