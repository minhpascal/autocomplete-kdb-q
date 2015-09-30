/ IP Address.
/ @example
/ q).z.a
/ 2130706433
/ q)"i"$0x0 vs .z.a
/ 127 0 0 1
/ @see .Q.host .z.h
.z.a

/ Auth from cookie.
/ {@link See more.|http://code.kx.com/wiki/Reference/dotzdotac}
.z.ac

/ Dependencies.
/ Returns the dependency dictionary
.z.b

/ Bad message.
/ {@link See more.|http://code.kx.com/wiki/Releases/ChangesIn2.7#IPCMessageValidator}
/ @param x message Bad message.
.z.bm

/ Physical core count.
.z.c

/ Action on exit.
/ {@link See more.|http://code.kx.com/wiki/Reference/dotzdotexit}
/ @param x int Exit argument.
/ @see .z.pc exit
.z.exit

/ Returns the name of the q script as a symbol.
.z.f

/ Returns the host name as a symbol.
/ {@link See more.|http://code.kx.com/wiki/Reference/dotzdoth}
/ @see .Q.host .z.a
.z.h

/ Returns the process id as an integer.
.z.i

/ Return the date on which the version of kdb+ being used was released.
.z.k

/ Return the major version number of the version of kdb+ being used as a float (so a test version of 2.4t will be reported as 2.4).
.z.K

/ Returns the license information as a list of strings.
.z.l

/ System gmt time (as timespan) in nanoseconds.
.z.n

/ System local time (as timespan) in nanoseconds.
.z.N

/ Return the kdb+ operating system version as a symbol.
.z.o

/ System gmt timestamp in nanoseconds.
.z.p

/ System localtime timestamp in nanoseconds.
.z.P

/ Port close - called AFTER a connection has been closed.
/ @param x handle The closed handle.
/ @see .z.po .z.pw
.z.pc

/ Sync request handler.
/ When .z.pg is set, it is called with the object that is passed to this kdb+ session via a synchronous request. The return value, if any, is returned to the calling task.
/ @param x request The incoming request.
/ @see .z.ps .z.ph .z.pp
.z.pg

/ peach handles.
/ {@link See more.|http://code.kx.com/wiki/Reference/dotzdotpd}
.z.pd

/ Called when a synchronous http request comes into the kdb+ session.
/ {@link See more.|http://code.kx.com/wiki/Reference/dotzdotph}
/ @param x request List with two values - the request body and headers.
/ @see .z.pp .z.pm .z.pg .z.ps
.z.ph

/ The default handler for input.
/ As this is called on every line of input it can be used to log all console input, or even to modify the output - if for example you prefer the more compact 2.3 way of formatting tables you can reset the output handler.
/ @param x string The input.
.z.pi

/ Pass http OPTIONS method through to .z.pm as (`OPTIONS;requestText;requestHeaderDict).
.z.pm

/ Called when a connection to a kdb+ session has been initialized, i.e. after it's been validated against any -u/-U file and .z.pw checks.
/ @param x handle The incoming handle.
/ @see .z.pc .z.pw
.z.po

/ Called when an http post request comes into the kdb+ session.
/ @param x request List with two values - the request body and headers.
/ @see .z.pp .z.pm .z.pg .z.ps
.z.pp

/ Async request handler.
/ When .z.ps is set, it is called with the object that is passed to this kdb+ session via an asynchronous request. The return value is discarded.
/ @desc Note that .z.ps is used in preference to .z.pg when messages are sent to the local process using handle 0.
/ @param x request The incoming request.
/ @see .z.pg .z.ph .z.pp
.z.ps

/ Called AFTER the -u/-U checks, and BEFORE .z.po when opening a new connection to a kdb+ session.
/ @param username symbol Username.
/ @param pass string Password.
/ @returns boolean Success or failure.
/ @see .z.po .z.pc
.z.pw

/ Quiet mode.
.z.q

/ Returns the current function.
/ Can be used to generate recursive function calls, for example:
/ @example
/ q)fact:{$[x<=0;1;x*.z.s x-1]}
/ q)fact[5]
/ 120
.z.s

/ Function which is invoked on intervals of the timer variable (\t).
/ @param x timestamp Current time.
.z.ts

/ Returns user's name as a symbol.
/ When called inside a .z.p? callback it is the user of the client session, not the current user.
.z.u

/ Value set.
/ Once .z.vs is defined, it is called with two arguments after a value is set globally in the root namespace (e.g. a, a.b).
/ The first argument is the symbol of the variable that is being modified and the second is the index. This is not triggered
/ for function local variables, nor globals that are not in the root namespace (e.g. those prefixed with a dot such as .a.b).
/ @param x symbol Variable.
/ @param y value Index.
/ @desc The following example sets .z.vs to display the symbol, the index and the value of the variable.
/ @example
/ q).z.vs:{0N!(x;y;value x)}
/ q)m:(1 2;3 4)
/ (`m;();(1 2;3 4))
/ q)m[1;1]:0
/ (`m;1 1;(1 2;3 0))
.z.vs

/ Connection handle, 0 for current session console.
.z.w

/ Websocket port close -- called AFTER a websocket connection has been closed.
/ @param x handle The closed handle.
/ @see .z.wo .z.ws
.z.wc

/ Called when a websocket connection to a kdb+ session has been initialized, i.e. after it's been validated against any -u/-U file and .z.pw checks.
/ @param x handle The opened handle.
/ @see .z.wc .z.ws
.z.wo

/ Returns a dictionary of ipc handles with the number of bytes waiting in their output queues.
.z.W

/ Called when a message on a websocket arrives.
/ If the incoming message is a text message the parameter is a char vector; for a binary message the parameter is a byte vector.
/ @desc Sending a websockets message is limited to async messages only (sync is 'nyi). A char vector will be sent as a text message; a byte vector as a binary message.
/ @param x vector The message.
/ @see .z.wo .z.wc
.z.ws

/ Returns the command line arguments as a list of strings.
/ {@link See more.|http://code.kx.com/wiki/Reference/dotzdotx}
/ @see .Q.opt .Q.def
.z.x

/ Returns UTC time as a datetime scalar.
.z.z

/ Returns local time as a datetime scalar.
.z.Z

/ Returns UTC time.
.z.t

/ Returns local time.
.z.T

/ Returns UTC date.
.z.d

/ Returns local date.
.z.D

/ Zip defaults.
/ {@link See more.|http://code.kx.com/wiki/Reference/dotzdotzd}
.z.zd

/ Adds y months to a date x.
/ @param x date Date.
/ @param y int Months.
.Q.addmonths

/ Returns the ip-address as an integer (same format as .z.a) from a hostname symbol.
/ @see .Q.host .z.a
.Q.addr

/ Return the hostname as a symbol for an integer ip-address.
/ @see .Q.addr .z.a
.Q.host

/ Fills missing tables.
/ @example .Q.chk[`:hdb]
.Q.chk

/ Count a partitioned table (passed by value). Populates .Q.pn cache.
.Q.cn

/ Useful for creating filepaths, suffixed stock symbols, etc.
/ @example
/ q).Q.dd[`:dir]`file
/ `:dir/file
/ q){x .Q.dd'key x}`:dir
/ `:dir/file1`:dir/file2
/ q).Q.dd[`AAPL]"O"
/ `AAPL.O
.Q.dd

/ Saves a table splayed to a specific partition of a database sorted (`p#) on a specified field.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotdpft}
/ @param dir symbol Directory.
/ @param partition date Partition, usually a date.
/ @param column symbol Column with `#p attribute.
/ @param table symbol Table name.
/ @example .Q.dpft[`:db;2007.07.23;`sym;`trade]
.Q.dpft

/ Loop M&1000000 rows at a time - load/process/save.
.Q.dsftg

/ Defaults and types can be provided with .Q.def.
/ @example .Q.def[`abc`xyz`efg!(1;2.;`a)].Q.opt .z.x
.Q.def

/ Enumerate a table in a DB.
/ {@link See more.|http://code.kx.com/wiki/Cookbook/SplayedTables#Enumeratingvarcharcolumnsinatable}
/ @param dir symbol DB directory.
/ @param table table Table to be enumerated.
/ @example .Q.en[`:dir] trade
.Q.en

/ Parallel on cut - runs multiple threads if possible.
/ @param f function Function to apply to the vector elements.
/ @param vec vector Vector.
/ @example .Q.fc[f] vec
.Q.fc

/ Appends columns to a table with null values.
/ {@lin See more.|http://code.kx.com/wiki/DotQ/DotQDotff}
.Q.ff

/ .Q.fk[col] (new in 2.4) will return ` if the column is not an fkey or `tab if the column is a fkey into tab.
.Q.fk

/ Formats a number.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotfmt}
/ @param l int Total char number.
/ @param d int Decimal places.
/ @param v vector Numbers.
/ @example .Q.fmt[6;2]each 1 234
.Q.fmt

/ .Q.f will create a string like %.2f.
/ .Q.f multiplies the incoming number by the number of significant digits you request, rounds it to a long, stringifies it, then then positions the "." at the number of sig digits from the right.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotf}
.Q.f

/ Loops over a file and grabs convenient sized lumps of complete records ("\n" delimited) and allows you to apply a function to each record.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotfs}
.Q.fs

/ Loops over a file and grabs specifically sized lumps of complete records ("\n" delimited) and allows you to apply a function to each record.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotfsn}
.Q.fsn

/ Takes a function designed for simple (non-keyed) tables, and creates a new function that also works on keyed tables.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotft}
.Q.ft

/ Apply f to every unique element of the vector and then to copy those results to the whole vector.
/ @param f function Unary function.
/ @param v vecotr Input vector.
/ @example .Q.fu[f] vec
.Q.fu

/ Invokes the garbage collector.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotgc}
/ @see .Q.w
.Q.gc

/ Save all tables and notify host.
/ @example .Q.hdpf[historicalport;directory;partition;`p#field]
.Q.hdpf

/ .Q.id can be used on atoms to remove non-alphanumeric characters, or on tables to rename columns by removing characters that interfere with select/exec/update and adding "1" to column names which clash with commands in .q namespace.
.Q.id

/ Returns rows using indecies into a parted table.
/ {@link See more.|http://code.kx.com/wiki/DotQ/DotQDotind}
.Q.ind

/ j10 encodes against the alphabet .Q.b6, this is a base64 encoding.
/ @see .Q.x10
.Q.j10

/ j12 encodes against .Q.nA, a base36 encoding.
/ @see .Q.x12
.Q.j12

/ Decode strings of length up to 10 against restricted alphabets.
/ @see .Q.j10
.Q.x10

/ Decode strings of length up to 12 against restricted alphabets.
/ @see .Q.j12
.Q.x12

/ .Q.k is checked against .z.K at startup to ensure that the executable and the copy of q.k being used are compatible
.Q.k

/ Implements \l
.Q.l

/ Added in v3.1, keeps partitions mapped to avoid the overhead of repeated file system calls during a select.
.Q.MAP

/ Command-line options can be converted to a dictionary using convenient .Q.opt function.
.Q.opt

/ Locate a table (sensitive to par.txt).
/ @example .Q.par[`:.;2010.02.02;`quote]
.Q.par

/ Returns 1b if given a partitioned table, 0b if given a splayed table, and 0 for anything else.
.Q.qp

/ Returns 1b if x is a table, 0b otherwise.
.Q.qt

/ Format an object to plain text, as used by the q console. Obeys console width and height set by \c.
/ @see .Q.s1 show
.Q.s

/ Format an object to plain text, as used by the old q console. Obeys console width and height set by \c.
/ @see .Q.s show
.Q.s1

/ Returns character type code of argument.
.Q.ty

/ Resolves splayed tables and globals.
.Q.v

/ Returns a table as a dictionary of column values.
.Q.V

/ Set a subview in a historical DB.
/ @example .Q.view 2#date
.Q.view

/ Reserved names.
.Q.res

/ Q types.
.Q.t

/ Capital ANSI letters.
.Q.A

/ Lower case ANSI letters.
.Q.a

/ Digits.
.Q.n

/ Digits and capital letters.
.Q.nA

/ Digits, all letters and underscore.
.Q.na

/ Accumulates the memory stats from \w into a more readable dictionary.
.Q.w

/ The abs function computes the absolute value of its argument. Null is returned if the argument is null.
/ @ginfo
/ @param x value Input value.
/ @returns value |x|
/ @example abs -10
/ abs (10i;1f)
/ abs `a`b!1 -2
/ @see neg signum
abs

/ The acos function computes the arc cosine of its argument.
/ Null is returned if the argument is not between -1 and 1.
/ @ginfo
/ @param x value A number(s).
/ @returns float Arccosine of x.
/ @example acos 0.3
/ acos 0.1 0.2
/ acos `a`b!0.1 0.2
/ @see cos sin asin tan atan
acos

/ Joins tables along columns that are usually time columns.
/ In the join, the last value (most recent time) is taken. {@link See more.|http://code.kx.com/wiki/Reference/aj}
/ @param cols (symbol list) Columns to join.
/ @param t1 table First table.
/ @param t2 table Second table.
/ @returns table Join of two tables.
/ @example aj[`sym`time;t1;t2]
/ @desc  The columns need not be keys on t1, and t2 must not have a key. Moreover common columns
/ in t1 and t2 must be of the same type and the last column  must be a common column, typically time, although aj can work on any other type if sorted.
/ @desc The result is a table with records from the left join of t1 and t2.
/ For each record in t1, the result has one record with the items in t1, and
/ if there are matching records in t2, the items of the last (in row order) matching record are appended to those of t1 or
/ if there is no matching record in t2, the remaining columns are null
/ @see lj ljf ej ij pj uj upsert asof aj0 wj wj1
aj

/ Joins tables along columns that are usually time columns. See {@link aj}.
aj0

/ Function all returns a boolean atom 1b if all values in its argument are non-zero, and otherwise 0b.
/ @ginfo
/ @param x value Input value.
/ @example
/ all 0 1 2
/ all 10
/ all `a`b!0 1
/ @see any not and or min max
all

/ The verb 'and' returns the minimum of its arguments.
/ @ginfo
/ @param x value First argument.
/ @param y value Second argument.
/ @example
/ "1" and "12345"
/ 1 2 3 and 2 3 4
/ 1 and `a`b!1 2
/ @see all any not or min max
and

/ Function any returns a boolean atom 1b if any value in its argument is non-zero, and otherwise 0b.
/ @ginfo
/ @param x value Input value.
/ @example
/ any 1 2 3
/ any "abc"
/ any `a`b!1 2
/ @see all not and or min max
any

/ Function asc sorts a list.
/ <ul><li>on a simple list asc acts as expected, and sets the `s# attribute indicating that the list is sorted.</li>
/ <li>on a mixed list, it sorts within datatype.</li>
/ <li>on a dictionary, it sorts by the values and applies the `s# attribute.</li>
/ <li>on a table, it sorts by the first non-key column and applies the `s# attribute. </li></ul>
/ @param x value See above.
/ @example
/ asc 3 2 1 4
/ asc ([] a:til 10) / this will also add `s# to the table itself.
/ asc `a`b!2 1
/ @see desc iasc idesc xasc xdesc
asc

/ The asin function computes the arc sine of its argument.
/ Null is returned if the argument is not between -1 and 1.
/ @ginfo
/ @param x value A number(s).
/ @returns float Arcsine of x.
/ @example asin 0.1
/ asin 0.1 0.2
/ @see sin cos acos tan atan
asin

/ As of join.
/ The verb asof takes a table as the left argument and a dictionary or a table as a right argument.
/ The last key of the dictionary, or the last column of the table, on the right must correspond to a time column of the table on the left.
/ The result is the values from the last rows matching the rest of the keys and time less or equal to the time in the right hand side table.
/ {@link See more.|http://code.kx.com/wiki/Reference/asof}
/ @see lj ljf ej ij pj uj upsert aj aj0 wj wj1
asof

/ The atan function computes the arc tangent of its argument; that is the value whose tangent is the given argument.
/ @ginfo
/ @param x value A number(s).
/ @returns float Arctan of x.
/ @example atan 0.1
/ atan 0.1 0.2
/ @see sin cos asin acos tan
atan

/ Function attr returns the attributes of its argument. It can be applied to all data types.
/ @returns symbol One of `, `s, `u, `p, `g.
/ @example
/ `s = attr asc 3 2 1
/ `g = attr `g#asc 2 3 1  / only one attribute can be set
attr

/ Computes the arithmetic mean of a list of numbers.
/ Null is returned if the list is empty, or contains both positive and negative infinity. Any null elements in the input list are ignored.
/ @ginfo
/ @param x value Input value.
/ @returns (float|float dictionary) The average of x.
/ @example
/ avg 1
/ avg til 10
/ avg `a`b!1 2
/ avg ([] a: til 10; b: til 10) / -> `a`b!4.5 4.5
/ @see avgs mavg wavg count max min med sum prd
avg

/ Computes the running averages of a list of numbers, i.e. applies function avg to successive prefixes of the argument.
/ Can be applied to any suitable type including tables and dictionaries.
/ @ginfo
/ @param x value Input value.
/ @example
/ avgs 1
/ avgs til 10
/ avgs `a`b!1 2
/ avgs ([] a: til 10; b: til 10)
/ @see avg mavg wavg maxs mins prds ratios sums
avgs

/ bin gives the index of the last element in x which is &lt;=y. The result is -1 for y less than the first element of x.
/ {@link See more.|http://code.kx.com/wiki/Reference/bin}
/ @param x list Search list, must be sorted.
/ @param y value Value(s) to search.
/ @returns (atom|list) Indecies of y.
/ @example
/ til[10] bin 1
/ (`a`b!1 2) bin 2
/ .Q.a bin "p"
/ ([] a: til 10; b: til 10) bin 1 1
/ @see binr ss
bin

/ binr (bin right), introduced in kdb+3.0 2012.07.26, gives the index of the first element in x which is &gt;=y.
/ {@link See more.|http://code.kx.com/wiki/Reference/bin}
/ @see bin ss
binr

/ For a floating point number x, returns the ceiling of x, i.e. the least integer greater than or equal to x. An integer x is returned unchanged.
/ @ginfo
/ @param x value Input value.
/ @returns long Ceiling of x
/ @example
/ ceiling 10
/ ceiling 10.1 21.1
/ ceiling `a`b!1.1 2.3
/ @see floor div mod
ceiling

/ cols returns a symbol list of the column names of a table. The table can be passed by reference or by value.
/ @param x (table|symbol) Table.
/ @returns (symbol list) Table columns.
/ @example cols ([] a: til 10)
/ @see xcol xcols keys fkeys
cols

/ Returns the correlation of its arguments as a floating point number between -1f and 1f. Perfectly correlated data results in a 1 or -1.
/ @param x (number list) First arg.
/ @param y (number list) Second arg.
/ @returns float Correlation of x and y.
/ @example 1 2 3 cor 1.1 1.9 3.1
/ @see var svar cov scov dev mdev sdev
cor

/ The cos function computes the cosine of its argument, taken to be in radians. The result is between -1 and 1, or null if the argument is null or infinity.
/ @ginfo
/ @param x value  A number(s).
/ @returns float Cosine of x.
/ @example cos 0.1
/ cos 0.1 0.2 0.3
/ @see sin asin acos tan atan
cos

/ count applies to atoms, lists, dictionaries and tables, and returns the number of elements in its argument (rows for a table and entries for dictionary).
/ @param x value Input value.
/ @returns long The value's count.
/ @example
/ count 1
/ count `a`j`i
/ count `a`b!1 2
/ @see avg max min med sum prd
count

/ Returns the covariance of its arguments as a floating point number.
/ @param x (number list) First arg.
/ @param y (number list) Second arg.
/ @returns (float list) Covariance of x and y.
/ @example 1 2 3 cov 1.1 1.9 3.1
/ @see scov var svar cor dev mdev sdev
cov

/ Returns the cross product (i.e. all possible combinations) of its arguments.
/ @param x value Anything
/ @param y value Anything that can be combined with x.
/ @returns value Combinations of x and y or a table/dictionary if x and y are tables/dictionaries.
/ @example
/ 1 cross til 10
/ ([] a:til 10) cross ([] b: til 10)
/ (`a`b!1 2) cross `b`c!3 4
cross

/ csv is a predefined global constant with a value of ",".
csv

/ Verb cut splits its right argument according to its left.
/ <ul><li>if X is a single integer, cut splits its right argument into X-sized parts.</li>
/ <li>if X is a non-decreasing list of integers, it cuts Y at the indices given in X. The result R has the same number of elements as X and will always be a list.</li>
/ <li>If X is a list and Y is an atom 'cut' behaves as drop</li></ul>
/ {@link See more.|http://code.kx.com/wiki/Reference/cut}
/ @example
/ 4 cut til 10     / split by 4
/ 2 4 9 cut til 10 / split by idxs
/ "abcde" _ 3      / drop 3d item
cut

/ Delete rows and columns from a table.
/ @example
/ delete from table where a = `c / delete rows
/ delete n from table            / delete columns
/ delete a from `.               / delete keys from dict
/ @desc Deletion is in-place if the table name is referred to as a symbol, `table rather than table.
/ @see exec insert select upsert update
delete

/ The uniform function deltas returns differences between consecutive pairs. It applies to all numeric and date types.
/ @ginfo
/ @example
/ r:deltas y     / start with 0
/ r:deltas[x;y]  / start with x
/ deltas ([] a: til 10)
/ @see differ
deltas

/ Function desc sorts a list in descending order:
/ <ul><li>on a simple list desc acts as expected.</li>
/ <li>on a mixed list it sorts within datatype.</li>
/ <li>when applied to a dictionary or table, it sorts by the value or the first column.</li></ul>
/ The sort is stable, i.e. it preserves order among equals.
/ @param x value See above.
/ @example
/ desc 3 2 1 4
/ desc ([] a:til 10)
/ desc `a`b!2 1
/ @see asc iasc idesc xasc xdesc
desc

/ Computes the standard deviation of a list (as the square root of the variance).
/ @param x (number|number list|dictionary) Input value.
/ @returns float Deviation of x.
/ @example dev 1.1 1.2 1.3
/ @see mdev sdev cov scov cor var svar
dev

/ The uniform function differ returns a boolean list indicating whether consecutive pairs differ. It applies to all data types.
/ @ginfo
/ @example
/ r:differ y     / start with 0
/ r:differ[x;y]  / start with x
/ differ ([] a: til 10)
/ @see deltas
differ

/ Returns the distinct (unique) elements of its argument, and applies to data types other than dictionary.
/ @param x value Any value except dictionary.
/ @example
/ distinct 1 2 3
/ distinct ([] a:1 2 2 3 3)
distinct

/ Verb div performs integer division.
/ @ginfo
/ @param x value First arg.
/ @param x value Second arg.
/ @example
/ 10 div 3
/ 10 11 div 2 3
/ (`a`b!10 13) div 5 6
/ @see ceiling floor mod
div

/ Iterate an expression N times.
/ @example do[count;exp1;...;expn]
/ do[1000; exp 1.1]
/ @see while
do

/ The dsave function saves global tables to disk as splayed, enumerated, indexed kdb+ tables. It is available since Kdb+ v3.2 2014.05.07.
/ The left argument is the save path as a symbol or symbol vector, the right argument is a list of table names,
/ and the result is the list of table names. The first column of each table saved has the `p attribute applied to it. If the path
/ is a vector, the first element is the hdb root (where the sym file, if any, will be stored), while the remaining elements are a path within the hdb (e.g. a partition).
/ {@link See more.|http://code.kx.com/wiki/Reference/dsave}
/ @param x (symbol|symbol list) Path.
/ @param y (symbol|symbol list) Tables.
/ @example
/ `:/tmp/db1 dsave`sym xasc'`t`q
/ `:/tmp/db2`2015.01.01 dsave`sym xasc'`t`q
dsave

/ The adverb each takes a function on its left, and creates a new function that applies to each item of its argument.
/ @param f value Function or similar object.
/ @param v value Object to apply f to.
/ @example
/ {x+1} each til 10
/ til[10] each 1 3 5
/ `globalFunc each til 10
/ @see over scap prior peach
each

/ The ej verb joins two tables on a given list of columns. Since 2.6.
/ @example ej[c;t1;t2]
/ @desc where c is list of column names (or a single column name) and t1 and t2 are tables.
/ The result has one combined record for each row in t1 that matches t2 on columns c.
/ @see lj ljf ij pj uj upsert asof aj aj0 wj wj1
ej

/ enlist returns its arguments in a list. Where the argument is a dictionary, the result is the corresponding table.
/ @param x value Any value.
/ @returns list List with one element or a table with one row.
/ @example
/ enlist 1
/ enlist `a`b!1 2
/ @see first last
enlist

/ The eval function is the dual to {@link parse} and can be used to evaluate a parse tree as returned by that function (as well as manually constructed parse trees).
/ @param expr (parse expression) Parse expression.
/ @returns value Evaluates expr and returns its value.
/ @example
/ eval parse "1+2"
/ eval (+;1;2)
/ @see reval parse value get
eval

/ The verb except returns all elements of its left argument that are not in its right argument.
/ @param l list A list.
/ @param v (value|list) A list or one value.
/ @example
/ til[10] except 1
/ .Q.a except "abc"
/ @see in inter union
except

/ Selects a subset of data from a table or dictionary.
/ {@link See more.|http://code.kx.com/wiki/Reference/exec}
/ @example
/ exec qty from sp              / result is a list
/ exec (qty;s) from sp          / two lists
/ exec qty, s from sp           / two lists in a dictionary
/ exec sum qty by s from sp     / dictionary of sum qty by s
/ exec q:sum qty by s from sp   / list!table
/ exec sum qty by s:s from sp   / table!list
/ exec qty, s by 0b from sp     / table
/ exec q:sum qty by s:s from sp / keyed table
/ @see delete insert select upsert update
exec

/ exit terminate the q process with the given exit status.
/ @param x int Status
/ @example exit 0
/ @see .z.exit
exit

/ The exp function computes e^x, where e is the base of natural logarithms.
/ @ginfo
/ @param x value Input value.
/ @returns float e^x
/ @example
/ exp 1.2
/ exp til 10
/ @see xexp log xlog sqrt
exp

/ fby is designed to collapse a cascaded select ... from select ... by ... from t expressions into one select ... by ... from ... where ... fby .....
/ {@link See more.|http://code.kx.com/wiki/Reference/fby}
/ @example (aggr;data) fby group
fby

/ Uniform function that is used to forward fill a list containing nulls.
/ @ginfo
/ @param A value The input value.
/ @returns value The result is the same as A, except that where A is null, the result is the preceding non-null value, if any.
/ @example
/ fills 1
/ fills til 10
/ fills `a`b!1 0N
fills

/ Monadic aggregation function which applies to atoms, lists, dictionaries and tables.
/ It returns the first element in its argument (row in the case of a table and entry associated with the first key in the case of a dictionary).
/ @example
/ first til 10
/ first `a
/ @see last enlist prev xprev next
first

/ The function fkeys takes a table as an argument and returns a dictionary that maps foreign key columns to their tables.
/ @param t (symbol|table) Table.
/ @returns dictionary Foreign keys.
/ @example fkeys tbl
/ @see keys cols meta
fkeys

/ flip transposes its argument, which may be a list of lists, a dictionary or a table.
/ In the case of a list of lists, each list must be the same length. Flip of a dictionary is a table, and vice versa.
/ @example
/ flip (1 2;3 4)
/ flip `a`b!(1 2;3 4)
flip

/ For a floating point number x, returns the floor of x, i.e. the greatest integer less than or equal to x. An integer x is returned unchanged.
/ @ginfo
/ @param x value Input value.
/ @returns long Floor of x
/ @example
/ floor 10
/ floor 10.1 21.1
/ floor `a`b!1.1 2.3
/ @see ceiling div mod
floor

/ get reads or memory maps a q data file. A type error is thrown if the file is not a q data file.
/ get is used to map columns of databases in and out of memory when querying splayed databases, and can be used to read q log files etc.
/ It also behaves like {@link value} if the input is not a file name.
/ @example q)s:get`:SNewTrade/     / s has columns mapped on demand
/ @see value set save dsave rsave load rload read0 read1
get

/ Returns the value of the given environment variable.
/ @param Name symbol Variable.
/ @returns string Variable's value.
/ @example get `PATH
/ @see setenv
getenv

/ Groups the distinct elements of its argument, and returns a dictionary whose keys are the distinct elements, and whose values are the indices where the distinct elements occur.
/ The order of the keys is the order in which they are encountered in the argument.
/ @param (list|table|dictionary) Input value.
/ @example group "mississippi"
/ @see ungroup xgroup
group

/ The gtime function returns the UTC datetime/timestamp for a given datetime/timestamp.
/ @ginfo
/ @param v value Input value.
/ @example gtime 2010.10.10D10:10
/ @see ltime .z.p .z.P .z.z .z.Z
gtime

/ Closes a file or process handle.
/ <div class='text-warning'>hclose does not flush pending messages on sockets. If you need to process pending msgs on a handle first, then send a sync chaser msg to the remote, e.g. h"".</div>
/ @param h long Opened handle.
/ @example hclose 10
/ @see hopen hcount hsym hdel
hclose

/ Gets the size in bytes of a file as a long integer.
/ hcount on a compressed file returns the size of the original uncompressed file.
/ @param fname symbol File name.
/ @returns long File length.
/ @example hcount`:c:/q/test.txt
/ @see hopen hclose hsym hdel
hcount

/ The function hdel deletes a file.
/ @param fname symbol File name.
/ @example hdel`:c:/q/test.txt
/ @see hopen hclose hsym hcount
hdel

/ Opens a file or process handle.
/ @example
/ h:hopen `:[hostOrIP]:port[:user:password] / open a socket
/ h:hopen 5010                              / open a port
/ h:hopen (`:h:p;timeout)                   / open a socket with a timeout
/ h:hopen `:filename                        / open a file
/ @see hclose hsym hcount hdel
hopen

/ Converts its symbol argument into a file name, or valid hostname, ipaddress. Can handle vector of symbols since kdb+ 3.1.
/ @param s (symbol|symbol list) Paths or connection strings.
/ @example
/ hsym`c:/q/test.txt
/ hsym`10.43.23.197
/ @see hopen hclose hsym hcount hdel
hsym

/ Uniform function that returns the indices needed to sort the list argument.
/ @ginfo
/ @example (asc L) ~ L iasc L
/ iasc 3 2 1 4
/ iasc ([] a:til 10) / this will also add `s# to the table itself.
/ iasc `a`b!2 1
/ @see idesc asc desc xasc xdesc
iasc

/ Uniform function that returns the indices needed to sort the list argument.
/ @ginfo
/ @example (desc L) ~ L idesc L
/ idesc 3 2 1 4
/ idesc ([] a:til 10) / this will also add `s# to the table itself.
/ idesc `a`b!2 1
/ @see iasc asc desc xasc xdesc
idesc

/ Conditional statement with then branch only.
/ @example if[test;exp1;...;expn]
/ if[a=0; a+:1];
if

/ The ij verb joins two tables on the key columns of the second table.
/ @example a:t1 ij t2
/ @desc where t1 and t2 are the tables to be joined. t2 must be keyed, and its key columnns must be columns of t1.
/ The result has one combined record for each row in t1 that matches a row in t2.
/ @see lj ljf ej pj uj upsert asof aj aj0 wj wj1
ij

/ The verb in returns a boolean indicating which items of x are in y. The result has one item for each item of x.
/ @ginfo
/ @param x value Some value or list of values.
/ @param y value Where to search for x.
/ @example
/ 1 in til 10
/ 1 in ([] a:til 10)
/ @see inter union except
in

/ Insert appends records to a table.
/ @example `table insert records
/ `x insert (`s`t;40 50)
/ @desc where `table is the symbol name of a table, and records is one or more records that match the table columns. The result is the new row indices. Note that insert can insert to global variables only, due to the lookup of the symbol name. If you need to insert to function local tables, use table,:data instead.
/ If the table is keyed, the new records can't match existing keys.
/ @see exec delete select update upsert
insert

/ The verb inter returns all elements common to both arguments.
/ When applied to dictionaries, it returns any common values (not keys); and when applied to tables, returns the common rows.
/ @ginfo
/ @example
/ 1 2 inter 2
/ ([] a: til 10) inter ([] a: til 5)
/ @see in union except
inter

/ inv computes the inverse of a non-singular floating point matrix.
/ @param m (float list list) List of float lists with the same length.
/ @returns (float list list) The inverse of m.
/ @example inv (1 2f;3 4f)
/ @see lsq mmu
inv

/ key performs various functions depending on its argument.
/ @example
/ key (`q`w`e!(1 2;3 4;5 6))  / dictionary keys
/ key `.q                     / namespace variables
/ key `                       / global namespaces
/ key `variable               / returns () if it doesn' exist, `variable if non-dict and keys if dict
/ key keytable                / key table of keytable
/ key `:c:/q                  / like with `var but returns directory files if it is a directory.
/ key `f$3 2                  / enumeration or foreign table
/ key each ("abc";101b)       / symbol type names of each entry
/ key 100                     / like til 100
key

/ Table key columns.
/ The keys function takes an argument of a table name or reference, and returns a symbol
/ list of the primary key columns of its argument, or empty if none.
/ @param t (symbol|table) Input table.
/ @returns (symbol list) Keys of t.
/ @example keys ([a:til 10] b: til 10)
/ @see cols fkeys
keys

/ Analogous to {@link first}, except that it returns the last element of its argument.
/ When applied to a dictionary, returns the last value.
/ @example last til 10
/ @see first next prev xprev enlist
last

/ The verb like is the q pattern-matching primitive.
/ Patterns in text are expressed by using certain reserved characters that have special meanings. {@link See more.|http://code.kx.com/wiki/Reference/like}
/ @desc The right argument is a character string holding the pattern. The left argument can be:
/ <ul><li>a symbol atom or vector</li>
/ <li>a char vector or list of char vectors</li>
/ <li>a dictionary whose value is a symbol vector, or list of char vectors</li></ul>
/ @returns (boolean list) The result is a boolean list indicating which items in the left argument match the pattern.
like

/ The lj (left join) verb joins tables on the key columns of its right argument.
/ The left argument is a table, and the right argument is a keyed table, where the key columns must be a subset of the columns of the left argument.
/ @example r:t1 lj t2
/ @desc For each record in t1, the result has one record with the columns of t1 joined to columns of t2.
/ If there is a matching record in t2, it is joined to the t1 record. Common columns are replaced.
/ If there is no matching record in t2, common columns are left unchanged, and new columns are null.
/ <div class='text-warning'>Prior to kdb+ 3.0, lj had similar behavior, with one difference - when there are nulls in the right argument,
/ lj in kdb+ 3.0 uses the right argument null, while the earlier version left the corresponding value in the left argument unchanged</div>
/ @see ljf ej ij pj uj upsert asof aj aj0 wj wj1
lj

/ The ljf (left join) verb joins tables on the key columns of its right argument.
/ See {@link lj} for more information. The main difference between lj and ljf -
/ when there are nulls in the right argument, lj in kdb+ 3.0 uses the right argument null, while
/ the earlier version (now ljf) left the corresponding value in the left argument unchanged.
/ @see lj ej ij pj uj upsert asof aj aj0 wj wj1
ljf

/ The load function loads binary data from the filesystem.
/ If the argument to load is a directory, a dictionary of that name is created and all data files are loaded into that dictionary, keyed by file name.
/ @param s symbol File or directory name.
/ @example load`t / similar to t:get `:t
/ @see get set save dsave rsave rload read0 read1 value
load

/ The log function computes the natural logarithm of its argument.
/ The result is type float. Null is returned if the argument is negative, and negative infinity if the argument is 0.
/ @ginfo
/ @example
/ log 1
/ log 1 2
/ @see xlog exp xexp sqrt
log

/ Converts symbol or character data to lower case, if possible.
/ @param c value Any object with strings or chars as base objects.
/ @returns value The same shape as c but with all chars in the lower case.
/ @example
/ lower "String"
/ lower `a`b!("C";"B")
/ @see upper
lower

/ The lsq verb is a matrix divide.
/ x and y must be floating point matrices with the same number of columns. The number of rows of y must be less than
/ or equal to the number of columns, and the rows of y must be linearly independent. {@link See more.|http://code.kx.com/wiki/Reference/lsq}
/ @param x matrix Float matrix.
/ @param y matrix Float matrix.
/ @returns matrix Float matrix.
/ @example (1 2f;3 4f) lsq (1 2f;3 5f)
/ @see inv mmu
lsq

/ The ltime function returns the local datetime/timestamp for a given UTC datetime/timestamp.
/ @ginfo
/ @param v value Input value.
/ @example ltime 2010.10.10D10:10
/ @see gtime .z.p .z.P .z.z .z.Z
ltime

/ ltrim removes any leading spaces from a string.
/ @param s value Any object with strings or chars as base objects.
/ @returns value The same shape as s but with all strings trimmed.
/ @example
/ ltrim " a"
/ ltrim `a`b!(" a";" b")
/ @see rtrim trim
ltrim

/ The mavg verb returns the N-item moving average of its numeric right argument, with any nulls after the first element replaced by zero.
/ The first N items of the result are the averages of the terms so far, and thereafter the result is the moving average. The result is floating point.
/ @ginfo
/ @param x number Window size.
/ @param y value Input value.
/ @returns float The moving average of x.
/ @example
/ 1 mavg 1
/ 2 mavg til 10
/ 1 mavg `a`b!1 2
/ 2 mavg ([] a: til 10; b: til 10)
/ @see avg avgs wavg
/ @see mcount mdev mmax mmin msum
/ <div class='text-warning'>Infinities (0w) are incompatible with this function.</div>
mavg

/ The max function returns the maximum of its argument.
/ If the argument is an atom, it is returned unchanged.
/ If the argument is a list, it returns the maximum of the list.
/ The list may be any datatype except symbol. Nulls are ignored, except that if the argument has only nulls, the result is negative infinity.
/ @ginfo
/ @param x value Input value.
/ @returns value The max of x.
/ @example
/ max 1
/ max til 10
/ max `a`b!1 2
/ max ([] a: til 10; b: til 10)   / `a`b!9 9
/ @see maxs mmax min and or
max

/ The maxs function returns the maximums of the prefixes of its argument.
/ If the argument is an atom, it is returned unchanged.
/ If the argument is a list, it returns the maximums of the prefixes of the list. The list may be any datatype except symbol.
/ Nulls are ignored, except that initial nulls are returned as negative infinity.
/ @ginfo
/ @param x value Input value.
/ @returns value The prefix max of x.
/ @example
/ maxs 1
/ maxs til 10
/ maxs `a`b!1 2
/ maxs ([] a: til 10; b: til 10)
/ @see max mmax avgs mins prds ratios sums and or
maxs

/ The mcount verb returns the N-item moving count of the non-null items of its numeric right argument.
/ The first N items of the result are the counts so far, and thereafter the result is the moving count.
/ @ginfo
/ @param x number Window size.
/ @param y value Input value.
/ @returns float The moving count of x.
/ @example
/ 1 mcount 1
/ 2 mcount til 10
/ 1 mcount `a`b!1 2
/ 2 mcount ([] a: til 10; b: til 10)
/ @see count mavg mdev mmax mmin msum
mcount

/ The md5 function computes the MD5 (Message-Digest algorithm 5) of a string.
/ MD5 is a widely used, Internet standard (RFC 1321), hash function that computes a 128-bit hash, that is commonly used to check the integrity of files.
/ It is not recommended for serious cryptographic protection, for which strong hashes should be used.
/ @param s string Input string.
/ @returns (byte list) md5 of s.
/ @example md5 "test"
md5

/ The mdev verb returns the N-item moving deviation of its numeric right argument, with any nulls after the first element replaced by zero.
/ The first N items of the result are the deviations of the terms so far, and thereafter the result is the moving deviation. The result is floating point.
/ @ginfo
/ @param x number Window size.
/ @param y value Input value.
/ @returns float The moving dev of x.
/ @example
/ 1 mdev 1
/ 2 mdev til 10
/ 1 mdev `a`b!1 2
/ 2 mdev ([] a: til 10; b: til 10)
/ @see dev sdev cov scov cor var svar
/ @see mavg mcount mmax mmin msum
mdev

/ Computes the median of a numeric list.
/ @ginfo
/ @param x value Input value.
/ @returns (float|float dictionary) The median of x.
/ @example
/ med 1
/ med til 10
/ med `a`b!1 2
/ med ([] a: til 10; b: til 10) / -> `a`b!4.5 4.5
/ @see avg sum prd
/ <div class='text-warning'>Note that in v3.0 upwards med throws a rank error when running a median over partitions, or segments - this is deliberate, as previously
/  med was returning median of medians for such cases. This should now be explicitly coded as a cascading select </div>
med

/ The meta function returns the meta data of its table argument, passed by value or reference.
/ The result is a table keyed by column name, with columns:
/ <ul><li>c  - column name
/ </li><li>t  - data type
/ </li><li>f  - foreign key (enumeration)
/ </li><li>a  - attribute
/ </li></ul>
/ @param t (symbol|table) Table.
/ @returns table Meta info.
/ @example meta ([] a: til 10)
/ @desc The t column from a meta result denotes the column type. A lower-case latter indicates atomic entry and an upper-case letter indicates a list.
meta

/ The min function returns the minimum of its argument.
/ If the argument is an atom, it is returned unchanged.
/ If the argument is a list, it returns the minimum of the list. The list may be any datatype except symbol.
/ Nulls are ignored, except that if the argument has only nulls, the result is infinity.
/ @ginfo
/ @param x value Input value.
/ @returns value The min of x.
/ @example
/ min 1
/ min til 10
/ min `a`b!1 2
/ min ([] a: til 10; b: til 10)   / `a`b!0 0
/ @see max maxs mmax mins mmin and or
min

/ The mins function returns the minimums of the prefixes of its argument.
/ If the argument is an atom, it is returned unchanged.
/ If the argument is a list, it returns the minimums of the prefixes of the list. The list may be any datatype except symbol.
/ Nulls are ignored, except that initial nulls are returned as infinity.
/ @ginfo
/ @param x value Input value.
/ @returns value The prefix min of x.
/ @example
/ mins 1
/ mins til 10
/ mins `a`b!1 2
/ mins ([] a: til 10; b: til 10)
/ @see min mmin avgs maxs sums prds ratios and or
mins

/ The mmax verb returns the N-item moving maximum of its numeric right argument, with nulls after the first replaced by the preceding maximum.
/ The first N items of the result are the maximums of the terms so far, and thereafter the result is the moving maximum.
/ @ginfo
/ @param x number Window size.
/ @param y value Input value.
/ @returns float The moving max of x.
/ @example
/ 1 mmax 1
/ 2 mmax til 10
/ 1 mmax `a`b!1 2
/ 2 mmax ([] a: til 10; b: til 10)
/ @see max maxs min mins mmin and or
mmax

/ The mmin verb returns the N-item moving minimum of its numeric right argument, with nulls treated as the minimum value.
/ The first N items of the result are the minimums of the terms so far, and thereafter the result is the moving minimum.
/ @ginfo
/ @param x number Window size.
/ @param y value Input value.
/ @returns float The moving min of x.
/ @example
/ 1 mmin 1
/ 2 mmin til 10
/ 1 mmin `a`b!1 2
/ 2 mmin ([] a: til 10; b: til 10)
/ @see max maxs mmax min mins and or
mmin

/ mmu computes the matrix multiplication of floating point matrices.
/ The arguments must be floating point and must conform in the usual way, i.e. the columns of x must equal the rows of y.
/ @param x matrix Float matrix.
/ @param y matrix Float matrix.
/ @returns matrix Float matrix x*y.
/ @example (1 2f;3 4f) mmu (1 2f;3 5f)
/ @see inv lsq
mmu

/ x mod y returns the remainder of x%y.
/ Applies to numeric types, and gives type error on sym, char and temporal types.
/ @ginfo
/ @param x value First arg.
/ @param x value Second arg.
/ @example
/ 10 mod 3
/ 10 11 mod 2 3
/ (`a`b!10 13) mod 5 6
/ @see div ceiling floor
mod

/ The msum verb returns the N-item moving sum of its numeric right argument, with nulls replaced by zero.
/ The first N items of the result are the sums of the terms so far, and thereafter the result is the moving sum.
/ @ginfo
/ @param x number Window size.
/ @param y value Input value.
/ @returns float The moving sum of x.
/ @example
/ 1 msum 1
/ 2 msum til 10
/ 1 msum `a`b!1 2
/ 2 msum ([] a: til 10; b: til 10)
/ @see sum sums mavg mcount mmax mmin mdev
msum

/ The function neg negates its argument, e.g. neg 3 is -3.
/ This is needed in q because it has no ambivalence, and - is already in use as a verb (i.e. takes arguments to left and right).
/ Applies to all data types except sym and char. Applies item-wise to lists, dict values and table columns.
/ @ginfo
/ @param x value Input value.
/ @returns value -x
/ @example neg -10
/ neg (10i;1f)
/ neg `a`b!1 -2
/ @see abs signum
neg

/ The uniform function next returns the next element for each item in its argument list.
/ For the last element, it returns a null value of the list if simple (a homogeneous list), and an empty list () if non-simple (a mixed list).
/ @param l list Input list.
/ @returns list l with elements moved.
/ @example
/ next til 10
/ @see prev xprev first last enlist
next

/ The logical not function returns a boolean result 0b when the argument is not equal to zero, and 1b otherwise.
/ Applies to all data types except sym. Applies item-wise to lists, dict values and table columns.
/ @ginfo
/ @param x value Value.
/ @example
/ not "12345"
/ not 2 3 4
/ not `a`b!1 2
/ @see all any and or min max
not

/ The function null returns 1b if its argument is null.
/ Applies to all data types except enums. Applies item-wise to lists, dict values and table columns.
/ <div class='text-warning'>Enums always show as non-null.
/ The intention was not to have nulls in the enums. That value is used to indicate "out of range". (Think of them as a way to represent foreign keys.)
/ To test for an enumeration backed by a null symbol, one can use the equality test - but at the cost of CPU cycles.</div>
/ @ginfo
/ @param x value Value.
/ @example
/ null "12345"
/ null 2 3 4
/ null `a`b!1 2
null

/ The verb 'or' returns the maximum of its arguments.
/ It applies to all data types except symbol.
/ @ginfo
/ @param x value First argument.
/ @param y value Second argument.
/ @example
/ "1" or "12345"
/ 1 2 3 or 2 3 4
/ 1 or `a`b!1 2
/ @see all any and not min max
or

/ The over adverb takes a function of two arguments on its left, and creates a new atomic function that applies to successive items of its list argument.
/ The result is the result of the last application of the function. {@link See more.|http://code.kx.com/wiki/Reference/over}
/ @param f value Function or similar object.
/ @param v value Object to apply f to.
/ @example
/ {x+y} over til 10
/ (6 6#til 5) over 1 3 5
/ `globalFunc over til 10
/ @see scan each peach prior
over

/ The parse function parses a string as a q expression, and returns the {@link parse tree|http://code.kx.com/wiki/Reference/parse_tree}.
/ The string should be a well-formed q expression, and should not contain newlines.
/ The resulting parse tree can be executed with the eval function.
/ {@link See more.|http://code.kx.com/wiki/Reference/parse}
/ @param s string Parse string.
/ @returns expr Q expression.
/ @example
/ parse "1+2"
/ parse "select a:a*10 from t where b>1"
/ @see eval reval
parse

/ The peach adverb is used for parallel execution of a function over data.
/ For example, this can be useful for computationally expensive functions, or for accessing several drives at once from a single cpu.
/ In order to execute in parallel, q must be started with multiple slaves (-s).
/ {@link See more.|http://code.kx.com/wiki/Reference/peach}
/ @param f value Function or similar object.
/ @param v value Object to apply f to.
/ @example
/ {x+1} peach til 10
/ til[10] peach 1 3 5
/ `globalFunc peach til 10
/ @see each scan over prior .Q.fc
peach

/ The pj (plus join) verb joins tables on the key columns of its right argument.
/ The left argument is a table, and the right argument is a keyed table, where the key columns must be a subset of the columns of the left argument.
/ pj adds matching records in the right argument to those in the left argument, by adding common columns, other than the key columns.
/ These common columns must be of appropriate types for addition.
/ @example r:t1 pj t2
/ @desc For each record in t1:
/ <ul><li> if there is a matching record in t2 it is added to the t1 record.
/ </li><li>if there is no matching record in t2, common columns are left unchanged, and new columns are zero.
/ </li></ul>
/ @see ej ij lj ljf uj upsert asof aj aj0 wj wj1
pj

/ The plist function is a deprecated form of enlist (which creates a list from its arguments). It was removed completely in 3.0.
plist

/ The aggregate function prd returns the product of the items in its argument.
/ If the argument is an atom, it is returned unchanged.
/ Otherwise, if the argument is a numeric list, it returns the product as an atom. A null is treated as 1.
/ If the argument is a non-numeric list, a type error is signaled.
/ @ginfo
/ @param x value Input value.
/ @returns (number|number dictionary) The product of x.
/ @example
/ prd 1
/ prd til 10
/ prd `a`b!1 2
/ prd ([] a: til 10; b: til 10) / -> `a`b!0 0
/ @see prds avg med sum sums
prd

/ The uniform function prds returns the cumulative products of the items in its argument.
/ If the argument is an atom, it is returned unchanged.
/ Otherwise, if the argument is a numeric list, it returns the cumulative product as a list of the same length. A null is treated as 1.
/ @ginfo
/ @param x value Input value.
/ @returns value The prefix products of x.
/ @example
/ prds 1
/ prds til 10
/ prds `a`b!1 2
/ prds ([] a: til 10; b: til 10)
/ @see prd sum sums avgs maxs mins ratios
prds

/ The uniform function prev returns the previous element for each item in its argument list.
/ For the first element, it returns a null value of the list if simple (a homogeneous list), and an empty list () if non-simple (a mixed list).
/ @param l list Input list.
/ @returns list l with elements moved.
/ @example
/ prev til 10
/ @see next xprev first last enlist
prev

/ Apply the function f between each item of y and its predecessor.
/ @param f value Function or similar object.
/ @param v value Object to apply f to.
/ @example
/ {x+y} prior til 10
/ (6 6#til 5) prior 1 3 5
/ `globalFunc prior til 10
/ (-)prior 2 3 4 / e.g. same as deltas 2 3 4
/ @see each peach over scan
prior

/ Returns random Q objects.
/ The behavior of the rand function depends on its argument.
/ @example
/ rand 0b    / If X is an atom 0, it returns a random value of the same type in the range of that type
/ rand 100   / If X is a positive number, it returns a random number of the same type in the range [0,X)
/ rand 1 2 3 / If X is a list, it returns a random element from the list
/ rand `5    / If X is a symbol in a range `1 to `8, it returns a random symbol of length X using the first 16 lower case letters of alphabet
rand

/ The uniform function rank takes a list argument, and returns an integer list of the same length.
/ Each value is the position where the corresponding list element would occur in the sorted list. This is the same as calling iasc twice on the list.
/ @param v value List, dictionary or table.
/ @returns list Indecies.
/ @example
/ rank til 10
/ rank `a`b!2 1
/ @see group iasc idesc asc desc xasc xdesc
rank

/ The uniform function ratios returns the ratio of consecutive pairs.
/ @ginfo
/ @param x value Input value.
/ @returns value The ratios of elements of x.
/ @example
/ ratios 1
/ ratios til 10
/ ratios `a`b!1 2
/ ratios ([] a: til 10; b: til 10)
/ @see avgs maxs mins prds sums
ratios

/ The raze function joins items of its argument, and collapses one level of nesting.
/ To collapse all levels, use over i.e. raze/[x].
/ An atom argument is returned as a one-element list. Acts on a dictionary to return the flattened values
/ @example
/ raze (1 2;3 4)
raze

/ The read0 function reads a text file, returning a list of lines.
/ Lines are assumed delimited by either LF or CRLF, and the delimiters are removed.
/ Optionally, read0 can take a three-item list as its argument, containing the file handle, an offset at which to begin reading, and a length to read.
/ @example
/ read0`:test.txt
/ read0(`:/tmp/data;100000;100000)
/ @see read1 load save dsave rload rsave get set value
read0

/ The read1 function reads a file as a list of bytes.
/ Optionally, read1 can take a three-item list as its argument, containing the file handle, an offset at which to begin reading, and a length to read.
/ @example
/ read1`:test.dat
/ read1(`:/tmp/data;100000;100000)
/ @see read0 load save dsave rload rsave get set value
read1

/ Returns the reciprocal of its argument.
/ The argument is first cast to float, and the result is float.
/ @ginfo
/ @param x value Input value.
/ @returns value 1/x.
/ @example
/ reciprocal 1
/ reciprocal til 10
/ reciprocal `a`b!1 2
/ reciprocal ([] a: til 10; b: til 10)
/ @see ratios
reciprocal

/ The reval function is similar to {@link eval}, and behaves as if the cmd line option -b were active for the duration of the reval call.
/ @param expr (parse expression) Parse expression.
/ @returns value Evaluates expr and returns its value.
/ @example
/ reval parse "1+2"
/ reval (+;1;2)
/ @see eval parse value get
reval

/ Uniform function that reverses the items of its argument.
/ On atoms, returns the atom; On dictionaries, reverses the keys; and on tables, reverses the columns.
/ @param l value List, dictionary, table.
/ @returns value reverted l.
/ @example
/ reverse til 10
/ reverse ([] a: til)
/ @see rotate next prev xprev
reverse

/ The rload function loads a splayed table, and is the converse of {@link rsave}.
/ The argument is the table name as a symbol, and the table is read from a directory of the same name.
/ The usual and more general way of doing this is to use the {@link get} function, which allows a table to be defined with a different name than the source directory.
/ @example rload `sp
/ @see read0 read1 load save dsave rsave get set value
rload

/ The uniform verb rotate takes an integer left argument and a list or table right argument.
/ @example N rotate L
/ @desc This rotates L by N positions to the left for positive N, and to the right for negative N.
/ On tables, it rotates the columns.
/ @see reverse next prev xprev
rotate

/ The rsave function saves a table splayed to a directory of the same name.
/ The argument is the table name as a symbol. The table must be fully enumerated and not keyed.
/ The usual and more general way of doing this is to use the set function, which allows the target directory to be given.
/ @example rsave `sp
/ @see read0 read1 load save rload get set value
rsave

/ rtrim removes any trailing spaces from a string.
/ @param s value Any object with strings or chars as base objects.
/ @returns value The same shape as s but with all strings trimmed.
/ @example
/ rtrim " a"
/ rtrim `a`b!(" a";" b")
/ @see ltrim trim
rtrim

/ The save function saves global data to file.
/ The argument is the filename as a symbol, and the result is the filename itself. The file shortname (ignoring path and extension) names the data.
/ The format used depends on the file extension:
/ <ul><li>no extension - saved as binary
/ </li><li>.csv - comma-separated values
/ </li><li>.txt - plain text
/ </li><li>.xls - excel spreadsheet
/ </li><li>.xml - extensible markup language
/ </li></ul>
/ @example r:save X / X must be a global var
/ save `a.txt
/ @desc {@link See more.|http://code.kx.com/wiki/Reference/save}
/ @see read0 read1 load rload rsave get set value
save

/ The scan adverb takes a function of two arguments on its left, and creates a new uniform function that applies to successive items of its list argument.
/ The result is a list of the same length.
/ @param f value Function or similar object.
/ @param v value Object to apply f to.
/ @example
/ {x+y} scan til 10
/ (6 6#til 5) scan 1 3 5
/ `globalFunc scan til 10
/ @see each peach over prior
scan

/ Returns the statistical covariance of its arguments as a floating point number.
/ {@link See more.|http://code.kx.com/wiki/Reference/scov}
/ @param x (number list) First arg.
/ @param y (number list) Second arg.
/ @returns (float list) Covariance of x and y.
/ @example 1 2 3 scov 1.1 1.9 3.1
/ @see cov cor dev mdev sdev var svar
scov

/ Computes the statistical standard deviation of a list (as the square root of the statistical variance).
/ {@link See more.|http://code.kx.com/wiki/Reference/sdev}
/ @param x (number|number list|dictionary) Input value.
/ @returns float Deviation of x.
/ @example sdev 1.1 1.2 1.3
/ @see dev mdev cor cov scov var svar
sdev

/ Select retrieves specified columns from a table.
/ It has many forms; not all are described here. In general, it is:
/ @example select columns by groups from table where filters
/ @desc To limit the returned results you can use any of these:
/ @example
/ select[n]         / first/last n elements
/ select[m n]       / start with m get n rows
/ select[order]     / sort the result by a column: >column or <column
/ select[n;order]   / like above but take n elements
/ @desc More information on {@link select|http://code.kx.com/wiki/Reference/select}.
/ @see delete exec insert upsert update
select

/ The set verb assigns the right argument to the left, which must represent a well-formed name.
/ The left argument can be a filename, in which case the right argument is written to file.
/ @example
/ `a set 1 2 3            / set name a
/ a:`t
/ a set 1 2 3             / set name t (indirect assignment)
/ `:work.dat set 1 2 3    / write values to file
/ `:mydata/ set sp        / save a table splayed across a directory
/ @see read0 read1 load save rload rsave get value
set

/ The setenv verb sets an environment variable.
/ @param s symbol Environment variable.
/ @param v string Value.
/ @example `PATH setenv "path"
/ @see getenv
setenv

/ The show function formats its argument to the console.
/ @param x anything Any Q object.
/ @returns anything The same x.
/ @example show 1 2 3
/ @see .Q.s .Q.s1
show

/ The function signum returns -1, 0 or 1 if the argument is negative, zero or positive respectively.
/ Applies item-wise to lists, dictionaries and tables, and to all data types except symbol.
/ @ginfo
/ @param x value Input value.
/ @returns value Sign of x.
/ @example signum -10
/ signum (10i;1f)
/ signum `a`b!1 -2
/ @see abs neg
signum

/ The sin function computes the sine of its argument, taken to be in radians.
/ The result is between -1 and 1, or null if the argument is null or infinity.
/ @ginfo
/ @param x value  A number(s).
/ @returns float Sine of x.
/ @example sin 0.1
/ sin 0.1 0.2 0.3
/ @see cos asin acos tan atan
sin

/ The function sqrt computes the square root of its argument, returning a float.
/ The result is null if the argument is negative or null.
/ @ginfo
/ @param x value Input value.
/ @returns float Square root of x.
/ @example
/ sqrt 1.2
/ sqrt til 10
/ @see exp xexp log xlog
sqrt

/ The function ss finds positions of a substring within a string.
/ It also supports some pattern matching capabilities of the function {@link like}.
/ {@link See more.|http://code.kx.com/wiki/Reference/ss}
/ @param s string Search string.
/ @param p string Pattern.
/ @returns (long list) Indecies.
/ @example
/ s ss "[ir]o"
/ s ss "t?r"
/ @see like ssr
ss

/ The function ssr does search and replace on a string.
/ @example r:ssr[X;Y;Z]
/ ssr[s;"ont";"x"]
/ ssr[s;"t?r";upper]
/ @desc This searches for string Y in string X and replaces it with Z. The replacement Z may be a string,
/ or a function that is evaluated on the matched substring, and returns the replacement string.
/ The search is done using function {@link ss}, and this supports some pattern matching capabilities of the function {@link like}.
/ @see like ss
ssr

/ The function string converts each atom in its argument to a character string.
/ It applies to all data types.
/ @ginfo
/ @example string til 10
/ @see .Q.s .Q.s1 show
string

/ The verb sublist returns a sublist of its right argument, as specified by its left argument.
/ The result contains only as many items as are available in the right argument.
/ @example r:X sublist Y
/ @desc If X is a single integer, it returns X items from the beginning of Y if positive, or from the end of Y if negative.
/ If X is an integer pair, it returns X 1 items from Y, starting at item X 0.
sublist

/ The aggregate function sum returns the sum of the items in its argument.
/ If the argument is an atom, it is returned unchanged.
/ Otherwise, if the argument is a numeric list, it returns the sum as an atom. A null is treated as 0.
/ If the argument is a non-numeric list, a type error is signaled.
/ @ginfo
/ @param x value Input value.
/ @returns (number|number dictionary) The sum of x.
/ @example
/ sum 1
/ sum til 10
/ sum `a`b!1 2
/ sum ([] a: til 10; b: til 10) / -> `a`b!45 45
/ @see sums msum wsum avg med prd prds
sum

/ The uniform function sums returns the cumulative sums of the items in its argument.
/ If the argument is an atom, it is returned unchanged.
/ Otherwise, if the argument is a numeric list, it returns the cumulative sum as a list of the same length. A null is treated as 0.
/ If the argument is a non-numeric list, a type error is signaled.
/ @ginfo
/ @param x value Input value.
/ @returns value The prefix sum of x.
/ @example
/ sums 1
/ sums til 10
/ sums `a`b!1 2
/ sums ([] a: til 10; b: til 10)
/ @see sum msum wsum avg avgs maxs mins med prd prds ratios
sums

/ The scalar from vector verb performs different functions depending on its arguments, but in each case will return an atom (scalar) from a list (vector).
/ @example
/ X sv Y
/ "," sv ("one";"two";"three")  / If Y is a list of strings, and X is a character or string, it joins the strings in Y, separated by X
/ ` sv ("one";"two";"three")    / If X is the back tick `, then if Y is a list of strings, it joins the strings in Y, separated by the host line separator (\n on unix, \r\n on windows)
/ ` sv `:/kdb/q`data`2010.03.22`trade / If Y is a symbol list where the first element is a file handle, it returns a file handle where the items of the list are joined, separated by slashes.
/ ` sv `mywork`dat              / If Y is a symbol list where the first element is not a file handle, it returns a symbol where the elements are joined, separated by .
/ 10 sv 2 3 5 7                 / If X and Y are numeric, it evaluates Y to base X.
/ 0 24 60 60 sv 2 3 5 7         / Like above but X may be a list. For example, to convert days, hours, minutes, seconds to seconds
/ 0x0 sv "x"$0 255              / If X is 0x0 and Y is a list of bytes of length 2, 4 or 8, it converts Y to the corresponding integer
/ @see vs
sv

/ The aggregate svar function returns the variance of a numeric list.
/ The result has type float. {@link See more.|http://code.kx.com/wiki/Reference/svar}
/ @param x (number|number list|dictionary) Input value.
/ @returns float Prefix variance of x.
/ @example svar 1.1 1.2 1.3
/ @see var cor cov scov dev mdev sdev
svar

/ The function system executes {@link system commands|http://code.kx.com/wiki/Reference/SystemCommands}, and is a cover for the \ system command.
/ @example
/ system "X"       / get X's value
/ system "X value" / set X's value
/ system "a .ns"   / tables
/ system "b"       / views
/ system "B"       / pending views
/ system "c X Y"   / console size
/ system "C X Y"   / Web console size
/ system "cd path" / current directory
/ system "d .ns"   / namespace
/ system "e N"     / error trap - 0 or 1
/ system "f"       / functions
/ system "g N"     / garbage collector - 0 or 1, deffered or immediate
/ system "l path"  / load data from path
/ system "o num"   / local time offset
/ system "p num"   / set port
/ system "P num"   / float precision
/ system "r path path" / rename file
/ system "s"       / slaves
/ system "S num"   / rnd seed
/ system "t expr"  / timer in ms if num, time of execution otherwise
/ system "T num"   / timeout
/ system "ts[:num] expr" / time and space of exec, repeat num times
/ system "u"       / reload password file
/ system "v"       / variables
/ system "w 0"     / workspace size
/ system "W"       / week offset
/ system "x .z.fn" / delete handler
/ system "z N"     / date format - 0 or 1
/ system "1 path"  / redirect stdout
/ system "2 path"  / redirect stderr
/ system "_ scrpt" / hide Q code
/ system "oscmd args" / general OS command
system

/ The tables function returns a sorted list of the tables in the given namespace, default root namespace.
/ @example tables[]
/ @see cols key xcol xcols
/ @see views
tables

/ The tan function computes the tangent of its argument, taken to be in radians.
/ Integer arguments are promoted to floating point. Null is returned if the argument is null or infinity.
/ @ginfo
/ @param x value  A number(s).
/ @returns float Tan of x.
/ @example tan 0.1
/ tan 0.1 0.2 0.3
/ @see sin cos asin acos atan
tan

/ The til function takes a non-negative integer argument X and returns the first X integers.
/ The argument must be of type integer.
/ @param n long Number greater or equal 0.
/ @returns (long list) List of numbers from 0 till n-1
/ @example til 10
/ @see key
til

/ trim removes any leading and trailing spaces from a string.
/ @param s value Any object with strings or chars as base objects.
/ @returns value The same shape as s but with all strings trimmed.
/ @example
/ trim " a"
/ trim `a`b!(" a";" b")
/ @see ltrim rtrim
trim

/ The txf function does indexed lookup on a keyed table. The function is deprecated since 2.4, and removed completely since 3.0, in favor of straightforward indexing
txf

/ The function type returns the type of its argument as a short integer.
/ Negative numbers are for atoms, positive numbers are for lists, and zero is a general K list.
/ @desc The type codes can be found {@link here|http://code.kx.com/wiki/Reference/type}.
/ @example type 10
/ @see meta
type

/ The uj verb is a type of union join that generalizes {@link comma|http://code.kx.com/wiki/Reference/Comma}.
/ The result has the union of the columns filled with nulls where necessary.
/ @example r:t1 uj t2
/ @desc If t1 and t2 have matching key columns, then records in t2 update matching records in t1. Otherwise, t2 records are inserted.
/ @see lj ljf ej ij pj upsert asof aj aj0 wj wj1
uj

/ Ungroups lists.
/ The ungroup function takes an argument of a table, some of whose columns have entries that are lists.
/ For any row, each list must be of the same length. The result is the flattened table, with one row for each item of the lists.
/ @param t table Table with groupped columns.
/ @returns table Ungroupped table t.
/ @example ungroup ([] a:(1 2;3 4))
/ @see group xgroup
ungroup

/ The verb union returns a list of the distinct elements of its combined arguments, i.e. {@link distinct} applied to the append of the two arguments.
/ union can also be applied to tables, returning the distinct rows in both.
/ @ginfo
/ @example
/ 1 2 union 2
/ ([] a: til 10) union ([] a: til 5)
/ @see in inter except
union

/ Updates a table or a dictionary.
/ @example
/ update col:expr by expr from table where cond
/ @desc For more infomation see {@link Q for Mortals|http://code.kx.com/wiki/JB:QforMortals2/queries_q_sql#The_update_Template} or {@link select}.
/ @see delete exec insert select upsert
update

/ Converts symbol or character data to upper case, if possible.
/ @param c value Any object with strings or chars as base objects.
/ @returns value The same shape as c but with all chars in the upper case.
/ @example
/ upper "String"
/ upper `a`b!("C";"B")
/ @see lower
upper

/ The upsert verb adds new records to a table.
/ If the table is keyed, any new records that match on key are updated. Otherwise, new records are inserted.
/ If the table is passed by reference, it is updated in place. Otherwise the updated table is returned.
/ @example a upsert ([s:`e`r`q]r:30 4 10;u:70 8 50)
/ @see delete exec insert select update
upsert

/ value performs several functions depending on its argument.
/ @example
/ value `q`w`e!(1 2;3 4;5 6) / Returns the values of a dictionary
/ value `a                   / Given a symbol, it returns the value of the symbol name
/ value `e$`a`a`c`b          / When the argument is enumerated, it returns the corresponding symbol list
/ value {x+1}                / Given a function, it returns the list (bytecode;params;locals;context,globals;const[0];...;const[n];string representation)
/ value view                 / Given a view object, it returns the list (cached value;parse tree;dependencies;definition)
/ value +[1]                 / Given a projection, it returns a list of the function followed by the given parameters
/ value differ               / Given a composition, it returns the list of composed functions
/ value (+)                  / Given a primitive, it returns the internal code for the primitive
/ value (+/)                 / When the argument is generated from an adverb, it returns the original verb
/ value "1+2"                / Given a string, it evaluates it in the working context
/ value ("{x+y}";1;2)        / Given a list, it applies the first element to the rest. If the first element is a symbol, it is evaluated first
/ @desc The function value is the same as {@link get}. By convention get is used for file i/o but the two are interchangeable.
/ @see get
value

/ The aggregate var function returns the variance of a numeric list.
/ The result has type float. Nulls are ignored.
/ @param x (number|number list|dictionary) Input value.
/ @returns float Variance of x.
/ @example var 1.1 1.2 1.3
/ @see svar cor cov scov dev mdev sdev
var

/ The view function returns the expression defining the dependency passed as its symbol argument.
/ @param s symbol View variable.
/ @example view `v
/ @see views value
view

/ The views function returns a sorted list of the currently defined views in the root directory.
/ @example views[]
/ @see view tables
views

/ The vector from scalar verb performs different functions depending on its arguments.
/ Typically, it returns an list (vector) from each atom (scalar) in its argument, or may return a list of lists from a list.
/ @example X vs Y
/ "," vs "one,two,three" / If Y is a string, and X is a character or string, it cuts Y using X as the delimiter, returning a list of strings
/ 0b vs 23173            / If X is 0b and Y is an integer, it returns the bit representation of Y
/ 0x0 vs 2413            / If X is 0x0 and Y is a number, it returns the internal representation of Y, with each byte in hex
/ ` vs `mywork.dat       / If X is the back tick `, then it splits symbols on `.
/ ` vs `:/kdb/mywork.dat / Breaks file handles into directory & file parts
/ ` vs "abc\ndef\nghi"   / If y is a string it breaks into lines (cross-platform - both UNIX (\n) and DOS (\r\n) end of lines)
/ @see sv
vs

/ The wavg verb returns the average of its right argument weighted by its left argument.
/ The result is floating point.
/ @ginfo
/ @param w value Weight.
/ @param v value Vector.
/ @returns float sum w*v/sum v
/ @example
/ 1 wavg 1
/ til[10] wavg til 10
/ 1 2 wavg `a`b!1 2
/ ([] a: til 10; b: til 10) wavg ([] a: til 10; b: til 10) / -> `a`b!6.3 6.3
/ @see avg avgs mavg wsum
wavg

/ The where function takes a non-negative integer list and returns a new integer list.
/ @example r:where X
/ @desc The result is built up as X[i] copies of i, for each index i.
/ @example
/ q)where 2 3 0 1
/ 0 0 1 1 1 3
/ @desc Where the argument is a boolean list, this returns the indices of the 1's.
/ @example where 0 = x mod 2
/ @desc Where the argument is a dictionary whose values are non-negative integers, the result is a list with keys repeated as many times as the corresponding value.
/ @example
/ q)d:`amr`ibm`msft!2 3 1
/ q)where d
/ `amr`amr`ibm`ibm`ibm`msft
where

/ Repeat an expression while its condition is true.
/ The while statement has the form
/ @example while[test;exp1;...;expn]
/ @desc where the test expression is evaluated and the result compared with zero. If not zero, the remaining expressions are evaluated in order.
/ This is repeated as long as test is not zero. The test expression should return an atom.
/ while does not return a result.
/ @see do
while

/ The within verb returns a boolean for each atom of the left argument indicating whether it is within the bounds given in the right argument.
/ @example
/ r:X within bounds
/ 1 3 10 6 4 within 2 6
/ "acyxmpu" within "br"
/ (1 3 10 6 4;"acyxmpu") within ((2;"b");(6;"r"))
within

/ Window join is a generalization of asof join, and is available from kdb+ 2.6.
/ asof join takes a snapshot of the current state, while window join aggregates all values of specified columns within intervals.
/ (Since 3.0, wj and wj1 are both implemented with {@link ww}).
/ @example wj[w;c;t;(q;(f0;c0);(f1;c1))]
/ @desc where:
/ <ul><li>t and q are the unkeyed tables to be joined. q should be sorted `sym`time with `p# on sym
/ </li><li>w is a pair of lists of times/timestamps, begin and end
/ </li><li>c are the names of the two common columns, syms and times
/ </li><li>f0,f1 are aggregation functions applied to values in q columns c0,c1 over the intervals
/ </li></ul>
/ Typically. this might be:
/ @example wj[w;`sym`time;trade;(quote;(max;`ask);(min;`bid))]
/ @desc wj1 considers quotes on or after entry to the window. If the join is to consider quotes that arrive from the beginning of the interval, please use wj1.
/ {@link See more.|http://code.kx.com/wiki/Reference/wj}
/ @see lj ljf ej ij pj uj upsert asof aj aj0 ww wj1
wj

/ Window join is a generalization of asof join, and is available from kdb+ 2.6.
/ See {@link wj} for more info.
wj1

/ The aggregate verb wsum calculates the sum of the products of its arguments.
/ When both arguments are integer lists, they are first converted to floats.
/ @ginfo
/ @param w value Weight.
/ @param v value Vector.
/ @returns float sum w*v
/ @example
/ 1 wsum 1
/ til[10] wsum til 10
/ 1 2 wsum `a`b!1 2
/ ([] a: til 10; b: til 10) wsum ([] a: til 10; b: til 10) / -> `a`b!285 285
/ @see sum sums msum wavg
wsum

/ Window join is a generalization of asof join, and is available from kdb+ 2.6.
/ See {@link wj} for more info.
ww

/ The verb xasc sorts a table in ascending order of given columns.
/ The sort is by the first column given, then by the second column within the first, and so on.
/ The `s# attribute is set on the first column given (if possible).
/ The sort is stable, i.e. it preserves order amongst equals.
/ @param x (symbol|symbol list) Columns.
/ @param y (symbol|table)  Table to sort.
/ @returns (symbol|table) Table is sorted, what is returned depends on the second argument.
/ @example
/ `city`name xasc s
/ `status`city`name xasc `s
/ `c xasc `:dat/t   / sort on disk
/ @see xdesc asc desc iasc idesc
xasc

/ The xbar verb rounds its right argument down to the nearest multiple of the integer left argument.
/ The right argument can be any numeric or temporal type.
/ {@link See more.|http://code.kx.com/wiki/Reference/xbar}
/ @example 3 xbar til 16
/ @see bin binr
xbar

/ The verb xcol renames columns in a table.
/ The left argument is a symbol list of new column names, of length less than or equal to the number of columns in the table.
/ The right argument is a table, passed by value. The result is the new table.
/ @param x (symbol|symbol list) New columns.
/ @param table Table.
/ @returns table The input table with the renamed columns.
/ @example trade:`Time`Symbol`Price`Size xcol trade
/ @see cols xcols xkey
xcol

/ The verb xcols reorders columns in a table.
/ The left argument is a symbol list of column names, of length less than or equal to the number of columns in the table.
/ The column names given must belong to the table. The right argument is a table, passed by value, with no primary keys.
/ The result is the new table.
/ @param x (symbol|symbol list) New columns.
/ @param y table Table.
/ @returns table The input table with the reodered columns.
/ @example trade:`sym xcols trade
/ @see cols xcol xkey
xcols

/ The verb xdesc sorts a table in descending order of given columns.
/ The behaviour is just like {@link xasc} except that the sort is descending and the `s# attribute is not set.
/ The sort is stable, i.e. it preserves order amongst equals.
/ @param x (symbol|symbol list) Columns.
/ @param y (symbol|table)  Table to sort.
/ @returns (symbol|table) Table is sorted, what is returned depends on the second argument.
/ @example
/ `city`name xdesc s
/ `status`city`name xdesc `s
/ `c xdesc `:dat/t   / sort on disk
/ @see xasc asc desc iasc idesc
xdesc

/ The xexp verb computes x^y.
/ Integer arguments are first converted to float, and the result is type float.
/ @example 2 xexp 10
/ @see exp log xlog
xexp

/ The verb xgroup groups its right argument table by the foreign keys in the left argument.
/ It is equivalent to doing a select .. by on the table,
/ except that all the remaining columns are grouped without having to list them explicitly.
/ @example `p xgroup sp
/ @see group ungroup
xgroup

/ The verb xkey sets the primary keys in a table.
/ The left argument is a symbol list of column names, which must belong to the table.
/ The right argument is a table. If passed by reference, it is updated. If passed by value, a new table is returned.
/ @param x (symbol|symbol list) Columns.
/ @param y (symbol|table)  Table to be keyed.
/ @returns (symbol|table) Table is keyed, what is returned depends on the second argument.
/ @example `sym xkey `trade
/ @see cols xcol xcols
xkey

/ The xlog verb computes the base-x logarithm of y.
/ Integer arguments are first converted to float, and the result is type float.
/ Null is returned if the right argument is negative, and negative infinity if the right argument is 0.
/ @example 10 xlog 100
/ @see log exp xexp
xlog

/ The uniform verb xprev returns the nth previous element to each item in the right argument list.
/ The result has the same length as the right argument.
/ The first n elements of the result are null, empty or blank as appropriate, and thereafter each element is the nth previous element.
/ One can note that there is no xnext function. Fortunately xprev with a negative number on the left can achieve this.
/ @param n number Shift.
/ @param l list Input list.
/ @returns list l with elements moved.
/ @example
/ 3 xprev til 10
/ -3 xprev til 10
/ @see next prev first last enlist
xprev

/ The verb xrank allocates items to buckets based on value.
/ If the total number of items is evenly divisible by the number of buckets, then each bucket will have the same number of items;
/ otherwise the first buckets have extra items.
/ @example indices:n xrank values
/ @desc The left argument is an integer n, and the corresponding buckets will be numbered 0 ... n-1.
/ The right argument is the data to be bucketed, and the result is the corresponding bucket indices.
xrank
