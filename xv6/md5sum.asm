
_md5sum:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "fs.h"
#include "md5.h"

int
main(int argc, char *argv[])
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
  char result[100];
  char md5[argc*2];
  memset(md5, 0,strlen(result));
      11:	8d 75 84             	lea    -0x7c(%ebp),%esi
{
      14:	83 ec 78             	sub    $0x78,%esp
      17:	8b 01                	mov    (%ecx),%eax
      19:	8b 79 04             	mov    0x4(%ecx),%edi
  char md5[argc*2];
      1c:	8d 44 00 0f          	lea    0xf(%eax,%eax,1),%eax
      20:	83 e0 f0             	and    $0xfffffff0,%eax
      23:	29 c4                	sub    %eax,%esp
      25:	89 e3                	mov    %esp,%ebx
  memset(md5, 0,strlen(result));
      27:	83 ec 0c             	sub    $0xc,%esp
      2a:	56                   	push   %esi
      2b:	e8 10 0a 00 00       	call   a40 <strlen>
      30:	83 c4 0c             	add    $0xc,%esp
      33:	50                   	push   %eax
      34:	6a 00                	push   $0x0
      36:	53                   	push   %ebx
      37:	e8 34 0a 00 00       	call   a70 <memset>
  printf(1, "%s\n",md5);
      3c:	83 c4 0c             	add    $0xc,%esp
      3f:	53                   	push   %ebx
      40:	68 b8 10 00 00       	push   $0x10b8
      45:	6a 01                	push   $0x1
      47:	e8 14 0d 00 00       	call   d60 <printf>
  //       i++; 
  //       j++; 
  //   } 
  //   md5[j] = '\0'; 
  // }
  printf(1, "%s\n",md5);
      4c:	83 c4 0c             	add    $0xc,%esp
      4f:	53                   	push   %ebx
      50:	68 b8 10 00 00       	push   $0x10b8
      55:	6a 01                	push   $0x1
      57:	e8 04 0d 00 00       	call   d60 <printf>
  getmd5(argv[1],strlen(argv[1]),result);
      5c:	58                   	pop    %eax
      5d:	ff 77 04             	pushl  0x4(%edi)
      60:	e8 db 09 00 00       	call   a40 <strlen>
      65:	83 c4 0c             	add    $0xc,%esp
      68:	56                   	push   %esi
      69:	50                   	push   %eax
      6a:	ff 77 04             	pushl  0x4(%edi)
      6d:	e8 ae 08 00 00       	call   920 <getmd5>
  printf(1, "%s\n",result);
      72:	83 c4 0c             	add    $0xc,%esp
      75:	56                   	push   %esi
      76:	68 b8 10 00 00       	push   $0x10b8
      7b:	6a 01                	push   $0x1
      7d:	e8 de 0c 00 00       	call   d60 <printf>
  printf(1, "%s\n",md5);
      82:	83 c4 0c             	add    $0xc,%esp
      85:	53                   	push   %ebx
      86:	68 b8 10 00 00       	push   $0x10b8
      8b:	6a 01                	push   $0x1
      8d:	e8 ce 0c 00 00       	call   d60 <printf>
  exit();
      92:	e8 7b 0b 00 00       	call   c12 <exit>
      97:	66 90                	xchg   %ax,%ax
      99:	66 90                	xchg   %ax,%ax
      9b:	66 90                	xchg   %ax,%ax
      9d:	66 90                	xchg   %ax,%ax
      9f:	90                   	nop

000000a0 <Transform>:
/* Basic MD5 step. Transform buf based on in.
 */
static void Transform (buf, in)
UINT4 *buf;
UINT4 *in;
{
      a0:	55                   	push   %ebp
      a1:	89 e5                	mov    %esp,%ebp
      a3:	57                   	push   %edi
      a4:	56                   	push   %esi
      a5:	53                   	push   %ebx
      a6:	83 ec 58             	sub    $0x58,%esp
  UINT4 a = buf[0], b = buf[1], c = buf[2], d = buf[3];
      a9:	8b 48 0c             	mov    0xc(%eax),%ecx
      ac:	8b 78 04             	mov    0x4(%eax),%edi
      af:	8b 58 08             	mov    0x8(%eax),%ebx
      b2:	8b 30                	mov    (%eax),%esi
      b4:	89 45 a8             	mov    %eax,-0x58(%ebp)
      b7:	89 c8                	mov    %ecx,%eax
  /* Round 1 */
#define S11 7
#define S12 12
#define S13 17
#define S14 22
  FF ( a, b, c, d, in[ 0], S11, 3614090360); /* 1 */
      b9:	8b 0a                	mov    (%edx),%ecx
      bb:	89 7d a0             	mov    %edi,-0x60(%ebp)
      be:	89 75 a4             	mov    %esi,-0x5c(%ebp)
      c1:	89 45 ac             	mov    %eax,-0x54(%ebp)
      c4:	89 5d 9c             	mov    %ebx,-0x64(%ebp)
      c7:	89 4d e8             	mov    %ecx,-0x18(%ebp)
      ca:	8d 8c 31 78 a4 6a d7 	lea    -0x28955b88(%ecx,%esi,1),%ecx
      d1:	89 de                	mov    %ebx,%esi
      d3:	31 c6                	xor    %eax,%esi
      d5:	89 f0                	mov    %esi,%eax
      d7:	8b 75 ac             	mov    -0x54(%ebp),%esi
      da:	21 f8                	and    %edi,%eax
      dc:	31 f0                	xor    %esi,%eax
      de:	01 c8                	add    %ecx,%eax
  FF ( d, a, b, c, in[ 1], S12, 3905402710); /* 2 */
      e0:	8b 4a 04             	mov    0x4(%edx),%ecx
  FF ( a, b, c, d, in[ 0], S11, 3614090360); /* 1 */
      e3:	c1 c0 07             	rol    $0x7,%eax
      e6:	01 f8                	add    %edi,%eax
      e8:	89 4d e4             	mov    %ecx,-0x1c(%ebp)
      eb:	8d 8c 31 56 b7 c7 e8 	lea    -0x173848aa(%ecx,%esi,1),%ecx
  FF ( d, a, b, c, in[ 1], S12, 3905402710); /* 2 */
      f2:	89 fe                	mov    %edi,%esi
      f4:	31 de                	xor    %ebx,%esi
      f6:	21 c6                	and    %eax,%esi
      f8:	31 de                	xor    %ebx,%esi
      fa:	01 ce                	add    %ecx,%esi
  FF ( c, d, a, b, in[ 2], S13,  606105819); /* 3 */
      fc:	8b 4a 08             	mov    0x8(%edx),%ecx
  FF ( d, a, b, c, in[ 1], S12, 3905402710); /* 2 */
      ff:	c1 c6 0c             	rol    $0xc,%esi
     102:	01 c6                	add    %eax,%esi
     104:	89 4d e0             	mov    %ecx,-0x20(%ebp)
     107:	8d 9c 19 db 70 20 24 	lea    0x242070db(%ecx,%ebx,1),%ebx
  FF ( c, d, a, b, in[ 2], S13,  606105819); /* 3 */
     10e:	89 f9                	mov    %edi,%ecx
     110:	31 c1                	xor    %eax,%ecx
     112:	21 f1                	and    %esi,%ecx
     114:	31 f9                	xor    %edi,%ecx
     116:	01 d9                	add    %ebx,%ecx
  FF ( b, c, d, a, in[ 3], S14, 3250441966); /* 4 */
     118:	8b 5a 0c             	mov    0xc(%edx),%ebx
  FF ( c, d, a, b, in[ 2], S13,  606105819); /* 3 */
     11b:	c1 c9 0f             	ror    $0xf,%ecx
     11e:	01 f1                	add    %esi,%ecx
     120:	89 5d dc             	mov    %ebx,-0x24(%ebp)
     123:	8d bc 3b ee ce bd c1 	lea    -0x3e423112(%ebx,%edi,1),%edi
  FF ( b, c, d, a, in[ 3], S14, 3250441966); /* 4 */
     12a:	89 c3                	mov    %eax,%ebx
     12c:	31 f3                	xor    %esi,%ebx
     12e:	21 cb                	and    %ecx,%ebx
     130:	31 c3                	xor    %eax,%ebx
     132:	01 fb                	add    %edi,%ebx
  FF ( a, b, c, d, in[ 4], S11, 4118548399); /* 5 */
     134:	8b 7a 10             	mov    0x10(%edx),%edi
  FF ( b, c, d, a, in[ 3], S14, 3250441966); /* 4 */
     137:	c1 cb 0a             	ror    $0xa,%ebx
     13a:	01 cb                	add    %ecx,%ebx
     13c:	89 7d d8             	mov    %edi,-0x28(%ebp)
     13f:	8d bc 07 af 0f 7c f5 	lea    -0xa83f051(%edi,%eax,1),%edi
  FF ( a, b, c, d, in[ 4], S11, 4118548399); /* 5 */
     146:	89 f0                	mov    %esi,%eax
     148:	31 c8                	xor    %ecx,%eax
     14a:	21 d8                	and    %ebx,%eax
     14c:	31 f0                	xor    %esi,%eax
     14e:	01 f8                	add    %edi,%eax
  FF ( d, a, b, c, in[ 5], S12, 1200080426); /* 6 */
     150:	8b 7a 14             	mov    0x14(%edx),%edi
  FF ( a, b, c, d, in[ 4], S11, 4118548399); /* 5 */
     153:	c1 c0 07             	rol    $0x7,%eax
     156:	01 d8                	add    %ebx,%eax
     158:	89 7d d4             	mov    %edi,-0x2c(%ebp)
     15b:	8d bc 37 2a c6 87 47 	lea    0x4787c62a(%edi,%esi,1),%edi
  FF ( d, a, b, c, in[ 5], S12, 1200080426); /* 6 */
     162:	89 ce                	mov    %ecx,%esi
     164:	31 de                	xor    %ebx,%esi
     166:	21 c6                	and    %eax,%esi
     168:	31 ce                	xor    %ecx,%esi
     16a:	01 fe                	add    %edi,%esi
  FF ( c, d, a, b, in[ 6], S13, 2821735955); /* 7 */
     16c:	8b 7a 18             	mov    0x18(%edx),%edi
  FF ( d, a, b, c, in[ 5], S12, 1200080426); /* 6 */
     16f:	c1 c6 0c             	rol    $0xc,%esi
     172:	01 c6                	add    %eax,%esi
     174:	89 7d d0             	mov    %edi,-0x30(%ebp)
     177:	8d bc 0f 13 46 30 a8 	lea    -0x57cfb9ed(%edi,%ecx,1),%edi
  FF ( c, d, a, b, in[ 6], S13, 2821735955); /* 7 */
     17e:	89 d9                	mov    %ebx,%ecx
     180:	31 c1                	xor    %eax,%ecx
     182:	21 f1                	and    %esi,%ecx
     184:	31 d9                	xor    %ebx,%ecx
     186:	01 f9                	add    %edi,%ecx
  FF ( b, c, d, a, in[ 7], S14, 4249261313); /* 8 */
     188:	8b 7a 1c             	mov    0x1c(%edx),%edi
  FF ( c, d, a, b, in[ 6], S13, 2821735955); /* 7 */
     18b:	c1 c9 0f             	ror    $0xf,%ecx
     18e:	01 f1                	add    %esi,%ecx
     190:	89 7d cc             	mov    %edi,-0x34(%ebp)
     193:	8d bc 1f 01 95 46 fd 	lea    -0x2b96aff(%edi,%ebx,1),%edi
  FF ( b, c, d, a, in[ 7], S14, 4249261313); /* 8 */
     19a:	89 c3                	mov    %eax,%ebx
     19c:	31 f3                	xor    %esi,%ebx
     19e:	21 cb                	and    %ecx,%ebx
     1a0:	31 c3                	xor    %eax,%ebx
     1a2:	01 fb                	add    %edi,%ebx
  FF ( a, b, c, d, in[ 8], S11, 1770035416); /* 9 */
     1a4:	8b 7a 20             	mov    0x20(%edx),%edi
  FF ( b, c, d, a, in[ 7], S14, 4249261313); /* 8 */
     1a7:	c1 cb 0a             	ror    $0xa,%ebx
     1aa:	01 cb                	add    %ecx,%ebx
     1ac:	89 7d c8             	mov    %edi,-0x38(%ebp)
     1af:	8d bc 07 d8 98 80 69 	lea    0x698098d8(%edi,%eax,1),%edi
  FF ( a, b, c, d, in[ 8], S11, 1770035416); /* 9 */
     1b6:	89 f0                	mov    %esi,%eax
     1b8:	31 c8                	xor    %ecx,%eax
     1ba:	21 d8                	and    %ebx,%eax
     1bc:	31 f0                	xor    %esi,%eax
     1be:	01 f8                	add    %edi,%eax
  FF ( d, a, b, c, in[ 9], S12, 2336552879); /* 10 */
     1c0:	8b 7a 24             	mov    0x24(%edx),%edi
  FF ( a, b, c, d, in[ 8], S11, 1770035416); /* 9 */
     1c3:	c1 c0 07             	rol    $0x7,%eax
     1c6:	01 d8                	add    %ebx,%eax
     1c8:	89 7d c4             	mov    %edi,-0x3c(%ebp)
     1cb:	8d bc 37 af f7 44 8b 	lea    -0x74bb0851(%edi,%esi,1),%edi
  FF ( d, a, b, c, in[ 9], S12, 2336552879); /* 10 */
     1d2:	89 ce                	mov    %ecx,%esi
     1d4:	31 de                	xor    %ebx,%esi
     1d6:	21 c6                	and    %eax,%esi
     1d8:	31 ce                	xor    %ecx,%esi
     1da:	01 fe                	add    %edi,%esi
  FF ( c, d, a, b, in[10], S13, 4294925233); /* 11 */
     1dc:	8b 7a 28             	mov    0x28(%edx),%edi
  FF ( d, a, b, c, in[ 9], S12, 2336552879); /* 10 */
     1df:	c1 c6 0c             	rol    $0xc,%esi
     1e2:	01 c6                	add    %eax,%esi
     1e4:	89 7d c0             	mov    %edi,-0x40(%ebp)
     1e7:	8d bc 0f b1 5b ff ff 	lea    -0xa44f(%edi,%ecx,1),%edi
  FF ( c, d, a, b, in[10], S13, 4294925233); /* 11 */
     1ee:	89 d9                	mov    %ebx,%ecx
     1f0:	31 c1                	xor    %eax,%ecx
     1f2:	21 f1                	and    %esi,%ecx
     1f4:	31 d9                	xor    %ebx,%ecx
     1f6:	01 f9                	add    %edi,%ecx
  FF ( b, c, d, a, in[11], S14, 2304563134); /* 12 */
     1f8:	8b 7a 2c             	mov    0x2c(%edx),%edi
  FF ( c, d, a, b, in[10], S13, 4294925233); /* 11 */
     1fb:	c1 c9 0f             	ror    $0xf,%ecx
     1fe:	01 f1                	add    %esi,%ecx
     200:	89 7d bc             	mov    %edi,-0x44(%ebp)
     203:	8d bc 1f be d7 5c 89 	lea    -0x76a32842(%edi,%ebx,1),%edi
  FF ( b, c, d, a, in[11], S14, 2304563134); /* 12 */
     20a:	89 c3                	mov    %eax,%ebx
     20c:	31 f3                	xor    %esi,%ebx
     20e:	21 cb                	and    %ecx,%ebx
     210:	31 c3                	xor    %eax,%ebx
     212:	01 fb                	add    %edi,%ebx
  FF ( a, b, c, d, in[12], S11, 1804603682); /* 13 */
     214:	8b 7a 30             	mov    0x30(%edx),%edi
  FF ( b, c, d, a, in[11], S14, 2304563134); /* 12 */
     217:	c1 cb 0a             	ror    $0xa,%ebx
     21a:	01 cb                	add    %ecx,%ebx
     21c:	89 7d b8             	mov    %edi,-0x48(%ebp)
     21f:	8d bc 07 22 11 90 6b 	lea    0x6b901122(%edi,%eax,1),%edi
  FF ( a, b, c, d, in[12], S11, 1804603682); /* 13 */
     226:	89 f0                	mov    %esi,%eax
     228:	31 c8                	xor    %ecx,%eax
     22a:	21 d8                	and    %ebx,%eax
     22c:	31 f0                	xor    %esi,%eax
     22e:	01 f8                	add    %edi,%eax
  FF ( d, a, b, c, in[13], S12, 4254626195); /* 14 */
     230:	8b 7a 34             	mov    0x34(%edx),%edi
  FF ( a, b, c, d, in[12], S11, 1804603682); /* 13 */
     233:	c1 c0 07             	rol    $0x7,%eax
     236:	01 d8                	add    %ebx,%eax
     238:	89 7d b4             	mov    %edi,-0x4c(%ebp)
     23b:	8d bc 37 93 71 98 fd 	lea    -0x2678e6d(%edi,%esi,1),%edi
  FF ( d, a, b, c, in[13], S12, 4254626195); /* 14 */
     242:	89 ce                	mov    %ecx,%esi
     244:	31 de                	xor    %ebx,%esi
     246:	21 c6                	and    %eax,%esi
     248:	31 ce                	xor    %ecx,%esi
     24a:	01 fe                	add    %edi,%esi
  FF ( c, d, a, b, in[14], S13, 2792965006); /* 15 */
     24c:	8b 7a 38             	mov    0x38(%edx),%edi
  FF ( d, a, b, c, in[13], S12, 4254626195); /* 14 */
     24f:	c1 c6 0c             	rol    $0xc,%esi
     252:	01 c6                	add    %eax,%esi
     254:	89 7d b0             	mov    %edi,-0x50(%ebp)
     257:	8d bc 0f 8e 43 79 a6 	lea    -0x5986bc72(%edi,%ecx,1),%edi
  FF ( c, d, a, b, in[14], S13, 2792965006); /* 15 */
     25e:	89 d9                	mov    %ebx,%ecx
     260:	31 c1                	xor    %eax,%ecx
     262:	21 f1                	and    %esi,%ecx
     264:	31 d9                	xor    %ebx,%ecx
     266:	01 f9                	add    %edi,%ecx
  FF ( b, c, d, a, in[15], S14, 1236535329); /* 16 */
     268:	8b 7a 3c             	mov    0x3c(%edx),%edi
     26b:	89 c2                	mov    %eax,%edx
  FF ( c, d, a, b, in[14], S13, 2792965006); /* 15 */
     26d:	c1 c9 0f             	ror    $0xf,%ecx
  FF ( b, c, d, a, in[15], S14, 1236535329); /* 16 */
     270:	31 f2                	xor    %esi,%edx
  FF ( c, d, a, b, in[14], S13, 2792965006); /* 15 */
     272:	01 f1                	add    %esi,%ecx
     274:	8d 9c 1f 21 08 b4 49 	lea    0x49b40821(%edi,%ebx,1),%ebx
  FF ( b, c, d, a, in[15], S14, 1236535329); /* 16 */
     27b:	21 ca                	and    %ecx,%edx
     27d:	31 c2                	xor    %eax,%edx
     27f:	01 da                	add    %ebx,%edx
     281:	8b 5d e4             	mov    -0x1c(%ebp),%ebx
     284:	c1 ca 0a             	ror    $0xa,%edx
     287:	01 ca                	add    %ecx,%edx
     289:	8d 9c 03 62 25 1e f6 	lea    -0x9e1da9e(%ebx,%eax,1),%ebx
  /* Round 2 */
#define S21 5
#define S22 9
#define S23 14
#define S24 20
  GG ( a, b, c, d, in[ 1], S21, 4129170786); /* 17 */
     290:	89 c8                	mov    %ecx,%eax
     292:	31 d0                	xor    %edx,%eax
     294:	21 f0                	and    %esi,%eax
     296:	31 c8                	xor    %ecx,%eax
     298:	01 d8                	add    %ebx,%eax
     29a:	8b 5d d0             	mov    -0x30(%ebp),%ebx
     29d:	c1 c0 05             	rol    $0x5,%eax
     2a0:	01 d0                	add    %edx,%eax
     2a2:	8d b4 33 40 b3 40 c0 	lea    -0x3fbf4cc0(%ebx,%esi,1),%esi
  GG ( d, a, b, c, in[ 6], S22, 3225465664); /* 18 */
     2a9:	89 d3                	mov    %edx,%ebx
     2ab:	31 c3                	xor    %eax,%ebx
     2ad:	21 cb                	and    %ecx,%ebx
     2af:	31 d3                	xor    %edx,%ebx
     2b1:	01 f3                	add    %esi,%ebx
     2b3:	8b 75 bc             	mov    -0x44(%ebp),%esi
     2b6:	c1 c3 09             	rol    $0x9,%ebx
     2b9:	01 c3                	add    %eax,%ebx
     2bb:	8d b4 0e 51 5a 5e 26 	lea    0x265e5a51(%esi,%ecx,1),%esi
  GG ( c, d, a, b, in[11], S23,  643717713); /* 19 */
     2c2:	89 c1                	mov    %eax,%ecx
     2c4:	31 d9                	xor    %ebx,%ecx
     2c6:	21 d1                	and    %edx,%ecx
     2c8:	31 c1                	xor    %eax,%ecx
     2ca:	01 f1                	add    %esi,%ecx
     2cc:	8b 75 e8             	mov    -0x18(%ebp),%esi
     2cf:	c1 c1 0e             	rol    $0xe,%ecx
     2d2:	01 d9                	add    %ebx,%ecx
     2d4:	8d b4 16 aa c7 b6 e9 	lea    -0x16493856(%esi,%edx,1),%esi
  GG ( b, c, d, a, in[ 0], S24, 3921069994); /* 20 */
     2db:	89 da                	mov    %ebx,%edx
     2dd:	31 ca                	xor    %ecx,%edx
     2df:	21 c2                	and    %eax,%edx
     2e1:	31 da                	xor    %ebx,%edx
     2e3:	01 f2                	add    %esi,%edx
     2e5:	8b 75 d4             	mov    -0x2c(%ebp),%esi
     2e8:	c1 ca 0c             	ror    $0xc,%edx
     2eb:	01 ca                	add    %ecx,%edx
     2ed:	8d b4 06 5d 10 2f d6 	lea    -0x29d0efa3(%esi,%eax,1),%esi
  GG ( a, b, c, d, in[ 5], S21, 3593408605); /* 21 */
     2f4:	89 c8                	mov    %ecx,%eax
     2f6:	31 d0                	xor    %edx,%eax
     2f8:	21 d8                	and    %ebx,%eax
     2fa:	31 c8                	xor    %ecx,%eax
     2fc:	01 f0                	add    %esi,%eax
     2fe:	8b 75 c0             	mov    -0x40(%ebp),%esi
     301:	c1 c0 05             	rol    $0x5,%eax
     304:	01 d0                	add    %edx,%eax
     306:	8d b4 1e 53 14 44 02 	lea    0x2441453(%esi,%ebx,1),%esi
  GG ( d, a, b, c, in[10], S22,   38016083); /* 22 */
     30d:	89 d3                	mov    %edx,%ebx
     30f:	31 c3                	xor    %eax,%ebx
     311:	21 cb                	and    %ecx,%ebx
     313:	31 d3                	xor    %edx,%ebx
     315:	01 f3                	add    %esi,%ebx
     317:	8d b4 0f 81 e6 a1 d8 	lea    -0x275e197f(%edi,%ecx,1),%esi
  GG ( c, d, a, b, in[15], S23, 3634488961); /* 23 */
     31e:	89 c1                	mov    %eax,%ecx
  GG ( d, a, b, c, in[10], S22,   38016083); /* 22 */
     320:	c1 c3 09             	rol    $0x9,%ebx
     323:	01 c3                	add    %eax,%ebx
  GG ( c, d, a, b, in[15], S23, 3634488961); /* 23 */
     325:	31 d9                	xor    %ebx,%ecx
     327:	21 d1                	and    %edx,%ecx
     329:	31 c1                	xor    %eax,%ecx
     32b:	01 f1                	add    %esi,%ecx
     32d:	8b 75 d8             	mov    -0x28(%ebp),%esi
     330:	c1 c1 0e             	rol    $0xe,%ecx
     333:	01 d9                	add    %ebx,%ecx
     335:	8d b4 16 c8 fb d3 e7 	lea    -0x182c0438(%esi,%edx,1),%esi
  GG ( b, c, d, a, in[ 4], S24, 3889429448); /* 24 */
     33c:	89 da                	mov    %ebx,%edx
     33e:	31 ca                	xor    %ecx,%edx
     340:	21 c2                	and    %eax,%edx
     342:	31 da                	xor    %ebx,%edx
     344:	01 f2                	add    %esi,%edx
     346:	8b 75 c4             	mov    -0x3c(%ebp),%esi
     349:	c1 ca 0c             	ror    $0xc,%edx
     34c:	01 ca                	add    %ecx,%edx
     34e:	8d b4 06 e6 cd e1 21 	lea    0x21e1cde6(%esi,%eax,1),%esi
  GG ( a, b, c, d, in[ 9], S21,  568446438); /* 25 */
     355:	89 c8                	mov    %ecx,%eax
     357:	31 d0                	xor    %edx,%eax
     359:	21 d8                	and    %ebx,%eax
     35b:	31 c8                	xor    %ecx,%eax
     35d:	01 f0                	add    %esi,%eax
     35f:	8b 75 b0             	mov    -0x50(%ebp),%esi
     362:	c1 c0 05             	rol    $0x5,%eax
     365:	01 d0                	add    %edx,%eax
     367:	8d b4 1e d6 07 37 c3 	lea    -0x3cc8f82a(%esi,%ebx,1),%esi
  GG ( d, a, b, c, in[14], S22, 3275163606); /* 26 */
     36e:	89 d3                	mov    %edx,%ebx
     370:	31 c3                	xor    %eax,%ebx
     372:	21 cb                	and    %ecx,%ebx
     374:	31 d3                	xor    %edx,%ebx
     376:	01 f3                	add    %esi,%ebx
     378:	8b 75 dc             	mov    -0x24(%ebp),%esi
     37b:	c1 c3 09             	rol    $0x9,%ebx
     37e:	01 c3                	add    %eax,%ebx
     380:	8d b4 0e 87 0d d5 f4 	lea    -0xb2af279(%esi,%ecx,1),%esi
  GG ( c, d, a, b, in[ 3], S23, 4107603335); /* 27 */
     387:	89 c1                	mov    %eax,%ecx
     389:	31 d9                	xor    %ebx,%ecx
     38b:	21 d1                	and    %edx,%ecx
     38d:	31 c1                	xor    %eax,%ecx
     38f:	01 f1                	add    %esi,%ecx
     391:	8b 75 c8             	mov    -0x38(%ebp),%esi
     394:	c1 c1 0e             	rol    $0xe,%ecx
     397:	01 d9                	add    %ebx,%ecx
     399:	8d b4 16 ed 14 5a 45 	lea    0x455a14ed(%esi,%edx,1),%esi
  GG ( b, c, d, a, in[ 8], S24, 1163531501); /* 28 */
     3a0:	89 da                	mov    %ebx,%edx
     3a2:	31 ca                	xor    %ecx,%edx
     3a4:	21 c2                	and    %eax,%edx
     3a6:	31 da                	xor    %ebx,%edx
     3a8:	01 f2                	add    %esi,%edx
     3aa:	8b 75 b4             	mov    -0x4c(%ebp),%esi
     3ad:	c1 ca 0c             	ror    $0xc,%edx
     3b0:	01 ca                	add    %ecx,%edx
     3b2:	8d b4 06 05 e9 e3 a9 	lea    -0x561c16fb(%esi,%eax,1),%esi
  GG ( a, b, c, d, in[13], S21, 2850285829); /* 29 */
     3b9:	89 c8                	mov    %ecx,%eax
     3bb:	31 d0                	xor    %edx,%eax
     3bd:	21 d8                	and    %ebx,%eax
     3bf:	31 c8                	xor    %ecx,%eax
     3c1:	01 f0                	add    %esi,%eax
     3c3:	8b 75 e0             	mov    -0x20(%ebp),%esi
     3c6:	c1 c0 05             	rol    $0x5,%eax
     3c9:	01 d0                	add    %edx,%eax
     3cb:	89 45 f0             	mov    %eax,-0x10(%ebp)
  GG ( d, a, b, c, in[ 2], S22, 4243563512); /* 30 */
     3ce:	8b 45 f0             	mov    -0x10(%ebp),%eax
     3d1:	8d b4 1e f8 a3 ef fc 	lea    -0x3105c08(%esi,%ebx,1),%esi
     3d8:	31 d0                	xor    %edx,%eax
     3da:	89 c3                	mov    %eax,%ebx
     3dc:	8b 45 f0             	mov    -0x10(%ebp),%eax
     3df:	21 cb                	and    %ecx,%ebx
     3e1:	31 d3                	xor    %edx,%ebx
     3e3:	01 f3                	add    %esi,%ebx
     3e5:	8b 75 cc             	mov    -0x34(%ebp),%esi
     3e8:	c1 c3 09             	rol    $0x9,%ebx
     3eb:	01 c3                	add    %eax,%ebx
  GG ( c, d, a, b, in[ 7], S23, 1735328473); /* 31 */
     3ed:	31 d8                	xor    %ebx,%eax
     3ef:	8d 8c 0e d9 02 6f 67 	lea    0x676f02d9(%esi,%ecx,1),%ecx
     3f6:	89 c6                	mov    %eax,%esi
     3f8:	89 d8                	mov    %ebx,%eax
     3fa:	21 d6                	and    %edx,%esi
     3fc:	33 75 f0             	xor    -0x10(%ebp),%esi
     3ff:	01 ce                	add    %ecx,%esi
     401:	c1 c6 0e             	rol    $0xe,%esi
     404:	01 de                	add    %ebx,%esi
     406:	31 f0                	xor    %esi,%eax
     408:	89 c1                	mov    %eax,%ecx
     40a:	8b 45 b8             	mov    -0x48(%ebp),%eax
     40d:	8d 94 10 8a 4c 2a 8d 	lea    -0x72d5b376(%eax,%edx,1),%edx
     414:	89 d0                	mov    %edx,%eax
  GG ( b, c, d, a, in[12], S24, 2368359562); /* 32 */
     416:	8b 55 f0             	mov    -0x10(%ebp),%edx
     419:	21 ca                	and    %ecx,%edx
     41b:	31 da                	xor    %ebx,%edx
     41d:	01 c2                	add    %eax,%edx
     41f:	8b 45 f0             	mov    -0x10(%ebp),%eax
     422:	c1 ca 0c             	ror    $0xc,%edx
     425:	01 f2                	add    %esi,%edx
     427:	89 55 ec             	mov    %edx,-0x14(%ebp)
     42a:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     42d:	8d 84 02 42 39 fa ff 	lea    -0x5c6be(%edx,%eax,1),%eax
  /* Round 3 */
#define S31 4
#define S32 11
#define S33 16
#define S34 23
  HH ( a, b, c, d, in[ 5], S31, 4294588738); /* 33 */
     434:	8b 55 ec             	mov    -0x14(%ebp),%edx
     437:	31 d1                	xor    %edx,%ecx
     439:	01 c1                	add    %eax,%ecx
     43b:	89 d0                	mov    %edx,%eax
     43d:	c1 c1 04             	rol    $0x4,%ecx
     440:	01 d1                	add    %edx,%ecx
     442:	8b 55 c8             	mov    -0x38(%ebp),%edx
     445:	8d 9c 1a 81 f6 71 87 	lea    -0x788e097f(%edx,%ebx,1),%ebx
  HH ( d, a, b, c, in[ 8], S32, 2272392833); /* 34 */
     44c:	89 f2                	mov    %esi,%edx
     44e:	31 c2                	xor    %eax,%edx
     450:	89 d0                	mov    %edx,%eax
     452:	8b 55 bc             	mov    -0x44(%ebp),%edx
     455:	31 c8                	xor    %ecx,%eax
     457:	01 d8                	add    %ebx,%eax
     459:	8d b4 32 22 61 9d 6d 	lea    0x6d9d6122(%edx,%esi,1),%esi
  HH ( c, d, a, b, in[11], S33, 1839030562); /* 35 */
     460:	8b 55 ec             	mov    -0x14(%ebp),%edx
  HH ( d, a, b, c, in[ 8], S32, 2272392833); /* 34 */
     463:	c1 c0 0b             	rol    $0xb,%eax
     466:	01 c8                	add    %ecx,%eax
  HH ( c, d, a, b, in[11], S33, 1839030562); /* 35 */
     468:	31 ca                	xor    %ecx,%edx
     46a:	89 d3                	mov    %edx,%ebx
     46c:	8b 55 b0             	mov    -0x50(%ebp),%edx
     46f:	31 c3                	xor    %eax,%ebx
     471:	01 f3                	add    %esi,%ebx
     473:	8b 75 ec             	mov    -0x14(%ebp),%esi
     476:	c1 c3 10             	rol    $0x10,%ebx
     479:	01 c3                	add    %eax,%ebx
     47b:	8d b4 32 0c 38 e5 fd 	lea    -0x21ac7f4(%edx,%esi,1),%esi
  HH ( b, c, d, a, in[14], S34, 4259657740); /* 36 */
     482:	89 ca                	mov    %ecx,%edx
     484:	31 c2                	xor    %eax,%edx
     486:	31 da                	xor    %ebx,%edx
     488:	01 f2                	add    %esi,%edx
     48a:	8b 75 e4             	mov    -0x1c(%ebp),%esi
     48d:	c1 ca 09             	ror    $0x9,%edx
     490:	01 da                	add    %ebx,%edx
     492:	8d b4 0e 44 ea be a4 	lea    -0x5b4115bc(%esi,%ecx,1),%esi
  HH ( a, b, c, d, in[ 1], S31, 2763975236); /* 37 */
     499:	89 c1                	mov    %eax,%ecx
     49b:	31 d9                	xor    %ebx,%ecx
     49d:	31 d1                	xor    %edx,%ecx
     49f:	01 f1                	add    %esi,%ecx
     4a1:	8b 75 d8             	mov    -0x28(%ebp),%esi
     4a4:	c1 c1 04             	rol    $0x4,%ecx
     4a7:	01 d1                	add    %edx,%ecx
     4a9:	8d b4 06 a9 cf de 4b 	lea    0x4bdecfa9(%esi,%eax,1),%esi
  HH ( d, a, b, c, in[ 4], S32, 1272893353); /* 38 */
     4b0:	89 d8                	mov    %ebx,%eax
     4b2:	31 d0                	xor    %edx,%eax
     4b4:	31 c8                	xor    %ecx,%eax
     4b6:	01 f0                	add    %esi,%eax
     4b8:	8b 75 cc             	mov    -0x34(%ebp),%esi
     4bb:	c1 c0 0b             	rol    $0xb,%eax
     4be:	01 c8                	add    %ecx,%eax
     4c0:	8d b4 1e 60 4b bb f6 	lea    -0x944b4a0(%esi,%ebx,1),%esi
  HH ( c, d, a, b, in[ 7], S33, 4139469664); /* 39 */
     4c7:	89 d3                	mov    %edx,%ebx
     4c9:	31 cb                	xor    %ecx,%ebx
     4cb:	31 c3                	xor    %eax,%ebx
     4cd:	01 f3                	add    %esi,%ebx
     4cf:	8b 75 c0             	mov    -0x40(%ebp),%esi
     4d2:	c1 c3 10             	rol    $0x10,%ebx
     4d5:	01 c3                	add    %eax,%ebx
     4d7:	8d 94 16 70 bc bf be 	lea    -0x41404390(%esi,%edx,1),%edx
  HH ( b, c, d, a, in[10], S34, 3200236656); /* 40 */
     4de:	89 ce                	mov    %ecx,%esi
     4e0:	31 c6                	xor    %eax,%esi
     4e2:	31 de                	xor    %ebx,%esi
     4e4:	01 d6                	add    %edx,%esi
     4e6:	8b 55 b4             	mov    -0x4c(%ebp),%edx
     4e9:	c1 ce 09             	ror    $0x9,%esi
     4ec:	01 de                	add    %ebx,%esi
     4ee:	8d 8c 0a c6 7e 9b 28 	lea    0x289b7ec6(%edx,%ecx,1),%ecx
  HH ( a, b, c, d, in[13], S31,  681279174); /* 41 */
     4f5:	89 c2                	mov    %eax,%edx
     4f7:	31 da                	xor    %ebx,%edx
     4f9:	31 f2                	xor    %esi,%edx
     4fb:	01 ca                	add    %ecx,%edx
     4fd:	8b 4d e8             	mov    -0x18(%ebp),%ecx
     500:	c1 c2 04             	rol    $0x4,%edx
     503:	01 f2                	add    %esi,%edx
     505:	8d 84 01 fa 27 a1 ea 	lea    -0x155ed806(%ecx,%eax,1),%eax
  HH ( d, a, b, c, in[ 0], S32, 3936430074); /* 42 */
     50c:	89 d9                	mov    %ebx,%ecx
     50e:	31 f1                	xor    %esi,%ecx
     510:	31 d1                	xor    %edx,%ecx
     512:	01 c1                	add    %eax,%ecx
     514:	8b 45 dc             	mov    -0x24(%ebp),%eax
     517:	c1 c1 0b             	rol    $0xb,%ecx
     51a:	01 d1                	add    %edx,%ecx
     51c:	8d 84 18 85 30 ef d4 	lea    -0x2b10cf7b(%eax,%ebx,1),%eax
  HH ( c, d, a, b, in[ 3], S33, 3572445317); /* 43 */
     523:	89 f3                	mov    %esi,%ebx
     525:	31 d3                	xor    %edx,%ebx
     527:	31 cb                	xor    %ecx,%ebx
     529:	01 c3                	add    %eax,%ebx
     52b:	8b 45 d0             	mov    -0x30(%ebp),%eax
     52e:	c1 c3 10             	rol    $0x10,%ebx
     531:	01 cb                	add    %ecx,%ebx
     533:	8d b4 30 05 1d 88 04 	lea    0x4881d05(%eax,%esi,1),%esi
  HH ( b, c, d, a, in[ 6], S34,   76029189); /* 44 */
     53a:	89 d0                	mov    %edx,%eax
     53c:	31 c8                	xor    %ecx,%eax
     53e:	31 d8                	xor    %ebx,%eax
     540:	01 f0                	add    %esi,%eax
     542:	8b 75 c4             	mov    -0x3c(%ebp),%esi
     545:	c1 c8 09             	ror    $0x9,%eax
     548:	01 d8                	add    %ebx,%eax
     54a:	8d 94 16 39 d0 d4 d9 	lea    -0x262b2fc7(%esi,%edx,1),%edx
  HH ( a, b, c, d, in[ 9], S31, 3654602809); /* 45 */
     551:	89 ce                	mov    %ecx,%esi
     553:	31 de                	xor    %ebx,%esi
     555:	31 c6                	xor    %eax,%esi
     557:	01 d6                	add    %edx,%esi
     559:	8b 55 b8             	mov    -0x48(%ebp),%edx
     55c:	c1 c6 04             	rol    $0x4,%esi
     55f:	01 c6                	add    %eax,%esi
     561:	8d 94 0a e5 99 db e6 	lea    -0x1924661b(%edx,%ecx,1),%edx
  HH ( d, a, b, c, in[12], S32, 3873151461); /* 46 */
     568:	89 d9                	mov    %ebx,%ecx
     56a:	8d 9c 1f f8 7c a2 1f 	lea    0x1fa27cf8(%edi,%ebx,1),%ebx
     571:	31 c1                	xor    %eax,%ecx
     573:	31 f1                	xor    %esi,%ecx
     575:	01 d1                	add    %edx,%ecx
  HH ( c, d, a, b, in[15], S33,  530742520); /* 47 */
     577:	89 c2                	mov    %eax,%edx
  HH ( d, a, b, c, in[12], S32, 3873151461); /* 46 */
     579:	c1 c1 0b             	rol    $0xb,%ecx
  HH ( c, d, a, b, in[15], S33,  530742520); /* 47 */
     57c:	31 f2                	xor    %esi,%edx
  HH ( d, a, b, c, in[12], S32, 3873151461); /* 46 */
     57e:	01 f1                	add    %esi,%ecx
  HH ( c, d, a, b, in[15], S33,  530742520); /* 47 */
     580:	31 ca                	xor    %ecx,%edx
     582:	01 da                	add    %ebx,%edx
     584:	8b 5d e0             	mov    -0x20(%ebp),%ebx
     587:	c1 c2 10             	rol    $0x10,%edx
     58a:	01 ca                	add    %ecx,%edx
     58c:	8d 84 03 65 56 ac c4 	lea    -0x3b53a99b(%ebx,%eax,1),%eax
  HH ( b, c, d, a, in[ 2], S34, 3299628645); /* 48 */
     593:	89 f3                	mov    %esi,%ebx
     595:	31 cb                	xor    %ecx,%ebx
     597:	31 d3                	xor    %edx,%ebx
     599:	01 c3                	add    %eax,%ebx
     59b:	8b 45 e8             	mov    -0x18(%ebp),%eax
     59e:	c1 cb 09             	ror    $0x9,%ebx
     5a1:	01 d3                	add    %edx,%ebx
     5a3:	8d 84 30 44 22 29 f4 	lea    -0xbd6ddbc(%eax,%esi,1),%eax
  /* Round 4 */
#define S41 6
#define S42 10
#define S43 15
#define S44 21
  II ( a, b, c, d, in[ 0], S41, 4096336452); /* 49 */
     5aa:	89 ce                	mov    %ecx,%esi
     5ac:	f7 d6                	not    %esi
     5ae:	09 de                	or     %ebx,%esi
     5b0:	31 d6                	xor    %edx,%esi
     5b2:	01 c6                	add    %eax,%esi
     5b4:	8b 45 cc             	mov    -0x34(%ebp),%eax
     5b7:	c1 c6 06             	rol    $0x6,%esi
     5ba:	01 de                	add    %ebx,%esi
     5bc:	8d 8c 08 97 ff 2a 43 	lea    0x432aff97(%eax,%ecx,1),%ecx
  II ( d, a, b, c, in[ 7], S42, 1126891415); /* 50 */
     5c3:	89 d0                	mov    %edx,%eax
     5c5:	f7 d0                	not    %eax
     5c7:	09 f0                	or     %esi,%eax
     5c9:	31 d8                	xor    %ebx,%eax
     5cb:	01 c8                	add    %ecx,%eax
     5cd:	8b 4d b0             	mov    -0x50(%ebp),%ecx
     5d0:	c1 c0 0a             	rol    $0xa,%eax
     5d3:	01 f0                	add    %esi,%eax
     5d5:	8d 94 11 a7 23 94 ab 	lea    -0x546bdc59(%ecx,%edx,1),%edx
  II ( c, d, a, b, in[14], S43, 2878612391); /* 51 */
     5dc:	89 d9                	mov    %ebx,%ecx
     5de:	f7 d1                	not    %ecx
     5e0:	09 c1                	or     %eax,%ecx
     5e2:	31 f1                	xor    %esi,%ecx
     5e4:	01 d1                	add    %edx,%ecx
     5e6:	8b 55 d4             	mov    -0x2c(%ebp),%edx
     5e9:	c1 c1 0f             	rol    $0xf,%ecx
     5ec:	01 c1                	add    %eax,%ecx
     5ee:	8d 9c 1a 39 a0 93 fc 	lea    -0x36c5fc7(%edx,%ebx,1),%ebx
  II ( b, c, d, a, in[ 5], S44, 4237533241); /* 52 */
     5f5:	89 f2                	mov    %esi,%edx
     5f7:	f7 d2                	not    %edx
     5f9:	09 ca                	or     %ecx,%edx
     5fb:	31 c2                	xor    %eax,%edx
     5fd:	01 da                	add    %ebx,%edx
     5ff:	8b 5d b8             	mov    -0x48(%ebp),%ebx
     602:	c1 ca 0b             	ror    $0xb,%edx
     605:	01 ca                	add    %ecx,%edx
     607:	8d 9c 33 c3 59 5b 65 	lea    0x655b59c3(%ebx,%esi,1),%ebx
  II ( a, b, c, d, in[12], S41, 1700485571); /* 53 */
     60e:	89 c6                	mov    %eax,%esi
     610:	f7 d6                	not    %esi
     612:	09 d6                	or     %edx,%esi
     614:	31 ce                	xor    %ecx,%esi
     616:	01 de                	add    %ebx,%esi
     618:	8b 5d dc             	mov    -0x24(%ebp),%ebx
     61b:	c1 c6 06             	rol    $0x6,%esi
     61e:	01 d6                	add    %edx,%esi
     620:	8d 84 03 92 cc 0c 8f 	lea    -0x70f3336e(%ebx,%eax,1),%eax
  II ( d, a, b, c, in[ 3], S42, 2399980690); /* 54 */
     627:	89 cb                	mov    %ecx,%ebx
     629:	f7 d3                	not    %ebx
     62b:	09 f3                	or     %esi,%ebx
     62d:	31 d3                	xor    %edx,%ebx
     62f:	01 c3                	add    %eax,%ebx
     631:	8b 45 c0             	mov    -0x40(%ebp),%eax
     634:	c1 c3 0a             	rol    $0xa,%ebx
     637:	01 f3                	add    %esi,%ebx
     639:	8d 84 08 7d f4 ef ff 	lea    -0x100b83(%eax,%ecx,1),%eax
  II ( c, d, a, b, in[10], S43, 4293915773); /* 55 */
     640:	89 d1                	mov    %edx,%ecx
     642:	f7 d1                	not    %ecx
     644:	09 d9                	or     %ebx,%ecx
     646:	31 f1                	xor    %esi,%ecx
     648:	01 c1                	add    %eax,%ecx
     64a:	8b 45 e4             	mov    -0x1c(%ebp),%eax
     64d:	c1 c1 0f             	rol    $0xf,%ecx
     650:	01 d9                	add    %ebx,%ecx
     652:	8d 84 10 d1 5d 84 85 	lea    -0x7a7ba22f(%eax,%edx,1),%eax
  II ( b, c, d, a, in[ 1], S44, 2240044497); /* 56 */
     659:	89 f2                	mov    %esi,%edx
     65b:	f7 d2                	not    %edx
     65d:	09 ca                	or     %ecx,%edx
     65f:	31 da                	xor    %ebx,%edx
     661:	01 c2                	add    %eax,%edx
     663:	8b 45 c8             	mov    -0x38(%ebp),%eax
     666:	c1 ca 0b             	ror    $0xb,%edx
     669:	01 ca                	add    %ecx,%edx
     66b:	8d b4 30 4f 7e a8 6f 	lea    0x6fa87e4f(%eax,%esi,1),%esi
  II ( a, b, c, d, in[ 8], S41, 1873313359); /* 57 */
     672:	89 d8                	mov    %ebx,%eax
     674:	f7 d0                	not    %eax
     676:	09 d0                	or     %edx,%eax
     678:	31 c8                	xor    %ecx,%eax
     67a:	01 f0                	add    %esi,%eax
     67c:	8d b4 1f e0 e6 2c fe 	lea    -0x1d31920(%edi,%ebx,1),%esi
  II ( d, a, b, c, in[15], S42, 4264355552); /* 58 */
     683:	89 cb                	mov    %ecx,%ebx
  II ( a, b, c, d, in[ 8], S41, 1873313359); /* 57 */
     685:	c1 c0 06             	rol    $0x6,%eax
  II ( d, a, b, c, in[15], S42, 4264355552); /* 58 */
     688:	f7 d3                	not    %ebx
     68a:	8b 7d d0             	mov    -0x30(%ebp),%edi
  II ( a, b, c, d, in[ 8], S41, 1873313359); /* 57 */
     68d:	01 d0                	add    %edx,%eax
  II ( d, a, b, c, in[15], S42, 4264355552); /* 58 */
     68f:	09 c3                	or     %eax,%ebx
     691:	31 d3                	xor    %edx,%ebx
     693:	01 f3                	add    %esi,%ebx
     695:	8d b4 0f 14 43 01 a3 	lea    -0x5cfebcec(%edi,%ecx,1),%esi
  II ( c, d, a, b, in[ 6], S43, 2734768916); /* 59 */
     69c:	89 d1                	mov    %edx,%ecx
  II ( d, a, b, c, in[15], S42, 4264355552); /* 58 */
     69e:	c1 c3 0a             	rol    $0xa,%ebx
  II ( c, d, a, b, in[ 6], S43, 2734768916); /* 59 */
     6a1:	f7 d1                	not    %ecx
     6a3:	8b 7d b4             	mov    -0x4c(%ebp),%edi
  II ( d, a, b, c, in[15], S42, 4264355552); /* 58 */
     6a6:	01 c3                	add    %eax,%ebx
  II ( c, d, a, b, in[ 6], S43, 2734768916); /* 59 */
     6a8:	09 d9                	or     %ebx,%ecx
     6aa:	31 c1                	xor    %eax,%ecx
     6ac:	01 f1                	add    %esi,%ecx
     6ae:	8d b4 17 a1 11 08 4e 	lea    0x4e0811a1(%edi,%edx,1),%esi
  II ( b, c, d, a, in[13], S44, 1309151649); /* 60 */
     6b5:	89 c2                	mov    %eax,%edx
  II ( c, d, a, b, in[ 6], S43, 2734768916); /* 59 */
     6b7:	c1 c1 0f             	rol    $0xf,%ecx
  II ( b, c, d, a, in[13], S44, 1309151649); /* 60 */
     6ba:	f7 d2                	not    %edx
     6bc:	8b 7d d8             	mov    -0x28(%ebp),%edi
  II ( c, d, a, b, in[ 6], S43, 2734768916); /* 59 */
     6bf:	01 d9                	add    %ebx,%ecx
  II ( b, c, d, a, in[13], S44, 1309151649); /* 60 */
     6c1:	09 ca                	or     %ecx,%edx
     6c3:	31 da                	xor    %ebx,%edx
     6c5:	01 f2                	add    %esi,%edx
     6c7:	8d b4 07 82 7e 53 f7 	lea    -0x8ac817e(%edi,%eax,1),%esi
  II ( a, b, c, d, in[ 4], S41, 4149444226); /* 61 */
     6ce:	89 d8                	mov    %ebx,%eax
  II ( b, c, d, a, in[13], S44, 1309151649); /* 60 */
     6d0:	c1 ca 0b             	ror    $0xb,%edx
  II ( a, b, c, d, in[ 4], S41, 4149444226); /* 61 */
     6d3:	f7 d0                	not    %eax
     6d5:	8b 7d bc             	mov    -0x44(%ebp),%edi
  II ( b, c, d, a, in[13], S44, 1309151649); /* 60 */
     6d8:	01 ca                	add    %ecx,%edx
  II ( a, b, c, d, in[ 4], S41, 4149444226); /* 61 */
     6da:	09 d0                	or     %edx,%eax
     6dc:	31 c8                	xor    %ecx,%eax
     6de:	01 f0                	add    %esi,%eax
     6e0:	8d b4 1f 35 f2 3a bd 	lea    -0x42c50dcb(%edi,%ebx,1),%esi
  II ( d, a, b, c, in[11], S42, 3174756917); /* 62 */
     6e7:	89 cb                	mov    %ecx,%ebx
  II ( a, b, c, d, in[ 4], S41, 4149444226); /* 61 */
     6e9:	c1 c0 06             	rol    $0x6,%eax
  II ( d, a, b, c, in[11], S42, 3174756917); /* 62 */
     6ec:	f7 d3                	not    %ebx
  II ( c, d, a, b, in[ 2], S43,  718787259); /* 63 */
  II ( b, c, d, a, in[ 9], S44, 3951481745); /* 64 */

  buf[0] += a;
  buf[1] += b;
     6ee:	8b 7d a0             	mov    -0x60(%ebp),%edi
  II ( a, b, c, d, in[ 4], S41, 4149444226); /* 61 */
     6f1:	01 d0                	add    %edx,%eax
  II ( d, a, b, c, in[11], S42, 3174756917); /* 62 */
     6f3:	09 c3                	or     %eax,%ebx
     6f5:	31 d3                	xor    %edx,%ebx
     6f7:	01 f3                	add    %esi,%ebx
     6f9:	8b 75 e0             	mov    -0x20(%ebp),%esi
     6fc:	c1 c3 0a             	rol    $0xa,%ebx
     6ff:	01 c3                	add    %eax,%ebx
     701:	8d b4 0e bb d2 d7 2a 	lea    0x2ad7d2bb(%esi,%ecx,1),%esi
  II ( c, d, a, b, in[ 2], S43,  718787259); /* 63 */
     708:	89 d1                	mov    %edx,%ecx
     70a:	f7 d1                	not    %ecx
     70c:	09 d9                	or     %ebx,%ecx
     70e:	31 c1                	xor    %eax,%ecx
     710:	01 f1                	add    %esi,%ecx
     712:	8b 75 c4             	mov    -0x3c(%ebp),%esi
     715:	c1 c1 0f             	rol    $0xf,%ecx
     718:	01 d9                	add    %ebx,%ecx
     71a:	8d b4 16 91 d3 86 eb 	lea    -0x14792c6f(%esi,%edx,1),%esi
  II ( b, c, d, a, in[ 9], S44, 3951481745); /* 64 */
     721:	89 c2                	mov    %eax,%edx
  buf[0] += a;
     723:	03 45 a4             	add    -0x5c(%ebp),%eax
  II ( b, c, d, a, in[ 9], S44, 3951481745); /* 64 */
     726:	f7 d2                	not    %edx
     728:	09 ca                	or     %ecx,%edx
     72a:	31 da                	xor    %ebx,%edx
     72c:	01 f2                	add    %esi,%edx
  buf[0] += a;
     72e:	8b 75 a8             	mov    -0x58(%ebp),%esi
  II ( b, c, d, a, in[ 9], S44, 3951481745); /* 64 */
     731:	c1 ca 0b             	ror    $0xb,%edx
  buf[0] += a;
     734:	89 06                	mov    %eax,(%esi)
  buf[1] += b;
     736:	8d 34 0f             	lea    (%edi,%ecx,1),%esi
     739:	8b 45 a8             	mov    -0x58(%ebp),%eax
     73c:	01 f2                	add    %esi,%edx
  buf[2] += c;
  buf[3] += d;
     73e:	03 5d ac             	add    -0x54(%ebp),%ebx
  buf[2] += c;
     741:	03 4d 9c             	add    -0x64(%ebp),%ecx
  buf[1] += b;
     744:	89 50 04             	mov    %edx,0x4(%eax)
  buf[2] += c;
     747:	89 48 08             	mov    %ecx,0x8(%eax)
  buf[3] += d;
     74a:	89 58 0c             	mov    %ebx,0xc(%eax)
}
     74d:	83 c4 58             	add    $0x58,%esp
     750:	5b                   	pop    %ebx
     751:	5e                   	pop    %esi
     752:	5f                   	pop    %edi
     753:	5d                   	pop    %ebp
     754:	c3                   	ret    
     755:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     759:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000760 <MD5Init>:
{
     760:	55                   	push   %ebp
     761:	89 e5                	mov    %esp,%ebp
     763:	8b 45 08             	mov    0x8(%ebp),%eax
  mdContext->i[0] = mdContext->i[1] = (UINT4)0;
     766:	c7 40 04 00 00 00 00 	movl   $0x0,0x4(%eax)
     76d:	c7 00 00 00 00 00    	movl   $0x0,(%eax)
  mdContext->buf[0] = (UINT4)0x67452301;
     773:	c7 40 08 01 23 45 67 	movl   $0x67452301,0x8(%eax)
  mdContext->buf[1] = (UINT4)0xefcdab89;
     77a:	c7 40 0c 89 ab cd ef 	movl   $0xefcdab89,0xc(%eax)
  mdContext->buf[2] = (UINT4)0x98badcfe;
     781:	c7 40 10 fe dc ba 98 	movl   $0x98badcfe,0x10(%eax)
  mdContext->buf[3] = (UINT4)0x10325476;
     788:	c7 40 14 76 54 32 10 	movl   $0x10325476,0x14(%eax)
}
     78f:	5d                   	pop    %ebp
     790:	c3                   	ret    
     791:	eb 0d                	jmp    7a0 <MD5Update>
     793:	90                   	nop
     794:	90                   	nop
     795:	90                   	nop
     796:	90                   	nop
     797:	90                   	nop
     798:	90                   	nop
     799:	90                   	nop
     79a:	90                   	nop
     79b:	90                   	nop
     79c:	90                   	nop
     79d:	90                   	nop
     79e:	90                   	nop
     79f:	90                   	nop

000007a0 <MD5Update>:
{
     7a0:	55                   	push   %ebp
     7a1:	89 e5                	mov    %esp,%ebp
     7a3:	57                   	push   %edi
     7a4:	56                   	push   %esi
     7a5:	53                   	push   %ebx
     7a6:	83 ec 44             	sub    $0x44,%esp
     7a9:	8b 5d 08             	mov    0x8(%ebp),%ebx
     7ac:	8b 7d 10             	mov    0x10(%ebp),%edi
     7af:	8b 75 0c             	mov    0xc(%ebp),%esi
  mdi = (int)((mdContext->i[0] >> 3) & 0x3F);
     7b2:	8b 13                	mov    (%ebx),%edx
  if ((mdContext->i[0] + ((UINT4)inLen << 3)) < mdContext->i[0])
     7b4:	8d 0c fd 00 00 00 00 	lea    0x0(,%edi,8),%ecx
  mdi = (int)((mdContext->i[0] >> 3) & 0x3F);
     7bb:	89 d0                	mov    %edx,%eax
     7bd:	c1 e8 03             	shr    $0x3,%eax
     7c0:	83 e0 3f             	and    $0x3f,%eax
     7c3:	01 ca                	add    %ecx,%edx
     7c5:	0f 92 c1             	setb   %cl
  mdContext->i[0] += ((UINT4)inLen << 3);
     7c8:	89 13                	mov    %edx,(%ebx)
  mdContext->i[1] += ((UINT4)inLen >> 29);
     7ca:	89 fa                	mov    %edi,%edx
     7cc:	0f b6 c9             	movzbl %cl,%ecx
     7cf:	89 4d b0             	mov    %ecx,-0x50(%ebp)
    mdContext->i[1]++;
     7d2:	83 7d b0 01          	cmpl   $0x1,-0x50(%ebp)
     7d6:	8b 4b 04             	mov    0x4(%ebx),%ecx
     7d9:	83 d9 ff             	sbb    $0xffffffff,%ecx
  mdContext->i[1] += ((UINT4)inLen >> 29);
     7dc:	c1 ea 1d             	shr    $0x1d,%edx
     7df:	01 f7                	add    %esi,%edi
     7e1:	01 d1                	add    %edx,%ecx
  while (inLen--) {
     7e3:	39 fe                	cmp    %edi,%esi
  mdContext->i[1] += ((UINT4)inLen >> 29);
     7e5:	89 4b 04             	mov    %ecx,0x4(%ebx)
      Transform (mdContext->buf, in);
     7e8:	8d 4b 08             	lea    0x8(%ebx),%ecx
     7eb:	89 4d b0             	mov    %ecx,-0x50(%ebp)
  while (inLen--) {
     7ee:	74 19                	je     809 <MD5Update+0x69>
    mdContext->in[mdi++] = *inBuf++;
     7f0:	83 c6 01             	add    $0x1,%esi
     7f3:	0f b6 4e ff          	movzbl -0x1(%esi),%ecx
     7f7:	8d 50 01             	lea    0x1(%eax),%edx
    if (mdi == 0x40) {
     7fa:	83 fa 40             	cmp    $0x40,%edx
    mdContext->in[mdi++] = *inBuf++;
     7fd:	88 4c 03 18          	mov    %cl,0x18(%ebx,%eax,1)
    if (mdi == 0x40) {
     801:	74 15                	je     818 <MD5Update+0x78>
      mdi = 0;
     803:	89 d0                	mov    %edx,%eax
  while (inLen--) {
     805:	39 fe                	cmp    %edi,%esi
     807:	75 e7                	jne    7f0 <MD5Update+0x50>
}
     809:	83 c4 44             	add    $0x44,%esp
     80c:	5b                   	pop    %ebx
     80d:	5e                   	pop    %esi
     80e:	5f                   	pop    %edi
     80f:	5d                   	pop    %ebp
     810:	c3                   	ret    
     811:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      for (i = 0, ii = 0; i < 16; i++, ii += 4)
     818:	31 c9                	xor    %ecx,%ecx
     81a:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        in[i] = (((UINT4)mdContext->in[ii+3]) << 24) |
     820:	0f b6 44 0b 1b       	movzbl 0x1b(%ebx,%ecx,1),%eax
                (((UINT4)mdContext->in[ii+2]) << 16) |
     825:	0f b6 54 0b 1a       	movzbl 0x1a(%ebx,%ecx,1),%edx
        in[i] = (((UINT4)mdContext->in[ii+3]) << 24) |
     82a:	c1 e0 18             	shl    $0x18,%eax
                (((UINT4)mdContext->in[ii+2]) << 16) |
     82d:	c1 e2 10             	shl    $0x10,%edx
        in[i] = (((UINT4)mdContext->in[ii+3]) << 24) |
     830:	09 d0                	or     %edx,%eax
                ((UINT4)mdContext->in[ii]);
     832:	0f b6 54 0b 18       	movzbl 0x18(%ebx,%ecx,1),%edx
                (((UINT4)mdContext->in[ii+1]) << 8) |
     837:	09 d0                	or     %edx,%eax
     839:	0f b6 54 0b 19       	movzbl 0x19(%ebx,%ecx,1),%edx
     83e:	c1 e2 08             	shl    $0x8,%edx
     841:	09 d0                	or     %edx,%eax
     843:	89 44 0d b4          	mov    %eax,-0x4c(%ebp,%ecx,1)
      for (i = 0, ii = 0; i < 16; i++, ii += 4)
     847:	83 c1 04             	add    $0x4,%ecx
     84a:	83 f9 40             	cmp    $0x40,%ecx
     84d:	75 d1                	jne    820 <MD5Update+0x80>
      Transform (mdContext->buf, in);
     84f:	8b 45 b0             	mov    -0x50(%ebp),%eax
     852:	8d 55 b4             	lea    -0x4c(%ebp),%edx
     855:	e8 46 f8 ff ff       	call   a0 <Transform>
      mdi = 0;
     85a:	31 d2                	xor    %edx,%edx
     85c:	89 d0                	mov    %edx,%eax
     85e:	eb a5                	jmp    805 <MD5Update+0x65>

00000860 <MD5Final>:
{
     860:	55                   	push   %ebp
     861:	89 e5                	mov    %esp,%ebp
     863:	56                   	push   %esi
     864:	53                   	push   %ebx
     865:	83 ec 40             	sub    $0x40,%esp
     868:	8b 5d 08             	mov    0x8(%ebp),%ebx
  in[14] = mdContext->i[0];
     86b:	8b 03                	mov    (%ebx),%eax
  in[15] = mdContext->i[1];
     86d:	8b 53 04             	mov    0x4(%ebx),%edx
  in[14] = mdContext->i[0];
     870:	89 45 f0             	mov    %eax,-0x10(%ebp)
  mdi = (int)((mdContext->i[0] >> 3) & 0x3F);
     873:	c1 e8 03             	shr    $0x3,%eax
  in[15] = mdContext->i[1];
     876:	89 55 f4             	mov    %edx,-0xc(%ebp)
  mdi = (int)((mdContext->i[0] >> 3) & 0x3F);
     879:	83 e0 3f             	and    $0x3f,%eax
  padLen = (mdi < 56) ? (56 - mdi) : (120 - mdi);
     87c:	83 f8 37             	cmp    $0x37,%eax
     87f:	0f 8f 83 00 00 00    	jg     908 <MD5Final+0xa8>
     885:	ba 38 00 00 00       	mov    $0x38,%edx
     88a:	29 c2                	sub    %eax,%edx
     88c:	89 d0                	mov    %edx,%eax
  MD5Update (mdContext, PADDING, padLen);
     88e:	50                   	push   %eax
     88f:	68 60 14 00 00       	push   $0x1460
     894:	53                   	push   %ebx
     895:	e8 06 ff ff ff       	call   7a0 <MD5Update>
     89a:	83 c4 0c             	add    $0xc,%esp
  for (i = 0, ii = 0; i < 14; i++, ii += 4)
     89d:	31 d2                	xor    %edx,%edx
     89f:	90                   	nop
    in[i] = (((UINT4)mdContext->in[ii+3]) << 24) |
     8a0:	0f b6 44 13 1b       	movzbl 0x1b(%ebx,%edx,1),%eax
            (((UINT4)mdContext->in[ii+2]) << 16) |
     8a5:	0f b6 4c 13 1a       	movzbl 0x1a(%ebx,%edx,1),%ecx
    in[i] = (((UINT4)mdContext->in[ii+3]) << 24) |
     8aa:	c1 e0 18             	shl    $0x18,%eax
            (((UINT4)mdContext->in[ii+2]) << 16) |
     8ad:	c1 e1 10             	shl    $0x10,%ecx
    in[i] = (((UINT4)mdContext->in[ii+3]) << 24) |
     8b0:	09 c8                	or     %ecx,%eax
            ((UINT4)mdContext->in[ii]);
     8b2:	0f b6 4c 13 18       	movzbl 0x18(%ebx,%edx,1),%ecx
            (((UINT4)mdContext->in[ii+1]) << 8) |
     8b7:	09 c8                	or     %ecx,%eax
     8b9:	0f b6 4c 13 19       	movzbl 0x19(%ebx,%edx,1),%ecx
     8be:	c1 e1 08             	shl    $0x8,%ecx
     8c1:	09 c8                	or     %ecx,%eax
     8c3:	89 44 15 b8          	mov    %eax,-0x48(%ebp,%edx,1)
  for (i = 0, ii = 0; i < 14; i++, ii += 4)
     8c7:	83 c2 04             	add    $0x4,%edx
     8ca:	83 fa 38             	cmp    $0x38,%edx
     8cd:	75 d1                	jne    8a0 <MD5Final+0x40>
  Transform (mdContext->buf, in);
     8cf:	8d 73 08             	lea    0x8(%ebx),%esi
     8d2:	8d 55 b8             	lea    -0x48(%ebp),%edx
     8d5:	83 c3 18             	add    $0x18,%ebx
     8d8:	89 f0                	mov    %esi,%eax
     8da:	e8 c1 f7 ff ff       	call   a0 <Transform>
     8df:	89 f0                	mov    %esi,%eax
    mdContext->digest[ii] = (unsigned char)(mdContext->buf[i] & 0xFF);
     8e1:	8b 10                	mov    (%eax),%edx
     8e3:	83 c0 04             	add    $0x4,%eax
      (unsigned char)((mdContext->buf[i] >> 16) & 0xFF);
     8e6:	89 d1                	mov    %edx,%ecx
    mdContext->digest[ii] = (unsigned char)(mdContext->buf[i] & 0xFF);
     8e8:	88 50 4c             	mov    %dl,0x4c(%eax)
      (unsigned char)((mdContext->buf[i] >> 8) & 0xFF);
     8eb:	88 70 4d             	mov    %dh,0x4d(%eax)
      (unsigned char)((mdContext->buf[i] >> 16) & 0xFF);
     8ee:	c1 e9 10             	shr    $0x10,%ecx
      (unsigned char)((mdContext->buf[i] >> 24) & 0xFF);
     8f1:	c1 ea 18             	shr    $0x18,%edx
      (unsigned char)((mdContext->buf[i] >> 16) & 0xFF);
     8f4:	88 48 4e             	mov    %cl,0x4e(%eax)
      (unsigned char)((mdContext->buf[i] >> 24) & 0xFF);
     8f7:	88 50 4f             	mov    %dl,0x4f(%eax)
  for (i = 0, ii = 0; i < 4; i++, ii += 4) {
     8fa:	39 c3                	cmp    %eax,%ebx
     8fc:	75 e3                	jne    8e1 <MD5Final+0x81>
}
     8fe:	8d 65 f8             	lea    -0x8(%ebp),%esp
     901:	5b                   	pop    %ebx
     902:	5e                   	pop    %esi
     903:	5d                   	pop    %ebp
     904:	c3                   	ret    
     905:	8d 76 00             	lea    0x0(%esi),%esi
  padLen = (mdi < 56) ? (56 - mdi) : (120 - mdi);
     908:	ba 78 00 00 00       	mov    $0x78,%edx
     90d:	29 c2                	sub    %eax,%edx
     90f:	89 d0                	mov    %edx,%eax
     911:	e9 78 ff ff ff       	jmp    88e <MD5Final+0x2e>
     916:	8d 76 00             	lea    0x0(%esi),%esi
     919:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000920 <getmd5>:

#include "user.h"

void getmd5(const char* str, unsigned int len, char* result)
{
     920:	55                   	push   %ebp
     921:	89 e5                	mov    %esp,%ebp
     923:	57                   	push   %edi
     924:	56                   	push   %esi
     925:	53                   	push   %ebx
  MD5_CTX mdContext;

  MD5Init (&mdContext);
  MD5Update (&mdContext, str, len);
     926:	8d 75 8c             	lea    -0x74(%ebp),%esi
{
     929:	83 ec 74             	sub    $0x74,%esp
  MD5Update (&mdContext, str, len);
     92c:	ff 75 0c             	pushl  0xc(%ebp)
     92f:	ff 75 08             	pushl  0x8(%ebp)
     932:	56                   	push   %esi
{
     933:	8b 5d 10             	mov    0x10(%ebp),%ebx
  mdContext->i[0] = mdContext->i[1] = (UINT4)0;
     936:	c7 45 90 00 00 00 00 	movl   $0x0,-0x70(%ebp)
     93d:	c7 45 8c 00 00 00 00 	movl   $0x0,-0x74(%ebp)
  mdContext->buf[0] = (UINT4)0x67452301;
     944:	c7 45 94 01 23 45 67 	movl   $0x67452301,-0x6c(%ebp)
  mdContext->buf[1] = (UINT4)0xefcdab89;
     94b:	c7 45 98 89 ab cd ef 	movl   $0xefcdab89,-0x68(%ebp)
  mdContext->buf[2] = (UINT4)0x98badcfe;
     952:	c7 45 9c fe dc ba 98 	movl   $0x98badcfe,-0x64(%ebp)
  mdContext->buf[3] = (UINT4)0x10325476;
     959:	c7 45 a0 76 54 32 10 	movl   $0x10325476,-0x60(%ebp)
  MD5Update (&mdContext, str, len);
     960:	e8 3b fe ff ff       	call   7a0 <MD5Update>
  MD5Final (&mdContext);
     965:	56                   	push   %esi
     966:	e8 f5 fe ff ff       	call   860 <MD5Final>
     96b:	83 c4 10             	add    $0x10,%esp

  int i;
  for (i = 0; i < 16; ++i)
     96e:	31 d2                	xor    %edx,%edx
  {
    result[i * 2] = mdContext.digest[i] / 16 + '0';
     970:	0f b6 44 15 e4       	movzbl -0x1c(%ebp,%edx,1),%eax
     975:	89 c1                	mov    %eax,%ecx
     977:	88 45 83             	mov    %al,-0x7d(%ebp)
     97a:	c0 e9 04             	shr    $0x4,%cl
     97d:	89 ce                	mov    %ecx,%esi
     97f:	89 f0                	mov    %esi,%eax
     981:	8d 7e 37             	lea    0x37(%esi),%edi
     984:	8d 4e 30             	lea    0x30(%esi),%ecx
     987:	3c 0a                	cmp    $0xa,%al
    if (result[i * 2] > '9' || result[i * 2] < '0')
      result[i * 2] = result[i * 2] - '0' + 'A' - 10;
    result[i * 2 + 1] = mdContext.digest[i] % 16 + '0';
     989:	0f b6 45 83          	movzbl -0x7d(%ebp),%eax
    result[i * 2] = mdContext.digest[i] / 16 + '0';
     98d:	0f 43 cf             	cmovae %edi,%ecx
     990:	88 0c 53             	mov    %cl,(%ebx,%edx,2)
    result[i * 2 + 1] = mdContext.digest[i] % 16 + '0';
     993:	83 e0 0f             	and    $0xf,%eax
     996:	8d 70 37             	lea    0x37(%eax),%esi
     999:	8d 48 30             	lea    0x30(%eax),%ecx
     99c:	3c 0a                	cmp    $0xa,%al
     99e:	0f 43 ce             	cmovae %esi,%ecx
     9a1:	88 4c 53 01          	mov    %cl,0x1(%ebx,%edx,2)
  for (i = 0; i < 16; ++i)
     9a5:	83 c2 01             	add    $0x1,%edx
     9a8:	83 fa 10             	cmp    $0x10,%edx
     9ab:	75 c3                	jne    970 <getmd5+0x50>
    if (result[i * 2 + 1] > '9' || result[i * 2 + 1] < '0')
      result[i * 2 + 1] = result[i * 2 + 1] - '0' + 'A' - 10;
  }
}
     9ad:	8d 65 f4             	lea    -0xc(%ebp),%esp
     9b0:	5b                   	pop    %ebx
     9b1:	5e                   	pop    %esi
     9b2:	5f                   	pop    %edi
     9b3:	5d                   	pop    %ebp
     9b4:	c3                   	ret    
     9b5:	66 90                	xchg   %ax,%ax
     9b7:	66 90                	xchg   %ax,%ax
     9b9:	66 90                	xchg   %ax,%ax
     9bb:	66 90                	xchg   %ax,%ax
     9bd:	66 90                	xchg   %ax,%ax
     9bf:	90                   	nop

000009c0 <strcpy>:
#include "user.h"
#include "x86.h"

char*
strcpy(char *s, const char *t)
{
     9c0:	55                   	push   %ebp
     9c1:	89 e5                	mov    %esp,%ebp
     9c3:	53                   	push   %ebx
     9c4:	8b 45 08             	mov    0x8(%ebp),%eax
     9c7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  char *os;

  os = s;
  while((*s++ = *t++) != 0)
     9ca:	89 c2                	mov    %eax,%edx
     9cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     9d0:	83 c1 01             	add    $0x1,%ecx
     9d3:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
     9d7:	83 c2 01             	add    $0x1,%edx
     9da:	84 db                	test   %bl,%bl
     9dc:	88 5a ff             	mov    %bl,-0x1(%edx)
     9df:	75 ef                	jne    9d0 <strcpy+0x10>
    ;
  return os;
}
     9e1:	5b                   	pop    %ebx
     9e2:	5d                   	pop    %ebp
     9e3:	c3                   	ret    
     9e4:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     9ea:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

000009f0 <strcmp>:

int
strcmp(const char *p, const char *q)
{
     9f0:	55                   	push   %ebp
     9f1:	89 e5                	mov    %esp,%ebp
     9f3:	53                   	push   %ebx
     9f4:	8b 55 08             	mov    0x8(%ebp),%edx
     9f7:	8b 4d 0c             	mov    0xc(%ebp),%ecx
  while(*p && *p == *q)
     9fa:	0f b6 02             	movzbl (%edx),%eax
     9fd:	0f b6 19             	movzbl (%ecx),%ebx
     a00:	84 c0                	test   %al,%al
     a02:	75 1c                	jne    a20 <strcmp+0x30>
     a04:	eb 2a                	jmp    a30 <strcmp+0x40>
     a06:	8d 76 00             	lea    0x0(%esi),%esi
     a09:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    p++, q++;
     a10:	83 c2 01             	add    $0x1,%edx
  while(*p && *p == *q)
     a13:	0f b6 02             	movzbl (%edx),%eax
    p++, q++;
     a16:	83 c1 01             	add    $0x1,%ecx
     a19:	0f b6 19             	movzbl (%ecx),%ebx
  while(*p && *p == *q)
     a1c:	84 c0                	test   %al,%al
     a1e:	74 10                	je     a30 <strcmp+0x40>
     a20:	38 d8                	cmp    %bl,%al
     a22:	74 ec                	je     a10 <strcmp+0x20>
  return (uchar)*p - (uchar)*q;
     a24:	29 d8                	sub    %ebx,%eax
}
     a26:	5b                   	pop    %ebx
     a27:	5d                   	pop    %ebp
     a28:	c3                   	ret    
     a29:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     a30:	31 c0                	xor    %eax,%eax
  return (uchar)*p - (uchar)*q;
     a32:	29 d8                	sub    %ebx,%eax
}
     a34:	5b                   	pop    %ebx
     a35:	5d                   	pop    %ebp
     a36:	c3                   	ret    
     a37:	89 f6                	mov    %esi,%esi
     a39:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a40 <strlen>:

uint
strlen(const char *s)
{
     a40:	55                   	push   %ebp
     a41:	89 e5                	mov    %esp,%ebp
     a43:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  for(n = 0; s[n]; n++)
     a46:	80 39 00             	cmpb   $0x0,(%ecx)
     a49:	74 15                	je     a60 <strlen+0x20>
     a4b:	31 d2                	xor    %edx,%edx
     a4d:	8d 76 00             	lea    0x0(%esi),%esi
     a50:	83 c2 01             	add    $0x1,%edx
     a53:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
     a57:	89 d0                	mov    %edx,%eax
     a59:	75 f5                	jne    a50 <strlen+0x10>
    ;
  return n;
}
     a5b:	5d                   	pop    %ebp
     a5c:	c3                   	ret    
     a5d:	8d 76 00             	lea    0x0(%esi),%esi
  for(n = 0; s[n]; n++)
     a60:	31 c0                	xor    %eax,%eax
}
     a62:	5d                   	pop    %ebp
     a63:	c3                   	ret    
     a64:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     a6a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000a70 <memset>:

void*
memset(void *dst, int c, uint n)
{
     a70:	55                   	push   %ebp
     a71:	89 e5                	mov    %esp,%ebp
     a73:	57                   	push   %edi
     a74:	8b 55 08             	mov    0x8(%ebp),%edx
}

static inline void
stosb(void *addr, int data, int cnt)
{
  asm volatile("cld; rep stosb" :
     a77:	8b 4d 10             	mov    0x10(%ebp),%ecx
     a7a:	8b 45 0c             	mov    0xc(%ebp),%eax
     a7d:	89 d7                	mov    %edx,%edi
     a7f:	fc                   	cld    
     a80:	f3 aa                	rep stos %al,%es:(%edi)
  stosb(dst, c, n);
  return dst;
}
     a82:	89 d0                	mov    %edx,%eax
     a84:	5f                   	pop    %edi
     a85:	5d                   	pop    %ebp
     a86:	c3                   	ret    
     a87:	89 f6                	mov    %esi,%esi
     a89:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000a90 <strchr>:

char*
strchr(const char *s, char c)
{
     a90:	55                   	push   %ebp
     a91:	89 e5                	mov    %esp,%ebp
     a93:	53                   	push   %ebx
     a94:	8b 45 08             	mov    0x8(%ebp),%eax
     a97:	8b 5d 0c             	mov    0xc(%ebp),%ebx
  for(; *s; s++)
     a9a:	0f b6 10             	movzbl (%eax),%edx
     a9d:	84 d2                	test   %dl,%dl
     a9f:	74 1d                	je     abe <strchr+0x2e>
    if(*s == c)
     aa1:	38 d3                	cmp    %dl,%bl
     aa3:	89 d9                	mov    %ebx,%ecx
     aa5:	75 0d                	jne    ab4 <strchr+0x24>
     aa7:	eb 17                	jmp    ac0 <strchr+0x30>
     aa9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     ab0:	38 ca                	cmp    %cl,%dl
     ab2:	74 0c                	je     ac0 <strchr+0x30>
  for(; *s; s++)
     ab4:	83 c0 01             	add    $0x1,%eax
     ab7:	0f b6 10             	movzbl (%eax),%edx
     aba:	84 d2                	test   %dl,%dl
     abc:	75 f2                	jne    ab0 <strchr+0x20>
      return (char*)s;
  return 0;
     abe:	31 c0                	xor    %eax,%eax
}
     ac0:	5b                   	pop    %ebx
     ac1:	5d                   	pop    %ebp
     ac2:	c3                   	ret    
     ac3:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
     ac9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ad0 <gets>:

char*
gets(char *buf, int max)
{
     ad0:	55                   	push   %ebp
     ad1:	89 e5                	mov    %esp,%ebp
     ad3:	57                   	push   %edi
     ad4:	56                   	push   %esi
     ad5:	53                   	push   %ebx
  int i, cc;
  char c;

  for(i=0; i+1 < max; ){
     ad6:	31 f6                	xor    %esi,%esi
     ad8:	89 f3                	mov    %esi,%ebx
{
     ada:	83 ec 1c             	sub    $0x1c,%esp
     add:	8b 7d 08             	mov    0x8(%ebp),%edi
  for(i=0; i+1 < max; ){
     ae0:	eb 2f                	jmp    b11 <gets+0x41>
     ae2:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
    cc = read(0, &c, 1);
     ae8:	8d 45 e7             	lea    -0x19(%ebp),%eax
     aeb:	83 ec 04             	sub    $0x4,%esp
     aee:	6a 01                	push   $0x1
     af0:	50                   	push   %eax
     af1:	6a 00                	push   $0x0
     af3:	e8 32 01 00 00       	call   c2a <read>
    if(cc < 1)
     af8:	83 c4 10             	add    $0x10,%esp
     afb:	85 c0                	test   %eax,%eax
     afd:	7e 1c                	jle    b1b <gets+0x4b>
      break;
    buf[i++] = c;
     aff:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
     b03:	83 c7 01             	add    $0x1,%edi
     b06:	88 47 ff             	mov    %al,-0x1(%edi)
    if(c == '\n' || c == '\r')
     b09:	3c 0a                	cmp    $0xa,%al
     b0b:	74 23                	je     b30 <gets+0x60>
     b0d:	3c 0d                	cmp    $0xd,%al
     b0f:	74 1f                	je     b30 <gets+0x60>
  for(i=0; i+1 < max; ){
     b11:	83 c3 01             	add    $0x1,%ebx
     b14:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
     b17:	89 fe                	mov    %edi,%esi
     b19:	7c cd                	jl     ae8 <gets+0x18>
     b1b:	89 f3                	mov    %esi,%ebx
      break;
  }
  buf[i] = '\0';
  return buf;
}
     b1d:	8b 45 08             	mov    0x8(%ebp),%eax
  buf[i] = '\0';
     b20:	c6 03 00             	movb   $0x0,(%ebx)
}
     b23:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b26:	5b                   	pop    %ebx
     b27:	5e                   	pop    %esi
     b28:	5f                   	pop    %edi
     b29:	5d                   	pop    %ebp
     b2a:	c3                   	ret    
     b2b:	90                   	nop
     b2c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b30:	8b 75 08             	mov    0x8(%ebp),%esi
     b33:	8b 45 08             	mov    0x8(%ebp),%eax
     b36:	01 de                	add    %ebx,%esi
     b38:	89 f3                	mov    %esi,%ebx
  buf[i] = '\0';
     b3a:	c6 03 00             	movb   $0x0,(%ebx)
}
     b3d:	8d 65 f4             	lea    -0xc(%ebp),%esp
     b40:	5b                   	pop    %ebx
     b41:	5e                   	pop    %esi
     b42:	5f                   	pop    %edi
     b43:	5d                   	pop    %ebp
     b44:	c3                   	ret    
     b45:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
     b49:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000b50 <stat>:

int
stat(const char *n, struct stat *st)
{
     b50:	55                   	push   %ebp
     b51:	89 e5                	mov    %esp,%ebp
     b53:	56                   	push   %esi
     b54:	53                   	push   %ebx
  int fd;
  int r;

  fd = open(n, O_RDONLY);
     b55:	83 ec 08             	sub    $0x8,%esp
     b58:	6a 00                	push   $0x0
     b5a:	ff 75 08             	pushl  0x8(%ebp)
     b5d:	e8 f0 00 00 00       	call   c52 <open>
  if(fd < 0)
     b62:	83 c4 10             	add    $0x10,%esp
     b65:	85 c0                	test   %eax,%eax
     b67:	78 27                	js     b90 <stat+0x40>
    return -1;
  r = fstat(fd, st);
     b69:	83 ec 08             	sub    $0x8,%esp
     b6c:	ff 75 0c             	pushl  0xc(%ebp)
     b6f:	89 c3                	mov    %eax,%ebx
     b71:	50                   	push   %eax
     b72:	e8 f3 00 00 00       	call   c6a <fstat>
  close(fd);
     b77:	89 1c 24             	mov    %ebx,(%esp)
  r = fstat(fd, st);
     b7a:	89 c6                	mov    %eax,%esi
  close(fd);
     b7c:	e8 b9 00 00 00       	call   c3a <close>
  return r;
     b81:	83 c4 10             	add    $0x10,%esp
}
     b84:	8d 65 f8             	lea    -0x8(%ebp),%esp
     b87:	89 f0                	mov    %esi,%eax
     b89:	5b                   	pop    %ebx
     b8a:	5e                   	pop    %esi
     b8b:	5d                   	pop    %ebp
     b8c:	c3                   	ret    
     b8d:	8d 76 00             	lea    0x0(%esi),%esi
    return -1;
     b90:	be ff ff ff ff       	mov    $0xffffffff,%esi
     b95:	eb ed                	jmp    b84 <stat+0x34>
     b97:	89 f6                	mov    %esi,%esi
     b99:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000ba0 <atoi>:

int
atoi(const char *s)
{
     ba0:	55                   	push   %ebp
     ba1:	89 e5                	mov    %esp,%ebp
     ba3:	53                   	push   %ebx
     ba4:	8b 4d 08             	mov    0x8(%ebp),%ecx
  int n;

  n = 0;
  while('0' <= *s && *s <= '9')
     ba7:	0f be 11             	movsbl (%ecx),%edx
     baa:	8d 42 d0             	lea    -0x30(%edx),%eax
     bad:	3c 09                	cmp    $0x9,%al
  n = 0;
     baf:	b8 00 00 00 00       	mov    $0x0,%eax
  while('0' <= *s && *s <= '9')
     bb4:	77 1f                	ja     bd5 <atoi+0x35>
     bb6:	8d 76 00             	lea    0x0(%esi),%esi
     bb9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    n = n*10 + *s++ - '0';
     bc0:	8d 04 80             	lea    (%eax,%eax,4),%eax
     bc3:	83 c1 01             	add    $0x1,%ecx
     bc6:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
  while('0' <= *s && *s <= '9')
     bca:	0f be 11             	movsbl (%ecx),%edx
     bcd:	8d 5a d0             	lea    -0x30(%edx),%ebx
     bd0:	80 fb 09             	cmp    $0x9,%bl
     bd3:	76 eb                	jbe    bc0 <atoi+0x20>
  return n;
}
     bd5:	5b                   	pop    %ebx
     bd6:	5d                   	pop    %ebp
     bd7:	c3                   	ret    
     bd8:	90                   	nop
     bd9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000be0 <memmove>:

void*
memmove(void *vdst, const void *vsrc, int n)
{
     be0:	55                   	push   %ebp
     be1:	89 e5                	mov    %esp,%ebp
     be3:	56                   	push   %esi
     be4:	53                   	push   %ebx
     be5:	8b 5d 10             	mov    0x10(%ebp),%ebx
     be8:	8b 45 08             	mov    0x8(%ebp),%eax
     beb:	8b 75 0c             	mov    0xc(%ebp),%esi
  char *dst;
  const char *src;

  dst = vdst;
  src = vsrc;
  while(n-- > 0)
     bee:	85 db                	test   %ebx,%ebx
     bf0:	7e 14                	jle    c06 <memmove+0x26>
     bf2:	31 d2                	xor    %edx,%edx
     bf4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    *dst++ = *src++;
     bf8:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
     bfc:	88 0c 10             	mov    %cl,(%eax,%edx,1)
     bff:	83 c2 01             	add    $0x1,%edx
  while(n-- > 0)
     c02:	39 d3                	cmp    %edx,%ebx
     c04:	75 f2                	jne    bf8 <memmove+0x18>
  return vdst;
}
     c06:	5b                   	pop    %ebx
     c07:	5e                   	pop    %esi
     c08:	5d                   	pop    %ebp
     c09:	c3                   	ret    

00000c0a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
     c0a:	b8 01 00 00 00       	mov    $0x1,%eax
     c0f:	cd 40                	int    $0x40
     c11:	c3                   	ret    

00000c12 <exit>:
SYSCALL(exit)
     c12:	b8 02 00 00 00       	mov    $0x2,%eax
     c17:	cd 40                	int    $0x40
     c19:	c3                   	ret    

00000c1a <wait>:
SYSCALL(wait)
     c1a:	b8 03 00 00 00       	mov    $0x3,%eax
     c1f:	cd 40                	int    $0x40
     c21:	c3                   	ret    

00000c22 <pipe>:
SYSCALL(pipe)
     c22:	b8 04 00 00 00       	mov    $0x4,%eax
     c27:	cd 40                	int    $0x40
     c29:	c3                   	ret    

00000c2a <read>:
SYSCALL(read)
     c2a:	b8 05 00 00 00       	mov    $0x5,%eax
     c2f:	cd 40                	int    $0x40
     c31:	c3                   	ret    

00000c32 <write>:
SYSCALL(write)
     c32:	b8 10 00 00 00       	mov    $0x10,%eax
     c37:	cd 40                	int    $0x40
     c39:	c3                   	ret    

00000c3a <close>:
SYSCALL(close)
     c3a:	b8 15 00 00 00       	mov    $0x15,%eax
     c3f:	cd 40                	int    $0x40
     c41:	c3                   	ret    

00000c42 <kill>:
SYSCALL(kill)
     c42:	b8 06 00 00 00       	mov    $0x6,%eax
     c47:	cd 40                	int    $0x40
     c49:	c3                   	ret    

00000c4a <exec>:
SYSCALL(exec)
     c4a:	b8 07 00 00 00       	mov    $0x7,%eax
     c4f:	cd 40                	int    $0x40
     c51:	c3                   	ret    

00000c52 <open>:
SYSCALL(open)
     c52:	b8 0f 00 00 00       	mov    $0xf,%eax
     c57:	cd 40                	int    $0x40
     c59:	c3                   	ret    

00000c5a <mknod>:
SYSCALL(mknod)
     c5a:	b8 11 00 00 00       	mov    $0x11,%eax
     c5f:	cd 40                	int    $0x40
     c61:	c3                   	ret    

00000c62 <unlink>:
SYSCALL(unlink)
     c62:	b8 12 00 00 00       	mov    $0x12,%eax
     c67:	cd 40                	int    $0x40
     c69:	c3                   	ret    

00000c6a <fstat>:
SYSCALL(fstat)
     c6a:	b8 08 00 00 00       	mov    $0x8,%eax
     c6f:	cd 40                	int    $0x40
     c71:	c3                   	ret    

00000c72 <link>:
SYSCALL(link)
     c72:	b8 13 00 00 00       	mov    $0x13,%eax
     c77:	cd 40                	int    $0x40
     c79:	c3                   	ret    

00000c7a <mkdir>:
SYSCALL(mkdir)
     c7a:	b8 14 00 00 00       	mov    $0x14,%eax
     c7f:	cd 40                	int    $0x40
     c81:	c3                   	ret    

00000c82 <chdir>:
SYSCALL(chdir)
     c82:	b8 09 00 00 00       	mov    $0x9,%eax
     c87:	cd 40                	int    $0x40
     c89:	c3                   	ret    

00000c8a <dup>:
SYSCALL(dup)
     c8a:	b8 0a 00 00 00       	mov    $0xa,%eax
     c8f:	cd 40                	int    $0x40
     c91:	c3                   	ret    

00000c92 <getpid>:
SYSCALL(getpid)
     c92:	b8 0b 00 00 00       	mov    $0xb,%eax
     c97:	cd 40                	int    $0x40
     c99:	c3                   	ret    

00000c9a <sbrk>:
SYSCALL(sbrk)
     c9a:	b8 0c 00 00 00       	mov    $0xc,%eax
     c9f:	cd 40                	int    $0x40
     ca1:	c3                   	ret    

00000ca2 <sleep>:
SYSCALL(sleep)
     ca2:	b8 0d 00 00 00       	mov    $0xd,%eax
     ca7:	cd 40                	int    $0x40
     ca9:	c3                   	ret    

00000caa <uptime>:
SYSCALL(uptime)
     caa:	b8 0e 00 00 00       	mov    $0xe,%eax
     caf:	cd 40                	int    $0x40
     cb1:	c3                   	ret    
     cb2:	66 90                	xchg   %ax,%ax
     cb4:	66 90                	xchg   %ax,%ax
     cb6:	66 90                	xchg   %ax,%ax
     cb8:	66 90                	xchg   %ax,%ax
     cba:	66 90                	xchg   %ax,%ax
     cbc:	66 90                	xchg   %ax,%ax
     cbe:	66 90                	xchg   %ax,%ax

00000cc0 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
     cc0:	55                   	push   %ebp
     cc1:	89 e5                	mov    %esp,%ebp
     cc3:	57                   	push   %edi
     cc4:	56                   	push   %esi
     cc5:	53                   	push   %ebx
     cc6:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
     cc9:	85 d2                	test   %edx,%edx
{
     ccb:	89 45 c0             	mov    %eax,-0x40(%ebp)
    neg = 1;
    x = -xx;
     cce:	89 d0                	mov    %edx,%eax
  if(sgn && xx < 0){
     cd0:	79 76                	jns    d48 <printint+0x88>
     cd2:	f6 45 08 01          	testb  $0x1,0x8(%ebp)
     cd6:	74 70                	je     d48 <printint+0x88>
    x = -xx;
     cd8:	f7 d8                	neg    %eax
    neg = 1;
     cda:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
  } else {
    x = xx;
  }

  i = 0;
     ce1:	31 f6                	xor    %esi,%esi
     ce3:	8d 5d d7             	lea    -0x29(%ebp),%ebx
     ce6:	eb 0a                	jmp    cf2 <printint+0x32>
     ce8:	90                   	nop
     ce9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  do{
    buf[i++] = digits[x % base];
     cf0:	89 fe                	mov    %edi,%esi
     cf2:	31 d2                	xor    %edx,%edx
     cf4:	8d 7e 01             	lea    0x1(%esi),%edi
     cf7:	f7 f1                	div    %ecx
     cf9:	0f b6 92 c4 10 00 00 	movzbl 0x10c4(%edx),%edx
  }while((x /= base) != 0);
     d00:	85 c0                	test   %eax,%eax
    buf[i++] = digits[x % base];
     d02:	88 14 3b             	mov    %dl,(%ebx,%edi,1)
  }while((x /= base) != 0);
     d05:	75 e9                	jne    cf0 <printint+0x30>
  if(neg)
     d07:	8b 45 c4             	mov    -0x3c(%ebp),%eax
     d0a:	85 c0                	test   %eax,%eax
     d0c:	74 08                	je     d16 <printint+0x56>
    buf[i++] = '-';
     d0e:	c6 44 3d d8 2d       	movb   $0x2d,-0x28(%ebp,%edi,1)
     d13:	8d 7e 02             	lea    0x2(%esi),%edi
     d16:	8d 74 3d d7          	lea    -0x29(%ebp,%edi,1),%esi
     d1a:	8b 7d c0             	mov    -0x40(%ebp),%edi
     d1d:	8d 76 00             	lea    0x0(%esi),%esi
     d20:	0f b6 06             	movzbl (%esi),%eax
  write(fd, &c, 1);
     d23:	83 ec 04             	sub    $0x4,%esp
     d26:	83 ee 01             	sub    $0x1,%esi
     d29:	6a 01                	push   $0x1
     d2b:	53                   	push   %ebx
     d2c:	57                   	push   %edi
     d2d:	88 45 d7             	mov    %al,-0x29(%ebp)
     d30:	e8 fd fe ff ff       	call   c32 <write>

  while(--i >= 0)
     d35:	83 c4 10             	add    $0x10,%esp
     d38:	39 de                	cmp    %ebx,%esi
     d3a:	75 e4                	jne    d20 <printint+0x60>
    putc(fd, buf[i]);
}
     d3c:	8d 65 f4             	lea    -0xc(%ebp),%esp
     d3f:	5b                   	pop    %ebx
     d40:	5e                   	pop    %esi
     d41:	5f                   	pop    %edi
     d42:	5d                   	pop    %ebp
     d43:	c3                   	ret    
     d44:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
     d48:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
     d4f:	eb 90                	jmp    ce1 <printint+0x21>
     d51:	eb 0d                	jmp    d60 <printf>
     d53:	90                   	nop
     d54:	90                   	nop
     d55:	90                   	nop
     d56:	90                   	nop
     d57:	90                   	nop
     d58:	90                   	nop
     d59:	90                   	nop
     d5a:	90                   	nop
     d5b:	90                   	nop
     d5c:	90                   	nop
     d5d:	90                   	nop
     d5e:	90                   	nop
     d5f:	90                   	nop

00000d60 <printf>:

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, const char *fmt, ...)
{
     d60:	55                   	push   %ebp
     d61:	89 e5                	mov    %esp,%ebp
     d63:	57                   	push   %edi
     d64:	56                   	push   %esi
     d65:	53                   	push   %ebx
     d66:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
     d69:	8b 75 0c             	mov    0xc(%ebp),%esi
     d6c:	0f b6 1e             	movzbl (%esi),%ebx
     d6f:	84 db                	test   %bl,%bl
     d71:	0f 84 b3 00 00 00    	je     e2a <printf+0xca>
  ap = (uint*)(void*)&fmt + 1;
     d77:	8d 45 10             	lea    0x10(%ebp),%eax
     d7a:	83 c6 01             	add    $0x1,%esi
  state = 0;
     d7d:	31 ff                	xor    %edi,%edi
  ap = (uint*)(void*)&fmt + 1;
     d7f:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     d82:	eb 2f                	jmp    db3 <printf+0x53>
     d84:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
     d88:	83 f8 25             	cmp    $0x25,%eax
     d8b:	0f 84 a7 00 00 00    	je     e38 <printf+0xd8>
  write(fd, &c, 1);
     d91:	8d 45 e2             	lea    -0x1e(%ebp),%eax
     d94:	83 ec 04             	sub    $0x4,%esp
     d97:	88 5d e2             	mov    %bl,-0x1e(%ebp)
     d9a:	6a 01                	push   $0x1
     d9c:	50                   	push   %eax
     d9d:	ff 75 08             	pushl  0x8(%ebp)
     da0:	e8 8d fe ff ff       	call   c32 <write>
     da5:	83 c4 10             	add    $0x10,%esp
     da8:	83 c6 01             	add    $0x1,%esi
  for(i = 0; fmt[i]; i++){
     dab:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
     daf:	84 db                	test   %bl,%bl
     db1:	74 77                	je     e2a <printf+0xca>
    if(state == 0){
     db3:	85 ff                	test   %edi,%edi
    c = fmt[i] & 0xff;
     db5:	0f be cb             	movsbl %bl,%ecx
     db8:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
     dbb:	74 cb                	je     d88 <printf+0x28>
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
     dbd:	83 ff 25             	cmp    $0x25,%edi
     dc0:	75 e6                	jne    da8 <printf+0x48>
      if(c == 'd'){
     dc2:	83 f8 64             	cmp    $0x64,%eax
     dc5:	0f 84 05 01 00 00    	je     ed0 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
     dcb:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
     dd1:	83 f9 70             	cmp    $0x70,%ecx
     dd4:	74 72                	je     e48 <printf+0xe8>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
     dd6:	83 f8 73             	cmp    $0x73,%eax
     dd9:	0f 84 99 00 00 00    	je     e78 <printf+0x118>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
     ddf:	83 f8 63             	cmp    $0x63,%eax
     de2:	0f 84 08 01 00 00    	je     ef0 <printf+0x190>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
     de8:	83 f8 25             	cmp    $0x25,%eax
     deb:	0f 84 ef 00 00 00    	je     ee0 <printf+0x180>
  write(fd, &c, 1);
     df1:	8d 45 e7             	lea    -0x19(%ebp),%eax
     df4:	83 ec 04             	sub    $0x4,%esp
     df7:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
     dfb:	6a 01                	push   $0x1
     dfd:	50                   	push   %eax
     dfe:	ff 75 08             	pushl  0x8(%ebp)
     e01:	e8 2c fe ff ff       	call   c32 <write>
     e06:	83 c4 0c             	add    $0xc,%esp
     e09:	8d 45 e6             	lea    -0x1a(%ebp),%eax
     e0c:	88 5d e6             	mov    %bl,-0x1a(%ebp)
     e0f:	6a 01                	push   $0x1
     e11:	50                   	push   %eax
     e12:	ff 75 08             	pushl  0x8(%ebp)
     e15:	83 c6 01             	add    $0x1,%esi
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
     e18:	31 ff                	xor    %edi,%edi
  write(fd, &c, 1);
     e1a:	e8 13 fe ff ff       	call   c32 <write>
  for(i = 0; fmt[i]; i++){
     e1f:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
  write(fd, &c, 1);
     e23:	83 c4 10             	add    $0x10,%esp
  for(i = 0; fmt[i]; i++){
     e26:	84 db                	test   %bl,%bl
     e28:	75 89                	jne    db3 <printf+0x53>
    }
  }
}
     e2a:	8d 65 f4             	lea    -0xc(%ebp),%esp
     e2d:	5b                   	pop    %ebx
     e2e:	5e                   	pop    %esi
     e2f:	5f                   	pop    %edi
     e30:	5d                   	pop    %ebp
     e31:	c3                   	ret    
     e32:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        state = '%';
     e38:	bf 25 00 00 00       	mov    $0x25,%edi
     e3d:	e9 66 ff ff ff       	jmp    da8 <printf+0x48>
     e42:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
        printint(fd, *ap, 16, 0);
     e48:	83 ec 0c             	sub    $0xc,%esp
     e4b:	b9 10 00 00 00       	mov    $0x10,%ecx
     e50:	6a 00                	push   $0x0
     e52:	8b 7d d4             	mov    -0x2c(%ebp),%edi
     e55:	8b 45 08             	mov    0x8(%ebp),%eax
     e58:	8b 17                	mov    (%edi),%edx
     e5a:	e8 61 fe ff ff       	call   cc0 <printint>
        ap++;
     e5f:	89 f8                	mov    %edi,%eax
     e61:	83 c4 10             	add    $0x10,%esp
      state = 0;
     e64:	31 ff                	xor    %edi,%edi
        ap++;
     e66:	83 c0 04             	add    $0x4,%eax
     e69:	89 45 d4             	mov    %eax,-0x2c(%ebp)
     e6c:	e9 37 ff ff ff       	jmp    da8 <printf+0x48>
     e71:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        s = (char*)*ap;
     e78:	8b 45 d4             	mov    -0x2c(%ebp),%eax
     e7b:	8b 08                	mov    (%eax),%ecx
        ap++;
     e7d:	83 c0 04             	add    $0x4,%eax
     e80:	89 45 d4             	mov    %eax,-0x2c(%ebp)
        if(s == 0)
     e83:	85 c9                	test   %ecx,%ecx
     e85:	0f 84 8e 00 00 00    	je     f19 <printf+0x1b9>
        while(*s != 0){
     e8b:	0f b6 01             	movzbl (%ecx),%eax
      state = 0;
     e8e:	31 ff                	xor    %edi,%edi
        s = (char*)*ap;
     e90:	89 cb                	mov    %ecx,%ebx
        while(*s != 0){
     e92:	84 c0                	test   %al,%al
     e94:	0f 84 0e ff ff ff    	je     da8 <printf+0x48>
     e9a:	89 75 d0             	mov    %esi,-0x30(%ebp)
     e9d:	89 de                	mov    %ebx,%esi
     e9f:	8b 5d 08             	mov    0x8(%ebp),%ebx
     ea2:	8d 7d e3             	lea    -0x1d(%ebp),%edi
     ea5:	8d 76 00             	lea    0x0(%esi),%esi
  write(fd, &c, 1);
     ea8:	83 ec 04             	sub    $0x4,%esp
          s++;
     eab:	83 c6 01             	add    $0x1,%esi
     eae:	88 45 e3             	mov    %al,-0x1d(%ebp)
  write(fd, &c, 1);
     eb1:	6a 01                	push   $0x1
     eb3:	57                   	push   %edi
     eb4:	53                   	push   %ebx
     eb5:	e8 78 fd ff ff       	call   c32 <write>
        while(*s != 0){
     eba:	0f b6 06             	movzbl (%esi),%eax
     ebd:	83 c4 10             	add    $0x10,%esp
     ec0:	84 c0                	test   %al,%al
     ec2:	75 e4                	jne    ea8 <printf+0x148>
     ec4:	8b 75 d0             	mov    -0x30(%ebp),%esi
      state = 0;
     ec7:	31 ff                	xor    %edi,%edi
     ec9:	e9 da fe ff ff       	jmp    da8 <printf+0x48>
     ece:	66 90                	xchg   %ax,%ax
        printint(fd, *ap, 10, 1);
     ed0:	83 ec 0c             	sub    $0xc,%esp
     ed3:	b9 0a 00 00 00       	mov    $0xa,%ecx
     ed8:	6a 01                	push   $0x1
     eda:	e9 73 ff ff ff       	jmp    e52 <printf+0xf2>
     edf:	90                   	nop
  write(fd, &c, 1);
     ee0:	83 ec 04             	sub    $0x4,%esp
     ee3:	88 5d e5             	mov    %bl,-0x1b(%ebp)
     ee6:	8d 45 e5             	lea    -0x1b(%ebp),%eax
     ee9:	6a 01                	push   $0x1
     eeb:	e9 21 ff ff ff       	jmp    e11 <printf+0xb1>
        putc(fd, *ap);
     ef0:	8b 7d d4             	mov    -0x2c(%ebp),%edi
  write(fd, &c, 1);
     ef3:	83 ec 04             	sub    $0x4,%esp
        putc(fd, *ap);
     ef6:	8b 07                	mov    (%edi),%eax
  write(fd, &c, 1);
     ef8:	6a 01                	push   $0x1
        ap++;
     efa:	83 c7 04             	add    $0x4,%edi
        putc(fd, *ap);
     efd:	88 45 e4             	mov    %al,-0x1c(%ebp)
  write(fd, &c, 1);
     f00:	8d 45 e4             	lea    -0x1c(%ebp),%eax
     f03:	50                   	push   %eax
     f04:	ff 75 08             	pushl  0x8(%ebp)
     f07:	e8 26 fd ff ff       	call   c32 <write>
        ap++;
     f0c:	89 7d d4             	mov    %edi,-0x2c(%ebp)
     f0f:	83 c4 10             	add    $0x10,%esp
      state = 0;
     f12:	31 ff                	xor    %edi,%edi
     f14:	e9 8f fe ff ff       	jmp    da8 <printf+0x48>
          s = "(null)";
     f19:	bb bc 10 00 00       	mov    $0x10bc,%ebx
        while(*s != 0){
     f1e:	b8 28 00 00 00       	mov    $0x28,%eax
     f23:	e9 72 ff ff ff       	jmp    e9a <printf+0x13a>
     f28:	66 90                	xchg   %ax,%ax
     f2a:	66 90                	xchg   %ax,%ax
     f2c:	66 90                	xchg   %ax,%ax
     f2e:	66 90                	xchg   %ax,%ax

00000f30 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
     f30:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     f31:	a1 a0 14 00 00       	mov    0x14a0,%eax
{
     f36:	89 e5                	mov    %esp,%ebp
     f38:	57                   	push   %edi
     f39:	56                   	push   %esi
     f3a:	53                   	push   %ebx
     f3b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  bp = (Header*)ap - 1;
     f3e:	8d 4b f8             	lea    -0x8(%ebx),%ecx
     f41:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
     f48:	39 c8                	cmp    %ecx,%eax
     f4a:	8b 10                	mov    (%eax),%edx
     f4c:	73 32                	jae    f80 <free+0x50>
     f4e:	39 d1                	cmp    %edx,%ecx
     f50:	72 04                	jb     f56 <free+0x26>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     f52:	39 d0                	cmp    %edx,%eax
     f54:	72 32                	jb     f88 <free+0x58>
      break;
  if(bp + bp->s.size == p->s.ptr){
     f56:	8b 73 fc             	mov    -0x4(%ebx),%esi
     f59:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
     f5c:	39 fa                	cmp    %edi,%edx
     f5e:	74 30                	je     f90 <free+0x60>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
     f60:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
     f63:	8b 50 04             	mov    0x4(%eax),%edx
     f66:	8d 34 d0             	lea    (%eax,%edx,8),%esi
     f69:	39 f1                	cmp    %esi,%ecx
     f6b:	74 3a                	je     fa7 <free+0x77>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
     f6d:	89 08                	mov    %ecx,(%eax)
  freep = p;
     f6f:	a3 a0 14 00 00       	mov    %eax,0x14a0
}
     f74:	5b                   	pop    %ebx
     f75:	5e                   	pop    %esi
     f76:	5f                   	pop    %edi
     f77:	5d                   	pop    %ebp
     f78:	c3                   	ret    
     f79:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
     f80:	39 d0                	cmp    %edx,%eax
     f82:	72 04                	jb     f88 <free+0x58>
     f84:	39 d1                	cmp    %edx,%ecx
     f86:	72 ce                	jb     f56 <free+0x26>
{
     f88:	89 d0                	mov    %edx,%eax
     f8a:	eb bc                	jmp    f48 <free+0x18>
     f8c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    bp->s.size += p->s.ptr->s.size;
     f90:	03 72 04             	add    0x4(%edx),%esi
     f93:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
     f96:	8b 10                	mov    (%eax),%edx
     f98:	8b 12                	mov    (%edx),%edx
     f9a:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
     f9d:	8b 50 04             	mov    0x4(%eax),%edx
     fa0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
     fa3:	39 f1                	cmp    %esi,%ecx
     fa5:	75 c6                	jne    f6d <free+0x3d>
    p->s.size += bp->s.size;
     fa7:	03 53 fc             	add    -0x4(%ebx),%edx
  freep = p;
     faa:	a3 a0 14 00 00       	mov    %eax,0x14a0
    p->s.size += bp->s.size;
     faf:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
     fb2:	8b 53 f8             	mov    -0x8(%ebx),%edx
     fb5:	89 10                	mov    %edx,(%eax)
}
     fb7:	5b                   	pop    %ebx
     fb8:	5e                   	pop    %esi
     fb9:	5f                   	pop    %edi
     fba:	5d                   	pop    %ebp
     fbb:	c3                   	ret    
     fbc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

00000fc0 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
     fc0:	55                   	push   %ebp
     fc1:	89 e5                	mov    %esp,%ebp
     fc3:	57                   	push   %edi
     fc4:	56                   	push   %esi
     fc5:	53                   	push   %ebx
     fc6:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
     fc9:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
     fcc:	8b 15 a0 14 00 00    	mov    0x14a0,%edx
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
     fd2:	8d 78 07             	lea    0x7(%eax),%edi
     fd5:	c1 ef 03             	shr    $0x3,%edi
     fd8:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
     fdb:	85 d2                	test   %edx,%edx
     fdd:	0f 84 9d 00 00 00    	je     1080 <malloc+0xc0>
     fe3:	8b 02                	mov    (%edx),%eax
     fe5:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
     fe8:	39 cf                	cmp    %ecx,%edi
     fea:	76 6c                	jbe    1058 <malloc+0x98>
     fec:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
     ff2:	bb 00 10 00 00       	mov    $0x1000,%ebx
     ff7:	0f 43 df             	cmovae %edi,%ebx
  p = sbrk(nu * sizeof(Header));
     ffa:	8d 34 dd 00 00 00 00 	lea    0x0(,%ebx,8),%esi
    1001:	eb 0e                	jmp    1011 <malloc+0x51>
    1003:	90                   	nop
    1004:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    1008:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
    100a:	8b 48 04             	mov    0x4(%eax),%ecx
    100d:	39 f9                	cmp    %edi,%ecx
    100f:	73 47                	jae    1058 <malloc+0x98>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
    1011:	39 05 a0 14 00 00    	cmp    %eax,0x14a0
    1017:	89 c2                	mov    %eax,%edx
    1019:	75 ed                	jne    1008 <malloc+0x48>
  p = sbrk(nu * sizeof(Header));
    101b:	83 ec 0c             	sub    $0xc,%esp
    101e:	56                   	push   %esi
    101f:	e8 76 fc ff ff       	call   c9a <sbrk>
  if(p == (char*)-1)
    1024:	83 c4 10             	add    $0x10,%esp
    1027:	83 f8 ff             	cmp    $0xffffffff,%eax
    102a:	74 1c                	je     1048 <malloc+0x88>
  hp->s.size = nu;
    102c:	89 58 04             	mov    %ebx,0x4(%eax)
  free((void*)(hp + 1));
    102f:	83 ec 0c             	sub    $0xc,%esp
    1032:	83 c0 08             	add    $0x8,%eax
    1035:	50                   	push   %eax
    1036:	e8 f5 fe ff ff       	call   f30 <free>
  return freep;
    103b:	8b 15 a0 14 00 00    	mov    0x14a0,%edx
      if((p = morecore(nunits)) == 0)
    1041:	83 c4 10             	add    $0x10,%esp
    1044:	85 d2                	test   %edx,%edx
    1046:	75 c0                	jne    1008 <malloc+0x48>
        return 0;
  }
}
    1048:	8d 65 f4             	lea    -0xc(%ebp),%esp
        return 0;
    104b:	31 c0                	xor    %eax,%eax
}
    104d:	5b                   	pop    %ebx
    104e:	5e                   	pop    %esi
    104f:	5f                   	pop    %edi
    1050:	5d                   	pop    %ebp
    1051:	c3                   	ret    
    1052:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
      if(p->s.size == nunits)
    1058:	39 cf                	cmp    %ecx,%edi
    105a:	74 54                	je     10b0 <malloc+0xf0>
        p->s.size -= nunits;
    105c:	29 f9                	sub    %edi,%ecx
    105e:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
    1061:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
    1064:	89 78 04             	mov    %edi,0x4(%eax)
      freep = prevp;
    1067:	89 15 a0 14 00 00    	mov    %edx,0x14a0
}
    106d:	8d 65 f4             	lea    -0xc(%ebp),%esp
      return (void*)(p + 1);
    1070:	83 c0 08             	add    $0x8,%eax
}
    1073:	5b                   	pop    %ebx
    1074:	5e                   	pop    %esi
    1075:	5f                   	pop    %edi
    1076:	5d                   	pop    %ebp
    1077:	c3                   	ret    
    1078:	90                   	nop
    1079:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    1080:	c7 05 a0 14 00 00 a4 	movl   $0x14a4,0x14a0
    1087:	14 00 00 
    108a:	c7 05 a4 14 00 00 a4 	movl   $0x14a4,0x14a4
    1091:	14 00 00 
    base.s.size = 0;
    1094:	b8 a4 14 00 00       	mov    $0x14a4,%eax
    1099:	c7 05 a8 14 00 00 00 	movl   $0x0,0x14a8
    10a0:	00 00 00 
    10a3:	e9 44 ff ff ff       	jmp    fec <malloc+0x2c>
    10a8:	90                   	nop
    10a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
        prevp->s.ptr = p->s.ptr;
    10b0:	8b 08                	mov    (%eax),%ecx
    10b2:	89 0a                	mov    %ecx,(%edx)
    10b4:	eb b1                	jmp    1067 <malloc+0xa7>
