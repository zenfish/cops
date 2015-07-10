.ce 2
\f(Hn\s+2Guide to Account Security\s-2
\fIPhilip R. Moyer
.sp
\f(HN1   WHAT IS AN ACCOUNT?\fR
.br
Accounts allow people to use the computer.  When you get an
account, you are given a password and a home directory.  The home directory
is a place on a disk where you can put your files.  Each account has a login
associated with it.  There is one login per account.  For example, my
login is "prm".
.sp
Each account has unique information associated with it.  One of
these data is the user id (or uid).  
It is a number that identifies the login.
All files created by you will have your uid attached to them.
.sp
The operating system keeps track of who is logged on at any given
time.  It also keeps track of which commands you execute and how much time
it takes to execute them.  It also keeps track of where you logged in.
In some cases, the operating system can keep track of who creates or modifies
files.
.sp
 It is very important that you keep your account secure; any user
who has access to your login and password can masquerade as you.  If that
person does something illegal, you could get blamed.  He or she could also
remove or modify your files.
.sp
\f(HN2   LOGGING IN AND LOGGING OUT\fR
.br
When you want to work on the computer, you must first identify
yourself to the computer and prove you are who you say you are.  This
process of identification and identity verification is called "logging in".
First, the computer identifies itself and prompts you for a login.  Here is
an example:
.sp .5
       \fBdynamo.ecn.purdue.edu  login:\fR
.sp .5
You would then type in your login and the computer would prompt for a
password:
.sp .5
        \fBdynamo.ecn.purdue.edu  login:\fC prm\fB
        Password:\fR
.sp .5
You then type in your password.  The computer won't print the password
as it is typed so other users can't see it on the screen.  After the computer
checks to see that the password matches the one associated with the given
login, it starts a shell and grants you access to the machine.
.sp
You log in differently depending on what shell you are using.
If you are using Bourne shell (your prompt is "$"), you log
out by typing the control key and the "d" key at the same time.
If you are using csh, type the word "exit" or "logout" and you
will be logged out.  The computer records the times you
logged in and logged out.
.sp
\f(HN3   PASSWORDS\fR
.br
Choosing a good password is very important, because unauthorized
users are often able to steal accounts or gain access to a system by
guessing passwords.  People who try to gain unauthorized access to a
computer or a specific account are called "crackers".  If your account is
compromised, because of either a bad password or other means, the cracker
can not only remove or modify any of your files, but he/she can also attack
other users on the system, or other systems on the network.
.sp
Good passwords are difficult to create; care and thought should go
into each one.  Here are some guidelines for choosing passwords.
.sp
Bad passwords are:
.nf
.in +.3i
- your login in any form 
         (as-is, reversed, capitalized, doubled, etc)
- any first or last name, yours or someone else's
          (regardless of ordering or capitalization)
- license plate numbers
- phone numbers
- social security numbers
- brands or styles of automobiles
- street, city, state or country names
- all digits or all of the same letter
- any word found in a dictionary, English or other
- passwords shorter than six characters
- famous product names (Budweiser, Ruffles, etc)
- cartoon characters
.in -.3i
.fi
.sp
Good passwords are usually pieces of several words, with odd
capitalizations.  A good password may include punctuation or other
non-alphabetic characters.  Using digits in unexpected locations can
make a password better.
.sp
If you need to know which machines you have accounts on here at ECN,
you can type 
.BX "lname\ -l\ -v\ <login>"\ , 
where <login> is your login.  This will
display a list of machines on which you have accounts.
.sp
Use the passwd command to change your password.  Just type 
.BX "passwd"
and you will be prompted for your old password (to verify that you are
authorized to change it) and a new password.  Then you will be prompted
for the new password again, to make sure you didn't mis-type the new
password.  To change your password on all ECN hosts on
which you have accounts, type 
.BX "passwd\ -n"\ . 
Type
.BX "man\ passwd" 
for more information about how to change your password.
.sp
Note: it may take up to fifteen minutes for a password change to take
effect, so you may want to wait awhile after changing your password before
you try the new one.
.sp
\f(HN4   KEEPING YOUR PASSWORD SECURE\fR
.br
You should change your password as soon as you get an account, and
then you should change it once every one or two months, just to be sure it
isn't being used by anyone else.
.sp
Don't tell anyone what your password is, under any circumstances.  
Let me emphasize that.  Don't tell ANYONE.  Under ANY circumstances.
There are crackers who have been known to send mail that appears to be from
the system administrator, asking you to change your password to something
they give you.  DON'T EVER DO THIS!  There is *no* legitimate reason for
ANYONE to ask for your password.  If you ever get mail like this, go
to your site specialist and report the incident.
.sp
Don't write your password down.  It's too easy for someone to discover
it.  You should choose a password that you can remember.  If, however, you
absolutely must write down your password, don't write it anywhere obvious,
like on a post-it note stuck to your terminal, on the front of your
notebook, or on a piece of paper next to the terminal.  Write it on something
in your wallet and then be tricky by changing the written password 
in some way (like leaving out two key letters);
so you can still remember it, but it is harder for a someone who
sees the paper to get into the account.  Don't ever write your login and
password on the same piece of paper.
.sp
You should also be very careful that someone isn't watching you when
you log in.  Many people can tell what you are typing just by watching your
fingers on the keyboard.
.sp
\f(HN5   DIRECTORIES AND FILES\fR
.br
All information on the computer is stored in files.  A file is
just what it sounds like, a container for data.  A directory is a special
file that contains other files or directories.  You can list which files
are in a directory using the \fIls\fR command.  
For example, here's what \fIls\fR says about the directory 
(/home/harbor3/prm/pub/articles) where I'm located.
.TS
tab (@);
l l l l.
RFC1147.ps@acct.sec@imp.tech@new.security
orange-book@privacy@pu.environ@ritalin
s.serv	@s.serv.tr@style@wwarticle
zap
.TE
You can use \fIls\fR to find out additional information about files by using
the "-l" option.  For example, if I wanted more information about the
file acct.sec in the list above, I would type 
.BX "ls\ -l\ acct.sec"\ .  
Here is what happens when I do that:
.sp .5
\fC\s-2-rw-r--r--  1 prm  8058 Aug 19 11:22 acct.sec\fR\s+2
.DL
.LI
The first field shown as, "\fC-rw-r--r--\fR", 
is the file type and permission bits.
More information about permission codes is given below.
.LI
The second field, "1", is the number of links to the file.  In this case,
the file has only one name.  Other links can be made with the "ln" command.
.LI
The third field, "prm", is the file's owner.  The login prm owns this file.
.LI
The fourth field, "8058", is the size of the file in number of characters.
.LI
The fifth field, "Aug 19 11:22", is the time the file was last modified.
.LI
The last field is the name of the file.
.LE
.sp
\f(HNPermission Codes\fR
.br
The first character in the type/permission field is the
file type.
If the file is a directory,
the first character will be a "d".
If it is a regular file,
the first character will be "-".
.sp
The next nine characters are access permission flags.  The leftmost three
are owner permissions, the middle three are group permissions, and the
rightmost three are world permissions.  The letter "r" grants read
permission, the letter "w" grants write permission, and the letter "x"
grants execute permission.
.sp
In the above example,
the permissions for the owner, "prm", are "rw-".  That
means the owner "prm" can read and write the file, but not execute it.
The permissions for the file's group are "r--", as they are for the world.
NOTE THAT ALL ECN USERS ARE BY DEFAULT IN GROUP "OTHER"!  FILES
OWNED BY GROUP OTHER WITH GROUP WRITE PERMISSION SET ARE VERY
CLOSE TO BEING WORLD WRITABLE!  
If a file has modes "\fCrw-rw----\fR" and is owned by group other,
everyone on the computer can write to the file!  You can see group
ownership on a file by using the "g" option with the "l" option to \fIls\fR.
For example, when I type 
.BX "ls -lg acct.sec" 
I get the following:
.nf
.sp .5
\fC\s-2-rw-r--r--  1 prm  other  8058 Aug 19 11:22 acct.sec\fR\s+2
.fi
.sp
The "other" is the group owner of the file.
.sp
You can use the \fIchmod\fR command to change file permissions.  The character
"+" means add permission and the character "-" means deny permission.  For
example, if I wanted to let people in group "other" write on my file, I
would type 
.BX "chmod\ g+w\ acct.sec"\ .  
Whereas if I want to deny other people permission
to look at this file, I could type 
.BX "chmod\ go-r\ acct.sec" 
and the read permission on the file would be revoked.
.sp
There is a shorthand way of representing file modes.  Each permission
category (owner, group, and world) is given a number which represents
the bits set in the permission field. 
Here is a table that explains this numbering system:
.TS
center box tab (@);
c c c c
l n n n. 
@Owner@Group@World
_
Read@400@40@4
Write@200@20@2
Execute@100@10@1
None@0@0@0
.TE 
To use this table, merely add up the permissions you want.
For example, a file that is mode 644 has owner read and
write permission (400 + 200), group read permission (40),
and world read permission (4).
.sp 
You can use this shorthand with \fIchmod\fR as well.  Just use the
number instead of the symbolic representation.  If you want
to change the mode of your \fI.login\fR from 755 to 644, you can type 
.BX "chmod\ 644\ .login"\ .
.sp
Your home directory should be mode 700, 711, or 755.  You should not allow
others write permission to your directory!  That would give them permission
to create or destroy files at will.
.sp
Important files should be mode 644 or 600.  Only rarely is it important
to make a file mode 666, which is world-writable.
.sp
\f(HN6   IMPORTANT FILES\fR
.br
Most accounts have special files called "dot" files.  These files control
the startup, environment, and execution of the shell and some programs.
It is very, very important that these files not be writable by anyone
but you!  If someone else can write those files, they can take control
of your account in a matter of minutes!  Then they'll be you, which means
they can do anything you can do: read, write or modify files; send mail;
talk to other users; print documents.  Make sure that permissions on
these files are set to 644, or, better yet, 600:
.sp 2
.TS
center tab (@);
l l l.
 .login@.logout@.cshrc
 .bashrc@.kshrc@.xinitrc
 .exrc@.dbxinit@.profile
 .sunview@.mwmrc@.twmrc
.TE
\f(HN7   PHYSICAL SECURITY\fR
.br
Try to be aware of physical security.  When you are logged in on a terminal
or workstation, don't leave it without locking the screen.  Often, this
means that you shouldn't even go to the next room to get output without
locking your screen.  It only takes two commands ("cp and chmod") for
someone to steal access to your account if they can find it logged in and
unattended, so be careful!
.sp
\f(HN8   ACCOUNT SHARING\fR
.br
You may, at one time or another, feel you need to give someone else access
to your account.  There are several ways you could go about doing this,
the most common of which are \fI.rhosts\fR files, 
giving the person your password,
and making your directory mode 777.  Please don't give anyone else access
to your account.  It's too easy for them to do something malicious.  Don't
let a friend set up a dot file for you.  Don't use programs in other people's
directories.  Don't trust people to leave your account alone.  If you let
someone edit your \fI.login\fR because 
you don't really understand how a \fI.login\fR works, 
you've essentially given them your account, even if you change
the password.
.sp
ECN prohibits account sharing.  The penalty for account sharing varies from
department to department in Engineering.  Remember, if someone using your
account commits a crime, you are still liable for that crime.
.sp
\f(HN9   CHECKING YOUR ACCOUNT\fR
.br
There is a program called \fIcheckacct\fR that will look through your account
and warn you of any problems it finds.  
It will tell you about 
.AL
.LI
bad modes on your files 
.LI
files in your directory that aren't owned by you
.LI
other users in your .rhosts
.LI
other potential security problems
.LE
.sp
To use the program, type 
.BX "checkacct"\ .
.sp
In addition we regularly run the COPS system security program.
This program produces a listing of accounts with that
have security problems.
E-mail is sent to the account owner with hints on how to repair
the security weakness.
