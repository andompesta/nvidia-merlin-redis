ў╒
аД
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
е
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	И
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.12unknown8╙┼
Р
\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*m
shared_name^\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias
Й
pretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias/Read/ReadVariableOpReadVariableOp\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias*
_output_shapes
:@*
dtype0
Щ
^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А@*o
shared_name`^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel
Т
rretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel/Read/ReadVariableOpReadVariableOp^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel*
_output_shapes
:	А@*
dtype0
С
\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*m
shared_name^\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias
К
pretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias/Read/ReadVariableOpReadVariableOp\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias*
_output_shapes	
:А*
dtype0
Ъ
^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
ИА*o
shared_name`^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel
У
rretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel/Read/ReadVariableOpReadVariableOp^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel* 
_output_shapes
:
ИА*
dtype0
Ч
retrieval_model_v2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*.
shared_nameretrieval_model_v2/embeddings
Р
1retrieval_model_v2/embeddings/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings*
_output_shapes
:	Ё*
dtype0
Ъ
retrieval_model_v2/embeddings_1VarHandleOp*
_output_shapes
: *
dtype0*
shape
:1*0
shared_name!retrieval_model_v2/embeddings_1
У
3retrieval_model_v2/embeddings_1/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_1*
_output_shapes

:1*
dtype0
Ъ
retrieval_model_v2/embeddings_2VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!retrieval_model_v2/embeddings_2
У
3retrieval_model_v2/embeddings_2/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_2*
_output_shapes

:*
dtype0
Ы
retrieval_model_v2/embeddings_3VarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*0
shared_name!retrieval_model_v2/embeddings_3
Ф
3retrieval_model_v2/embeddings_3/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_3*
_output_shapes
:	Ё*
dtype0
Ы
retrieval_model_v2/embeddings_4VarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*0
shared_name!retrieval_model_v2/embeddings_4
Ф
3retrieval_model_v2/embeddings_4/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_4*
_output_shapes
:	Ё*
dtype0
Ъ
retrieval_model_v2/embeddings_5VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!retrieval_model_v2/embeddings_5
У
3retrieval_model_v2/embeddings_5/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_5*
_output_shapes

:*
dtype0
Ъ
retrieval_model_v2/embeddings_6VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!retrieval_model_v2/embeddings_6
У
3retrieval_model_v2/embeddings_6/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_6*
_output_shapes

:*
dtype0
Ъ
retrieval_model_v2/embeddings_7VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!retrieval_model_v2/embeddings_7
У
3retrieval_model_v2/embeddings_7/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_7*
_output_shapes

:*
dtype0
Ъ
retrieval_model_v2/embeddings_8VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*0
shared_name!retrieval_model_v2/embeddings_8
У
3retrieval_model_v2/embeddings_8/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_8*
_output_shapes

:*
dtype0
Ы
retrieval_model_v2/embeddings_9VarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*0
shared_name!retrieval_model_v2/embeddings_9
Ф
3retrieval_model_v2/embeddings_9/Read/ReadVariableOpReadVariableOpretrieval_model_v2/embeddings_9*
_output_shapes
:	Ё*
dtype0
Э
 retrieval_model_v2/embeddings_10VarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*1
shared_name" retrieval_model_v2/embeddings_10
Ц
4retrieval_model_v2/embeddings_10/Read/ReadVariableOpReadVariableOp retrieval_model_v2/embeddings_10*
_output_shapes
:	Ё*
dtype0
Ь
 retrieval_model_v2/embeddings_11VarHandleOp*
_output_shapes
: *
dtype0*
shape
:*1
shared_name" retrieval_model_v2/embeddings_11
Х
4retrieval_model_v2/embeddings_11/Read/ReadVariableOpReadVariableOp retrieval_model_v2/embeddings_11*
_output_shapes

:*
dtype0

NoOpNoOp
Д╡
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╛┤
value│┤Bп┤ Bз┤
Л
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

blocks
	_feature_shapes

_feature_dtypes
_build_input_shape

signatures*
z
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15*
z
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15*
* 
░
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
"trace_0
#trace_1
$trace_2
%trace_3* 
6
&trace_0
'trace_1
(trace_2
)trace_3* 
* 

*0
+1*
* 
* 
* 

,serving_default* 
`Z
VARIABLE_VALUE retrieval_model_v2/embeddings_11&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUE retrieval_model_v2/embeddings_10&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_9&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_8&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_7&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_6&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_5&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_4&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_3&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEretrieval_model_v2/embeddings_2&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEretrieval_model_v2/embeddings_1'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEretrieval_model_v2/embeddings'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
аЩ
VARIABLE_VALUE^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
ЮЧ
VARIABLE_VALUE\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
аЩ
VARIABLE_VALUE^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
ЮЧ
VARIABLE_VALUE\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
* 

*0
+1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
я
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_aggregation
4parallel_layers
5_context
6_feature_shapes
7_feature_dtypes*
╘
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>layers
5_context
?_feature_shapes
@_feature_dtypes*
* 
Z
0
1
2
3
4
5
6
7
8
9
10
11*
Z
0
1
2
3
4
5
6
7
8
9
10
11*
* 
У
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*

Ftrace_0
Gtrace_1* 

Htrace_0
Itrace_1* 
╕
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_feature_shapes
Q_feature_dtypes* 

Rcategorical*
╕
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_feature_shapes
Z_feature_dtypes* 
* 
* 
 
0
1
2
3*
 
0
1
2
3*
* 
У
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses*

`trace_0
atrace_1* 

btrace_0
ctrace_1* 

d0
e1*
* 
* 
* 

30
51
R2*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
С
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses* 
* 
* 
* 
* 
▌
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qparallel_layers
5_context
r_feature_shapes
s_feature_dtypes*
* 
* 
* 
С
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

d0
e1
52*
* 
* 
* 
* 
* 
* 
* 
╟
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
	dense
А_feature_shapes
Б_feature_dtypes*
╬
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

Иdense
Й_feature_shapes
К_feature_dtypes*
* 
* 
* 
* 
* 
Z
0
1
2
3
4
5
6
7
8
9
10
11*
Z
0
1
2
3
4
5
6
7
8
9
10
11*
* 
Ш
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
ы
Рuser_id
С
user_shops
Тuser_profile
У
user_group
Фuser_gender
Хuser_age
Цuser_consumption_2
Чuser_is_occupied
Шuser_geography
Щuser_intentions
Ъuser_brands
Ыuser_categories*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
Ш
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
╪
б	variables
вtrainable_variables
гregularization_losses
д	keras_api
е__call__
+ж&call_and_return_all_conditional_losses
з_feature_shapes
и_feature_dtypes

kernel
bias*
* 
* 

0
1*

0
1*
* 
Ю
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses*
* 
* 
╪
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses
┤_feature_shapes
╡_feature_dtypes

kernel
bias*
* 
* 
* 
n
50
Х1
Ъ2
Ы3
Ц4
Ф5
Ш6
У7
Р8
Щ9
Ч10
Т11
С12*
* 
* 
* 
ы
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses
╝features

╜table
5_context
╛_feature_shapes
┐_feature_dtypes*
ы
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses
╞features

╟table
5_context
╚_feature_shapes
╔_feature_dtypes*
ы
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses
╨features

╤table
5_context
╥_feature_shapes
╙_feature_dtypes*
ы
╘	variables
╒trainable_variables
╓regularization_losses
╫	keras_api
╪__call__
+┘&call_and_return_all_conditional_losses
┌features

█table
5_context
▄_feature_shapes
▌_feature_dtypes*
ы
▐	variables
▀trainable_variables
рregularization_losses
с	keras_api
т__call__
+у&call_and_return_all_conditional_losses
фfeatures

хtable
5_context
ц_feature_shapes
ч_feature_dtypes*
ы
ш	variables
щtrainable_variables
ъregularization_losses
ы	keras_api
ь__call__
+э&call_and_return_all_conditional_losses
юfeatures

яtable
5_context
Ё_feature_shapes
ё_feature_dtypes*
ы
Є	variables
єtrainable_variables
Їregularization_losses
ї	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses
°features

∙table
5_context
·_feature_shapes
√_feature_dtypes*
ы
№	variables
¤trainable_variables
■regularization_losses
 	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
Вfeatures

Гtable
5_context
Д_feature_shapes
Е_feature_dtypes*
ы
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
Мfeatures

Нtable
5_context
О_feature_shapes
П_feature_dtypes*
ы
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
Цfeatures

Чtable
5_context
Ш_feature_shapes
Щ_feature_dtypes*
ы
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
аfeatures

бtable
5_context
в_feature_shapes
г_feature_dtypes*
ы
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
кfeatures

лtable
5_context
м_feature_shapes
н_feature_dtypes*
* 

0*
* 
* 
* 

0
1*

0
1*
* 
Ю
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
б	variables
вtrainable_variables
гregularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

И0*
* 
* 
* 

0
1*

0
1*
* 
Ю
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses*
* 
* 
* 
* 

0*

0*
* 
Ю
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses*
* 
* 
* 
╥
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses
├_feature_shapes
─_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses*
* 
* 
* 
╥
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses
╨_feature_shapes
╤_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses*
* 
* 
* 
╥
╫	variables
╪trainable_variables
┘regularization_losses
┌	keras_api
█__call__
+▄&call_and_return_all_conditional_losses
▌_feature_shapes
▐_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
╘	variables
╒trainable_variables
╓regularization_losses
╪__call__
+┘&call_and_return_all_conditional_losses
'┘"call_and_return_conditional_losses*
* 
* 
* 
╥
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
ъ_feature_shapes
ы_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
▐	variables
▀trainable_variables
рregularization_losses
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses*
* 
* 
* 
╥
ё	variables
Єtrainable_variables
єregularization_losses
Ї	keras_api
ї__call__
+Ў&call_and_return_all_conditional_losses
ў_feature_shapes
°_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
ш	variables
щtrainable_variables
ъregularization_losses
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses*
* 
* 
* 
╥
■	variables
 trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses
Д_feature_shapes
Е_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Є	variables
єtrainable_variables
Їregularization_losses
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses*
* 
* 
* 
╥
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
С_feature_shapes
Т_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
№	variables
¤trainable_variables
■regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses*
* 
* 
* 
╥
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Ю_feature_shapes
Я_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses*
* 
* 
* 
╥
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
л_feature_shapes
м_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses*
* 
* 
* 
╥
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
╕_feature_shapes
╣_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses*
* 
* 
* 
╥
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses
┼_feature_shapes
╞_feature_dtypes

embeddings*
* 
* 

0*

0*
* 
Ю
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses*
* 
* 
* 
╥
╠	variables
═trainable_variables
╬regularization_losses
╧	keras_api
╨__call__
+╤&call_and_return_all_conditional_losses
╥_feature_shapes
╙_feature_dtypes

embeddings*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

╜0
51*
* 
* 
* 

0*

0*
* 
Ю
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

╟0
51*
* 
* 
* 

0*

0*
* 
Ю
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

╤0
51*
* 
* 
* 

0*

0*
* 
Ю
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
╫	variables
╪trainable_variables
┘regularization_losses
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

█0
51*
* 
* 
* 

0*

0*
* 
Ю
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

х0
51*
* 
* 
* 

0*

0*
* 
Ю
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
ё	variables
Єtrainable_variables
єregularization_losses
ї__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

я0
51*
* 
* 
* 

0*

0*
* 
Ю
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
■	variables
 trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

∙0
51*
* 
* 
* 

0*

0*
* 
Ю
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Г0
51*
* 
* 
* 

0*

0*
* 
Ю
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Н0
51*
* 
* 
* 

0*

0*
* 
Ю
№non_trainable_variables
¤layers
■metrics
  layer_regularization_losses
Аlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

Ч0
51*
* 
* 
* 

0*

0*
* 
Ю
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

б0
51*
* 
* 
* 

0*

0*
* 
Ю
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

л0
51*
* 
* 
* 

0*

0*
* 
Ю
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
╠	variables
═trainable_variables
╬regularization_losses
╨__call__
+╤&call_and_return_all_conditional_losses
'╤"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
{
serving_default_user_agePlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
~
serving_default_user_brandsPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
В
serving_default_user_categoriesPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Е
"serving_default_user_consumption_2Placeholder*'
_output_shapes
:         *
dtype0*
shape:         
~
serving_default_user_genderPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Б
serving_default_user_geographyPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
}
serving_default_user_groupPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
z
serving_default_user_idPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
В
serving_default_user_intentionsPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
Г
 serving_default_user_is_occupiedPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         

serving_default_user_profilePlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
}
serving_default_user_shopsPlaceholder*'
_output_shapes
:         *
dtype0*
shape:         
┬
StatefulPartitionedCallStatefulPartitionedCallserving_default_user_ageserving_default_user_brandsserving_default_user_categories"serving_default_user_consumption_2serving_default_user_genderserving_default_user_geographyserving_default_user_groupserving_default_user_idserving_default_user_intentions serving_default_user_is_occupiedserving_default_user_profileserving_default_user_shopsretrieval_model_v2/embeddings_4retrieval_model_v2/embeddingsretrieval_model_v2/embeddings_1retrieval_model_v2/embeddings_5retrieval_model_v2/embeddings_7 retrieval_model_v2/embeddings_11retrieval_model_v2/embeddings_8retrieval_model_v2/embeddings_2retrieval_model_v2/embeddings_6retrieval_model_v2/embeddings_3 retrieval_model_v2/embeddings_10retrieval_model_v2/embeddings_9^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*2
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *-
f(R&
$__inference_signature_wrapper_204490
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
■

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename4retrieval_model_v2/embeddings_11/Read/ReadVariableOp4retrieval_model_v2/embeddings_10/Read/ReadVariableOp3retrieval_model_v2/embeddings_9/Read/ReadVariableOp3retrieval_model_v2/embeddings_8/Read/ReadVariableOp3retrieval_model_v2/embeddings_7/Read/ReadVariableOp3retrieval_model_v2/embeddings_6/Read/ReadVariableOp3retrieval_model_v2/embeddings_5/Read/ReadVariableOp3retrieval_model_v2/embeddings_4/Read/ReadVariableOp3retrieval_model_v2/embeddings_3/Read/ReadVariableOp3retrieval_model_v2/embeddings_2/Read/ReadVariableOp3retrieval_model_v2/embeddings_1/Read/ReadVariableOp1retrieval_model_v2/embeddings/Read/ReadVariableOprretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel/Read/ReadVariableOppretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias/Read/ReadVariableOprretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel/Read/ReadVariableOppretrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias/Read/ReadVariableOpConst*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  ЁE8В *(
f#R!
__inference__traced_save_205348
╣
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename retrieval_model_v2/embeddings_11 retrieval_model_v2/embeddings_10retrieval_model_v2/embeddings_9retrieval_model_v2/embeddings_8retrieval_model_v2/embeddings_7retrieval_model_v2/embeddings_6retrieval_model_v2/embeddings_5retrieval_model_v2/embeddings_4retrieval_model_v2/embeddings_3retrieval_model_v2/embeddings_2retrieval_model_v2/embeddings_1retrieval_model_v2/embeddings^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *8
config_proto(&

CPU

GPU2*0J

  ЁE8В *+
f&R$
"__inference__traced_restore_205406╣╢
Л9
ф	
/__inference_parallel_block_layer_call_fn_204938
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shops
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shops
unknown:	Ё
	unknown_0:	Ё
	unknown_1:1
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	Ё
	unknown_9:	Ё

unknown_10:	Ё
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11ИвStatefulPartitionedCallё	
StatefulPartitionedCallStatefulPartitionedCallinputs_user_ageinputs_user_brandsinputs_user_categoriesinputs_user_consumption_2inputs_user_genderinputs_user_geographyinputs_user_groupinputs_user_idinputs_user_intentionsinputs_user_is_occupiedinputs_user_profileinputs_user_shopsfeatures_user_agefeatures_user_brandsfeatures_user_categoriesfeatures_user_consumption_2features_user_genderfeatures_user_geographyfeatures_user_groupfeatures_user_idfeatures_user_intentionsfeatures_user_is_occupiedfeatures_user_profilefeatures_user_shopsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *·
_output_shapesч
ф:         :         :         :         :         :         :         :         :         :         :         :         *.
_read_only_resource_inputs
 !"#*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *S
fNRL
J__inference_parallel_block_layer_call_and_return_conditional_losses_204061o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         q

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:         q

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0*'
_output_shapes
:         q

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:         q

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:         q

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:         q

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:         q

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:         s
Identity_10Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:         s
Identity_11Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*ї
_input_shapesу
р:         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops
╕,
и
C__inference_encoder_layer_call_and_return_conditional_losses_204378
user_age
user_brands
user_categories
user_consumption_2
user_gender
user_geography

user_group
user_id
user_intentions
user_is_occupied
user_profile

user_shops(
parallel_block_204330:	Ё(
parallel_block_204332:	Ё'
parallel_block_204334:1'
parallel_block_204336:'
parallel_block_204338:'
parallel_block_204340:'
parallel_block_204342:'
parallel_block_204344:'
parallel_block_204346:(
parallel_block_204348:	Ё(
parallel_block_204350:	Ё(
parallel_block_204352:	Ё-
sequential_block_3_204368:
ИА(
sequential_block_3_204370:	А,
sequential_block_3_204372:	А@'
sequential_block_3_204374:@
identityИв&parallel_block/StatefulPartitionedCallв*sequential_block_3/StatefulPartitionedCall╤	
&parallel_block/StatefulPartitionedCallStatefulPartitionedCalluser_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopsuser_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopsparallel_block_204330parallel_block_204332parallel_block_204334parallel_block_204336parallel_block_204338parallel_block_204340parallel_block_204342parallel_block_204344parallel_block_204346parallel_block_204348parallel_block_204350parallel_block_204352*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *·
_output_shapesч
ф:         :         :         :         :         :         :         :         :         :         :         :         *.
_read_only_resource_inputs
 !"#*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *S
fNRL
J__inference_parallel_block_layer_call_and_return_conditional_losses_203657f
concat_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ╥
concat_features/concatConcatV2/parallel_block/StatefulPartitionedCall:output:0/parallel_block/StatefulPartitionedCall:output:1/parallel_block/StatefulPartitionedCall:output:2/parallel_block/StatefulPartitionedCall:output:3/parallel_block/StatefulPartitionedCall:output:4/parallel_block/StatefulPartitionedCall:output:5/parallel_block/StatefulPartitionedCall:output:6/parallel_block/StatefulPartitionedCall:output:7/parallel_block/StatefulPartitionedCall:output:8/parallel_block/StatefulPartitionedCall:output:90parallel_block/StatefulPartitionedCall:output:100parallel_block/StatefulPartitionedCall:output:11$concat_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Ин
*sequential_block_3/StatefulPartitionedCallStatefulPartitionedCallconcat_features/concat:output:0user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopssequential_block_3_204368sequential_block_3_204370sequential_block_3_204372sequential_block_3_204374*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *W
fRRP
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203725В
IdentityIdentity3sequential_block_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @Ь
NoOpNoOp'^parallel_block/StatefulPartitionedCall+^sequential_block_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 2P
&parallel_block/StatefulPartitionedCall&parallel_block/StatefulPartitionedCall2X
*sequential_block_3/StatefulPartitionedCall*sequential_block_3/StatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
user_age:TP
'
_output_shapes
:         
%
_user_specified_nameuser_brands:XT
'
_output_shapes
:         
)
_user_specified_nameuser_categories:[W
'
_output_shapes
:         
,
_user_specified_nameuser_consumption_2:TP
'
_output_shapes
:         
%
_user_specified_nameuser_gender:WS
'
_output_shapes
:         
(
_user_specified_nameuser_geography:SO
'
_output_shapes
:         
$
_user_specified_name
user_group:PL
'
_output_shapes
:         
!
_user_specified_name	user_id:XT
'
_output_shapes
:         
)
_user_specified_nameuser_intentions:Y	U
'
_output_shapes
:         
*
_user_specified_nameuser_is_occupied:U
Q
'
_output_shapes
:         
&
_user_specified_nameuser_profile:SO
'
_output_shapes
:         
$
_user_specified_name
user_shops
П
б
3__inference_sequential_block_3_layer_call_fn_205208

inputs
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shops
unknown:
ИА
	unknown_0:	А
	unknown_1:	А@
	unknown_2:@
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsfeatures_user_agefeatures_user_brandsfeatures_user_categoriesfeatures_user_consumption_2features_user_genderfeatures_user_geographyfeatures_user_groupfeatures_user_idfeatures_user_intentionsfeatures_user_is_occupiedfeatures_user_profilefeatures_user_shopsunknown	unknown_0	unknown_1	unknown_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *W
fRRP
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203840o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Х
_input_shapesГ
А:         И:         :         :         :         :         :         :         :         :         :         :         :         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         И
 
_user_specified_nameinputs:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a	]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b
^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops
┘
Д
(__inference_encoder_layer_call_fn_204316
user_age
user_brands
user_categories
user_consumption_2
user_gender
user_geography

user_group
user_id
user_intentions
user_is_occupied
user_profile

user_shops
unknown:	Ё
	unknown_0:	Ё
	unknown_1:1
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	Ё
	unknown_9:	Ё

unknown_10:	Ё

unknown_11:
ИА

unknown_12:	А

unknown_13:	А@

unknown_14:@
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCalluser_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*2
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_204233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
user_age:TP
'
_output_shapes
:         
%
_user_specified_nameuser_brands:XT
'
_output_shapes
:         
)
_user_specified_nameuser_categories:[W
'
_output_shapes
:         
,
_user_specified_nameuser_consumption_2:TP
'
_output_shapes
:         
%
_user_specified_nameuser_gender:WS
'
_output_shapes
:         
(
_user_specified_nameuser_geography:SO
'
_output_shapes
:         
$
_user_specified_name
user_group:PL
'
_output_shapes
:         
!
_user_specified_name	user_id:XT
'
_output_shapes
:         
)
_user_specified_nameuser_intentions:Y	U
'
_output_shapes
:         
*
_user_specified_nameuser_is_occupied:U
Q
'
_output_shapes
:         
&
_user_specified_nameuser_profile:SO
'
_output_shapes
:         
$
_user_specified_name
user_shops
с#
Э
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203840

inputs
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11K
7private__dense_4_dense_4_matmul_readvariableop_resource:
ИАG
8private__dense_4_dense_4_biasadd_readvariableop_resource:	АJ
7private__dense_5_dense_5_matmul_readvariableop_resource:	А@F
8private__dense_5_dense_5_biasadd_readvariableop_resource:@
identityИв/private__dense_4/dense_4/BiasAdd/ReadVariableOpв.private__dense_4/dense_4/MatMul/ReadVariableOpв/private__dense_5/dense_5/BiasAdd/ReadVariableOpв.private__dense_5/dense_5/MatMul/ReadVariableOpи
.private__dense_4/dense_4/MatMul/ReadVariableOpReadVariableOp7private__dense_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
ИА*
dtype0Ь
private__dense_4/dense_4/MatMulMatMulinputs6private__dense_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
/private__dense_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp8private__dense_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 private__dense_4/dense_4/BiasAddBiasAdd)private__dense_4/dense_4/MatMul:product:07private__dense_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
private__dense_4/dense_4/ReluRelu)private__dense_4/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         Аз
.private__dense_5/dense_5/MatMul/ReadVariableOpReadVariableOp7private__dense_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0└
private__dense_5/dense_5/MatMulMatMul+private__dense_4/dense_4/Relu:activations:06private__dense_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/private__dense_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp8private__dense_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┴
 private__dense_5/dense_5/BiasAddBiasAdd)private__dense_5/dense_5/MatMul:product:07private__dense_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
IdentityIdentity)private__dense_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @М
NoOpNoOp0^private__dense_4/dense_4/BiasAdd/ReadVariableOp/^private__dense_4/dense_4/MatMul/ReadVariableOp0^private__dense_5/dense_5/BiasAdd/ReadVariableOp/^private__dense_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Х
_input_shapesГ
А:         И:         :         :         :         :         :         :         :         :         :         :         :         : : : : 2b
/private__dense_4/dense_4/BiasAdd/ReadVariableOp/private__dense_4/dense_4/BiasAdd/ReadVariableOp2`
.private__dense_4/dense_4/MatMul/ReadVariableOp.private__dense_4/dense_4/MatMul/ReadVariableOp2b
/private__dense_5/dense_5/BiasAdd/ReadVariableOp/private__dense_5/dense_5/BiasAdd/ReadVariableOp2`
.private__dense_5/dense_5/MatMul/ReadVariableOp.private__dense_5/dense_5/MatMul/ReadVariableOp:P L
(
_output_shapes
:         И
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:Q	M
'
_output_shapes
:         
"
_user_specified_name
features:Q
M
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features
б*
ї
C__inference_encoder_layer_call_and_return_conditional_losses_203736

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11(
parallel_block_203658:	Ё(
parallel_block_203660:	Ё'
parallel_block_203662:1'
parallel_block_203664:'
parallel_block_203666:'
parallel_block_203668:'
parallel_block_203670:'
parallel_block_203672:'
parallel_block_203674:(
parallel_block_203676:	Ё(
parallel_block_203678:	Ё(
parallel_block_203680:	Ё-
sequential_block_3_203726:
ИА(
sequential_block_3_203728:	А,
sequential_block_3_203730:	А@'
sequential_block_3_203732:@
identityИв&parallel_block/StatefulPartitionedCallв*sequential_block_3/StatefulPartitionedCallы
&parallel_block/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11parallel_block_203658parallel_block_203660parallel_block_203662parallel_block_203664parallel_block_203666parallel_block_203668parallel_block_203670parallel_block_203672parallel_block_203674parallel_block_203676parallel_block_203678parallel_block_203680*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *·
_output_shapesч
ф:         :         :         :         :         :         :         :         :         :         :         :         *.
_read_only_resource_inputs
 !"#*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *S
fNRL
J__inference_parallel_block_layer_call_and_return_conditional_losses_203657f
concat_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ╥
concat_features/concatConcatV2/parallel_block/StatefulPartitionedCall:output:0/parallel_block/StatefulPartitionedCall:output:1/parallel_block/StatefulPartitionedCall:output:2/parallel_block/StatefulPartitionedCall:output:3/parallel_block/StatefulPartitionedCall:output:4/parallel_block/StatefulPartitionedCall:output:5/parallel_block/StatefulPartitionedCall:output:6/parallel_block/StatefulPartitionedCall:output:7/parallel_block/StatefulPartitionedCall:output:8/parallel_block/StatefulPartitionedCall:output:90parallel_block/StatefulPartitionedCall:output:100parallel_block/StatefulPartitionedCall:output:11$concat_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:         И·
*sequential_block_3/StatefulPartitionedCallStatefulPartitionedCallconcat_features/concat:output:0inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11sequential_block_3_203726sequential_block_3_203728sequential_block_3_203730sequential_block_3_203732*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *W
fRRP
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203725В
IdentityIdentity3sequential_block_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @Ь
NoOpNoOp'^parallel_block/StatefulPartitionedCall+^sequential_block_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 2P
&parallel_block/StatefulPartitionedCall&parallel_block/StatefulPartitionedCall2X
*sequential_block_3/StatefulPartitionedCall*sequential_block_3/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O	K
'
_output_shapes
:         
 
_user_specified_nameinputs:O
K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
│
А
$__inference_signature_wrapper_204490
user_age
user_brands
user_categories
user_consumption_2
user_gender
user_geography

user_group
user_id
user_intentions
user_is_occupied
user_profile

user_shops
unknown:	Ё
	unknown_0:	Ё
	unknown_1:1
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	Ё
	unknown_9:	Ё

unknown_10:	Ё

unknown_11:
ИА

unknown_12:	А

unknown_13:	А@

unknown_14:@
identityИвStatefulPartitionedCallк
StatefulPartitionedCallStatefulPartitionedCalluser_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*2
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В **
f%R#
!__inference__wrapped_model_203518o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
user_age:TP
'
_output_shapes
:         
%
_user_specified_nameuser_brands:XT
'
_output_shapes
:         
)
_user_specified_nameuser_categories:[W
'
_output_shapes
:         
,
_user_specified_nameuser_consumption_2:TP
'
_output_shapes
:         
%
_user_specified_nameuser_gender:WS
'
_output_shapes
:         
(
_user_specified_nameuser_geography:SO
'
_output_shapes
:         
$
_user_specified_name
user_group:PL
'
_output_shapes
:         
!
_user_specified_name	user_id:XT
'
_output_shapes
:         
)
_user_specified_nameuser_intentions:Y	U
'
_output_shapes
:         
*
_user_specified_nameuser_is_occupied:U
Q
'
_output_shapes
:         
&
_user_specified_nameuser_profile:SO
'
_output_shapes
:         
$
_user_specified_name
user_shops
ё└
ц
C__inference_encoder_layer_call_and_return_conditional_losses_204790
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shopsT
Aparallel_block_embeddings_user_id_user_id_embedding_lookup_204703:	ЁZ
Gparallel_block_embeddings_user_shops_user_shops_embedding_lookup_204709:	Ё]
Kparallel_block_embeddings_user_profile_user_profile_embedding_lookup_204715:1Y
Gparallel_block_embeddings_user_group_user_group_embedding_lookup_204721:[
Iparallel_block_embeddings_user_gender_user_gender_embedding_lookup_204727:U
Cparallel_block_embeddings_user_age_user_age_embedding_lookup_204733:i
Wparallel_block_embeddings_user_consumption_2_user_consumption_2_embedding_lookup_204739:e
Sparallel_block_embeddings_user_is_occupied_user_is_occupied_embedding_lookup_204745:a
Oparallel_block_embeddings_user_geography_user_geography_embedding_lookup_204751:d
Qparallel_block_embeddings_user_intentions_user_intentions_embedding_lookup_204757:	Ё\
Iparallel_block_embeddings_user_brands_user_brands_embedding_lookup_204763:	Ёd
Qparallel_block_embeddings_user_categories_user_categories_embedding_lookup_204769:	Ё^
Jsequential_block_3_private__dense_4_dense_4_matmul_readvariableop_resource:
ИАZ
Ksequential_block_3_private__dense_4_dense_4_biasadd_readvariableop_resource:	А]
Jsequential_block_3_private__dense_5_dense_5_matmul_readvariableop_resource:	А@Y
Ksequential_block_3_private__dense_5_dense_5_biasadd_readvariableop_resource:@
identityИв<parallel_block/embeddings/user_age/user_age/embedding_lookupвBparallel_block/embeddings/user_brands/user_brands/embedding_lookupвJparallel_block/embeddings/user_categories/user_categories/embedding_lookupвPparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupвBparallel_block/embeddings/user_gender/user_gender/embedding_lookupвHparallel_block/embeddings/user_geography/user_geography/embedding_lookupв@parallel_block/embeddings/user_group/user_group/embedding_lookupв:parallel_block/embeddings/user_id/user_id/embedding_lookupвJparallel_block/embeddings/user_intentions/user_intentions/embedding_lookupвLparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupвDparallel_block/embeddings/user_profile/user_profile/embedding_lookupв@parallel_block/embeddings/user_shops/user_shops/embedding_lookupвBsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpвAsequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpвBsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpвAsequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpТ
)parallel_block/embeddings/user_id/SqueezeSqueezeinputs_user_id*
T0*#
_output_shapes
:         *
squeeze_dims

         ▀
:parallel_block/embeddings/user_id/user_id/embedding_lookupResourceGatherAparallel_block_embeddings_user_id_user_id_embedding_lookup_2047032parallel_block/embeddings/user_id/Squeeze:output:0*
Tindices0*T
_classJ
HFloc:@parallel_block/embeddings/user_id/user_id/embedding_lookup/204703*'
_output_shapes
:         *
dtype0Ь
Cparallel_block/embeddings/user_id/user_id/embedding_lookup/IdentityIdentityCparallel_block/embeddings/user_id/user_id/embedding_lookup:output:0*
T0*T
_classJ
HFloc:@parallel_block/embeddings/user_id/user_id/embedding_lookup/204703*'
_output_shapes
:         ╤
Eparallel_block/embeddings/user_id/user_id/embedding_lookup/Identity_1IdentityLparallel_block/embeddings/user_id/user_id/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ш
,parallel_block/embeddings/user_shops/SqueezeSqueezeinputs_user_shops*
T0*#
_output_shapes
:         *
squeeze_dims

         Ї
@parallel_block/embeddings/user_shops/user_shops/embedding_lookupResourceGatherGparallel_block_embeddings_user_shops_user_shops_embedding_lookup_2047095parallel_block/embeddings/user_shops/Squeeze:output:0*
Tindices0*Z
_classP
NLloc:@parallel_block/embeddings/user_shops/user_shops/embedding_lookup/204709*'
_output_shapes
:         *
dtype0о
Iparallel_block/embeddings/user_shops/user_shops/embedding_lookup/IdentityIdentityIparallel_block/embeddings/user_shops/user_shops/embedding_lookup:output:0*
T0*Z
_classP
NLloc:@parallel_block/embeddings/user_shops/user_shops/embedding_lookup/204709*'
_output_shapes
:         ▌
Kparallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity_1IdentityRparallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ь
.parallel_block/embeddings/user_profile/SqueezeSqueezeinputs_user_profile*
T0*#
_output_shapes
:         *
squeeze_dims

         В
Dparallel_block/embeddings/user_profile/user_profile/embedding_lookupResourceGatherKparallel_block_embeddings_user_profile_user_profile_embedding_lookup_2047157parallel_block/embeddings/user_profile/Squeeze:output:0*
Tindices0*^
_classT
RPloc:@parallel_block/embeddings/user_profile/user_profile/embedding_lookup/204715*'
_output_shapes
:         *
dtype0║
Mparallel_block/embeddings/user_profile/user_profile/embedding_lookup/IdentityIdentityMparallel_block/embeddings/user_profile/user_profile/embedding_lookup:output:0*
T0*^
_classT
RPloc:@parallel_block/embeddings/user_profile/user_profile/embedding_lookup/204715*'
_output_shapes
:         х
Oparallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity_1IdentityVparallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ш
,parallel_block/embeddings/user_group/SqueezeSqueezeinputs_user_group*
T0*#
_output_shapes
:         *
squeeze_dims

         Ї
@parallel_block/embeddings/user_group/user_group/embedding_lookupResourceGatherGparallel_block_embeddings_user_group_user_group_embedding_lookup_2047215parallel_block/embeddings/user_group/Squeeze:output:0*
Tindices0*Z
_classP
NLloc:@parallel_block/embeddings/user_group/user_group/embedding_lookup/204721*'
_output_shapes
:         *
dtype0о
Iparallel_block/embeddings/user_group/user_group/embedding_lookup/IdentityIdentityIparallel_block/embeddings/user_group/user_group/embedding_lookup:output:0*
T0*Z
_classP
NLloc:@parallel_block/embeddings/user_group/user_group/embedding_lookup/204721*'
_output_shapes
:         ▌
Kparallel_block/embeddings/user_group/user_group/embedding_lookup/Identity_1IdentityRparallel_block/embeddings/user_group/user_group/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ъ
-parallel_block/embeddings/user_gender/SqueezeSqueezeinputs_user_gender*
T0*#
_output_shapes
:         *
squeeze_dims

         √
Bparallel_block/embeddings/user_gender/user_gender/embedding_lookupResourceGatherIparallel_block_embeddings_user_gender_user_gender_embedding_lookup_2047276parallel_block/embeddings/user_gender/Squeeze:output:0*
Tindices0*\
_classR
PNloc:@parallel_block/embeddings/user_gender/user_gender/embedding_lookup/204727*'
_output_shapes
:         *
dtype0┤
Kparallel_block/embeddings/user_gender/user_gender/embedding_lookup/IdentityIdentityKparallel_block/embeddings/user_gender/user_gender/embedding_lookup:output:0*
T0*\
_classR
PNloc:@parallel_block/embeddings/user_gender/user_gender/embedding_lookup/204727*'
_output_shapes
:         с
Mparallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity_1IdentityTparallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ф
*parallel_block/embeddings/user_age/SqueezeSqueezeinputs_user_age*
T0*#
_output_shapes
:         *
squeeze_dims

         ц
<parallel_block/embeddings/user_age/user_age/embedding_lookupResourceGatherCparallel_block_embeddings_user_age_user_age_embedding_lookup_2047333parallel_block/embeddings/user_age/Squeeze:output:0*
Tindices0*V
_classL
JHloc:@parallel_block/embeddings/user_age/user_age/embedding_lookup/204733*'
_output_shapes
:         *
dtype0в
Eparallel_block/embeddings/user_age/user_age/embedding_lookup/IdentityIdentityEparallel_block/embeddings/user_age/user_age/embedding_lookup:output:0*
T0*V
_classL
JHloc:@parallel_block/embeddings/user_age/user_age/embedding_lookup/204733*'
_output_shapes
:         ╒
Gparallel_block/embeddings/user_age/user_age/embedding_lookup/Identity_1IdentityNparallel_block/embeddings/user_age/user_age/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         и
4parallel_block/embeddings/user_consumption_2/SqueezeSqueezeinputs_user_consumption_2*
T0*#
_output_shapes
:         *
squeeze_dims

         м
Pparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupResourceGatherWparallel_block_embeddings_user_consumption_2_user_consumption_2_embedding_lookup_204739=parallel_block/embeddings/user_consumption_2/Squeeze:output:0*
Tindices0*j
_class`
^\loc:@parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/204739*'
_output_shapes
:         *
dtype0▐
Yparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/IdentityIdentityYparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup:output:0*
T0*j
_class`
^\loc:@parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/204739*'
_output_shapes
:         ¤
[parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1Identitybparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         д
2parallel_block/embeddings/user_is_occupied/SqueezeSqueezeinputs_user_is_occupied*
T0*#
_output_shapes
:         *
squeeze_dims

         Ю
Lparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupResourceGatherSparallel_block_embeddings_user_is_occupied_user_is_occupied_embedding_lookup_204745;parallel_block/embeddings/user_is_occupied/Squeeze:output:0*
Tindices0*f
_class\
ZXloc:@parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/204745*'
_output_shapes
:         *
dtype0╥
Uparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/IdentityIdentityUparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup:output:0*
T0*f
_class\
ZXloc:@parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/204745*'
_output_shapes
:         ї
Wparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1Identity^parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         а
0parallel_block/embeddings/user_geography/SqueezeSqueezeinputs_user_geography*
T0*#
_output_shapes
:         *
squeeze_dims

         Р
Hparallel_block/embeddings/user_geography/user_geography/embedding_lookupResourceGatherOparallel_block_embeddings_user_geography_user_geography_embedding_lookup_2047519parallel_block/embeddings/user_geography/Squeeze:output:0*
Tindices0*b
_classX
VTloc:@parallel_block/embeddings/user_geography/user_geography/embedding_lookup/204751*'
_output_shapes
:         *
dtype0╞
Qparallel_block/embeddings/user_geography/user_geography/embedding_lookup/IdentityIdentityQparallel_block/embeddings/user_geography/user_geography/embedding_lookup:output:0*
T0*b
_classX
VTloc:@parallel_block/embeddings/user_geography/user_geography/embedding_lookup/204751*'
_output_shapes
:         э
Sparallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity_1IdentityZparallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         в
1parallel_block/embeddings/user_intentions/SqueezeSqueezeinputs_user_intentions*
T0*#
_output_shapes
:         *
squeeze_dims

         Ч
Jparallel_block/embeddings/user_intentions/user_intentions/embedding_lookupResourceGatherQparallel_block_embeddings_user_intentions_user_intentions_embedding_lookup_204757:parallel_block/embeddings/user_intentions/Squeeze:output:0*
Tindices0*d
_classZ
XVloc:@parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/204757*'
_output_shapes
:         *
dtype0╠
Sparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/IdentityIdentitySparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/204757*'
_output_shapes
:         ё
Uparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity_1Identity\parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ъ
-parallel_block/embeddings/user_brands/SqueezeSqueezeinputs_user_brands*
T0*#
_output_shapes
:         *
squeeze_dims

         √
Bparallel_block/embeddings/user_brands/user_brands/embedding_lookupResourceGatherIparallel_block_embeddings_user_brands_user_brands_embedding_lookup_2047636parallel_block/embeddings/user_brands/Squeeze:output:0*
Tindices0*\
_classR
PNloc:@parallel_block/embeddings/user_brands/user_brands/embedding_lookup/204763*'
_output_shapes
:         *
dtype0┤
Kparallel_block/embeddings/user_brands/user_brands/embedding_lookup/IdentityIdentityKparallel_block/embeddings/user_brands/user_brands/embedding_lookup:output:0*
T0*\
_classR
PNloc:@parallel_block/embeddings/user_brands/user_brands/embedding_lookup/204763*'
_output_shapes
:         с
Mparallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity_1IdentityTparallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         в
1parallel_block/embeddings/user_categories/SqueezeSqueezeinputs_user_categories*
T0*#
_output_shapes
:         *
squeeze_dims

         Ч
Jparallel_block/embeddings/user_categories/user_categories/embedding_lookupResourceGatherQparallel_block_embeddings_user_categories_user_categories_embedding_lookup_204769:parallel_block/embeddings/user_categories/Squeeze:output:0*
Tindices0*d
_classZ
XVloc:@parallel_block/embeddings/user_categories/user_categories/embedding_lookup/204769*'
_output_shapes
:         *
dtype0╠
Sparallel_block/embeddings/user_categories/user_categories/embedding_lookup/IdentityIdentitySparallel_block/embeddings/user_categories/user_categories/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@parallel_block/embeddings/user_categories/user_categories/embedding_lookup/204769*'
_output_shapes
:         ё
Uparallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity_1Identity\parallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         f
concat_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ┬	
concat_features/concatConcatV2Pparallel_block/embeddings/user_age/user_age/embedding_lookup/Identity_1:output:0Vparallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity_1:output:0^parallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity_1:output:0dparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1:output:0Vparallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity_1:output:0\parallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity_1:output:0Tparallel_block/embeddings/user_group/user_group/embedding_lookup/Identity_1:output:0Nparallel_block/embeddings/user_id/user_id/embedding_lookup/Identity_1:output:0^parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity_1:output:0`parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1:output:0Xparallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity_1:output:0Tparallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity_1:output:0$concat_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:         И╬
Asequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpReadVariableOpJsequential_block_3_private__dense_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
ИА*
dtype0█
2sequential_block_3/private__dense_4/dense_4/MatMulMatMulconcat_features/concat:output:0Isequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╦
Bsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpReadVariableOpKsequential_block_3_private__dense_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
3sequential_block_3/private__dense_4/dense_4/BiasAddBiasAdd<sequential_block_3/private__dense_4/dense_4/MatMul:product:0Jsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ай
0sequential_block_3/private__dense_4/dense_4/ReluRelu<sequential_block_3/private__dense_4/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         А═
Asequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpReadVariableOpJsequential_block_3_private__dense_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0∙
2sequential_block_3/private__dense_5/dense_5/MatMulMatMul>sequential_block_3/private__dense_4/dense_4/Relu:activations:0Isequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @╩
Bsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpKsequential_block_3_private__dense_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0·
3sequential_block_3/private__dense_5/dense_5/BiasAddBiasAdd<sequential_block_3/private__dense_5/dense_5/MatMul:product:0Jsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Л
IdentityIdentity<sequential_block_3/private__dense_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @▓	
NoOpNoOp=^parallel_block/embeddings/user_age/user_age/embedding_lookupC^parallel_block/embeddings/user_brands/user_brands/embedding_lookupK^parallel_block/embeddings/user_categories/user_categories/embedding_lookupQ^parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupC^parallel_block/embeddings/user_gender/user_gender/embedding_lookupI^parallel_block/embeddings/user_geography/user_geography/embedding_lookupA^parallel_block/embeddings/user_group/user_group/embedding_lookup;^parallel_block/embeddings/user_id/user_id/embedding_lookupK^parallel_block/embeddings/user_intentions/user_intentions/embedding_lookupM^parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupE^parallel_block/embeddings/user_profile/user_profile/embedding_lookupA^parallel_block/embeddings/user_shops/user_shops/embedding_lookupC^sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpB^sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpC^sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpB^sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 2|
<parallel_block/embeddings/user_age/user_age/embedding_lookup<parallel_block/embeddings/user_age/user_age/embedding_lookup2И
Bparallel_block/embeddings/user_brands/user_brands/embedding_lookupBparallel_block/embeddings/user_brands/user_brands/embedding_lookup2Ш
Jparallel_block/embeddings/user_categories/user_categories/embedding_lookupJparallel_block/embeddings/user_categories/user_categories/embedding_lookup2д
Pparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupPparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup2И
Bparallel_block/embeddings/user_gender/user_gender/embedding_lookupBparallel_block/embeddings/user_gender/user_gender/embedding_lookup2Ф
Hparallel_block/embeddings/user_geography/user_geography/embedding_lookupHparallel_block/embeddings/user_geography/user_geography/embedding_lookup2Д
@parallel_block/embeddings/user_group/user_group/embedding_lookup@parallel_block/embeddings/user_group/user_group/embedding_lookup2x
:parallel_block/embeddings/user_id/user_id/embedding_lookup:parallel_block/embeddings/user_id/user_id/embedding_lookup2Ш
Jparallel_block/embeddings/user_intentions/user_intentions/embedding_lookupJparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup2Ь
Lparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupLparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup2М
Dparallel_block/embeddings/user_profile/user_profile/embedding_lookupDparallel_block/embeddings/user_profile/user_profile/embedding_lookup2Д
@parallel_block/embeddings/user_shops/user_shops/embedding_lookup@parallel_block/embeddings/user_shops/user_shops/embedding_lookup2И
Bsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpBsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOp2Ж
Asequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpAsequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOp2И
Bsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpBsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOp2Ж
Asequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpAsequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops
Уа
ш
J__inference_parallel_block_layer_call_and_return_conditional_losses_203657

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11E
2embeddings_user_id_user_id_embedding_lookup_203574:	ЁK
8embeddings_user_shops_user_shops_embedding_lookup_203580:	ЁN
<embeddings_user_profile_user_profile_embedding_lookup_203586:1J
8embeddings_user_group_user_group_embedding_lookup_203592:L
:embeddings_user_gender_user_gender_embedding_lookup_203598:F
4embeddings_user_age_user_age_embedding_lookup_203604:Z
Hembeddings_user_consumption_2_user_consumption_2_embedding_lookup_203610:V
Dembeddings_user_is_occupied_user_is_occupied_embedding_lookup_203616:R
@embeddings_user_geography_user_geography_embedding_lookup_203622:U
Bembeddings_user_intentions_user_intentions_embedding_lookup_203628:	ЁM
:embeddings_user_brands_user_brands_embedding_lookup_203634:	ЁU
Bembeddings_user_categories_user_categories_embedding_lookup_203640:	Ё
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11Ив-embeddings/user_age/user_age/embedding_lookupв3embeddings/user_brands/user_brands/embedding_lookupв;embeddings/user_categories/user_categories/embedding_lookupвAembeddings/user_consumption_2/user_consumption_2/embedding_lookupв3embeddings/user_gender/user_gender/embedding_lookupв9embeddings/user_geography/user_geography/embedding_lookupв1embeddings/user_group/user_group/embedding_lookupв+embeddings/user_id/user_id/embedding_lookupв;embeddings/user_intentions/user_intentions/embedding_lookupв=embeddings/user_is_occupied/user_is_occupied/embedding_lookupв5embeddings/user_profile/user_profile/embedding_lookupв1embeddings/user_shops/user_shops/embedding_lookup}
embeddings/user_id/SqueezeSqueezeinputs_7*
T0*#
_output_shapes
:         *
squeeze_dims

         г
+embeddings/user_id/user_id/embedding_lookupResourceGather2embeddings_user_id_user_id_embedding_lookup_203574#embeddings/user_id/Squeeze:output:0*
Tindices0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/203574*'
_output_shapes
:         *
dtype0я
4embeddings/user_id/user_id/embedding_lookup/IdentityIdentity4embeddings/user_id/user_id/embedding_lookup:output:0*
T0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/203574*'
_output_shapes
:         │
6embeddings/user_id/user_id/embedding_lookup/Identity_1Identity=embeddings/user_id/user_id/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Б
embeddings/user_shops/SqueezeSqueeze	inputs_11*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_shops/user_shops/embedding_lookupResourceGather8embeddings_user_shops_user_shops_embedding_lookup_203580&embeddings/user_shops/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/203580*'
_output_shapes
:         *
dtype0Б
:embeddings/user_shops/user_shops/embedding_lookup/IdentityIdentity:embeddings/user_shops/user_shops/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/203580*'
_output_shapes
:         ┐
<embeddings/user_shops/user_shops/embedding_lookup/Identity_1IdentityCembeddings/user_shops/user_shops/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Г
embeddings/user_profile/SqueezeSqueeze	inputs_10*
T0*#
_output_shapes
:         *
squeeze_dims

         ╞
5embeddings/user_profile/user_profile/embedding_lookupResourceGather<embeddings_user_profile_user_profile_embedding_lookup_203586(embeddings/user_profile/Squeeze:output:0*
Tindices0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/203586*'
_output_shapes
:         *
dtype0Н
>embeddings/user_profile/user_profile/embedding_lookup/IdentityIdentity>embeddings/user_profile/user_profile/embedding_lookup:output:0*
T0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/203586*'
_output_shapes
:         ╟
@embeddings/user_profile/user_profile/embedding_lookup/Identity_1IdentityGembeddings/user_profile/user_profile/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         А
embeddings/user_group/SqueezeSqueezeinputs_6*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_group/user_group/embedding_lookupResourceGather8embeddings_user_group_user_group_embedding_lookup_203592&embeddings/user_group/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/203592*'
_output_shapes
:         *
dtype0Б
:embeddings/user_group/user_group/embedding_lookup/IdentityIdentity:embeddings/user_group/user_group/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/203592*'
_output_shapes
:         ┐
<embeddings/user_group/user_group/embedding_lookup/Identity_1IdentityCembeddings/user_group/user_group/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Б
embeddings/user_gender/SqueezeSqueezeinputs_4*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_gender/user_gender/embedding_lookupResourceGather:embeddings_user_gender_user_gender_embedding_lookup_203598'embeddings/user_gender/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/203598*'
_output_shapes
:         *
dtype0З
<embeddings/user_gender/user_gender/embedding_lookup/IdentityIdentity<embeddings/user_gender/user_gender/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/203598*'
_output_shapes
:         ├
>embeddings/user_gender/user_gender/embedding_lookup/Identity_1IdentityEembeddings/user_gender/user_gender/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         |
embeddings/user_age/SqueezeSqueezeinputs*
T0*#
_output_shapes
:         *
squeeze_dims

         к
-embeddings/user_age/user_age/embedding_lookupResourceGather4embeddings_user_age_user_age_embedding_lookup_203604$embeddings/user_age/Squeeze:output:0*
Tindices0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/203604*'
_output_shapes
:         *
dtype0ї
6embeddings/user_age/user_age/embedding_lookup/IdentityIdentity6embeddings/user_age/user_age/embedding_lookup:output:0*
T0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/203604*'
_output_shapes
:         ╖
8embeddings/user_age/user_age/embedding_lookup/Identity_1Identity?embeddings/user_age/user_age/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         И
%embeddings/user_consumption_2/SqueezeSqueezeinputs_3*
T0*#
_output_shapes
:         *
squeeze_dims

         Ё
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupResourceGatherHembeddings_user_consumption_2_user_consumption_2_embedding_lookup_203610.embeddings/user_consumption_2/Squeeze:output:0*
Tindices0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/203610*'
_output_shapes
:         *
dtype0▒
Jembeddings/user_consumption_2/user_consumption_2/embedding_lookup/IdentityIdentityJembeddings/user_consumption_2/user_consumption_2/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/203610*'
_output_shapes
:         ▀
Lembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1IdentitySembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ж
#embeddings/user_is_occupied/SqueezeSqueezeinputs_9*
T0*#
_output_shapes
:         *
squeeze_dims

         т
=embeddings/user_is_occupied/user_is_occupied/embedding_lookupResourceGatherDembeddings_user_is_occupied_user_is_occupied_embedding_lookup_203616,embeddings/user_is_occupied/Squeeze:output:0*
Tindices0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/203616*'
_output_shapes
:         *
dtype0е
Fembeddings/user_is_occupied/user_is_occupied/embedding_lookup/IdentityIdentityFembeddings/user_is_occupied/user_is_occupied/embedding_lookup:output:0*
T0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/203616*'
_output_shapes
:         ╫
Hembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1IdentityOembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Д
!embeddings/user_geography/SqueezeSqueezeinputs_5*
T0*#
_output_shapes
:         *
squeeze_dims

         ╘
9embeddings/user_geography/user_geography/embedding_lookupResourceGather@embeddings_user_geography_user_geography_embedding_lookup_203622*embeddings/user_geography/Squeeze:output:0*
Tindices0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/203622*'
_output_shapes
:         *
dtype0Щ
Bembeddings/user_geography/user_geography/embedding_lookup/IdentityIdentityBembeddings/user_geography/user_geography/embedding_lookup:output:0*
T0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/203622*'
_output_shapes
:         ╧
Dembeddings/user_geography/user_geography/embedding_lookup/Identity_1IdentityKembeddings/user_geography/user_geography/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Е
"embeddings/user_intentions/SqueezeSqueezeinputs_8*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_intentions/user_intentions/embedding_lookupResourceGatherBembeddings_user_intentions_user_intentions_embedding_lookup_203628+embeddings/user_intentions/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/203628*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_intentions/user_intentions/embedding_lookup/IdentityIdentityDembeddings/user_intentions/user_intentions/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/203628*'
_output_shapes
:         ╙
Fembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1IdentityMembeddings/user_intentions/user_intentions/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Б
embeddings/user_brands/SqueezeSqueezeinputs_1*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_brands/user_brands/embedding_lookupResourceGather:embeddings_user_brands_user_brands_embedding_lookup_203634'embeddings/user_brands/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/203634*'
_output_shapes
:         *
dtype0З
<embeddings/user_brands/user_brands/embedding_lookup/IdentityIdentity<embeddings/user_brands/user_brands/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/203634*'
_output_shapes
:         ├
>embeddings/user_brands/user_brands/embedding_lookup/Identity_1IdentityEembeddings/user_brands/user_brands/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Е
"embeddings/user_categories/SqueezeSqueezeinputs_2*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_categories/user_categories/embedding_lookupResourceGatherBembeddings_user_categories_user_categories_embedding_lookup_203640+embeddings/user_categories/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/203640*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_categories/user_categories/embedding_lookup/IdentityIdentityDembeddings/user_categories/user_categories/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/203640*'
_output_shapes
:         ╙
Fembeddings/user_categories/user_categories/embedding_lookup/Identity_1IdentityMembeddings/user_categories/user_categories/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Р
IdentityIdentityAembeddings/user_age/user_age/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_1IdentityGembeddings/user_brands/user_brands/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_2IdentityOembeddings/user_categories/user_categories/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ж

Identity_3IdentityUembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_4IdentityGembeddings/user_gender/user_gender/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ю

Identity_5IdentityMembeddings/user_geography/user_geography/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ц

Identity_6IdentityEembeddings/user_group/user_group/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Р

Identity_7Identity?embeddings/user_id/user_id/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_8IdentityOembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         в

Identity_9IdentityQembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ы
Identity_10IdentityIembeddings/user_profile/user_profile/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ч
Identity_11IdentityEembeddings/user_shops/user_shops/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ь
NoOpNoOp.^embeddings/user_age/user_age/embedding_lookup4^embeddings/user_brands/user_brands/embedding_lookup<^embeddings/user_categories/user_categories/embedding_lookupB^embeddings/user_consumption_2/user_consumption_2/embedding_lookup4^embeddings/user_gender/user_gender/embedding_lookup:^embeddings/user_geography/user_geography/embedding_lookup2^embeddings/user_group/user_group/embedding_lookup,^embeddings/user_id/user_id/embedding_lookup<^embeddings/user_intentions/user_intentions/embedding_lookup>^embeddings/user_is_occupied/user_is_occupied/embedding_lookup6^embeddings/user_profile/user_profile/embedding_lookup2^embeddings/user_shops/user_shops/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*ї
_input_shapesу
р:         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : 2^
-embeddings/user_age/user_age/embedding_lookup-embeddings/user_age/user_age/embedding_lookup2j
3embeddings/user_brands/user_brands/embedding_lookup3embeddings/user_brands/user_brands/embedding_lookup2z
;embeddings/user_categories/user_categories/embedding_lookup;embeddings/user_categories/user_categories/embedding_lookup2Ж
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupAembeddings/user_consumption_2/user_consumption_2/embedding_lookup2j
3embeddings/user_gender/user_gender/embedding_lookup3embeddings/user_gender/user_gender/embedding_lookup2v
9embeddings/user_geography/user_geography/embedding_lookup9embeddings/user_geography/user_geography/embedding_lookup2f
1embeddings/user_group/user_group/embedding_lookup1embeddings/user_group/user_group/embedding_lookup2Z
+embeddings/user_id/user_id/embedding_lookup+embeddings/user_id/user_id/embedding_lookup2z
;embeddings/user_intentions/user_intentions/embedding_lookup;embeddings/user_intentions/user_intentions/embedding_lookup2~
=embeddings/user_is_occupied/user_is_occupied/embedding_lookup=embeddings/user_is_occupied/user_is_occupied/embedding_lookup2n
5embeddings/user_profile/user_profile/embedding_lookup5embeddings/user_profile/user_profile/embedding_lookup2f
1embeddings/user_shops/user_shops/embedding_lookup1embeddings/user_shops/user_shops/embedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O	K
'
_output_shapes
:         
 
_user_specified_nameinputs:O
K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features
┘
Д
(__inference_encoder_layer_call_fn_203771
user_age
user_brands
user_categories
user_consumption_2
user_gender
user_geography

user_group
user_id
user_intentions
user_is_occupied
user_profile

user_shops
unknown:	Ё
	unknown_0:	Ё
	unknown_1:1
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	Ё
	unknown_9:	Ё

unknown_10:	Ё

unknown_11:
ИА

unknown_12:	А

unknown_13:	А@

unknown_14:@
identityИвStatefulPartitionedCall╠
StatefulPartitionedCallStatefulPartitionedCalluser_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*2
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_203736o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
user_age:TP
'
_output_shapes
:         
%
_user_specified_nameuser_brands:XT
'
_output_shapes
:         
)
_user_specified_nameuser_categories:[W
'
_output_shapes
:         
,
_user_specified_nameuser_consumption_2:TP
'
_output_shapes
:         
%
_user_specified_nameuser_gender:WS
'
_output_shapes
:         
(
_user_specified_nameuser_geography:SO
'
_output_shapes
:         
$
_user_specified_name
user_group:PL
'
_output_shapes
:         
!
_user_specified_name	user_id:XT
'
_output_shapes
:         
)
_user_specified_nameuser_intentions:Y	U
'
_output_shapes
:         
*
_user_specified_nameuser_is_occupied:U
Q
'
_output_shapes
:         
&
_user_specified_nameuser_profile:SO
'
_output_shapes
:         
$
_user_specified_name
user_shops
З&
д
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205237

inputs
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shopsK
7private__dense_4_dense_4_matmul_readvariableop_resource:
ИАG
8private__dense_4_dense_4_biasadd_readvariableop_resource:	АJ
7private__dense_5_dense_5_matmul_readvariableop_resource:	А@F
8private__dense_5_dense_5_biasadd_readvariableop_resource:@
identityИв/private__dense_4/dense_4/BiasAdd/ReadVariableOpв.private__dense_4/dense_4/MatMul/ReadVariableOpв/private__dense_5/dense_5/BiasAdd/ReadVariableOpв.private__dense_5/dense_5/MatMul/ReadVariableOpи
.private__dense_4/dense_4/MatMul/ReadVariableOpReadVariableOp7private__dense_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
ИА*
dtype0Ь
private__dense_4/dense_4/MatMulMatMulinputs6private__dense_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
/private__dense_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp8private__dense_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 private__dense_4/dense_4/BiasAddBiasAdd)private__dense_4/dense_4/MatMul:product:07private__dense_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
private__dense_4/dense_4/ReluRelu)private__dense_4/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         Аз
.private__dense_5/dense_5/MatMul/ReadVariableOpReadVariableOp7private__dense_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0└
private__dense_5/dense_5/MatMulMatMul+private__dense_4/dense_4/Relu:activations:06private__dense_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/private__dense_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp8private__dense_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┴
 private__dense_5/dense_5/BiasAddBiasAdd)private__dense_5/dense_5/MatMul:product:07private__dense_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
IdentityIdentity)private__dense_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @М
NoOpNoOp0^private__dense_4/dense_4/BiasAdd/ReadVariableOp/^private__dense_4/dense_4/MatMul/ReadVariableOp0^private__dense_5/dense_5/BiasAdd/ReadVariableOp/^private__dense_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Х
_input_shapesГ
А:         И:         :         :         :         :         :         :         :         :         :         :         :         : : : : 2b
/private__dense_4/dense_4/BiasAdd/ReadVariableOp/private__dense_4/dense_4/BiasAdd/ReadVariableOp2`
.private__dense_4/dense_4/MatMul/ReadVariableOp.private__dense_4/dense_4/MatMul/ReadVariableOp2b
/private__dense_5/dense_5/BiasAdd/ReadVariableOp/private__dense_5/dense_5/BiasAdd/ReadVariableOp2`
.private__dense_5/dense_5/MatMul/ReadVariableOp.private__dense_5/dense_5/MatMul/ReadVariableOp:P L
(
_output_shapes
:         И
 
_user_specified_nameinputs:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a	]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b
^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops
╕,
и
C__inference_encoder_layer_call_and_return_conditional_losses_204440
user_age
user_brands
user_categories
user_consumption_2
user_gender
user_geography

user_group
user_id
user_intentions
user_is_occupied
user_profile

user_shops(
parallel_block_204392:	Ё(
parallel_block_204394:	Ё'
parallel_block_204396:1'
parallel_block_204398:'
parallel_block_204400:'
parallel_block_204402:'
parallel_block_204404:'
parallel_block_204406:'
parallel_block_204408:(
parallel_block_204410:	Ё(
parallel_block_204412:	Ё(
parallel_block_204414:	Ё-
sequential_block_3_204430:
ИА(
sequential_block_3_204432:	А,
sequential_block_3_204434:	А@'
sequential_block_3_204436:@
identityИв&parallel_block/StatefulPartitionedCallв*sequential_block_3/StatefulPartitionedCall╤	
&parallel_block/StatefulPartitionedCallStatefulPartitionedCalluser_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopsuser_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopsparallel_block_204392parallel_block_204394parallel_block_204396parallel_block_204398parallel_block_204400parallel_block_204402parallel_block_204404parallel_block_204406parallel_block_204408parallel_block_204410parallel_block_204412parallel_block_204414*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *·
_output_shapesч
ф:         :         :         :         :         :         :         :         :         :         :         :         *.
_read_only_resource_inputs
 !"#*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *S
fNRL
J__inference_parallel_block_layer_call_and_return_conditional_losses_204061f
concat_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ╥
concat_features/concatConcatV2/parallel_block/StatefulPartitionedCall:output:0/parallel_block/StatefulPartitionedCall:output:1/parallel_block/StatefulPartitionedCall:output:2/parallel_block/StatefulPartitionedCall:output:3/parallel_block/StatefulPartitionedCall:output:4/parallel_block/StatefulPartitionedCall:output:5/parallel_block/StatefulPartitionedCall:output:6/parallel_block/StatefulPartitionedCall:output:7/parallel_block/StatefulPartitionedCall:output:8/parallel_block/StatefulPartitionedCall:output:90parallel_block/StatefulPartitionedCall:output:100parallel_block/StatefulPartitionedCall:output:11$concat_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:         Ин
*sequential_block_3/StatefulPartitionedCallStatefulPartitionedCallconcat_features/concat:output:0user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shopssequential_block_3_204430sequential_block_3_204432sequential_block_3_204434sequential_block_3_204436*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *W
fRRP
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203840В
IdentityIdentity3sequential_block_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @Ь
NoOpNoOp'^parallel_block/StatefulPartitionedCall+^sequential_block_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 2P
&parallel_block/StatefulPartitionedCall&parallel_block/StatefulPartitionedCall2X
*sequential_block_3/StatefulPartitionedCall*sequential_block_3/StatefulPartitionedCall:Q M
'
_output_shapes
:         
"
_user_specified_name
user_age:TP
'
_output_shapes
:         
%
_user_specified_nameuser_brands:XT
'
_output_shapes
:         
)
_user_specified_nameuser_categories:[W
'
_output_shapes
:         
,
_user_specified_nameuser_consumption_2:TP
'
_output_shapes
:         
%
_user_specified_nameuser_gender:WS
'
_output_shapes
:         
(
_user_specified_nameuser_geography:SO
'
_output_shapes
:         
$
_user_specified_name
user_group:PL
'
_output_shapes
:         
!
_user_specified_name	user_id:XT
'
_output_shapes
:         
)
_user_specified_nameuser_intentions:Y	U
'
_output_shapes
:         
*
_user_specified_nameuser_is_occupied:U
Q
'
_output_shapes
:         
&
_user_specified_nameuser_profile:SO
'
_output_shapes
:         
$
_user_specified_name
user_shops
П
б
3__inference_sequential_block_3_layer_call_fn_205183

inputs
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shops
unknown:
ИА
	unknown_0:	А
	unknown_1:	А@
	unknown_2:@
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinputsfeatures_user_agefeatures_user_brandsfeatures_user_categoriesfeatures_user_consumption_2features_user_genderfeatures_user_geographyfeatures_user_groupfeatures_user_idfeatures_user_intentionsfeatures_user_is_occupiedfeatures_user_profilefeatures_user_shopsunknown	unknown_0	unknown_1	unknown_2*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *W
fRRP
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203725o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Х
_input_shapesГ
А:         И:         :         :         :         :         :         :         :         :         :         :         :         : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         И
 
_user_specified_nameinputs:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a	]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b
^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops
╒
╪
(__inference_encoder_layer_call_fn_204538
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shops
unknown:	Ё
	unknown_0:	Ё
	unknown_1:1
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	Ё
	unknown_9:	Ё

unknown_10:	Ё

unknown_11:
ИА

unknown_12:	А

unknown_13:	А@

unknown_14:@
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputs_user_ageinputs_user_brandsinputs_user_categoriesinputs_user_consumption_2inputs_user_genderinputs_user_geographyinputs_user_groupinputs_user_idinputs_user_intentionsinputs_user_is_occupiedinputs_user_profileinputs_user_shopsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*2
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_203736o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops
ДH
№
"__inference__traced_restore_205406
file_prefixC
1assignvariableop_retrieval_model_v2_embeddings_11:F
3assignvariableop_1_retrieval_model_v2_embeddings_10:	ЁE
2assignvariableop_2_retrieval_model_v2_embeddings_9:	ЁD
2assignvariableop_3_retrieval_model_v2_embeddings_8:D
2assignvariableop_4_retrieval_model_v2_embeddings_7:D
2assignvariableop_5_retrieval_model_v2_embeddings_6:D
2assignvariableop_6_retrieval_model_v2_embeddings_5:E
2assignvariableop_7_retrieval_model_v2_embeddings_4:	ЁE
2assignvariableop_8_retrieval_model_v2_embeddings_3:	ЁD
2assignvariableop_9_retrieval_model_v2_embeddings_2:E
3assignvariableop_10_retrieval_model_v2_embeddings_1:1D
1assignvariableop_11_retrieval_model_v2_embeddings:	ЁЖ
rassignvariableop_12_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_kernel:
ИА
passignvariableop_13_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_bias:	АЕ
rassignvariableop_14_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_kernel:	А@~
passignvariableop_15_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_bias:@
identity_17ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9У
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╣
valueпBмB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHТ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B є
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOpAssignVariableOp1assignvariableop_retrieval_model_v2_embeddings_11Identity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_1AssignVariableOp3assignvariableop_1_retrieval_model_v2_embeddings_10Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_2AssignVariableOp2assignvariableop_2_retrieval_model_v2_embeddings_9Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_3AssignVariableOp2assignvariableop_3_retrieval_model_v2_embeddings_8Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_4AssignVariableOp2assignvariableop_4_retrieval_model_v2_embeddings_7Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_5AssignVariableOp2assignvariableop_5_retrieval_model_v2_embeddings_6Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_6AssignVariableOp2assignvariableop_6_retrieval_model_v2_embeddings_5Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_7AssignVariableOp2assignvariableop_7_retrieval_model_v2_embeddings_4Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_8AssignVariableOp2assignvariableop_8_retrieval_model_v2_embeddings_3Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_9AssignVariableOp2assignvariableop_9_retrieval_model_v2_embeddings_2Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:д
AssignVariableOp_10AssignVariableOp3assignvariableop_10_retrieval_model_v2_embeddings_1Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:в
AssignVariableOp_11AssignVariableOp1assignvariableop_11_retrieval_model_v2_embeddingsIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:у
AssignVariableOp_12AssignVariableOprassignvariableop_12_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:с
AssignVariableOp_13AssignVariableOppassignvariableop_13_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:у
AssignVariableOp_14AssignVariableOprassignvariableop_14_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:с
AssignVariableOp_15AssignVariableOppassignvariableop_15_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 п
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: Ь
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Уа
ш
J__inference_parallel_block_layer_call_and_return_conditional_losses_204061

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11E
2embeddings_user_id_user_id_embedding_lookup_203978:	ЁK
8embeddings_user_shops_user_shops_embedding_lookup_203984:	ЁN
<embeddings_user_profile_user_profile_embedding_lookup_203990:1J
8embeddings_user_group_user_group_embedding_lookup_203996:L
:embeddings_user_gender_user_gender_embedding_lookup_204002:F
4embeddings_user_age_user_age_embedding_lookup_204008:Z
Hembeddings_user_consumption_2_user_consumption_2_embedding_lookup_204014:V
Dembeddings_user_is_occupied_user_is_occupied_embedding_lookup_204020:R
@embeddings_user_geography_user_geography_embedding_lookup_204026:U
Bembeddings_user_intentions_user_intentions_embedding_lookup_204032:	ЁM
:embeddings_user_brands_user_brands_embedding_lookup_204038:	ЁU
Bembeddings_user_categories_user_categories_embedding_lookup_204044:	Ё
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11Ив-embeddings/user_age/user_age/embedding_lookupв3embeddings/user_brands/user_brands/embedding_lookupв;embeddings/user_categories/user_categories/embedding_lookupвAembeddings/user_consumption_2/user_consumption_2/embedding_lookupв3embeddings/user_gender/user_gender/embedding_lookupв9embeddings/user_geography/user_geography/embedding_lookupв1embeddings/user_group/user_group/embedding_lookupв+embeddings/user_id/user_id/embedding_lookupв;embeddings/user_intentions/user_intentions/embedding_lookupв=embeddings/user_is_occupied/user_is_occupied/embedding_lookupв5embeddings/user_profile/user_profile/embedding_lookupв1embeddings/user_shops/user_shops/embedding_lookup}
embeddings/user_id/SqueezeSqueezeinputs_7*
T0*#
_output_shapes
:         *
squeeze_dims

         г
+embeddings/user_id/user_id/embedding_lookupResourceGather2embeddings_user_id_user_id_embedding_lookup_203978#embeddings/user_id/Squeeze:output:0*
Tindices0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/203978*'
_output_shapes
:         *
dtype0я
4embeddings/user_id/user_id/embedding_lookup/IdentityIdentity4embeddings/user_id/user_id/embedding_lookup:output:0*
T0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/203978*'
_output_shapes
:         │
6embeddings/user_id/user_id/embedding_lookup/Identity_1Identity=embeddings/user_id/user_id/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Б
embeddings/user_shops/SqueezeSqueeze	inputs_11*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_shops/user_shops/embedding_lookupResourceGather8embeddings_user_shops_user_shops_embedding_lookup_203984&embeddings/user_shops/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/203984*'
_output_shapes
:         *
dtype0Б
:embeddings/user_shops/user_shops/embedding_lookup/IdentityIdentity:embeddings/user_shops/user_shops/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/203984*'
_output_shapes
:         ┐
<embeddings/user_shops/user_shops/embedding_lookup/Identity_1IdentityCembeddings/user_shops/user_shops/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Г
embeddings/user_profile/SqueezeSqueeze	inputs_10*
T0*#
_output_shapes
:         *
squeeze_dims

         ╞
5embeddings/user_profile/user_profile/embedding_lookupResourceGather<embeddings_user_profile_user_profile_embedding_lookup_203990(embeddings/user_profile/Squeeze:output:0*
Tindices0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/203990*'
_output_shapes
:         *
dtype0Н
>embeddings/user_profile/user_profile/embedding_lookup/IdentityIdentity>embeddings/user_profile/user_profile/embedding_lookup:output:0*
T0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/203990*'
_output_shapes
:         ╟
@embeddings/user_profile/user_profile/embedding_lookup/Identity_1IdentityGembeddings/user_profile/user_profile/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         А
embeddings/user_group/SqueezeSqueezeinputs_6*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_group/user_group/embedding_lookupResourceGather8embeddings_user_group_user_group_embedding_lookup_203996&embeddings/user_group/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/203996*'
_output_shapes
:         *
dtype0Б
:embeddings/user_group/user_group/embedding_lookup/IdentityIdentity:embeddings/user_group/user_group/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/203996*'
_output_shapes
:         ┐
<embeddings/user_group/user_group/embedding_lookup/Identity_1IdentityCembeddings/user_group/user_group/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Б
embeddings/user_gender/SqueezeSqueezeinputs_4*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_gender/user_gender/embedding_lookupResourceGather:embeddings_user_gender_user_gender_embedding_lookup_204002'embeddings/user_gender/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/204002*'
_output_shapes
:         *
dtype0З
<embeddings/user_gender/user_gender/embedding_lookup/IdentityIdentity<embeddings/user_gender/user_gender/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/204002*'
_output_shapes
:         ├
>embeddings/user_gender/user_gender/embedding_lookup/Identity_1IdentityEembeddings/user_gender/user_gender/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         |
embeddings/user_age/SqueezeSqueezeinputs*
T0*#
_output_shapes
:         *
squeeze_dims

         к
-embeddings/user_age/user_age/embedding_lookupResourceGather4embeddings_user_age_user_age_embedding_lookup_204008$embeddings/user_age/Squeeze:output:0*
Tindices0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/204008*'
_output_shapes
:         *
dtype0ї
6embeddings/user_age/user_age/embedding_lookup/IdentityIdentity6embeddings/user_age/user_age/embedding_lookup:output:0*
T0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/204008*'
_output_shapes
:         ╖
8embeddings/user_age/user_age/embedding_lookup/Identity_1Identity?embeddings/user_age/user_age/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         И
%embeddings/user_consumption_2/SqueezeSqueezeinputs_3*
T0*#
_output_shapes
:         *
squeeze_dims

         Ё
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupResourceGatherHembeddings_user_consumption_2_user_consumption_2_embedding_lookup_204014.embeddings/user_consumption_2/Squeeze:output:0*
Tindices0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/204014*'
_output_shapes
:         *
dtype0▒
Jembeddings/user_consumption_2/user_consumption_2/embedding_lookup/IdentityIdentityJembeddings/user_consumption_2/user_consumption_2/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/204014*'
_output_shapes
:         ▀
Lembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1IdentitySembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ж
#embeddings/user_is_occupied/SqueezeSqueezeinputs_9*
T0*#
_output_shapes
:         *
squeeze_dims

         т
=embeddings/user_is_occupied/user_is_occupied/embedding_lookupResourceGatherDembeddings_user_is_occupied_user_is_occupied_embedding_lookup_204020,embeddings/user_is_occupied/Squeeze:output:0*
Tindices0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/204020*'
_output_shapes
:         *
dtype0е
Fembeddings/user_is_occupied/user_is_occupied/embedding_lookup/IdentityIdentityFembeddings/user_is_occupied/user_is_occupied/embedding_lookup:output:0*
T0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/204020*'
_output_shapes
:         ╫
Hembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1IdentityOembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Д
!embeddings/user_geography/SqueezeSqueezeinputs_5*
T0*#
_output_shapes
:         *
squeeze_dims

         ╘
9embeddings/user_geography/user_geography/embedding_lookupResourceGather@embeddings_user_geography_user_geography_embedding_lookup_204026*embeddings/user_geography/Squeeze:output:0*
Tindices0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/204026*'
_output_shapes
:         *
dtype0Щ
Bembeddings/user_geography/user_geography/embedding_lookup/IdentityIdentityBembeddings/user_geography/user_geography/embedding_lookup:output:0*
T0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/204026*'
_output_shapes
:         ╧
Dembeddings/user_geography/user_geography/embedding_lookup/Identity_1IdentityKembeddings/user_geography/user_geography/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Е
"embeddings/user_intentions/SqueezeSqueezeinputs_8*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_intentions/user_intentions/embedding_lookupResourceGatherBembeddings_user_intentions_user_intentions_embedding_lookup_204032+embeddings/user_intentions/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/204032*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_intentions/user_intentions/embedding_lookup/IdentityIdentityDembeddings/user_intentions/user_intentions/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/204032*'
_output_shapes
:         ╙
Fembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1IdentityMembeddings/user_intentions/user_intentions/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Б
embeddings/user_brands/SqueezeSqueezeinputs_1*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_brands/user_brands/embedding_lookupResourceGather:embeddings_user_brands_user_brands_embedding_lookup_204038'embeddings/user_brands/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/204038*'
_output_shapes
:         *
dtype0З
<embeddings/user_brands/user_brands/embedding_lookup/IdentityIdentity<embeddings/user_brands/user_brands/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/204038*'
_output_shapes
:         ├
>embeddings/user_brands/user_brands/embedding_lookup/Identity_1IdentityEembeddings/user_brands/user_brands/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Е
"embeddings/user_categories/SqueezeSqueezeinputs_2*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_categories/user_categories/embedding_lookupResourceGatherBembeddings_user_categories_user_categories_embedding_lookup_204044+embeddings/user_categories/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/204044*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_categories/user_categories/embedding_lookup/IdentityIdentityDembeddings/user_categories/user_categories/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/204044*'
_output_shapes
:         ╙
Fembeddings/user_categories/user_categories/embedding_lookup/Identity_1IdentityMembeddings/user_categories/user_categories/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Р
IdentityIdentityAembeddings/user_age/user_age/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_1IdentityGembeddings/user_brands/user_brands/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_2IdentityOembeddings/user_categories/user_categories/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ж

Identity_3IdentityUembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_4IdentityGembeddings/user_gender/user_gender/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ю

Identity_5IdentityMembeddings/user_geography/user_geography/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ц

Identity_6IdentityEembeddings/user_group/user_group/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Р

Identity_7Identity?embeddings/user_id/user_id/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_8IdentityOembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         в

Identity_9IdentityQembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ы
Identity_10IdentityIembeddings/user_profile/user_profile/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ч
Identity_11IdentityEembeddings/user_shops/user_shops/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ь
NoOpNoOp.^embeddings/user_age/user_age/embedding_lookup4^embeddings/user_brands/user_brands/embedding_lookup<^embeddings/user_categories/user_categories/embedding_lookupB^embeddings/user_consumption_2/user_consumption_2/embedding_lookup4^embeddings/user_gender/user_gender/embedding_lookup:^embeddings/user_geography/user_geography/embedding_lookup2^embeddings/user_group/user_group/embedding_lookup,^embeddings/user_id/user_id/embedding_lookup<^embeddings/user_intentions/user_intentions/embedding_lookup>^embeddings/user_is_occupied/user_is_occupied/embedding_lookup6^embeddings/user_profile/user_profile/embedding_lookup2^embeddings/user_shops/user_shops/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*ї
_input_shapesу
р:         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : 2^
-embeddings/user_age/user_age/embedding_lookup-embeddings/user_age/user_age/embedding_lookup2j
3embeddings/user_brands/user_brands/embedding_lookup3embeddings/user_brands/user_brands/embedding_lookup2z
;embeddings/user_categories/user_categories/embedding_lookup;embeddings/user_categories/user_categories/embedding_lookup2Ж
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupAembeddings/user_consumption_2/user_consumption_2/embedding_lookup2j
3embeddings/user_gender/user_gender/embedding_lookup3embeddings/user_gender/user_gender/embedding_lookup2v
9embeddings/user_geography/user_geography/embedding_lookup9embeddings/user_geography/user_geography/embedding_lookup2f
1embeddings/user_group/user_group/embedding_lookup1embeddings/user_group/user_group/embedding_lookup2Z
+embeddings/user_id/user_id/embedding_lookup+embeddings/user_id/user_id/embedding_lookup2z
;embeddings/user_intentions/user_intentions/embedding_lookup;embeddings/user_intentions/user_intentions/embedding_lookup2~
=embeddings/user_is_occupied/user_is_occupied/embedding_lookup=embeddings/user_is_occupied/user_is_occupied/embedding_lookup2n
5embeddings/user_profile/user_profile/embedding_lookup5embeddings/user_profile/user_profile/embedding_lookup2f
1embeddings/user_shops/user_shops/embedding_lookup1embeddings/user_shops/user_shops/embedding_lookup:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O	K
'
_output_shapes
:         
 
_user_specified_nameinputs:O
K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features
Л9
ф	
/__inference_parallel_block_layer_call_fn_204864
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shops
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shops
unknown:	Ё
	unknown_0:	Ё
	unknown_1:1
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	Ё
	unknown_9:	Ё

unknown_10:	Ё
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11ИвStatefulPartitionedCallё	
StatefulPartitionedCallStatefulPartitionedCallinputs_user_ageinputs_user_brandsinputs_user_categoriesinputs_user_consumption_2inputs_user_genderinputs_user_geographyinputs_user_groupinputs_user_idinputs_user_intentionsinputs_user_is_occupiedinputs_user_profileinputs_user_shopsfeatures_user_agefeatures_user_brandsfeatures_user_categoriesfeatures_user_consumption_2features_user_genderfeatures_user_geographyfeatures_user_groupfeatures_user_idfeatures_user_intentionsfeatures_user_is_occupiedfeatures_user_profilefeatures_user_shopsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *·
_output_shapesч
ф:         :         :         :         :         :         :         :         :         :         :         :         *.
_read_only_resource_inputs
 !"#*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *S
fNRL
J__inference_parallel_block_layer_call_and_return_conditional_losses_203657o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:         q

Identity_3Identity StatefulPartitionedCall:output:3^NoOp*
T0*'
_output_shapes
:         q

Identity_4Identity StatefulPartitionedCall:output:4^NoOp*
T0*'
_output_shapes
:         q

Identity_5Identity StatefulPartitionedCall:output:5^NoOp*
T0*'
_output_shapes
:         q

Identity_6Identity StatefulPartitionedCall:output:6^NoOp*
T0*'
_output_shapes
:         q

Identity_7Identity StatefulPartitionedCall:output:7^NoOp*
T0*'
_output_shapes
:         q

Identity_8Identity StatefulPartitionedCall:output:8^NoOp*
T0*'
_output_shapes
:         q

Identity_9Identity StatefulPartitionedCall:output:9^NoOp*
T0*'
_output_shapes
:         s
Identity_10Identity!StatefulPartitionedCall:output:10^NoOp*
T0*'
_output_shapes
:         s
Identity_11Identity!StatefulPartitionedCall:output:11^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*ї
_input_shapesу
р:         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops
ше
Ў
J__inference_parallel_block_layer_call_and_return_conditional_losses_205158
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shops
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shopsE
2embeddings_user_id_user_id_embedding_lookup_205075:	ЁK
8embeddings_user_shops_user_shops_embedding_lookup_205081:	ЁN
<embeddings_user_profile_user_profile_embedding_lookup_205087:1J
8embeddings_user_group_user_group_embedding_lookup_205093:L
:embeddings_user_gender_user_gender_embedding_lookup_205099:F
4embeddings_user_age_user_age_embedding_lookup_205105:Z
Hembeddings_user_consumption_2_user_consumption_2_embedding_lookup_205111:V
Dembeddings_user_is_occupied_user_is_occupied_embedding_lookup_205117:R
@embeddings_user_geography_user_geography_embedding_lookup_205123:U
Bembeddings_user_intentions_user_intentions_embedding_lookup_205129:	ЁM
:embeddings_user_brands_user_brands_embedding_lookup_205135:	ЁU
Bembeddings_user_categories_user_categories_embedding_lookup_205141:	Ё
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11Ив-embeddings/user_age/user_age/embedding_lookupв3embeddings/user_brands/user_brands/embedding_lookupв;embeddings/user_categories/user_categories/embedding_lookupвAembeddings/user_consumption_2/user_consumption_2/embedding_lookupв3embeddings/user_gender/user_gender/embedding_lookupв9embeddings/user_geography/user_geography/embedding_lookupв1embeddings/user_group/user_group/embedding_lookupв+embeddings/user_id/user_id/embedding_lookupв;embeddings/user_intentions/user_intentions/embedding_lookupв=embeddings/user_is_occupied/user_is_occupied/embedding_lookupв5embeddings/user_profile/user_profile/embedding_lookupв1embeddings/user_shops/user_shops/embedding_lookupГ
embeddings/user_id/SqueezeSqueezeinputs_user_id*
T0*#
_output_shapes
:         *
squeeze_dims

         г
+embeddings/user_id/user_id/embedding_lookupResourceGather2embeddings_user_id_user_id_embedding_lookup_205075#embeddings/user_id/Squeeze:output:0*
Tindices0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/205075*'
_output_shapes
:         *
dtype0я
4embeddings/user_id/user_id/embedding_lookup/IdentityIdentity4embeddings/user_id/user_id/embedding_lookup:output:0*
T0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/205075*'
_output_shapes
:         │
6embeddings/user_id/user_id/embedding_lookup/Identity_1Identity=embeddings/user_id/user_id/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Й
embeddings/user_shops/SqueezeSqueezeinputs_user_shops*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_shops/user_shops/embedding_lookupResourceGather8embeddings_user_shops_user_shops_embedding_lookup_205081&embeddings/user_shops/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/205081*'
_output_shapes
:         *
dtype0Б
:embeddings/user_shops/user_shops/embedding_lookup/IdentityIdentity:embeddings/user_shops/user_shops/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/205081*'
_output_shapes
:         ┐
<embeddings/user_shops/user_shops/embedding_lookup/Identity_1IdentityCembeddings/user_shops/user_shops/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Н
embeddings/user_profile/SqueezeSqueezeinputs_user_profile*
T0*#
_output_shapes
:         *
squeeze_dims

         ╞
5embeddings/user_profile/user_profile/embedding_lookupResourceGather<embeddings_user_profile_user_profile_embedding_lookup_205087(embeddings/user_profile/Squeeze:output:0*
Tindices0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/205087*'
_output_shapes
:         *
dtype0Н
>embeddings/user_profile/user_profile/embedding_lookup/IdentityIdentity>embeddings/user_profile/user_profile/embedding_lookup:output:0*
T0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/205087*'
_output_shapes
:         ╟
@embeddings/user_profile/user_profile/embedding_lookup/Identity_1IdentityGembeddings/user_profile/user_profile/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Й
embeddings/user_group/SqueezeSqueezeinputs_user_group*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_group/user_group/embedding_lookupResourceGather8embeddings_user_group_user_group_embedding_lookup_205093&embeddings/user_group/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/205093*'
_output_shapes
:         *
dtype0Б
:embeddings/user_group/user_group/embedding_lookup/IdentityIdentity:embeddings/user_group/user_group/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/205093*'
_output_shapes
:         ┐
<embeddings/user_group/user_group/embedding_lookup/Identity_1IdentityCembeddings/user_group/user_group/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Л
embeddings/user_gender/SqueezeSqueezeinputs_user_gender*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_gender/user_gender/embedding_lookupResourceGather:embeddings_user_gender_user_gender_embedding_lookup_205099'embeddings/user_gender/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/205099*'
_output_shapes
:         *
dtype0З
<embeddings/user_gender/user_gender/embedding_lookup/IdentityIdentity<embeddings/user_gender/user_gender/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/205099*'
_output_shapes
:         ├
>embeddings/user_gender/user_gender/embedding_lookup/Identity_1IdentityEembeddings/user_gender/user_gender/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Е
embeddings/user_age/SqueezeSqueezeinputs_user_age*
T0*#
_output_shapes
:         *
squeeze_dims

         к
-embeddings/user_age/user_age/embedding_lookupResourceGather4embeddings_user_age_user_age_embedding_lookup_205105$embeddings/user_age/Squeeze:output:0*
Tindices0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/205105*'
_output_shapes
:         *
dtype0ї
6embeddings/user_age/user_age/embedding_lookup/IdentityIdentity6embeddings/user_age/user_age/embedding_lookup:output:0*
T0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/205105*'
_output_shapes
:         ╖
8embeddings/user_age/user_age/embedding_lookup/Identity_1Identity?embeddings/user_age/user_age/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Щ
%embeddings/user_consumption_2/SqueezeSqueezeinputs_user_consumption_2*
T0*#
_output_shapes
:         *
squeeze_dims

         Ё
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupResourceGatherHembeddings_user_consumption_2_user_consumption_2_embedding_lookup_205111.embeddings/user_consumption_2/Squeeze:output:0*
Tindices0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/205111*'
_output_shapes
:         *
dtype0▒
Jembeddings/user_consumption_2/user_consumption_2/embedding_lookup/IdentityIdentityJembeddings/user_consumption_2/user_consumption_2/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/205111*'
_output_shapes
:         ▀
Lembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1IdentitySembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Х
#embeddings/user_is_occupied/SqueezeSqueezeinputs_user_is_occupied*
T0*#
_output_shapes
:         *
squeeze_dims

         т
=embeddings/user_is_occupied/user_is_occupied/embedding_lookupResourceGatherDembeddings_user_is_occupied_user_is_occupied_embedding_lookup_205117,embeddings/user_is_occupied/Squeeze:output:0*
Tindices0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/205117*'
_output_shapes
:         *
dtype0е
Fembeddings/user_is_occupied/user_is_occupied/embedding_lookup/IdentityIdentityFembeddings/user_is_occupied/user_is_occupied/embedding_lookup:output:0*
T0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/205117*'
_output_shapes
:         ╫
Hembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1IdentityOembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         С
!embeddings/user_geography/SqueezeSqueezeinputs_user_geography*
T0*#
_output_shapes
:         *
squeeze_dims

         ╘
9embeddings/user_geography/user_geography/embedding_lookupResourceGather@embeddings_user_geography_user_geography_embedding_lookup_205123*embeddings/user_geography/Squeeze:output:0*
Tindices0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/205123*'
_output_shapes
:         *
dtype0Щ
Bembeddings/user_geography/user_geography/embedding_lookup/IdentityIdentityBembeddings/user_geography/user_geography/embedding_lookup:output:0*
T0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/205123*'
_output_shapes
:         ╧
Dembeddings/user_geography/user_geography/embedding_lookup/Identity_1IdentityKembeddings/user_geography/user_geography/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         У
"embeddings/user_intentions/SqueezeSqueezeinputs_user_intentions*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_intentions/user_intentions/embedding_lookupResourceGatherBembeddings_user_intentions_user_intentions_embedding_lookup_205129+embeddings/user_intentions/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/205129*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_intentions/user_intentions/embedding_lookup/IdentityIdentityDembeddings/user_intentions/user_intentions/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/205129*'
_output_shapes
:         ╙
Fembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1IdentityMembeddings/user_intentions/user_intentions/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Л
embeddings/user_brands/SqueezeSqueezeinputs_user_brands*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_brands/user_brands/embedding_lookupResourceGather:embeddings_user_brands_user_brands_embedding_lookup_205135'embeddings/user_brands/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/205135*'
_output_shapes
:         *
dtype0З
<embeddings/user_brands/user_brands/embedding_lookup/IdentityIdentity<embeddings/user_brands/user_brands/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/205135*'
_output_shapes
:         ├
>embeddings/user_brands/user_brands/embedding_lookup/Identity_1IdentityEembeddings/user_brands/user_brands/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         У
"embeddings/user_categories/SqueezeSqueezeinputs_user_categories*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_categories/user_categories/embedding_lookupResourceGatherBembeddings_user_categories_user_categories_embedding_lookup_205141+embeddings/user_categories/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/205141*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_categories/user_categories/embedding_lookup/IdentityIdentityDembeddings/user_categories/user_categories/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/205141*'
_output_shapes
:         ╙
Fembeddings/user_categories/user_categories/embedding_lookup/Identity_1IdentityMembeddings/user_categories/user_categories/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Р
IdentityIdentityAembeddings/user_age/user_age/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_1IdentityGembeddings/user_brands/user_brands/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_2IdentityOembeddings/user_categories/user_categories/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ж

Identity_3IdentityUembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_4IdentityGembeddings/user_gender/user_gender/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ю

Identity_5IdentityMembeddings/user_geography/user_geography/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ц

Identity_6IdentityEembeddings/user_group/user_group/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Р

Identity_7Identity?embeddings/user_id/user_id/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_8IdentityOembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         в

Identity_9IdentityQembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ы
Identity_10IdentityIembeddings/user_profile/user_profile/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ч
Identity_11IdentityEembeddings/user_shops/user_shops/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ь
NoOpNoOp.^embeddings/user_age/user_age/embedding_lookup4^embeddings/user_brands/user_brands/embedding_lookup<^embeddings/user_categories/user_categories/embedding_lookupB^embeddings/user_consumption_2/user_consumption_2/embedding_lookup4^embeddings/user_gender/user_gender/embedding_lookup:^embeddings/user_geography/user_geography/embedding_lookup2^embeddings/user_group/user_group/embedding_lookup,^embeddings/user_id/user_id/embedding_lookup<^embeddings/user_intentions/user_intentions/embedding_lookup>^embeddings/user_is_occupied/user_is_occupied/embedding_lookup6^embeddings/user_profile/user_profile/embedding_lookup2^embeddings/user_shops/user_shops/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*ї
_input_shapesу
р:         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : 2^
-embeddings/user_age/user_age/embedding_lookup-embeddings/user_age/user_age/embedding_lookup2j
3embeddings/user_brands/user_brands/embedding_lookup3embeddings/user_brands/user_brands/embedding_lookup2z
;embeddings/user_categories/user_categories/embedding_lookup;embeddings/user_categories/user_categories/embedding_lookup2Ж
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupAembeddings/user_consumption_2/user_consumption_2/embedding_lookup2j
3embeddings/user_gender/user_gender/embedding_lookup3embeddings/user_gender/user_gender/embedding_lookup2v
9embeddings/user_geography/user_geography/embedding_lookup9embeddings/user_geography/user_geography/embedding_lookup2f
1embeddings/user_group/user_group/embedding_lookup1embeddings/user_group/user_group/embedding_lookup2Z
+embeddings/user_id/user_id/embedding_lookup+embeddings/user_id/user_id/embedding_lookup2z
;embeddings/user_intentions/user_intentions/embedding_lookup;embeddings/user_intentions/user_intentions/embedding_lookup2~
=embeddings/user_is_occupied/user_is_occupied/embedding_lookup=embeddings/user_is_occupied/user_is_occupied/embedding_lookup2n
5embeddings/user_profile/user_profile/embedding_lookup5embeddings/user_profile/user_profile/embedding_lookup2f
1embeddings/user_shops/user_shops/embedding_lookup1embeddings/user_shops/user_shops/embedding_lookup:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops
╒
╪
(__inference_encoder_layer_call_fn_204586
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shops
unknown:	Ё
	unknown_0:	Ё
	unknown_1:1
	unknown_2:
	unknown_3:
	unknown_4:
	unknown_5:
	unknown_6:
	unknown_7:
	unknown_8:	Ё
	unknown_9:	Ё

unknown_10:	Ё

unknown_11:
ИА

unknown_12:	А

unknown_13:	А@

unknown_14:@
identityИвStatefulPartitionedCallа
StatefulPartitionedCallStatefulPartitionedCallinputs_user_ageinputs_user_brandsinputs_user_categoriesinputs_user_consumption_2inputs_user_genderinputs_user_geographyinputs_user_groupinputs_user_idinputs_user_intentionsinputs_user_is_occupiedinputs_user_profileinputs_user_shopsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*'
Tin 
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*2
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *L
fGRE
C__inference_encoder_layer_call_and_return_conditional_losses_204233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops
■/
ф

__inference__traced_save_205348
file_prefix?
;savev2_retrieval_model_v2_embeddings_11_read_readvariableop?
;savev2_retrieval_model_v2_embeddings_10_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_9_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_8_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_7_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_6_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_5_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_4_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_3_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_2_read_readvariableop>
:savev2_retrieval_model_v2_embeddings_1_read_readvariableop<
8savev2_retrieval_model_v2_embeddings_read_readvariableop}
ysavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_kernel_read_readvariableop{
wsavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_bias_read_readvariableop}
ysavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_kernel_read_readvariableop{
wsavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Р
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*╣
valueпBмB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHП
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B °

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0;savev2_retrieval_model_v2_embeddings_11_read_readvariableop;savev2_retrieval_model_v2_embeddings_10_read_readvariableop:savev2_retrieval_model_v2_embeddings_9_read_readvariableop:savev2_retrieval_model_v2_embeddings_8_read_readvariableop:savev2_retrieval_model_v2_embeddings_7_read_readvariableop:savev2_retrieval_model_v2_embeddings_6_read_readvariableop:savev2_retrieval_model_v2_embeddings_5_read_readvariableop:savev2_retrieval_model_v2_embeddings_4_read_readvariableop:savev2_retrieval_model_v2_embeddings_3_read_readvariableop:savev2_retrieval_model_v2_embeddings_2_read_readvariableop:savev2_retrieval_model_v2_embeddings_1_read_readvariableop8savev2_retrieval_model_v2_embeddings_read_readvariableopysavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_kernel_read_readvariableopwsavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_4_dense_4_bias_read_readvariableopysavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_kernel_read_readvariableopwsavev2_retrieval_model_v2_parallel_block_2_encoder_sequential_block_3_private__dense_5_dense_5_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*║
_input_shapesи
е: ::	Ё:	Ё:::::	Ё:	Ё::1:	Ё:
ИА:А:	А@:@: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

::%!

_output_shapes
:	Ё:%!

_output_shapes
:	Ё:$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::$ 

_output_shapes

::%!

_output_shapes
:	Ё:%	!

_output_shapes
:	Ё:$
 

_output_shapes

::$ 

_output_shapes

:1:%!

_output_shapes
:	Ё:&"
 
_output_shapes
:
ИА:!

_output_shapes	
:А:%!

_output_shapes
:	А@: 

_output_shapes
:@:

_output_shapes
: 
┼═
Ё
!__inference__wrapped_model_203518
user_age
user_brands
user_categories
user_consumption_2
user_gender
user_geography

user_group
user_id
user_intentions
user_is_occupied
user_profile

user_shops\
Iencoder_parallel_block_embeddings_user_id_user_id_embedding_lookup_203431:	Ёb
Oencoder_parallel_block_embeddings_user_shops_user_shops_embedding_lookup_203437:	Ёe
Sencoder_parallel_block_embeddings_user_profile_user_profile_embedding_lookup_203443:1a
Oencoder_parallel_block_embeddings_user_group_user_group_embedding_lookup_203449:c
Qencoder_parallel_block_embeddings_user_gender_user_gender_embedding_lookup_203455:]
Kencoder_parallel_block_embeddings_user_age_user_age_embedding_lookup_203461:q
_encoder_parallel_block_embeddings_user_consumption_2_user_consumption_2_embedding_lookup_203467:m
[encoder_parallel_block_embeddings_user_is_occupied_user_is_occupied_embedding_lookup_203473:i
Wencoder_parallel_block_embeddings_user_geography_user_geography_embedding_lookup_203479:l
Yencoder_parallel_block_embeddings_user_intentions_user_intentions_embedding_lookup_203485:	Ёd
Qencoder_parallel_block_embeddings_user_brands_user_brands_embedding_lookup_203491:	Ёl
Yencoder_parallel_block_embeddings_user_categories_user_categories_embedding_lookup_203497:	Ёf
Rencoder_sequential_block_3_private__dense_4_dense_4_matmul_readvariableop_resource:
ИАb
Sencoder_sequential_block_3_private__dense_4_dense_4_biasadd_readvariableop_resource:	Аe
Rencoder_sequential_block_3_private__dense_5_dense_5_matmul_readvariableop_resource:	А@a
Sencoder_sequential_block_3_private__dense_5_dense_5_biasadd_readvariableop_resource:@
identityИвDencoder/parallel_block/embeddings/user_age/user_age/embedding_lookupвJencoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookupвRencoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookupвXencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupвJencoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookupвPencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookupвHencoder/parallel_block/embeddings/user_group/user_group/embedding_lookupвBencoder/parallel_block/embeddings/user_id/user_id/embedding_lookupвRencoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookupвTencoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupвLencoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookupвHencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookupвJencoder/sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpвIencoder/sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpвJencoder/sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpвIencoder/sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpУ
1encoder/parallel_block/embeddings/user_id/SqueezeSqueezeuser_id*
T0*#
_output_shapes
:         *
squeeze_dims

          
Bencoder/parallel_block/embeddings/user_id/user_id/embedding_lookupResourceGatherIencoder_parallel_block_embeddings_user_id_user_id_embedding_lookup_203431:encoder/parallel_block/embeddings/user_id/Squeeze:output:0*
Tindices0*\
_classR
PNloc:@encoder/parallel_block/embeddings/user_id/user_id/embedding_lookup/203431*'
_output_shapes
:         *
dtype0┤
Kencoder/parallel_block/embeddings/user_id/user_id/embedding_lookup/IdentityIdentityKencoder/parallel_block/embeddings/user_id/user_id/embedding_lookup:output:0*
T0*\
_classR
PNloc:@encoder/parallel_block/embeddings/user_id/user_id/embedding_lookup/203431*'
_output_shapes
:         с
Mencoder/parallel_block/embeddings/user_id/user_id/embedding_lookup/Identity_1IdentityTencoder/parallel_block/embeddings/user_id/user_id/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Щ
4encoder/parallel_block/embeddings/user_shops/SqueezeSqueeze
user_shops*
T0*#
_output_shapes
:         *
squeeze_dims

         Ф
Hencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookupResourceGatherOencoder_parallel_block_embeddings_user_shops_user_shops_embedding_lookup_203437=encoder/parallel_block/embeddings/user_shops/Squeeze:output:0*
Tindices0*b
_classX
VTloc:@encoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup/203437*'
_output_shapes
:         *
dtype0╞
Qencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup/IdentityIdentityQencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup:output:0*
T0*b
_classX
VTloc:@encoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup/203437*'
_output_shapes
:         э
Sencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity_1IdentityZencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Э
6encoder/parallel_block/embeddings/user_profile/SqueezeSqueezeuser_profile*
T0*#
_output_shapes
:         *
squeeze_dims

         в
Lencoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookupResourceGatherSencoder_parallel_block_embeddings_user_profile_user_profile_embedding_lookup_203443?encoder/parallel_block/embeddings/user_profile/Squeeze:output:0*
Tindices0*f
_class\
ZXloc:@encoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup/203443*'
_output_shapes
:         *
dtype0╥
Uencoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup/IdentityIdentityUencoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup:output:0*
T0*f
_class\
ZXloc:@encoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup/203443*'
_output_shapes
:         ї
Wencoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity_1Identity^encoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Щ
4encoder/parallel_block/embeddings/user_group/SqueezeSqueeze
user_group*
T0*#
_output_shapes
:         *
squeeze_dims

         Ф
Hencoder/parallel_block/embeddings/user_group/user_group/embedding_lookupResourceGatherOencoder_parallel_block_embeddings_user_group_user_group_embedding_lookup_203449=encoder/parallel_block/embeddings/user_group/Squeeze:output:0*
Tindices0*b
_classX
VTloc:@encoder/parallel_block/embeddings/user_group/user_group/embedding_lookup/203449*'
_output_shapes
:         *
dtype0╞
Qencoder/parallel_block/embeddings/user_group/user_group/embedding_lookup/IdentityIdentityQencoder/parallel_block/embeddings/user_group/user_group/embedding_lookup:output:0*
T0*b
_classX
VTloc:@encoder/parallel_block/embeddings/user_group/user_group/embedding_lookup/203449*'
_output_shapes
:         э
Sencoder/parallel_block/embeddings/user_group/user_group/embedding_lookup/Identity_1IdentityZencoder/parallel_block/embeddings/user_group/user_group/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ы
5encoder/parallel_block/embeddings/user_gender/SqueezeSqueezeuser_gender*
T0*#
_output_shapes
:         *
squeeze_dims

         Ы
Jencoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookupResourceGatherQencoder_parallel_block_embeddings_user_gender_user_gender_embedding_lookup_203455>encoder/parallel_block/embeddings/user_gender/Squeeze:output:0*
Tindices0*d
_classZ
XVloc:@encoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup/203455*'
_output_shapes
:         *
dtype0╠
Sencoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup/IdentityIdentitySencoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@encoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup/203455*'
_output_shapes
:         ё
Uencoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity_1Identity\encoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Х
2encoder/parallel_block/embeddings/user_age/SqueezeSqueezeuser_age*
T0*#
_output_shapes
:         *
squeeze_dims

         Ж
Dencoder/parallel_block/embeddings/user_age/user_age/embedding_lookupResourceGatherKencoder_parallel_block_embeddings_user_age_user_age_embedding_lookup_203461;encoder/parallel_block/embeddings/user_age/Squeeze:output:0*
Tindices0*^
_classT
RPloc:@encoder/parallel_block/embeddings/user_age/user_age/embedding_lookup/203461*'
_output_shapes
:         *
dtype0║
Mencoder/parallel_block/embeddings/user_age/user_age/embedding_lookup/IdentityIdentityMencoder/parallel_block/embeddings/user_age/user_age/embedding_lookup:output:0*
T0*^
_classT
RPloc:@encoder/parallel_block/embeddings/user_age/user_age/embedding_lookup/203461*'
_output_shapes
:         х
Oencoder/parallel_block/embeddings/user_age/user_age/embedding_lookup/Identity_1IdentityVencoder/parallel_block/embeddings/user_age/user_age/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         й
<encoder/parallel_block/embeddings/user_consumption_2/SqueezeSqueezeuser_consumption_2*
T0*#
_output_shapes
:         *
squeeze_dims

         ╠
Xencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupResourceGather_encoder_parallel_block_embeddings_user_consumption_2_user_consumption_2_embedding_lookup_203467Eencoder/parallel_block/embeddings/user_consumption_2/Squeeze:output:0*
Tindices0*r
_classh
fdloc:@encoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/203467*'
_output_shapes
:         *
dtype0Ў
aencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/IdentityIdentityaencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup:output:0*
T0*r
_classh
fdloc:@encoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/203467*'
_output_shapes
:         Н
cencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1Identityjencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         е
:encoder/parallel_block/embeddings/user_is_occupied/SqueezeSqueezeuser_is_occupied*
T0*#
_output_shapes
:         *
squeeze_dims

         ╛
Tencoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupResourceGather[encoder_parallel_block_embeddings_user_is_occupied_user_is_occupied_embedding_lookup_203473Cencoder/parallel_block/embeddings/user_is_occupied/Squeeze:output:0*
Tindices0*n
_classd
b`loc:@encoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/203473*'
_output_shapes
:         *
dtype0ъ
]encoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/IdentityIdentity]encoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup:output:0*
T0*n
_classd
b`loc:@encoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/203473*'
_output_shapes
:         Е
_encoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1Identityfencoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         б
8encoder/parallel_block/embeddings/user_geography/SqueezeSqueezeuser_geography*
T0*#
_output_shapes
:         *
squeeze_dims

         ░
Pencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookupResourceGatherWencoder_parallel_block_embeddings_user_geography_user_geography_embedding_lookup_203479Aencoder/parallel_block/embeddings/user_geography/Squeeze:output:0*
Tindices0*j
_class`
^\loc:@encoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup/203479*'
_output_shapes
:         *
dtype0▐
Yencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup/IdentityIdentityYencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup:output:0*
T0*j
_class`
^\loc:@encoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup/203479*'
_output_shapes
:         ¤
[encoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity_1Identitybencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         г
9encoder/parallel_block/embeddings/user_intentions/SqueezeSqueezeuser_intentions*
T0*#
_output_shapes
:         *
squeeze_dims

         ╖
Rencoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookupResourceGatherYencoder_parallel_block_embeddings_user_intentions_user_intentions_embedding_lookup_203485Bencoder/parallel_block/embeddings/user_intentions/Squeeze:output:0*
Tindices0*l
_classb
`^loc:@encoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/203485*'
_output_shapes
:         *
dtype0ф
[encoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/IdentityIdentity[encoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup:output:0*
T0*l
_classb
`^loc:@encoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/203485*'
_output_shapes
:         Б
]encoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity_1Identitydencoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ы
5encoder/parallel_block/embeddings/user_brands/SqueezeSqueezeuser_brands*
T0*#
_output_shapes
:         *
squeeze_dims

         Ы
Jencoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookupResourceGatherQencoder_parallel_block_embeddings_user_brands_user_brands_embedding_lookup_203491>encoder/parallel_block/embeddings/user_brands/Squeeze:output:0*
Tindices0*d
_classZ
XVloc:@encoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup/203491*'
_output_shapes
:         *
dtype0╠
Sencoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup/IdentityIdentitySencoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@encoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup/203491*'
_output_shapes
:         ё
Uencoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity_1Identity\encoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         г
9encoder/parallel_block/embeddings/user_categories/SqueezeSqueezeuser_categories*
T0*#
_output_shapes
:         *
squeeze_dims

         ╖
Rencoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookupResourceGatherYencoder_parallel_block_embeddings_user_categories_user_categories_embedding_lookup_203497Bencoder/parallel_block/embeddings/user_categories/Squeeze:output:0*
Tindices0*l
_classb
`^loc:@encoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup/203497*'
_output_shapes
:         *
dtype0ф
[encoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup/IdentityIdentity[encoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup:output:0*
T0*l
_classb
`^loc:@encoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup/203497*'
_output_shapes
:         Б
]encoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity_1Identitydencoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         n
#encoder/concat_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ▓

encoder/concat_features/concatConcatV2Xencoder/parallel_block/embeddings/user_age/user_age/embedding_lookup/Identity_1:output:0^encoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity_1:output:0fencoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity_1:output:0lencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1:output:0^encoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity_1:output:0dencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity_1:output:0\encoder/parallel_block/embeddings/user_group/user_group/embedding_lookup/Identity_1:output:0Vencoder/parallel_block/embeddings/user_id/user_id/embedding_lookup/Identity_1:output:0fencoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity_1:output:0hencoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1:output:0`encoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity_1:output:0\encoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity_1:output:0,encoder/concat_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:         И▐
Iencoder/sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpReadVariableOpRencoder_sequential_block_3_private__dense_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
ИА*
dtype0є
:encoder/sequential_block_3/private__dense_4/dense_4/MatMulMatMul'encoder/concat_features/concat:output:0Qencoder/sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А█
Jencoder/sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpReadVariableOpSencoder_sequential_block_3_private__dense_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0У
;encoder/sequential_block_3/private__dense_4/dense_4/BiasAddBiasAddDencoder/sequential_block_3/private__dense_4/dense_4/MatMul:product:0Rencoder/sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╣
8encoder/sequential_block_3/private__dense_4/dense_4/ReluReluDencoder/sequential_block_3/private__dense_4/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         А▌
Iencoder/sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpReadVariableOpRencoder_sequential_block_3_private__dense_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0С
:encoder/sequential_block_3/private__dense_5/dense_5/MatMulMatMulFencoder/sequential_block_3/private__dense_4/dense_4/Relu:activations:0Qencoder/sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @┌
Jencoder/sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpSencoder_sequential_block_3_private__dense_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0Т
;encoder/sequential_block_3/private__dense_5/dense_5/BiasAddBiasAddDencoder/sequential_block_3/private__dense_5/dense_5/MatMul:product:0Rencoder/sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @У
IdentityIdentityDencoder/sequential_block_3/private__dense_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @▓

NoOpNoOpE^encoder/parallel_block/embeddings/user_age/user_age/embedding_lookupK^encoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookupS^encoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookupY^encoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupK^encoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookupQ^encoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookupI^encoder/parallel_block/embeddings/user_group/user_group/embedding_lookupC^encoder/parallel_block/embeddings/user_id/user_id/embedding_lookupS^encoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookupU^encoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupM^encoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookupI^encoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookupK^encoder/sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpJ^encoder/sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpK^encoder/sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpJ^encoder/sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 2М
Dencoder/parallel_block/embeddings/user_age/user_age/embedding_lookupDencoder/parallel_block/embeddings/user_age/user_age/embedding_lookup2Ш
Jencoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookupJencoder/parallel_block/embeddings/user_brands/user_brands/embedding_lookup2и
Rencoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookupRencoder/parallel_block/embeddings/user_categories/user_categories/embedding_lookup2┤
Xencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupXencoder/parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup2Ш
Jencoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookupJencoder/parallel_block/embeddings/user_gender/user_gender/embedding_lookup2д
Pencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookupPencoder/parallel_block/embeddings/user_geography/user_geography/embedding_lookup2Ф
Hencoder/parallel_block/embeddings/user_group/user_group/embedding_lookupHencoder/parallel_block/embeddings/user_group/user_group/embedding_lookup2И
Bencoder/parallel_block/embeddings/user_id/user_id/embedding_lookupBencoder/parallel_block/embeddings/user_id/user_id/embedding_lookup2и
Rencoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookupRencoder/parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup2м
Tencoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupTencoder/parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup2Ь
Lencoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookupLencoder/parallel_block/embeddings/user_profile/user_profile/embedding_lookup2Ф
Hencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookupHencoder/parallel_block/embeddings/user_shops/user_shops/embedding_lookup2Ш
Jencoder/sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpJencoder/sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOp2Ц
Iencoder/sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpIencoder/sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOp2Ш
Jencoder/sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpJencoder/sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOp2Ц
Iencoder/sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpIencoder/sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         
"
_user_specified_name
user_age:TP
'
_output_shapes
:         
%
_user_specified_nameuser_brands:XT
'
_output_shapes
:         
)
_user_specified_nameuser_categories:[W
'
_output_shapes
:         
,
_user_specified_nameuser_consumption_2:TP
'
_output_shapes
:         
%
_user_specified_nameuser_gender:WS
'
_output_shapes
:         
(
_user_specified_nameuser_geography:SO
'
_output_shapes
:         
$
_user_specified_name
user_group:PL
'
_output_shapes
:         
!
_user_specified_name	user_id:XT
'
_output_shapes
:         
)
_user_specified_nameuser_intentions:Y	U
'
_output_shapes
:         
*
_user_specified_nameuser_is_occupied:U
Q
'
_output_shapes
:         
&
_user_specified_nameuser_profile:SO
'
_output_shapes
:         
$
_user_specified_name
user_shops
с#
Э
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203725

inputs
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11K
7private__dense_4_dense_4_matmul_readvariableop_resource:
ИАG
8private__dense_4_dense_4_biasadd_readvariableop_resource:	АJ
7private__dense_5_dense_5_matmul_readvariableop_resource:	А@F
8private__dense_5_dense_5_biasadd_readvariableop_resource:@
identityИв/private__dense_4/dense_4/BiasAdd/ReadVariableOpв.private__dense_4/dense_4/MatMul/ReadVariableOpв/private__dense_5/dense_5/BiasAdd/ReadVariableOpв.private__dense_5/dense_5/MatMul/ReadVariableOpи
.private__dense_4/dense_4/MatMul/ReadVariableOpReadVariableOp7private__dense_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
ИА*
dtype0Ь
private__dense_4/dense_4/MatMulMatMulinputs6private__dense_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
/private__dense_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp8private__dense_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 private__dense_4/dense_4/BiasAddBiasAdd)private__dense_4/dense_4/MatMul:product:07private__dense_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
private__dense_4/dense_4/ReluRelu)private__dense_4/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         Аз
.private__dense_5/dense_5/MatMul/ReadVariableOpReadVariableOp7private__dense_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0└
private__dense_5/dense_5/MatMulMatMul+private__dense_4/dense_4/Relu:activations:06private__dense_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/private__dense_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp8private__dense_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┴
 private__dense_5/dense_5/BiasAddBiasAdd)private__dense_5/dense_5/MatMul:product:07private__dense_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
IdentityIdentity)private__dense_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @М
NoOpNoOp0^private__dense_4/dense_4/BiasAdd/ReadVariableOp/^private__dense_4/dense_4/MatMul/ReadVariableOp0^private__dense_5/dense_5/BiasAdd/ReadVariableOp/^private__dense_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Х
_input_shapesГ
А:         И:         :         :         :         :         :         :         :         :         :         :         :         : : : : 2b
/private__dense_4/dense_4/BiasAdd/ReadVariableOp/private__dense_4/dense_4/BiasAdd/ReadVariableOp2`
.private__dense_4/dense_4/MatMul/ReadVariableOp.private__dense_4/dense_4/MatMul/ReadVariableOp2b
/private__dense_5/dense_5/BiasAdd/ReadVariableOp/private__dense_5/dense_5/BiasAdd/ReadVariableOp2`
.private__dense_5/dense_5/MatMul/ReadVariableOp.private__dense_5/dense_5/MatMul/ReadVariableOp:P L
(
_output_shapes
:         И
 
_user_specified_nameinputs:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:Q	M
'
_output_shapes
:         
"
_user_specified_name
features:Q
M
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features:QM
'
_output_shapes
:         
"
_user_specified_name
features
ё└
ц
C__inference_encoder_layer_call_and_return_conditional_losses_204688
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shopsT
Aparallel_block_embeddings_user_id_user_id_embedding_lookup_204601:	ЁZ
Gparallel_block_embeddings_user_shops_user_shops_embedding_lookup_204607:	Ё]
Kparallel_block_embeddings_user_profile_user_profile_embedding_lookup_204613:1Y
Gparallel_block_embeddings_user_group_user_group_embedding_lookup_204619:[
Iparallel_block_embeddings_user_gender_user_gender_embedding_lookup_204625:U
Cparallel_block_embeddings_user_age_user_age_embedding_lookup_204631:i
Wparallel_block_embeddings_user_consumption_2_user_consumption_2_embedding_lookup_204637:e
Sparallel_block_embeddings_user_is_occupied_user_is_occupied_embedding_lookup_204643:a
Oparallel_block_embeddings_user_geography_user_geography_embedding_lookup_204649:d
Qparallel_block_embeddings_user_intentions_user_intentions_embedding_lookup_204655:	Ё\
Iparallel_block_embeddings_user_brands_user_brands_embedding_lookup_204661:	Ёd
Qparallel_block_embeddings_user_categories_user_categories_embedding_lookup_204667:	Ё^
Jsequential_block_3_private__dense_4_dense_4_matmul_readvariableop_resource:
ИАZ
Ksequential_block_3_private__dense_4_dense_4_biasadd_readvariableop_resource:	А]
Jsequential_block_3_private__dense_5_dense_5_matmul_readvariableop_resource:	А@Y
Ksequential_block_3_private__dense_5_dense_5_biasadd_readvariableop_resource:@
identityИв<parallel_block/embeddings/user_age/user_age/embedding_lookupвBparallel_block/embeddings/user_brands/user_brands/embedding_lookupвJparallel_block/embeddings/user_categories/user_categories/embedding_lookupвPparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupвBparallel_block/embeddings/user_gender/user_gender/embedding_lookupвHparallel_block/embeddings/user_geography/user_geography/embedding_lookupв@parallel_block/embeddings/user_group/user_group/embedding_lookupв:parallel_block/embeddings/user_id/user_id/embedding_lookupвJparallel_block/embeddings/user_intentions/user_intentions/embedding_lookupвLparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupвDparallel_block/embeddings/user_profile/user_profile/embedding_lookupв@parallel_block/embeddings/user_shops/user_shops/embedding_lookupвBsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpвAsequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpвBsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpвAsequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpТ
)parallel_block/embeddings/user_id/SqueezeSqueezeinputs_user_id*
T0*#
_output_shapes
:         *
squeeze_dims

         ▀
:parallel_block/embeddings/user_id/user_id/embedding_lookupResourceGatherAparallel_block_embeddings_user_id_user_id_embedding_lookup_2046012parallel_block/embeddings/user_id/Squeeze:output:0*
Tindices0*T
_classJ
HFloc:@parallel_block/embeddings/user_id/user_id/embedding_lookup/204601*'
_output_shapes
:         *
dtype0Ь
Cparallel_block/embeddings/user_id/user_id/embedding_lookup/IdentityIdentityCparallel_block/embeddings/user_id/user_id/embedding_lookup:output:0*
T0*T
_classJ
HFloc:@parallel_block/embeddings/user_id/user_id/embedding_lookup/204601*'
_output_shapes
:         ╤
Eparallel_block/embeddings/user_id/user_id/embedding_lookup/Identity_1IdentityLparallel_block/embeddings/user_id/user_id/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ш
,parallel_block/embeddings/user_shops/SqueezeSqueezeinputs_user_shops*
T0*#
_output_shapes
:         *
squeeze_dims

         Ї
@parallel_block/embeddings/user_shops/user_shops/embedding_lookupResourceGatherGparallel_block_embeddings_user_shops_user_shops_embedding_lookup_2046075parallel_block/embeddings/user_shops/Squeeze:output:0*
Tindices0*Z
_classP
NLloc:@parallel_block/embeddings/user_shops/user_shops/embedding_lookup/204607*'
_output_shapes
:         *
dtype0о
Iparallel_block/embeddings/user_shops/user_shops/embedding_lookup/IdentityIdentityIparallel_block/embeddings/user_shops/user_shops/embedding_lookup:output:0*
T0*Z
_classP
NLloc:@parallel_block/embeddings/user_shops/user_shops/embedding_lookup/204607*'
_output_shapes
:         ▌
Kparallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity_1IdentityRparallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ь
.parallel_block/embeddings/user_profile/SqueezeSqueezeinputs_user_profile*
T0*#
_output_shapes
:         *
squeeze_dims

         В
Dparallel_block/embeddings/user_profile/user_profile/embedding_lookupResourceGatherKparallel_block_embeddings_user_profile_user_profile_embedding_lookup_2046137parallel_block/embeddings/user_profile/Squeeze:output:0*
Tindices0*^
_classT
RPloc:@parallel_block/embeddings/user_profile/user_profile/embedding_lookup/204613*'
_output_shapes
:         *
dtype0║
Mparallel_block/embeddings/user_profile/user_profile/embedding_lookup/IdentityIdentityMparallel_block/embeddings/user_profile/user_profile/embedding_lookup:output:0*
T0*^
_classT
RPloc:@parallel_block/embeddings/user_profile/user_profile/embedding_lookup/204613*'
_output_shapes
:         х
Oparallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity_1IdentityVparallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ш
,parallel_block/embeddings/user_group/SqueezeSqueezeinputs_user_group*
T0*#
_output_shapes
:         *
squeeze_dims

         Ї
@parallel_block/embeddings/user_group/user_group/embedding_lookupResourceGatherGparallel_block_embeddings_user_group_user_group_embedding_lookup_2046195parallel_block/embeddings/user_group/Squeeze:output:0*
Tindices0*Z
_classP
NLloc:@parallel_block/embeddings/user_group/user_group/embedding_lookup/204619*'
_output_shapes
:         *
dtype0о
Iparallel_block/embeddings/user_group/user_group/embedding_lookup/IdentityIdentityIparallel_block/embeddings/user_group/user_group/embedding_lookup:output:0*
T0*Z
_classP
NLloc:@parallel_block/embeddings/user_group/user_group/embedding_lookup/204619*'
_output_shapes
:         ▌
Kparallel_block/embeddings/user_group/user_group/embedding_lookup/Identity_1IdentityRparallel_block/embeddings/user_group/user_group/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ъ
-parallel_block/embeddings/user_gender/SqueezeSqueezeinputs_user_gender*
T0*#
_output_shapes
:         *
squeeze_dims

         √
Bparallel_block/embeddings/user_gender/user_gender/embedding_lookupResourceGatherIparallel_block_embeddings_user_gender_user_gender_embedding_lookup_2046256parallel_block/embeddings/user_gender/Squeeze:output:0*
Tindices0*\
_classR
PNloc:@parallel_block/embeddings/user_gender/user_gender/embedding_lookup/204625*'
_output_shapes
:         *
dtype0┤
Kparallel_block/embeddings/user_gender/user_gender/embedding_lookup/IdentityIdentityKparallel_block/embeddings/user_gender/user_gender/embedding_lookup:output:0*
T0*\
_classR
PNloc:@parallel_block/embeddings/user_gender/user_gender/embedding_lookup/204625*'
_output_shapes
:         с
Mparallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity_1IdentityTparallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ф
*parallel_block/embeddings/user_age/SqueezeSqueezeinputs_user_age*
T0*#
_output_shapes
:         *
squeeze_dims

         ц
<parallel_block/embeddings/user_age/user_age/embedding_lookupResourceGatherCparallel_block_embeddings_user_age_user_age_embedding_lookup_2046313parallel_block/embeddings/user_age/Squeeze:output:0*
Tindices0*V
_classL
JHloc:@parallel_block/embeddings/user_age/user_age/embedding_lookup/204631*'
_output_shapes
:         *
dtype0в
Eparallel_block/embeddings/user_age/user_age/embedding_lookup/IdentityIdentityEparallel_block/embeddings/user_age/user_age/embedding_lookup:output:0*
T0*V
_classL
JHloc:@parallel_block/embeddings/user_age/user_age/embedding_lookup/204631*'
_output_shapes
:         ╒
Gparallel_block/embeddings/user_age/user_age/embedding_lookup/Identity_1IdentityNparallel_block/embeddings/user_age/user_age/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         и
4parallel_block/embeddings/user_consumption_2/SqueezeSqueezeinputs_user_consumption_2*
T0*#
_output_shapes
:         *
squeeze_dims

         м
Pparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupResourceGatherWparallel_block_embeddings_user_consumption_2_user_consumption_2_embedding_lookup_204637=parallel_block/embeddings/user_consumption_2/Squeeze:output:0*
Tindices0*j
_class`
^\loc:@parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/204637*'
_output_shapes
:         *
dtype0▐
Yparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/IdentityIdentityYparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup:output:0*
T0*j
_class`
^\loc:@parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/204637*'
_output_shapes
:         ¤
[parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1Identitybparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         д
2parallel_block/embeddings/user_is_occupied/SqueezeSqueezeinputs_user_is_occupied*
T0*#
_output_shapes
:         *
squeeze_dims

         Ю
Lparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupResourceGatherSparallel_block_embeddings_user_is_occupied_user_is_occupied_embedding_lookup_204643;parallel_block/embeddings/user_is_occupied/Squeeze:output:0*
Tindices0*f
_class\
ZXloc:@parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/204643*'
_output_shapes
:         *
dtype0╥
Uparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/IdentityIdentityUparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup:output:0*
T0*f
_class\
ZXloc:@parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/204643*'
_output_shapes
:         ї
Wparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1Identity^parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         а
0parallel_block/embeddings/user_geography/SqueezeSqueezeinputs_user_geography*
T0*#
_output_shapes
:         *
squeeze_dims

         Р
Hparallel_block/embeddings/user_geography/user_geography/embedding_lookupResourceGatherOparallel_block_embeddings_user_geography_user_geography_embedding_lookup_2046499parallel_block/embeddings/user_geography/Squeeze:output:0*
Tindices0*b
_classX
VTloc:@parallel_block/embeddings/user_geography/user_geography/embedding_lookup/204649*'
_output_shapes
:         *
dtype0╞
Qparallel_block/embeddings/user_geography/user_geography/embedding_lookup/IdentityIdentityQparallel_block/embeddings/user_geography/user_geography/embedding_lookup:output:0*
T0*b
_classX
VTloc:@parallel_block/embeddings/user_geography/user_geography/embedding_lookup/204649*'
_output_shapes
:         э
Sparallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity_1IdentityZparallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         в
1parallel_block/embeddings/user_intentions/SqueezeSqueezeinputs_user_intentions*
T0*#
_output_shapes
:         *
squeeze_dims

         Ч
Jparallel_block/embeddings/user_intentions/user_intentions/embedding_lookupResourceGatherQparallel_block_embeddings_user_intentions_user_intentions_embedding_lookup_204655:parallel_block/embeddings/user_intentions/Squeeze:output:0*
Tindices0*d
_classZ
XVloc:@parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/204655*'
_output_shapes
:         *
dtype0╠
Sparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/IdentityIdentitySparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/204655*'
_output_shapes
:         ё
Uparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity_1Identity\parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Ъ
-parallel_block/embeddings/user_brands/SqueezeSqueezeinputs_user_brands*
T0*#
_output_shapes
:         *
squeeze_dims

         √
Bparallel_block/embeddings/user_brands/user_brands/embedding_lookupResourceGatherIparallel_block_embeddings_user_brands_user_brands_embedding_lookup_2046616parallel_block/embeddings/user_brands/Squeeze:output:0*
Tindices0*\
_classR
PNloc:@parallel_block/embeddings/user_brands/user_brands/embedding_lookup/204661*'
_output_shapes
:         *
dtype0┤
Kparallel_block/embeddings/user_brands/user_brands/embedding_lookup/IdentityIdentityKparallel_block/embeddings/user_brands/user_brands/embedding_lookup:output:0*
T0*\
_classR
PNloc:@parallel_block/embeddings/user_brands/user_brands/embedding_lookup/204661*'
_output_shapes
:         с
Mparallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity_1IdentityTparallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         в
1parallel_block/embeddings/user_categories/SqueezeSqueezeinputs_user_categories*
T0*#
_output_shapes
:         *
squeeze_dims

         Ч
Jparallel_block/embeddings/user_categories/user_categories/embedding_lookupResourceGatherQparallel_block_embeddings_user_categories_user_categories_embedding_lookup_204667:parallel_block/embeddings/user_categories/Squeeze:output:0*
Tindices0*d
_classZ
XVloc:@parallel_block/embeddings/user_categories/user_categories/embedding_lookup/204667*'
_output_shapes
:         *
dtype0╠
Sparallel_block/embeddings/user_categories/user_categories/embedding_lookup/IdentityIdentitySparallel_block/embeddings/user_categories/user_categories/embedding_lookup:output:0*
T0*d
_classZ
XVloc:@parallel_block/embeddings/user_categories/user_categories/embedding_lookup/204667*'
_output_shapes
:         ё
Uparallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity_1Identity\parallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         f
concat_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ┬	
concat_features/concatConcatV2Pparallel_block/embeddings/user_age/user_age/embedding_lookup/Identity_1:output:0Vparallel_block/embeddings/user_brands/user_brands/embedding_lookup/Identity_1:output:0^parallel_block/embeddings/user_categories/user_categories/embedding_lookup/Identity_1:output:0dparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1:output:0Vparallel_block/embeddings/user_gender/user_gender/embedding_lookup/Identity_1:output:0\parallel_block/embeddings/user_geography/user_geography/embedding_lookup/Identity_1:output:0Tparallel_block/embeddings/user_group/user_group/embedding_lookup/Identity_1:output:0Nparallel_block/embeddings/user_id/user_id/embedding_lookup/Identity_1:output:0^parallel_block/embeddings/user_intentions/user_intentions/embedding_lookup/Identity_1:output:0`parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1:output:0Xparallel_block/embeddings/user_profile/user_profile/embedding_lookup/Identity_1:output:0Tparallel_block/embeddings/user_shops/user_shops/embedding_lookup/Identity_1:output:0$concat_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:         И╬
Asequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpReadVariableOpJsequential_block_3_private__dense_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
ИА*
dtype0█
2sequential_block_3/private__dense_4/dense_4/MatMulMatMulconcat_features/concat:output:0Isequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А╦
Bsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpReadVariableOpKsequential_block_3_private__dense_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0√
3sequential_block_3/private__dense_4/dense_4/BiasAddBiasAdd<sequential_block_3/private__dense_4/dense_4/MatMul:product:0Jsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ай
0sequential_block_3/private__dense_4/dense_4/ReluRelu<sequential_block_3/private__dense_4/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         А═
Asequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpReadVariableOpJsequential_block_3_private__dense_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0∙
2sequential_block_3/private__dense_5/dense_5/MatMulMatMul>sequential_block_3/private__dense_4/dense_4/Relu:activations:0Isequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @╩
Bsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpReadVariableOpKsequential_block_3_private__dense_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0·
3sequential_block_3/private__dense_5/dense_5/BiasAddBiasAdd<sequential_block_3/private__dense_5/dense_5/MatMul:product:0Jsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @Л
IdentityIdentity<sequential_block_3/private__dense_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @▓	
NoOpNoOp=^parallel_block/embeddings/user_age/user_age/embedding_lookupC^parallel_block/embeddings/user_brands/user_brands/embedding_lookupK^parallel_block/embeddings/user_categories/user_categories/embedding_lookupQ^parallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupC^parallel_block/embeddings/user_gender/user_gender/embedding_lookupI^parallel_block/embeddings/user_geography/user_geography/embedding_lookupA^parallel_block/embeddings/user_group/user_group/embedding_lookup;^parallel_block/embeddings/user_id/user_id/embedding_lookupK^parallel_block/embeddings/user_intentions/user_intentions/embedding_lookupM^parallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupE^parallel_block/embeddings/user_profile/user_profile/embedding_lookupA^parallel_block/embeddings/user_shops/user_shops/embedding_lookupC^sequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpB^sequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpC^sequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpB^sequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 2|
<parallel_block/embeddings/user_age/user_age/embedding_lookup<parallel_block/embeddings/user_age/user_age/embedding_lookup2И
Bparallel_block/embeddings/user_brands/user_brands/embedding_lookupBparallel_block/embeddings/user_brands/user_brands/embedding_lookup2Ш
Jparallel_block/embeddings/user_categories/user_categories/embedding_lookupJparallel_block/embeddings/user_categories/user_categories/embedding_lookup2д
Pparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookupPparallel_block/embeddings/user_consumption_2/user_consumption_2/embedding_lookup2И
Bparallel_block/embeddings/user_gender/user_gender/embedding_lookupBparallel_block/embeddings/user_gender/user_gender/embedding_lookup2Ф
Hparallel_block/embeddings/user_geography/user_geography/embedding_lookupHparallel_block/embeddings/user_geography/user_geography/embedding_lookup2Д
@parallel_block/embeddings/user_group/user_group/embedding_lookup@parallel_block/embeddings/user_group/user_group/embedding_lookup2x
:parallel_block/embeddings/user_id/user_id/embedding_lookup:parallel_block/embeddings/user_id/user_id/embedding_lookup2Ш
Jparallel_block/embeddings/user_intentions/user_intentions/embedding_lookupJparallel_block/embeddings/user_intentions/user_intentions/embedding_lookup2Ь
Lparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookupLparallel_block/embeddings/user_is_occupied/user_is_occupied/embedding_lookup2М
Dparallel_block/embeddings/user_profile/user_profile/embedding_lookupDparallel_block/embeddings/user_profile/user_profile/embedding_lookup2Д
@parallel_block/embeddings/user_shops/user_shops/embedding_lookup@parallel_block/embeddings/user_shops/user_shops/embedding_lookup2И
Bsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOpBsequential_block_3/private__dense_4/dense_4/BiasAdd/ReadVariableOp2Ж
Asequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOpAsequential_block_3/private__dense_4/dense_4/MatMul/ReadVariableOp2И
Bsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOpBsequential_block_3/private__dense_5/dense_5/BiasAdd/ReadVariableOp2Ж
Asequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOpAsequential_block_3/private__dense_5/dense_5/MatMul/ReadVariableOp:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops
б*
ї
C__inference_encoder_layer_call_and_return_conditional_losses_204233

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11(
parallel_block_204185:	Ё(
parallel_block_204187:	Ё'
parallel_block_204189:1'
parallel_block_204191:'
parallel_block_204193:'
parallel_block_204195:'
parallel_block_204197:'
parallel_block_204199:'
parallel_block_204201:(
parallel_block_204203:	Ё(
parallel_block_204205:	Ё(
parallel_block_204207:	Ё-
sequential_block_3_204223:
ИА(
sequential_block_3_204225:	А,
sequential_block_3_204227:	А@'
sequential_block_3_204229:@
identityИв&parallel_block/StatefulPartitionedCallв*sequential_block_3/StatefulPartitionedCallы
&parallel_block/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11parallel_block_204185parallel_block_204187parallel_block_204189parallel_block_204191parallel_block_204193parallel_block_204195parallel_block_204197parallel_block_204199parallel_block_204201parallel_block_204203parallel_block_204205parallel_block_204207*/
Tin(
&2$*
Tout
2*
_collective_manager_ids
 *·
_output_shapesч
ф:         :         :         :         :         :         :         :         :         :         :         :         *.
_read_only_resource_inputs
 !"#*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *S
fNRL
J__inference_parallel_block_layer_call_and_return_conditional_losses_204061f
concat_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
         ╥
concat_features/concatConcatV2/parallel_block/StatefulPartitionedCall:output:0/parallel_block/StatefulPartitionedCall:output:1/parallel_block/StatefulPartitionedCall:output:2/parallel_block/StatefulPartitionedCall:output:3/parallel_block/StatefulPartitionedCall:output:4/parallel_block/StatefulPartitionedCall:output:5/parallel_block/StatefulPartitionedCall:output:6/parallel_block/StatefulPartitionedCall:output:7/parallel_block/StatefulPartitionedCall:output:8/parallel_block/StatefulPartitionedCall:output:90parallel_block/StatefulPartitionedCall:output:100parallel_block/StatefulPartitionedCall:output:11$concat_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:         И·
*sequential_block_3/StatefulPartitionedCallStatefulPartitionedCallconcat_features/concat:output:0inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11sequential_block_3_204223sequential_block_3_204225sequential_block_3_204227sequential_block_3_204229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         @*&
_read_only_resource_inputs
*8
config_proto(&

CPU

GPU2*0J

  ЁE8В *W
fRRP
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_203840В
IdentityIdentity3sequential_block_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         @Ь
NoOpNoOp'^parallel_block/StatefulPartitionedCall+^sequential_block_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : : : : : 2P
&parallel_block/StatefulPartitionedCall&parallel_block/StatefulPartitionedCall2X
*sequential_block_3/StatefulPartitionedCall*sequential_block_3/StatefulPartitionedCall:O K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs:O	K
'
_output_shapes
:         
 
_user_specified_nameinputs:O
K
'
_output_shapes
:         
 
_user_specified_nameinputs:OK
'
_output_shapes
:         
 
_user_specified_nameinputs
З&
д
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205266

inputs
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shopsK
7private__dense_4_dense_4_matmul_readvariableop_resource:
ИАG
8private__dense_4_dense_4_biasadd_readvariableop_resource:	АJ
7private__dense_5_dense_5_matmul_readvariableop_resource:	А@F
8private__dense_5_dense_5_biasadd_readvariableop_resource:@
identityИв/private__dense_4/dense_4/BiasAdd/ReadVariableOpв.private__dense_4/dense_4/MatMul/ReadVariableOpв/private__dense_5/dense_5/BiasAdd/ReadVariableOpв.private__dense_5/dense_5/MatMul/ReadVariableOpи
.private__dense_4/dense_4/MatMul/ReadVariableOpReadVariableOp7private__dense_4_dense_4_matmul_readvariableop_resource* 
_output_shapes
:
ИА*
dtype0Ь
private__dense_4/dense_4/MatMulMatMulinputs6private__dense_4/dense_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Ае
/private__dense_4/dense_4/BiasAdd/ReadVariableOpReadVariableOp8private__dense_4_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0┬
 private__dense_4/dense_4/BiasAddBiasAdd)private__dense_4/dense_4/MatMul:product:07private__dense_4/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АГ
private__dense_4/dense_4/ReluRelu)private__dense_4/dense_4/BiasAdd:output:0*
T0*(
_output_shapes
:         Аз
.private__dense_5/dense_5/MatMul/ReadVariableOpReadVariableOp7private__dense_5_dense_5_matmul_readvariableop_resource*
_output_shapes
:	А@*
dtype0└
private__dense_5/dense_5/MatMulMatMul+private__dense_4/dense_4/Relu:activations:06private__dense_5/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @д
/private__dense_5/dense_5/BiasAdd/ReadVariableOpReadVariableOp8private__dense_5_dense_5_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0┴
 private__dense_5/dense_5/BiasAddBiasAdd)private__dense_5/dense_5/MatMul:product:07private__dense_5/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         @x
IdentityIdentity)private__dense_5/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         @М
NoOpNoOp0^private__dense_4/dense_4/BiasAdd/ReadVariableOp/^private__dense_4/dense_4/MatMul/ReadVariableOp0^private__dense_5/dense_5/BiasAdd/ReadVariableOp/^private__dense_5/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Х
_input_shapesГ
А:         И:         :         :         :         :         :         :         :         :         :         :         :         : : : : 2b
/private__dense_4/dense_4/BiasAdd/ReadVariableOp/private__dense_4/dense_4/BiasAdd/ReadVariableOp2`
.private__dense_4/dense_4/MatMul/ReadVariableOp.private__dense_4/dense_4/MatMul/ReadVariableOp2b
/private__dense_5/dense_5/BiasAdd/ReadVariableOp/private__dense_5/dense_5/BiasAdd/ReadVariableOp2`
.private__dense_5/dense_5/MatMul/ReadVariableOp.private__dense_5/dense_5/MatMul/ReadVariableOp:P L
(
_output_shapes
:         И
 
_user_specified_nameinputs:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a	]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b
^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops
ше
Ў
J__inference_parallel_block_layer_call_and_return_conditional_losses_205048
inputs_user_age
inputs_user_brands
inputs_user_categories
inputs_user_consumption_2
inputs_user_gender
inputs_user_geography
inputs_user_group
inputs_user_id
inputs_user_intentions
inputs_user_is_occupied
inputs_user_profile
inputs_user_shops
features_user_age
features_user_brands
features_user_categories
features_user_consumption_2
features_user_gender
features_user_geography
features_user_group
features_user_id
features_user_intentions
features_user_is_occupied
features_user_profile
features_user_shopsE
2embeddings_user_id_user_id_embedding_lookup_204965:	ЁK
8embeddings_user_shops_user_shops_embedding_lookup_204971:	ЁN
<embeddings_user_profile_user_profile_embedding_lookup_204977:1J
8embeddings_user_group_user_group_embedding_lookup_204983:L
:embeddings_user_gender_user_gender_embedding_lookup_204989:F
4embeddings_user_age_user_age_embedding_lookup_204995:Z
Hembeddings_user_consumption_2_user_consumption_2_embedding_lookup_205001:V
Dembeddings_user_is_occupied_user_is_occupied_embedding_lookup_205007:R
@embeddings_user_geography_user_geography_embedding_lookup_205013:U
Bembeddings_user_intentions_user_intentions_embedding_lookup_205019:	ЁM
:embeddings_user_brands_user_brands_embedding_lookup_205025:	ЁU
Bembeddings_user_categories_user_categories_embedding_lookup_205031:	Ё
identity

identity_1

identity_2

identity_3

identity_4

identity_5

identity_6

identity_7

identity_8

identity_9
identity_10
identity_11Ив-embeddings/user_age/user_age/embedding_lookupв3embeddings/user_brands/user_brands/embedding_lookupв;embeddings/user_categories/user_categories/embedding_lookupвAembeddings/user_consumption_2/user_consumption_2/embedding_lookupв3embeddings/user_gender/user_gender/embedding_lookupв9embeddings/user_geography/user_geography/embedding_lookupв1embeddings/user_group/user_group/embedding_lookupв+embeddings/user_id/user_id/embedding_lookupв;embeddings/user_intentions/user_intentions/embedding_lookupв=embeddings/user_is_occupied/user_is_occupied/embedding_lookupв5embeddings/user_profile/user_profile/embedding_lookupв1embeddings/user_shops/user_shops/embedding_lookupГ
embeddings/user_id/SqueezeSqueezeinputs_user_id*
T0*#
_output_shapes
:         *
squeeze_dims

         г
+embeddings/user_id/user_id/embedding_lookupResourceGather2embeddings_user_id_user_id_embedding_lookup_204965#embeddings/user_id/Squeeze:output:0*
Tindices0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/204965*'
_output_shapes
:         *
dtype0я
4embeddings/user_id/user_id/embedding_lookup/IdentityIdentity4embeddings/user_id/user_id/embedding_lookup:output:0*
T0*E
_class;
97loc:@embeddings/user_id/user_id/embedding_lookup/204965*'
_output_shapes
:         │
6embeddings/user_id/user_id/embedding_lookup/Identity_1Identity=embeddings/user_id/user_id/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Й
embeddings/user_shops/SqueezeSqueezeinputs_user_shops*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_shops/user_shops/embedding_lookupResourceGather8embeddings_user_shops_user_shops_embedding_lookup_204971&embeddings/user_shops/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/204971*'
_output_shapes
:         *
dtype0Б
:embeddings/user_shops/user_shops/embedding_lookup/IdentityIdentity:embeddings/user_shops/user_shops/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_shops/user_shops/embedding_lookup/204971*'
_output_shapes
:         ┐
<embeddings/user_shops/user_shops/embedding_lookup/Identity_1IdentityCembeddings/user_shops/user_shops/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Н
embeddings/user_profile/SqueezeSqueezeinputs_user_profile*
T0*#
_output_shapes
:         *
squeeze_dims

         ╞
5embeddings/user_profile/user_profile/embedding_lookupResourceGather<embeddings_user_profile_user_profile_embedding_lookup_204977(embeddings/user_profile/Squeeze:output:0*
Tindices0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/204977*'
_output_shapes
:         *
dtype0Н
>embeddings/user_profile/user_profile/embedding_lookup/IdentityIdentity>embeddings/user_profile/user_profile/embedding_lookup:output:0*
T0*O
_classE
CAloc:@embeddings/user_profile/user_profile/embedding_lookup/204977*'
_output_shapes
:         ╟
@embeddings/user_profile/user_profile/embedding_lookup/Identity_1IdentityGembeddings/user_profile/user_profile/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Й
embeddings/user_group/SqueezeSqueezeinputs_user_group*
T0*#
_output_shapes
:         *
squeeze_dims

         ╕
1embeddings/user_group/user_group/embedding_lookupResourceGather8embeddings_user_group_user_group_embedding_lookup_204983&embeddings/user_group/Squeeze:output:0*
Tindices0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/204983*'
_output_shapes
:         *
dtype0Б
:embeddings/user_group/user_group/embedding_lookup/IdentityIdentity:embeddings/user_group/user_group/embedding_lookup:output:0*
T0*K
_classA
?=loc:@embeddings/user_group/user_group/embedding_lookup/204983*'
_output_shapes
:         ┐
<embeddings/user_group/user_group/embedding_lookup/Identity_1IdentityCembeddings/user_group/user_group/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Л
embeddings/user_gender/SqueezeSqueezeinputs_user_gender*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_gender/user_gender/embedding_lookupResourceGather:embeddings_user_gender_user_gender_embedding_lookup_204989'embeddings/user_gender/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/204989*'
_output_shapes
:         *
dtype0З
<embeddings/user_gender/user_gender/embedding_lookup/IdentityIdentity<embeddings/user_gender/user_gender/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_gender/user_gender/embedding_lookup/204989*'
_output_shapes
:         ├
>embeddings/user_gender/user_gender/embedding_lookup/Identity_1IdentityEembeddings/user_gender/user_gender/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Е
embeddings/user_age/SqueezeSqueezeinputs_user_age*
T0*#
_output_shapes
:         *
squeeze_dims

         к
-embeddings/user_age/user_age/embedding_lookupResourceGather4embeddings_user_age_user_age_embedding_lookup_204995$embeddings/user_age/Squeeze:output:0*
Tindices0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/204995*'
_output_shapes
:         *
dtype0ї
6embeddings/user_age/user_age/embedding_lookup/IdentityIdentity6embeddings/user_age/user_age/embedding_lookup:output:0*
T0*G
_class=
;9loc:@embeddings/user_age/user_age/embedding_lookup/204995*'
_output_shapes
:         ╖
8embeddings/user_age/user_age/embedding_lookup/Identity_1Identity?embeddings/user_age/user_age/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Щ
%embeddings/user_consumption_2/SqueezeSqueezeinputs_user_consumption_2*
T0*#
_output_shapes
:         *
squeeze_dims

         Ё
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupResourceGatherHembeddings_user_consumption_2_user_consumption_2_embedding_lookup_205001.embeddings/user_consumption_2/Squeeze:output:0*
Tindices0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/205001*'
_output_shapes
:         *
dtype0▒
Jembeddings/user_consumption_2/user_consumption_2/embedding_lookup/IdentityIdentityJembeddings/user_consumption_2/user_consumption_2/embedding_lookup:output:0*
T0*[
_classQ
OMloc:@embeddings/user_consumption_2/user_consumption_2/embedding_lookup/205001*'
_output_shapes
:         ▀
Lembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1IdentitySembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Х
#embeddings/user_is_occupied/SqueezeSqueezeinputs_user_is_occupied*
T0*#
_output_shapes
:         *
squeeze_dims

         т
=embeddings/user_is_occupied/user_is_occupied/embedding_lookupResourceGatherDembeddings_user_is_occupied_user_is_occupied_embedding_lookup_205007,embeddings/user_is_occupied/Squeeze:output:0*
Tindices0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/205007*'
_output_shapes
:         *
dtype0е
Fembeddings/user_is_occupied/user_is_occupied/embedding_lookup/IdentityIdentityFembeddings/user_is_occupied/user_is_occupied/embedding_lookup:output:0*
T0*W
_classM
KIloc:@embeddings/user_is_occupied/user_is_occupied/embedding_lookup/205007*'
_output_shapes
:         ╫
Hembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1IdentityOembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         С
!embeddings/user_geography/SqueezeSqueezeinputs_user_geography*
T0*#
_output_shapes
:         *
squeeze_dims

         ╘
9embeddings/user_geography/user_geography/embedding_lookupResourceGather@embeddings_user_geography_user_geography_embedding_lookup_205013*embeddings/user_geography/Squeeze:output:0*
Tindices0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/205013*'
_output_shapes
:         *
dtype0Щ
Bembeddings/user_geography/user_geography/embedding_lookup/IdentityIdentityBembeddings/user_geography/user_geography/embedding_lookup:output:0*
T0*S
_classI
GEloc:@embeddings/user_geography/user_geography/embedding_lookup/205013*'
_output_shapes
:         ╧
Dembeddings/user_geography/user_geography/embedding_lookup/Identity_1IdentityKembeddings/user_geography/user_geography/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         У
"embeddings/user_intentions/SqueezeSqueezeinputs_user_intentions*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_intentions/user_intentions/embedding_lookupResourceGatherBembeddings_user_intentions_user_intentions_embedding_lookup_205019+embeddings/user_intentions/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/205019*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_intentions/user_intentions/embedding_lookup/IdentityIdentityDembeddings/user_intentions/user_intentions/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_intentions/user_intentions/embedding_lookup/205019*'
_output_shapes
:         ╙
Fembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1IdentityMembeddings/user_intentions/user_intentions/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Л
embeddings/user_brands/SqueezeSqueezeinputs_user_brands*
T0*#
_output_shapes
:         *
squeeze_dims

         ┐
3embeddings/user_brands/user_brands/embedding_lookupResourceGather:embeddings_user_brands_user_brands_embedding_lookup_205025'embeddings/user_brands/Squeeze:output:0*
Tindices0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/205025*'
_output_shapes
:         *
dtype0З
<embeddings/user_brands/user_brands/embedding_lookup/IdentityIdentity<embeddings/user_brands/user_brands/embedding_lookup:output:0*
T0*M
_classC
A?loc:@embeddings/user_brands/user_brands/embedding_lookup/205025*'
_output_shapes
:         ├
>embeddings/user_brands/user_brands/embedding_lookup/Identity_1IdentityEembeddings/user_brands/user_brands/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         У
"embeddings/user_categories/SqueezeSqueezeinputs_user_categories*
T0*#
_output_shapes
:         *
squeeze_dims

         █
;embeddings/user_categories/user_categories/embedding_lookupResourceGatherBembeddings_user_categories_user_categories_embedding_lookup_205031+embeddings/user_categories/Squeeze:output:0*
Tindices0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/205031*'
_output_shapes
:         *
dtype0Я
Dembeddings/user_categories/user_categories/embedding_lookup/IdentityIdentityDembeddings/user_categories/user_categories/embedding_lookup:output:0*
T0*U
_classK
IGloc:@embeddings/user_categories/user_categories/embedding_lookup/205031*'
_output_shapes
:         ╙
Fembeddings/user_categories/user_categories/embedding_lookup/Identity_1IdentityMembeddings/user_categories/user_categories/embedding_lookup/Identity:output:0*
T0*'
_output_shapes
:         Р
IdentityIdentityAembeddings/user_age/user_age/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_1IdentityGembeddings/user_brands/user_brands/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_2IdentityOembeddings/user_categories/user_categories/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ж

Identity_3IdentityUembeddings/user_consumption_2/user_consumption_2/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ш

Identity_4IdentityGembeddings/user_gender/user_gender/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ю

Identity_5IdentityMembeddings/user_geography/user_geography/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ц

Identity_6IdentityEembeddings/user_group/user_group/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Р

Identity_7Identity?embeddings/user_id/user_id/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         а

Identity_8IdentityOembeddings/user_intentions/user_intentions/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         в

Identity_9IdentityQembeddings/user_is_occupied/user_is_occupied/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ы
Identity_10IdentityIembeddings/user_profile/user_profile/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         Ч
Identity_11IdentityEembeddings/user_shops/user_shops/embedding_lookup/Identity_1:output:0^NoOp*
T0*'
_output_shapes
:         ь
NoOpNoOp.^embeddings/user_age/user_age/embedding_lookup4^embeddings/user_brands/user_brands/embedding_lookup<^embeddings/user_categories/user_categories/embedding_lookupB^embeddings/user_consumption_2/user_consumption_2/embedding_lookup4^embeddings/user_gender/user_gender/embedding_lookup:^embeddings/user_geography/user_geography/embedding_lookup2^embeddings/user_group/user_group/embedding_lookup,^embeddings/user_id/user_id/embedding_lookup<^embeddings/user_intentions/user_intentions/embedding_lookup>^embeddings/user_is_occupied/user_is_occupied/embedding_lookup6^embeddings/user_profile/user_profile/embedding_lookup2^embeddings/user_shops/user_shops/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"#
identity_10Identity_10:output:0"#
identity_11Identity_11:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0"!

identity_6Identity_6:output:0"!

identity_7Identity_7:output:0"!

identity_8Identity_8:output:0"!

identity_9Identity_9:output:0*(
_construction_contextkEagerRuntime*ї
_input_shapesу
р:         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         :         : : : : : : : : : : : : 2^
-embeddings/user_age/user_age/embedding_lookup-embeddings/user_age/user_age/embedding_lookup2j
3embeddings/user_brands/user_brands/embedding_lookup3embeddings/user_brands/user_brands/embedding_lookup2z
;embeddings/user_categories/user_categories/embedding_lookup;embeddings/user_categories/user_categories/embedding_lookup2Ж
Aembeddings/user_consumption_2/user_consumption_2/embedding_lookupAembeddings/user_consumption_2/user_consumption_2/embedding_lookup2j
3embeddings/user_gender/user_gender/embedding_lookup3embeddings/user_gender/user_gender/embedding_lookup2v
9embeddings/user_geography/user_geography/embedding_lookup9embeddings/user_geography/user_geography/embedding_lookup2f
1embeddings/user_group/user_group/embedding_lookup1embeddings/user_group/user_group/embedding_lookup2Z
+embeddings/user_id/user_id/embedding_lookup+embeddings/user_id/user_id/embedding_lookup2z
;embeddings/user_intentions/user_intentions/embedding_lookup;embeddings/user_intentions/user_intentions/embedding_lookup2~
=embeddings/user_is_occupied/user_is_occupied/embedding_lookup=embeddings/user_is_occupied/user_is_occupied/embedding_lookup2n
5embeddings/user_profile/user_profile/embedding_lookup5embeddings/user_profile/user_profile/embedding_lookup2f
1embeddings/user_shops/user_shops/embedding_lookup1embeddings/user_shops/user_shops/embedding_lookup:X T
'
_output_shapes
:         
)
_user_specified_nameinputs/user_age:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_brands:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_categories:b^
'
_output_shapes
:         
3
_user_specified_nameinputs/user_consumption_2:[W
'
_output_shapes
:         
,
_user_specified_nameinputs/user_gender:^Z
'
_output_shapes
:         
/
_user_specified_nameinputs/user_geography:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_group:WS
'
_output_shapes
:         
(
_user_specified_nameinputs/user_id:_[
'
_output_shapes
:         
0
_user_specified_nameinputs/user_intentions:`	\
'
_output_shapes
:         
1
_user_specified_nameinputs/user_is_occupied:\
X
'
_output_shapes
:         
-
_user_specified_nameinputs/user_profile:ZV
'
_output_shapes
:         
+
_user_specified_nameinputs/user_shops:ZV
'
_output_shapes
:         
+
_user_specified_namefeatures/user_age:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_brands:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_categories:d`
'
_output_shapes
:         
5
_user_specified_namefeatures/user_consumption_2:]Y
'
_output_shapes
:         
.
_user_specified_namefeatures/user_gender:`\
'
_output_shapes
:         
1
_user_specified_namefeatures/user_geography:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_group:YU
'
_output_shapes
:         
*
_user_specified_namefeatures/user_id:a]
'
_output_shapes
:         
2
_user_specified_namefeatures/user_intentions:b^
'
_output_shapes
:         
3
_user_specified_namefeatures/user_is_occupied:^Z
'
_output_shapes
:         
/
_user_specified_namefeatures/user_profile:\X
'
_output_shapes
:         
-
_user_specified_namefeatures/user_shops"┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╚
serving_default┤
=
user_age1
serving_default_user_age:0         
C
user_brands4
serving_default_user_brands:0         
K
user_categories8
!serving_default_user_categories:0         
Q
user_consumption_2;
$serving_default_user_consumption_2:0         
C
user_gender4
serving_default_user_gender:0         
I
user_geography7
 serving_default_user_geography:0         
A

user_group3
serving_default_user_group:0         
;
user_id0
serving_default_user_id:0         
K
user_intentions8
!serving_default_user_intentions:0         
M
user_is_occupied9
"serving_default_user_is_occupied:0         
E
user_profile5
serving_default_user_profile:0         
A

user_shops3
serving_default_user_shops:0         <
output_10
StatefulPartitionedCall:0         @tensorflow/serving/predict: Ў
а
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

blocks
	_feature_shapes

_feature_dtypes
_build_input_shape

signatures"
_tf_keras_model
Ц
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
Ц
0
1
2
3
4
5
6
7
8
9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
non_trainable_variables

layers
metrics
 layer_regularization_losses
!layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ш
"trace_0
#trace_1
$trace_2
%trace_32¤
(__inference_encoder_layer_call_fn_203771
(__inference_encoder_layer_call_fn_204538
(__inference_encoder_layer_call_fn_204586
(__inference_encoder_layer_call_fn_204316╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z"trace_0z#trace_1z$trace_2z%trace_3
╘
&trace_0
'trace_1
(trace_2
)trace_32щ
C__inference_encoder_layer_call_and_return_conditional_losses_204688
C__inference_encoder_layer_call_and_return_conditional_losses_204790
C__inference_encoder_layer_call_and_return_conditional_losses_204378
C__inference_encoder_layer_call_and_return_conditional_losses_204440╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z&trace_0z'trace_1z(trace_2z)trace_3
юBы
!__inference__wrapped_model_203518user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shops"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
*0
+1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
,
,serving_default"
signature_map
/:-2retrieval_model_v2/embeddings
0:.	Ё2retrieval_model_v2/embeddings
0:.	Ё2retrieval_model_v2/embeddings
/:-2retrieval_model_v2/embeddings
/:-2retrieval_model_v2/embeddings
/:-2retrieval_model_v2/embeddings
/:-2retrieval_model_v2/embeddings
0:.	Ё2retrieval_model_v2/embeddings
0:.	Ё2retrieval_model_v2/embeddings
/:-2retrieval_model_v2/embeddings
/:-12retrieval_model_v2/embeddings
0:.	Ё2retrieval_model_v2/embeddings
r:p
ИА2^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/kernel
k:iА2\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_4/dense_4/bias
q:o	А@2^retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/kernel
j:h@2\retrieval_model_v2/parallel_block_2/encoder/sequential_block_3/private__dense_5/dense_5/bias
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
пBм
(__inference_encoder_layer_call_fn_203771user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ГBА
(__inference_encoder_layer_call_fn_204538inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ГBА
(__inference_encoder_layer_call_fn_204586inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
пBм
(__inference_encoder_layer_call_fn_204316user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЮBЫ
C__inference_encoder_layer_call_and_return_conditional_losses_204688inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЮBЫ
C__inference_encoder_layer_call_and_return_conditional_losses_204790inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩B╟
C__inference_encoder_layer_call_and_return_conditional_losses_204378user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╩B╟
C__inference_encoder_layer_call_and_return_conditional_losses_204440user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shops"╥
╔▓┼
FullArgSpec?
args7Ъ4
jself
jinputs

jtraining
	jtesting
	jtargets
varargs
 
varkw
 
defaultsЪ
p 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
Д
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses
3_aggregation
4parallel_layers
5_context
6_feature_shapes
7_feature_dtypes"
_tf_keras_layer
щ
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses

>layers
5_context
?_feature_shapes
@_feature_dtypes"
_tf_keras_layer
ыBш
$__inference_signature_wrapper_204490user_ageuser_brandsuser_categoriesuser_consumption_2user_genderuser_geography
user_groupuser_iduser_intentionsuser_is_occupieduser_profile
user_shops"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
н
Anon_trainable_variables

Blayers
Cmetrics
Dlayer_regularization_losses
Elayer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
т
Ftrace_0
Gtrace_12л
/__inference_parallel_block_layer_call_fn_204864
/__inference_parallel_block_layer_call_fn_204938╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 zFtrace_0zGtrace_1
Ш
Htrace_0
Itrace_12с
J__inference_parallel_block_layer_call_and_return_conditional_losses_205048
J__inference_parallel_block_layer_call_and_return_conditional_losses_205158╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 zHtrace_0zItrace_1
╧
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses
P_feature_shapes
Q_feature_dtypes"
_tf_keras_layer
1
Rcategorical"
trackable_dict_wrapper
╧
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses
Y_feature_shapes
Z_feature_dtypes"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
н
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
▐
`trace_0
atrace_12з
3__inference_sequential_block_3_layer_call_fn_205183
3__inference_sequential_block_3_layer_call_fn_205208║
▒▓н
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z`trace_0zatrace_1
Ф
btrace_0
ctrace_12▌
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205237
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205266║
▒▓н
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zbtrace_0zctrace_1
.
d0
e1"
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
30
51
R2"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ХBТ
/__inference_parallel_block_layer_call_fn_204864inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shopsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
ХBТ
/__inference_parallel_block_layer_call_fn_204938inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shopsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
░Bн
J__inference_parallel_block_layer_call_and_return_conditional_losses_205048inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shopsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
░Bн
J__inference_parallel_block_layer_call_and_return_conditional_losses_205158inputs/user_ageinputs/user_brandsinputs/user_categoriesinputs/user_consumption_2inputs/user_genderinputs/user_geographyinputs/user_groupinputs/user_idinputs/user_intentionsinputs/user_is_occupiedinputs/user_profileinputs/user_shopsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
Є
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses
qparallel_layers
5_context
r_feature_shapes
s_feature_dtypes"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
tnon_trainable_variables

ulayers
vmetrics
wlayer_regularization_losses
xlayer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
╨2═╩
┴▓╜
FullArgSpec
argsЪ
jself
jinputs
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╨2═╩
┴▓╜
FullArgSpec
argsЪ
jself
jinputs
varargsjargs
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
d0
e1
52"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ЦBУ
3__inference_sequential_block_3_layer_call_fn_205183inputsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"║
▒▓н
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
3__inference_sequential_block_3_layer_call_fn_205208inputsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"║
▒▓н
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▒Bо
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205237inputsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"║
▒▓н
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▒Bо
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205266inputsfeatures/user_agefeatures/user_brandsfeatures/user_categoriesfeatures/user_consumption_2features/user_genderfeatures/user_geographyfeatures/user_groupfeatures/user_idfeatures/user_intentionsfeatures/user_is_occupiedfeatures/user_profilefeatures/user_shops"║
▒▓н
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkwjkwargs
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
▄
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses
	dense
А_feature_shapes
Б_feature_dtypes"
_tf_keras_layer
у
В	variables
Гtrainable_variables
Дregularization_losses
Е	keras_api
Ж__call__
+З&call_and_return_all_conditional_losses

Иdense
Й_feature_shapes
К_feature_dtypes"
_tf_keras_layer
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
v
0
1
2
3
4
5
6
7
8
9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
З
Рuser_id
С
user_shops
Тuser_profile
У
user_group
Фuser_gender
Хuser_age
Цuser_consumption_2
Чuser_is_occupied
Шuser_geography
Щuser_intentions
Ъuser_brands
Ыuser_categories"
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
э
б	variables
вtrainable_variables
гregularization_losses
д	keras_api
е__call__
+ж&call_and_return_all_conditional_losses
з_feature_shapes
и_feature_dtypes

kernel
bias"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
йnon_trainable_variables
кlayers
лmetrics
 мlayer_regularization_losses
нlayer_metrics
В	variables
Гtrainable_variables
Дregularization_losses
Ж__call__
+З&call_and_return_all_conditional_losses
'З"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
э
о	variables
пtrainable_variables
░regularization_losses
▒	keras_api
▓__call__
+│&call_and_return_all_conditional_losses
┤_feature_shapes
╡_feature_dtypes

kernel
bias"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
К
50
Х1
Ъ2
Ы3
Ц4
Ф5
Ш6
У7
Р8
Щ9
Ч10
Т11
С12"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
А
╢	variables
╖trainable_variables
╕regularization_losses
╣	keras_api
║__call__
+╗&call_and_return_all_conditional_losses
╝features

╜table
5_context
╛_feature_shapes
┐_feature_dtypes"
_tf_keras_layer
А
└	variables
┴trainable_variables
┬regularization_losses
├	keras_api
─__call__
+┼&call_and_return_all_conditional_losses
╞features

╟table
5_context
╚_feature_shapes
╔_feature_dtypes"
_tf_keras_layer
А
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses
╨features

╤table
5_context
╥_feature_shapes
╙_feature_dtypes"
_tf_keras_layer
А
╘	variables
╒trainable_variables
╓regularization_losses
╫	keras_api
╪__call__
+┘&call_and_return_all_conditional_losses
┌features

█table
5_context
▄_feature_shapes
▌_feature_dtypes"
_tf_keras_layer
А
▐	variables
▀trainable_variables
рregularization_losses
с	keras_api
т__call__
+у&call_and_return_all_conditional_losses
фfeatures

хtable
5_context
ц_feature_shapes
ч_feature_dtypes"
_tf_keras_layer
А
ш	variables
щtrainable_variables
ъregularization_losses
ы	keras_api
ь__call__
+э&call_and_return_all_conditional_losses
юfeatures

яtable
5_context
Ё_feature_shapes
ё_feature_dtypes"
_tf_keras_layer
А
Є	variables
єtrainable_variables
Їregularization_losses
ї	keras_api
Ў__call__
+ў&call_and_return_all_conditional_losses
°features

∙table
5_context
·_feature_shapes
√_feature_dtypes"
_tf_keras_layer
А
№	variables
¤trainable_variables
■regularization_losses
 	keras_api
А__call__
+Б&call_and_return_all_conditional_losses
Вfeatures

Гtable
5_context
Д_feature_shapes
Е_feature_dtypes"
_tf_keras_layer
А
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
Мfeatures

Нtable
5_context
О_feature_shapes
П_feature_dtypes"
_tf_keras_layer
А
Р	variables
Сtrainable_variables
Тregularization_losses
У	keras_api
Ф__call__
+Х&call_and_return_all_conditional_losses
Цfeatures

Чtable
5_context
Ш_feature_shapes
Щ_feature_dtypes"
_tf_keras_layer
А
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Э	keras_api
Ю__call__
+Я&call_and_return_all_conditional_losses
аfeatures

бtable
5_context
в_feature_shapes
г_feature_dtypes"
_tf_keras_layer
А
д	variables
еtrainable_variables
жregularization_losses
з	keras_api
и__call__
+й&call_and_return_all_conditional_losses
кfeatures

лtable
5_context
м_feature_shapes
н_feature_dtypes"
_tf_keras_layer
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
оnon_trainable_variables
пlayers
░metrics
 ▒layer_regularization_losses
▓layer_metrics
б	variables
вtrainable_variables
гregularization_losses
е__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
(
И0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
│non_trainable_variables
┤layers
╡metrics
 ╢layer_regularization_losses
╖layer_metrics
о	variables
пtrainable_variables
░regularization_losses
▓__call__
+│&call_and_return_all_conditional_losses
'│"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
╢	variables
╖trainable_variables
╕regularization_losses
║__call__
+╗&call_and_return_all_conditional_losses
'╗"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
╜	variables
╛trainable_variables
┐regularization_losses
└	keras_api
┴__call__
+┬&call_and_return_all_conditional_losses
├_feature_shapes
─_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┼non_trainable_variables
╞layers
╟metrics
 ╚layer_regularization_losses
╔layer_metrics
└	variables
┴trainable_variables
┬regularization_losses
─__call__
+┼&call_and_return_all_conditional_losses
'┼"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
╩	variables
╦trainable_variables
╠regularization_losses
═	keras_api
╬__call__
+╧&call_and_return_all_conditional_losses
╨_feature_shapes
╤_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╥non_trainable_variables
╙layers
╘metrics
 ╒layer_regularization_losses
╓layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
╫	variables
╪trainable_variables
┘regularization_losses
┌	keras_api
█__call__
+▄&call_and_return_all_conditional_losses
▌_feature_shapes
▐_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▀non_trainable_variables
рlayers
сmetrics
 тlayer_regularization_losses
уlayer_metrics
╘	variables
╒trainable_variables
╓regularization_losses
╪__call__
+┘&call_and_return_all_conditional_losses
'┘"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
ф	variables
хtrainable_variables
цregularization_losses
ч	keras_api
ш__call__
+щ&call_and_return_all_conditional_losses
ъ_feature_shapes
ы_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ьnon_trainable_variables
эlayers
юmetrics
 яlayer_regularization_losses
Ёlayer_metrics
▐	variables
▀trainable_variables
рregularization_losses
т__call__
+у&call_and_return_all_conditional_losses
'у"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
ё	variables
Єtrainable_variables
єregularization_losses
Ї	keras_api
ї__call__
+Ў&call_and_return_all_conditional_losses
ў_feature_shapes
°_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
∙non_trainable_variables
·layers
√metrics
 №layer_regularization_losses
¤layer_metrics
ш	variables
щtrainable_variables
ъregularization_losses
ь__call__
+э&call_and_return_all_conditional_losses
'э"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
■	variables
 trainable_variables
Аregularization_losses
Б	keras_api
В__call__
+Г&call_and_return_all_conditional_losses
Д_feature_shapes
Е_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
Є	variables
єtrainable_variables
Їregularization_losses
Ў__call__
+ў&call_and_return_all_conditional_losses
'ў"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
Л	variables
Мtrainable_variables
Нregularization_losses
О	keras_api
П__call__
+Р&call_and_return_all_conditional_losses
С_feature_shapes
Т_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Уnon_trainable_variables
Фlayers
Хmetrics
 Цlayer_regularization_losses
Чlayer_metrics
№	variables
¤trainable_variables
■regularization_losses
А__call__
+Б&call_and_return_all_conditional_losses
'Б"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ы	keras_api
Ь__call__
+Э&call_and_return_all_conditional_losses
Ю_feature_shapes
Я_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
аnon_trainable_variables
бlayers
вmetrics
 гlayer_regularization_losses
дlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
е	variables
жtrainable_variables
зregularization_losses
и	keras_api
й__call__
+к&call_and_return_all_conditional_losses
л_feature_shapes
м_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
нnon_trainable_variables
оlayers
пmetrics
 ░layer_regularization_losses
▒layer_metrics
Р	variables
Сtrainable_variables
Тregularization_losses
Ф__call__
+Х&call_and_return_all_conditional_losses
'Х"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
╕_feature_shapes
╣_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
Ъ	variables
Ыtrainable_variables
Ьregularization_losses
Ю__call__
+Я&call_and_return_all_conditional_losses
'Я"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
┐	variables
└trainable_variables
┴regularization_losses
┬	keras_api
├__call__
+─&call_and_return_all_conditional_losses
┼_feature_shapes
╞_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
д	variables
еtrainable_variables
жregularization_losses
и__call__
+й&call_and_return_all_conditional_losses
'й"call_and_return_conditional_losses"
_generic_user_object
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
╠2╔╞
╜▓╣
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkwjkwargs
defaultsЪ 

kwonlyargsЪ

jtraining%
kwonlydefaultsк

trainingp 
annotationsк *
 
 "
trackable_dict_wrapper
ч
╠	variables
═trainable_variables
╬regularization_losses
╧	keras_api
╨__call__
+╤&call_and_return_all_conditional_losses
╥_feature_shapes
╙_feature_dtypes

embeddings"
_tf_keras_layer
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
╜0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╘non_trainable_variables
╒layers
╓metrics
 ╫layer_regularization_losses
╪layer_metrics
╜	variables
╛trainable_variables
┐regularization_losses
┴__call__
+┬&call_and_return_all_conditional_losses
'┬"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
╟0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
┘non_trainable_variables
┌layers
█metrics
 ▄layer_regularization_losses
▌layer_metrics
╩	variables
╦trainable_variables
╠regularization_losses
╬__call__
+╧&call_and_return_all_conditional_losses
'╧"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
╤0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▐non_trainable_variables
▀layers
рmetrics
 сlayer_regularization_losses
тlayer_metrics
╫	variables
╪trainable_variables
┘regularization_losses
█__call__
+▄&call_and_return_all_conditional_losses
'▄"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
█0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
уnon_trainable_variables
фlayers
хmetrics
 цlayer_regularization_losses
чlayer_metrics
ф	variables
хtrainable_variables
цregularization_losses
ш__call__
+щ&call_and_return_all_conditional_losses
'щ"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
х0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
шnon_trainable_variables
щlayers
ъmetrics
 ыlayer_regularization_losses
ьlayer_metrics
ё	variables
Єtrainable_variables
єregularization_losses
ї__call__
+Ў&call_and_return_all_conditional_losses
'Ў"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
я0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
эnon_trainable_variables
юlayers
яmetrics
 Ёlayer_regularization_losses
ёlayer_metrics
■	variables
 trainable_variables
Аregularization_losses
В__call__
+Г&call_and_return_all_conditional_losses
'Г"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
∙0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Єnon_trainable_variables
єlayers
Їmetrics
 їlayer_regularization_losses
Ўlayer_metrics
Л	variables
Мtrainable_variables
Нregularization_losses
П__call__
+Р&call_and_return_all_conditional_losses
'Р"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
Г0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
ўnon_trainable_variables
°layers
∙metrics
 ·layer_regularization_losses
√layer_metrics
Ш	variables
Щtrainable_variables
Ъregularization_losses
Ь__call__
+Э&call_and_return_all_conditional_losses
'Э"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
Н0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
№non_trainable_variables
¤layers
■metrics
  layer_regularization_losses
Аlayer_metrics
е	variables
жtrainable_variables
зregularization_losses
й__call__
+к&call_and_return_all_conditional_losses
'к"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
Ч0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
б0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Жnon_trainable_variables
Зlayers
Иmetrics
 Йlayer_regularization_losses
Кlayer_metrics
┐	variables
└trainable_variables
┴regularization_losses
├__call__
+─&call_and_return_all_conditional_losses
'─"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
/
л0
51"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Лnon_trainable_variables
Мlayers
Нmetrics
 Оlayer_regularization_losses
Пlayer_metrics
╠	variables
═trainable_variables
╬regularization_losses
╨__call__
+╤&call_and_return_all_conditional_losses
'╤"call_and_return_conditional_losses"
_generic_user_object
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
и2ев
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapperн
!__inference__wrapped_model_203518З╜в╣
▒вн
ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         
к "3к0
.
output_1"К
output_1         @═
C__inference_encoder_layer_call_and_return_conditional_losses_204378Е╔в┼
╜в╣
ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         
p 
p 

 
к "%в"
К
0         @
Ъ ═
C__inference_encoder_layer_call_and_return_conditional_losses_204440Е╔в┼
╜в╣
ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         
p
p 

 
к "%в"
К
0         @
Ъ б
C__inference_encoder_layer_call_and_return_conditional_losses_204688┘ЭвЩ
СвН
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
p 
p 

 
к "%в"
К
0         @
Ъ б
C__inference_encoder_layer_call_and_return_conditional_losses_204790┘ЭвЩ
СвН
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
p
p 

 
к "%в"
К
0         @
Ъ е
(__inference_encoder_layer_call_fn_203771°╔в┼
╜в╣
ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         
p 
p 

 
к "К         @е
(__inference_encoder_layer_call_fn_204316°╔в┼
╜в╣
ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         
p
p 

 
к "К         @∙
(__inference_encoder_layer_call_fn_204538╠ЭвЩ
СвН
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
p 
p 

 
к "К         @∙
(__inference_encoder_layer_call_fn_204586╠ЭвЩ
СвН
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
p
p 

 
к "К         @Ш
J__inference_parallel_block_layer_call_and_return_conditional_losses_205048╔чву
ЕвБ
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
╪к╘
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp 

trainingp "╬в╩
┬к╛
0
user_age$К!

0/user_age         
6
user_brands'К$
0/user_brands         
>
user_categories+К(
0/user_categories         
D
user_consumption_2.К+
0/user_consumption_2         
6
user_gender'К$
0/user_gender         
<
user_geography*К'
0/user_geography         
4

user_group&К#
0/user_group         
.
user_id#К 
	0/user_id         
>
user_intentions+К(
0/user_intentions         
@
user_is_occupied,К)
0/user_is_occupied         
8
user_profile(К%
0/user_profile         
4

user_shops&К#
0/user_shops         
Ъ Ш
J__inference_parallel_block_layer_call_and_return_conditional_losses_205158╔чву
ЕвБ
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
╪к╘
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp 

trainingp"╬в╩
┬к╛
0
user_age$К!

0/user_age         
6
user_brands'К$
0/user_brands         
>
user_categories+К(
0/user_categories         
D
user_consumption_2.К+
0/user_consumption_2         
6
user_gender'К$
0/user_gender         
<
user_geography*К'
0/user_geography         
4

user_group&К#
0/user_group         
.
user_id#К 
	0/user_id         
>
user_intentions+К(
0/user_intentions         
@
user_is_occupied,К)
0/user_is_occupied         
8
user_profile(К%
0/user_profile         
4

user_shops&К#
0/user_shops         
Ъ ┘
/__inference_parallel_block_layer_call_fn_204864ечву
ЕвБ
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
╪к╘
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp 

trainingp "ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         ┘
/__inference_parallel_block_layer_call_fn_204938ечву
ЕвБ
■к·
5
user_age)К&
inputs/user_age         
;
user_brands,К)
inputs/user_brands         
C
user_categories0К-
inputs/user_categories         
I
user_consumption_23К0
inputs/user_consumption_2         
;
user_gender,К)
inputs/user_gender         
A
user_geography/К,
inputs/user_geography         
9

user_group+К(
inputs/user_group         
3
user_id(К%
inputs/user_id         
C
user_intentions0К-
inputs/user_intentions         
E
user_is_occupied1К.
inputs/user_is_occupied         
=
user_profile-К*
inputs/user_profile         
9

user_shops+К(
inputs/user_shops         
╪к╘
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp 

trainingp"ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         ■
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205237л√вў
*в'
!К
inputs         И
p 
╚к─
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp "%в"
К
0         @
Ъ ■
N__inference_sequential_block_3_layer_call_and_return_conditional_losses_205266л√вў
*в'
!К
inputs         И
p
╚к─
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp "%в"
К
0         @
Ъ ╓
3__inference_sequential_block_3_layer_call_fn_205183Ю√вў
*в'
!К
inputs         И
p 
╚к─
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp "К         @╓
3__inference_sequential_block_3_layer_call_fn_205208Ю√вў
*в'
!К
inputs         И
p
╚к─
г
featuresЦкТ
7
user_age+К(
features/user_age         
=
user_brands.К+
features/user_brands         
E
user_categories2К/
features/user_categories         
K
user_consumption_25К2
features/user_consumption_2         
=
user_gender.К+
features/user_gender         
C
user_geography1К.
features/user_geography         
;

user_group-К*
features/user_group         
5
user_id*К'
features/user_id         
E
user_intentions2К/
features/user_intentions         
G
user_is_occupied3К0
features/user_is_occupied         
?
user_profile/К,
features/user_profile         
;

user_shops-К*
features/user_shops         

targets
 

testingp "К         @й
$__inference_signature_wrapper_204490А╢в▓
в 
ккж
.
user_age"К
user_age         
4
user_brands%К"
user_brands         
<
user_categories)К&
user_categories         
B
user_consumption_2,К)
user_consumption_2         
4
user_gender%К"
user_gender         
:
user_geography(К%
user_geography         
2

user_group$К!

user_group         
,
user_id!К
user_id         
<
user_intentions)К&
user_intentions         
>
user_is_occupied*К'
user_is_occupied         
6
user_profile&К#
user_profile         
2

user_shops$К!

user_shops         "3к0
.
output_1"К
output_1         @