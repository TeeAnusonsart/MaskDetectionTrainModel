´

ðÔ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
Á
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
executor_typestring ¨
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

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.8.22unknown8¬Í

conv2d_333/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*"
shared_nameconv2d_333/kernel

%conv2d_333/kernel/Read/ReadVariableOpReadVariableOpconv2d_333/kernel*&
_output_shapes
:(*
dtype0
v
conv2d_333/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:(* 
shared_nameconv2d_333/bias
o
#conv2d_333/bias/Read/ReadVariableOpReadVariableOpconv2d_333/bias*
_output_shapes
:(*
dtype0

conv2d_334/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:( *"
shared_nameconv2d_334/kernel

%conv2d_334/kernel/Read/ReadVariableOpReadVariableOpconv2d_334/kernel*&
_output_shapes
:( *
dtype0
v
conv2d_334/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameconv2d_334/bias
o
#conv2d_334/bias/Read/ReadVariableOpReadVariableOpconv2d_334/bias*
_output_shapes
: *
dtype0

conv2d_335/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameconv2d_335/kernel

%conv2d_335/kernel/Read/ReadVariableOpReadVariableOpconv2d_335/kernel*&
_output_shapes
: *
dtype0
v
conv2d_335/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_335/bias
o
#conv2d_335/bias/Read/ReadVariableOpReadVariableOpconv2d_335/bias*
_output_shapes
:*
dtype0
}
dense_220/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ð<*!
shared_namedense_220/kernel
v
$dense_220/kernel/Read/ReadVariableOpReadVariableOpdense_220/kernel*
_output_shapes
:	Ð<*
dtype0
t
dense_220/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*
shared_namedense_220/bias
m
"dense_220/bias/Read/ReadVariableOpReadVariableOpdense_220/bias*
_output_shapes
:<*
dtype0
|
dense_221/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*!
shared_namedense_221/kernel
u
$dense_221/kernel/Read/ReadVariableOpReadVariableOpdense_221/kernel*
_output_shapes

:<*
dtype0
t
dense_221/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_221/bias
m
"dense_221/bias/Read/ReadVariableOpReadVariableOpdense_221/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/conv2d_333/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*)
shared_nameAdam/conv2d_333/kernel/m

,Adam/conv2d_333/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_333/kernel/m*&
_output_shapes
:(*
dtype0

Adam/conv2d_333/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*'
shared_nameAdam/conv2d_333/bias/m
}
*Adam/conv2d_333/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_333/bias/m*
_output_shapes
:(*
dtype0

Adam/conv2d_334/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:( *)
shared_nameAdam/conv2d_334/kernel/m

,Adam/conv2d_334/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_334/kernel/m*&
_output_shapes
:( *
dtype0

Adam/conv2d_334/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_334/bias/m
}
*Adam/conv2d_334/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_334/bias/m*
_output_shapes
: *
dtype0

Adam/conv2d_335/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_335/kernel/m

,Adam/conv2d_335/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_335/kernel/m*&
_output_shapes
: *
dtype0

Adam/conv2d_335/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_335/bias/m
}
*Adam/conv2d_335/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_335/bias/m*
_output_shapes
:*
dtype0

Adam/dense_220/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ð<*(
shared_nameAdam/dense_220/kernel/m

+Adam/dense_220/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_220/kernel/m*
_output_shapes
:	Ð<*
dtype0

Adam/dense_220/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/dense_220/bias/m
{
)Adam/dense_220/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_220/bias/m*
_output_shapes
:<*
dtype0

Adam/dense_221/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*(
shared_nameAdam/dense_221/kernel/m

+Adam/dense_221/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_221/kernel/m*
_output_shapes

:<*
dtype0

Adam/dense_221/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_221/bias/m
{
)Adam/dense_221/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_221/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_333/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*)
shared_nameAdam/conv2d_333/kernel/v

,Adam/conv2d_333/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_333/kernel/v*&
_output_shapes
:(*
dtype0

Adam/conv2d_333/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:(*'
shared_nameAdam/conv2d_333/bias/v
}
*Adam/conv2d_333/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_333/bias/v*
_output_shapes
:(*
dtype0

Adam/conv2d_334/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:( *)
shared_nameAdam/conv2d_334/kernel/v

,Adam/conv2d_334/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_334/kernel/v*&
_output_shapes
:( *
dtype0

Adam/conv2d_334/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *'
shared_nameAdam/conv2d_334/bias/v
}
*Adam/conv2d_334/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_334/bias/v*
_output_shapes
: *
dtype0

Adam/conv2d_335/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameAdam/conv2d_335/kernel/v

,Adam/conv2d_335/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_335/kernel/v*&
_output_shapes
: *
dtype0

Adam/conv2d_335/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_335/bias/v
}
*Adam/conv2d_335/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_335/bias/v*
_output_shapes
:*
dtype0

Adam/dense_220/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ð<*(
shared_nameAdam/dense_220/kernel/v

+Adam/dense_220/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_220/kernel/v*
_output_shapes
:	Ð<*
dtype0

Adam/dense_220/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:<*&
shared_nameAdam/dense_220/bias/v
{
)Adam/dense_220/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_220/bias/v*
_output_shapes
:<*
dtype0

Adam/dense_221/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:<*(
shared_nameAdam/dense_221/kernel/v

+Adam/dense_221/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_221/kernel/v*
_output_shapes

:<*
dtype0

Adam/dense_221/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_221/bias/v
{
)Adam/dense_221/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_221/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ùU
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*´U
valueªUB§U B U
Ð
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*

	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses* 
¦

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses*

*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses* 
¦

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses*

8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses* 
¥
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses* 

E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses* 
¦

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses*
¦

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses*

[iter

\beta_1

]beta_2
	^decay
_learning_ratem£m¤"m¥#m¦0m§1m¨Km©LmªSm«Tm¬v­v®"v¯#v°0v±1v²Kv³Lv´SvµTv¶*
J
0
1
"2
#3
04
15
K6
L7
S8
T9*
J
0
1
"2
#3
04
15
K6
L7
S8
T9*
* 
°
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

eserving_default* 
a[
VARIABLE_VALUEconv2d_333/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_333/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_334/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_334/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

"0
#1*

"0
#1*
* 

pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses* 
* 
* 
a[
VARIABLE_VALUEconv2d_335/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
]W
VARIABLE_VALUEconv2d_335/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

00
11*

00
11*
* 

znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses* 
* 
* 
`Z
VARIABLE_VALUEdense_220/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_220/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*
* 
* 
`Z
VARIABLE_VALUEdense_221/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_221/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

S0
T1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
J
0
1
2
3
4
5
6
7
	8

9*

0
1*
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
<

total

count
	variables
	keras_api*
M

total

count
 
_fn_kwargs
¡	variables
¢	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1*

¡	variables*
~
VARIABLE_VALUEAdam/conv2d_333/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_333/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_334/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_334/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_335/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_335/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_220/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_220/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_221/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_221/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_333/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_333/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_334/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_334/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~
VARIABLE_VALUEAdam/conv2d_335/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUEAdam/conv2d_335/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_220/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_220/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
VARIABLE_VALUEAdam/dense_221/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_221/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

 serving_default_conv2d_333_inputPlaceholder*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd*
dtype0*$
shape:ÿÿÿÿÿÿÿÿÿdd
ÿ
StatefulPartitionedCallStatefulPartitionedCall serving_default_conv2d_333_inputconv2d_333/kernelconv2d_333/biasconv2d_334/kernelconv2d_334/biasconv2d_335/kernelconv2d_335/biasdense_220/kerneldense_220/biasdense_221/kerneldense_221/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_304929
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ï
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename%conv2d_333/kernel/Read/ReadVariableOp#conv2d_333/bias/Read/ReadVariableOp%conv2d_334/kernel/Read/ReadVariableOp#conv2d_334/bias/Read/ReadVariableOp%conv2d_335/kernel/Read/ReadVariableOp#conv2d_335/bias/Read/ReadVariableOp$dense_220/kernel/Read/ReadVariableOp"dense_220/bias/Read/ReadVariableOp$dense_221/kernel/Read/ReadVariableOp"dense_221/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp,Adam/conv2d_333/kernel/m/Read/ReadVariableOp*Adam/conv2d_333/bias/m/Read/ReadVariableOp,Adam/conv2d_334/kernel/m/Read/ReadVariableOp*Adam/conv2d_334/bias/m/Read/ReadVariableOp,Adam/conv2d_335/kernel/m/Read/ReadVariableOp*Adam/conv2d_335/bias/m/Read/ReadVariableOp+Adam/dense_220/kernel/m/Read/ReadVariableOp)Adam/dense_220/bias/m/Read/ReadVariableOp+Adam/dense_221/kernel/m/Read/ReadVariableOp)Adam/dense_221/bias/m/Read/ReadVariableOp,Adam/conv2d_333/kernel/v/Read/ReadVariableOp*Adam/conv2d_333/bias/v/Read/ReadVariableOp,Adam/conv2d_334/kernel/v/Read/ReadVariableOp*Adam/conv2d_334/bias/v/Read/ReadVariableOp,Adam/conv2d_335/kernel/v/Read/ReadVariableOp*Adam/conv2d_335/bias/v/Read/ReadVariableOp+Adam/dense_220/kernel/v/Read/ReadVariableOp)Adam/dense_220/bias/v/Read/ReadVariableOp+Adam/dense_221/kernel/v/Read/ReadVariableOp)Adam/dense_221/bias/v/Read/ReadVariableOpConst*4
Tin-
+2)	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_305237
¾
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_333/kernelconv2d_333/biasconv2d_334/kernelconv2d_334/biasconv2d_335/kernelconv2d_335/biasdense_220/kerneldense_220/biasdense_221/kerneldense_221/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/conv2d_333/kernel/mAdam/conv2d_333/bias/mAdam/conv2d_334/kernel/mAdam/conv2d_334/bias/mAdam/conv2d_335/kernel/mAdam/conv2d_335/bias/mAdam/dense_220/kernel/mAdam/dense_220/bias/mAdam/dense_221/kernel/mAdam/dense_221/bias/mAdam/conv2d_333/kernel/vAdam/conv2d_333/bias/vAdam/conv2d_334/kernel/vAdam/conv2d_334/bias/vAdam/conv2d_335/kernel/vAdam/conv2d_335/bias/vAdam/dense_220/kernel/vAdam/dense_220/bias/vAdam/dense_221/kernel/vAdam/dense_221/bias/v*3
Tin,
*2(*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_305364

ÿ
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304949

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
¡+

J__inference_sequential_112_layer_call_and_return_conditional_losses_304470

inputs+
conv2d_333_304378:(
conv2d_333_304380:(+
conv2d_334_304396:( 
conv2d_334_304398: +
conv2d_335_304414: 
conv2d_335_304416:#
dense_220_304447:	Ð<
dense_220_304449:<"
dense_221_304464:<
dense_221_304466:
identity¢"conv2d_333/StatefulPartitionedCall¢"conv2d_334/StatefulPartitionedCall¢"conv2d_335/StatefulPartitionedCall¢!dense_220/StatefulPartitionedCall¢!dense_221/StatefulPartitionedCall
"conv2d_333/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_333_304378conv2d_333_304380*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304377÷
!max_pooling2d_331/PartitionedCallPartitionedCall+conv2d_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304332¤
"conv2d_334/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_331/PartitionedCall:output:0conv2d_334_304396conv2d_334_304398*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304395÷
!max_pooling2d_332/PartitionedCallPartitionedCall+conv2d_334/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304344¤
"conv2d_335/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_332/PartitionedCall:output:0conv2d_335_304414conv2d_335_304416*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_335_layer_call_and_return_conditional_losses_304413÷
!max_pooling2d_333/PartitionedCallPartitionedCall+conv2d_335/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_304356ê
dropout_110/PartitionedCallPartitionedCall*max_pooling2d_333/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_110_layer_call_and_return_conditional_losses_304425Ý
flatten_110/PartitionedCallPartitionedCall$dropout_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_110_layer_call_and_return_conditional_losses_304433
!dense_220/StatefulPartitionedCallStatefulPartitionedCall$flatten_110/PartitionedCall:output:0dense_220_304447dense_220_304449*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_220_layer_call_and_return_conditional_losses_304446
!dense_221/StatefulPartitionedCallStatefulPartitionedCall*dense_220/StatefulPartitionedCall:output:0dense_221_304464dense_221_304466*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_221_layer_call_and_return_conditional_losses_304463y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
NoOpNoOp#^conv2d_333/StatefulPartitionedCall#^conv2d_334/StatefulPartitionedCall#^conv2d_335/StatefulPartitionedCall"^dense_220/StatefulPartitionedCall"^dense_221/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 2H
"conv2d_333/StatefulPartitionedCall"conv2d_333/StatefulPartitionedCall2H
"conv2d_334/StatefulPartitionedCall"conv2d_334/StatefulPartitionedCall2H
"conv2d_335/StatefulPartitionedCall"conv2d_335/StatefulPartitionedCall2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
¼
N
2__inference_max_pooling2d_333_layer_call_fn_305014

inputs
identityÛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_304356
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
å


/__inference_sequential_112_layer_call_fn_304493
conv2d_333_input!
unknown:(
	unknown_0:(#
	unknown_1:( 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Ð<
	unknown_6:<
	unknown_7:<
	unknown_8:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallconv2d_333_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_112_layer_call_and_return_conditional_losses_304470o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
*
_user_specified_nameconv2d_333_input
¼
N
2__inference_max_pooling2d_332_layer_call_fn_304984

inputs
identityÛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304344
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304395

inputs8
conv2d_readvariableop_resource:( -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:( *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ11(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304989

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
c
G__inference_flatten_110_layer_call_and_return_conditional_losses_304433

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÐ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs
î
 
+__inference_conv2d_334_layer_call_fn_304968

inputs!
unknown:( 
	unknown_0: 
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304395w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ11(: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(
 
_user_specified_nameinputs
î
 
+__inference_conv2d_335_layer_call_fn_304998

inputs!
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_335_layer_call_and_return_conditional_losses_304413w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
µ
H
,__inference_flatten_110_layer_call_fn_305051

inputs
identity³
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_110_layer_call_and_return_conditional_losses_304433a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs
 R
¦
__inference__traced_save_305237
file_prefix0
,savev2_conv2d_333_kernel_read_readvariableop.
*savev2_conv2d_333_bias_read_readvariableop0
,savev2_conv2d_334_kernel_read_readvariableop.
*savev2_conv2d_334_bias_read_readvariableop0
,savev2_conv2d_335_kernel_read_readvariableop.
*savev2_conv2d_335_bias_read_readvariableop/
+savev2_dense_220_kernel_read_readvariableop-
)savev2_dense_220_bias_read_readvariableop/
+savev2_dense_221_kernel_read_readvariableop-
)savev2_dense_221_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop7
3savev2_adam_conv2d_333_kernel_m_read_readvariableop5
1savev2_adam_conv2d_333_bias_m_read_readvariableop7
3savev2_adam_conv2d_334_kernel_m_read_readvariableop5
1savev2_adam_conv2d_334_bias_m_read_readvariableop7
3savev2_adam_conv2d_335_kernel_m_read_readvariableop5
1savev2_adam_conv2d_335_bias_m_read_readvariableop6
2savev2_adam_dense_220_kernel_m_read_readvariableop4
0savev2_adam_dense_220_bias_m_read_readvariableop6
2savev2_adam_dense_221_kernel_m_read_readvariableop4
0savev2_adam_dense_221_bias_m_read_readvariableop7
3savev2_adam_conv2d_333_kernel_v_read_readvariableop5
1savev2_adam_conv2d_333_bias_v_read_readvariableop7
3savev2_adam_conv2d_334_kernel_v_read_readvariableop5
1savev2_adam_conv2d_334_bias_v_read_readvariableop7
3savev2_adam_conv2d_335_kernel_v_read_readvariableop5
1savev2_adam_conv2d_335_bias_v_read_readvariableop6
2savev2_adam_dense_220_kernel_v_read_readvariableop4
0savev2_adam_dense_220_bias_v_read_readvariableop6
2savev2_adam_dense_221_kernel_v_read_readvariableop4
0savev2_adam_dense_221_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: é
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH½
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B õ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0,savev2_conv2d_333_kernel_read_readvariableop*savev2_conv2d_333_bias_read_readvariableop,savev2_conv2d_334_kernel_read_readvariableop*savev2_conv2d_334_bias_read_readvariableop,savev2_conv2d_335_kernel_read_readvariableop*savev2_conv2d_335_bias_read_readvariableop+savev2_dense_220_kernel_read_readvariableop)savev2_dense_220_bias_read_readvariableop+savev2_dense_221_kernel_read_readvariableop)savev2_dense_221_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop3savev2_adam_conv2d_333_kernel_m_read_readvariableop1savev2_adam_conv2d_333_bias_m_read_readvariableop3savev2_adam_conv2d_334_kernel_m_read_readvariableop1savev2_adam_conv2d_334_bias_m_read_readvariableop3savev2_adam_conv2d_335_kernel_m_read_readvariableop1savev2_adam_conv2d_335_bias_m_read_readvariableop2savev2_adam_dense_220_kernel_m_read_readvariableop0savev2_adam_dense_220_bias_m_read_readvariableop2savev2_adam_dense_221_kernel_m_read_readvariableop0savev2_adam_dense_221_bias_m_read_readvariableop3savev2_adam_conv2d_333_kernel_v_read_readvariableop1savev2_adam_conv2d_333_bias_v_read_readvariableop3savev2_adam_conv2d_334_kernel_v_read_readvariableop1savev2_adam_conv2d_334_bias_v_read_readvariableop3savev2_adam_conv2d_335_kernel_v_read_readvariableop1savev2_adam_conv2d_335_bias_v_read_readvariableop2savev2_adam_dense_220_kernel_v_read_readvariableop0savev2_adam_dense_220_bias_v_read_readvariableop2savev2_adam_dense_221_kernel_v_read_readvariableop0savev2_adam_dense_221_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *6
dtypes,
*2(	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*æ
_input_shapesÔ
Ñ: :(:(:( : : ::	Ð<:<:<:: : : : : : : : : :(:(:( : : ::	Ð<:<:<::(:(:( : : ::	Ð<:<:<:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:(: 

_output_shapes
:(:,(
&
_output_shapes
:( : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::%!

_output_shapes
:	Ð<: 

_output_shapes
:<:$	 

_output_shapes

:<: 


_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:(: 

_output_shapes
:(:,(
&
_output_shapes
:( : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::%!

_output_shapes
:	Ð<: 

_output_shapes
:<:$ 

_output_shapes

:<: 

_output_shapes
::,(
&
_output_shapes
:(: 

_output_shapes
:(:, (
&
_output_shapes
:( : !

_output_shapes
: :,"(
&
_output_shapes
: : #

_output_shapes
::%$!

_output_shapes
:	Ð<: %

_output_shapes
:<:$& 

_output_shapes

:<: '

_output_shapes
::(

_output_shapes
: 
ï,
Ã
J__inference_sequential_112_layer_call_and_return_conditional_losses_304749
conv2d_333_input+
conv2d_333_304718:(
conv2d_333_304720:(+
conv2d_334_304724:( 
conv2d_334_304726: +
conv2d_335_304730: 
conv2d_335_304732:#
dense_220_304738:	Ð<
dense_220_304740:<"
dense_221_304743:<
dense_221_304745:
identity¢"conv2d_333/StatefulPartitionedCall¢"conv2d_334/StatefulPartitionedCall¢"conv2d_335/StatefulPartitionedCall¢!dense_220/StatefulPartitionedCall¢!dense_221/StatefulPartitionedCall¢#dropout_110/StatefulPartitionedCall
"conv2d_333/StatefulPartitionedCallStatefulPartitionedCallconv2d_333_inputconv2d_333_304718conv2d_333_304720*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304377÷
!max_pooling2d_331/PartitionedCallPartitionedCall+conv2d_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304332¤
"conv2d_334/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_331/PartitionedCall:output:0conv2d_334_304724conv2d_334_304726*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304395÷
!max_pooling2d_332/PartitionedCallPartitionedCall+conv2d_334/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304344¤
"conv2d_335/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_332/PartitionedCall:output:0conv2d_335_304730conv2d_335_304732*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_335_layer_call_and_return_conditional_losses_304413÷
!max_pooling2d_333/PartitionedCallPartitionedCall+conv2d_335/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_304356ú
#dropout_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_333/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_110_layer_call_and_return_conditional_losses_304539å
flatten_110/PartitionedCallPartitionedCall,dropout_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_110_layer_call_and_return_conditional_losses_304433
!dense_220/StatefulPartitionedCallStatefulPartitionedCall$flatten_110/PartitionedCall:output:0dense_220_304738dense_220_304740*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_220_layer_call_and_return_conditional_losses_304446
!dense_221/StatefulPartitionedCallStatefulPartitionedCall*dense_220/StatefulPartitionedCall:output:0dense_221_304743dense_221_304745*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_221_layer_call_and_return_conditional_losses_304463y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
NoOpNoOp#^conv2d_333/StatefulPartitionedCall#^conv2d_334/StatefulPartitionedCall#^conv2d_335/StatefulPartitionedCall"^dense_220/StatefulPartitionedCall"^dense_221/StatefulPartitionedCall$^dropout_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 2H
"conv2d_333/StatefulPartitionedCall"conv2d_333/StatefulPartitionedCall2H
"conv2d_334/StatefulPartitionedCall"conv2d_334/StatefulPartitionedCall2H
"conv2d_335/StatefulPartitionedCall"conv2d_335/StatefulPartitionedCall2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall2J
#dropout_110/StatefulPartitionedCall#dropout_110/StatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
*
_user_specified_nameconv2d_333_input
±


$__inference_signature_wrapper_304929
conv2d_333_input!
unknown:(
	unknown_0:(#
	unknown_1:( 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Ð<
	unknown_6:<
	unknown_7:<
	unknown_8:
identity¢StatefulPartitionedCall¨
StatefulPartitionedCallStatefulPartitionedCallconv2d_333_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_304323o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
*
_user_specified_nameconv2d_333_input
î
 
+__inference_conv2d_333_layer_call_fn_304938

inputs!
unknown:(
	unknown_0:(
identity¢StatefulPartitionedCallã
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304377w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
ª7
°
J__inference_sequential_112_layer_call_and_return_conditional_losses_304850

inputsC
)conv2d_333_conv2d_readvariableop_resource:(8
*conv2d_333_biasadd_readvariableop_resource:(C
)conv2d_334_conv2d_readvariableop_resource:( 8
*conv2d_334_biasadd_readvariableop_resource: C
)conv2d_335_conv2d_readvariableop_resource: 8
*conv2d_335_biasadd_readvariableop_resource:;
(dense_220_matmul_readvariableop_resource:	Ð<7
)dense_220_biasadd_readvariableop_resource:<:
(dense_221_matmul_readvariableop_resource:<7
)dense_221_biasadd_readvariableop_resource:
identity¢!conv2d_333/BiasAdd/ReadVariableOp¢ conv2d_333/Conv2D/ReadVariableOp¢!conv2d_334/BiasAdd/ReadVariableOp¢ conv2d_334/Conv2D/ReadVariableOp¢!conv2d_335/BiasAdd/ReadVariableOp¢ conv2d_335/Conv2D/ReadVariableOp¢ dense_220/BiasAdd/ReadVariableOp¢dense_220/MatMul/ReadVariableOp¢ dense_221/BiasAdd/ReadVariableOp¢dense_221/MatMul/ReadVariableOp
 conv2d_333/Conv2D/ReadVariableOpReadVariableOp)conv2d_333_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0°
conv2d_333/Conv2DConv2Dinputs(conv2d_333/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*
paddingVALID*
strides

!conv2d_333/BiasAdd/ReadVariableOpReadVariableOp*conv2d_333_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
conv2d_333/BiasAddBiasAddconv2d_333/Conv2D:output:0)conv2d_333/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(n
conv2d_333/ReluReluconv2d_333/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(°
max_pooling2d_331/MaxPoolMaxPoolconv2d_333/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(*
ksize
*
paddingVALID*
strides

 conv2d_334/Conv2D/ReadVariableOpReadVariableOp)conv2d_334_conv2d_readvariableop_resource*&
_output_shapes
:( *
dtype0Ì
conv2d_334/Conv2DConv2D"max_pooling2d_331/MaxPool:output:0(conv2d_334/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *
paddingVALID*
strides

!conv2d_334/BiasAdd/ReadVariableOpReadVariableOp*conv2d_334_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_334/BiasAddBiasAddconv2d_334/Conv2D:output:0)conv2d_334/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// n
conv2d_334/ReluReluconv2d_334/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// °
max_pooling2d_332/MaxPoolMaxPoolconv2d_334/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides

 conv2d_335/Conv2D/ReadVariableOpReadVariableOp)conv2d_335_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ì
conv2d_335/Conv2DConv2D"max_pooling2d_332/MaxPool:output:0(conv2d_335/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

!conv2d_335/BiasAdd/ReadVariableOpReadVariableOp*conv2d_335_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_335/BiasAddBiasAddconv2d_335/Conv2D:output:0)conv2d_335/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
conv2d_335/ReluReluconv2d_335/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
max_pooling2d_333/MaxPoolMaxPoolconv2d_335/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*
ksize
*
paddingVALID*
strides
~
dropout_110/IdentityIdentity"max_pooling2d_333/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

b
flatten_110/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÐ  
flatten_110/ReshapeReshapedropout_110/Identity:output:0flatten_110/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
dense_220/MatMul/ReadVariableOpReadVariableOp(dense_220_matmul_readvariableop_resource*
_output_shapes
:	Ð<*
dtype0
dense_220/MatMulMatMulflatten_110/Reshape:output:0'dense_220/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 dense_220/BiasAdd/ReadVariableOpReadVariableOp)dense_220_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
dense_220/BiasAddBiasAdddense_220/MatMul:product:0(dense_220/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<d
dense_220/ReluReludense_220/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
dense_221/MatMul/ReadVariableOpReadVariableOp(dense_221_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0
dense_221/MatMulMatMuldense_220/Relu:activations:0'dense_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_221/BiasAdd/ReadVariableOpReadVariableOp)dense_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_221/BiasAddBiasAdddense_221/MatMul:product:0(dense_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_221/SigmoidSigmoiddense_221/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_221/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp"^conv2d_333/BiasAdd/ReadVariableOp!^conv2d_333/Conv2D/ReadVariableOp"^conv2d_334/BiasAdd/ReadVariableOp!^conv2d_334/Conv2D/ReadVariableOp"^conv2d_335/BiasAdd/ReadVariableOp!^conv2d_335/Conv2D/ReadVariableOp!^dense_220/BiasAdd/ReadVariableOp ^dense_220/MatMul/ReadVariableOp!^dense_221/BiasAdd/ReadVariableOp ^dense_221/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 2F
!conv2d_333/BiasAdd/ReadVariableOp!conv2d_333/BiasAdd/ReadVariableOp2D
 conv2d_333/Conv2D/ReadVariableOp conv2d_333/Conv2D/ReadVariableOp2F
!conv2d_334/BiasAdd/ReadVariableOp!conv2d_334/BiasAdd/ReadVariableOp2D
 conv2d_334/Conv2D/ReadVariableOp conv2d_334/Conv2D/ReadVariableOp2F
!conv2d_335/BiasAdd/ReadVariableOp!conv2d_335/BiasAdd/ReadVariableOp2D
 conv2d_335/Conv2D/ReadVariableOp conv2d_335/Conv2D/ReadVariableOp2D
 dense_220/BiasAdd/ReadVariableOp dense_220/BiasAdd/ReadVariableOp2B
dense_220/MatMul/ReadVariableOpdense_220/MatMul/ReadVariableOp2D
 dense_221/BiasAdd/ReadVariableOp dense_221/BiasAdd/ReadVariableOp2B
dense_221/MatMul/ReadVariableOpdense_221/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs


ö
E__inference_dense_221_layer_call_and_return_conditional_losses_305097

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs
Ç


/__inference_sequential_112_layer_call_fn_304805

inputs!
unknown:(
	unknown_0:(#
	unknown_1:( 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Ð<
	unknown_6:<
	unknown_7:<
	unknown_8:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_112_layer_call_and_return_conditional_losses_304633o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
Ã
H
,__inference_dropout_110_layer_call_fn_305024

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_110_layer_call_and_return_conditional_losses_304425h
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs
ò

"__inference__traced_restore_305364
file_prefix<
"assignvariableop_conv2d_333_kernel:(0
"assignvariableop_1_conv2d_333_bias:(>
$assignvariableop_2_conv2d_334_kernel:( 0
"assignvariableop_3_conv2d_334_bias: >
$assignvariableop_4_conv2d_335_kernel: 0
"assignvariableop_5_conv2d_335_bias:6
#assignvariableop_6_dense_220_kernel:	Ð</
!assignvariableop_7_dense_220_bias:<5
#assignvariableop_8_dense_221_kernel:</
!assignvariableop_9_dense_221_bias:'
assignvariableop_10_adam_iter:	 )
assignvariableop_11_adam_beta_1: )
assignvariableop_12_adam_beta_2: (
assignvariableop_13_adam_decay: 0
&assignvariableop_14_adam_learning_rate: #
assignvariableop_15_total: #
assignvariableop_16_count: %
assignvariableop_17_total_1: %
assignvariableop_18_count_1: F
,assignvariableop_19_adam_conv2d_333_kernel_m:(8
*assignvariableop_20_adam_conv2d_333_bias_m:(F
,assignvariableop_21_adam_conv2d_334_kernel_m:( 8
*assignvariableop_22_adam_conv2d_334_bias_m: F
,assignvariableop_23_adam_conv2d_335_kernel_m: 8
*assignvariableop_24_adam_conv2d_335_bias_m:>
+assignvariableop_25_adam_dense_220_kernel_m:	Ð<7
)assignvariableop_26_adam_dense_220_bias_m:<=
+assignvariableop_27_adam_dense_221_kernel_m:<7
)assignvariableop_28_adam_dense_221_bias_m:F
,assignvariableop_29_adam_conv2d_333_kernel_v:(8
*assignvariableop_30_adam_conv2d_333_bias_v:(F
,assignvariableop_31_adam_conv2d_334_kernel_v:( 8
*assignvariableop_32_adam_conv2d_334_bias_v: F
,assignvariableop_33_adam_conv2d_335_kernel_v: 8
*assignvariableop_34_adam_conv2d_335_bias_v:>
+assignvariableop_35_adam_dense_220_kernel_v:	Ð<7
)assignvariableop_36_adam_dense_220_bias_v:<=
+assignvariableop_37_adam_dense_221_kernel_v:<7
)assignvariableop_38_adam_dense_221_bias_v:
identity_40¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ì
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*
valueB(B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÀ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:(*
dtype0*c
valueZBX(B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B é
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*¶
_output_shapes£
 ::::::::::::::::::::::::::::::::::::::::*6
dtypes,
*2(	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp"assignvariableop_conv2d_333_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp"assignvariableop_1_conv2d_333_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp$assignvariableop_2_conv2d_334_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp"assignvariableop_3_conv2d_334_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp$assignvariableop_4_conv2d_335_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp"assignvariableop_5_conv2d_335_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_220_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_220_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_221_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_221_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_iterIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_beta_1Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_2Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_decayIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp&assignvariableop_14_adam_learning_rateIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_totalIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOpassignvariableop_16_countIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOpassignvariableop_17_total_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOpassignvariableop_18_count_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp,assignvariableop_19_adam_conv2d_333_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOp*assignvariableop_20_adam_conv2d_333_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOp,assignvariableop_21_adam_conv2d_334_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_conv2d_334_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp,assignvariableop_23_adam_conv2d_335_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp*assignvariableop_24_adam_conv2d_335_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp+assignvariableop_25_adam_dense_220_kernel_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_220_bias_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp+assignvariableop_27_adam_dense_221_kernel_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_221_bias_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp,assignvariableop_29_adam_conv2d_333_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_conv2d_333_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_31AssignVariableOp,assignvariableop_31_adam_conv2d_334_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_conv2d_334_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_33AssignVariableOp,assignvariableop_33_adam_conv2d_335_kernel_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_conv2d_335_bias_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_220_kernel_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_220_bias_vIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_221_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_221_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ©
Identity_39Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_40IdentityIdentity_39:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_40Identity_40:output:0*c
_input_shapesR
P: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382(
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


ö
E__inference_dense_221_layer_call_and_return_conditional_losses_304463

inputs0
matmul_readvariableop_resource:<-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_304356

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ËE
½

!__inference__wrapped_model_304323
conv2d_333_inputR
8sequential_112_conv2d_333_conv2d_readvariableop_resource:(G
9sequential_112_conv2d_333_biasadd_readvariableop_resource:(R
8sequential_112_conv2d_334_conv2d_readvariableop_resource:( G
9sequential_112_conv2d_334_biasadd_readvariableop_resource: R
8sequential_112_conv2d_335_conv2d_readvariableop_resource: G
9sequential_112_conv2d_335_biasadd_readvariableop_resource:J
7sequential_112_dense_220_matmul_readvariableop_resource:	Ð<F
8sequential_112_dense_220_biasadd_readvariableop_resource:<I
7sequential_112_dense_221_matmul_readvariableop_resource:<F
8sequential_112_dense_221_biasadd_readvariableop_resource:
identity¢0sequential_112/conv2d_333/BiasAdd/ReadVariableOp¢/sequential_112/conv2d_333/Conv2D/ReadVariableOp¢0sequential_112/conv2d_334/BiasAdd/ReadVariableOp¢/sequential_112/conv2d_334/Conv2D/ReadVariableOp¢0sequential_112/conv2d_335/BiasAdd/ReadVariableOp¢/sequential_112/conv2d_335/Conv2D/ReadVariableOp¢/sequential_112/dense_220/BiasAdd/ReadVariableOp¢.sequential_112/dense_220/MatMul/ReadVariableOp¢/sequential_112/dense_221/BiasAdd/ReadVariableOp¢.sequential_112/dense_221/MatMul/ReadVariableOp°
/sequential_112/conv2d_333/Conv2D/ReadVariableOpReadVariableOp8sequential_112_conv2d_333_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0Ø
 sequential_112/conv2d_333/Conv2DConv2Dconv2d_333_input7sequential_112/conv2d_333/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*
paddingVALID*
strides
¦
0sequential_112/conv2d_333/BiasAdd/ReadVariableOpReadVariableOp9sequential_112_conv2d_333_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0Ë
!sequential_112/conv2d_333/BiasAddBiasAdd)sequential_112/conv2d_333/Conv2D:output:08sequential_112/conv2d_333/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(
sequential_112/conv2d_333/ReluRelu*sequential_112/conv2d_333/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(Î
(sequential_112/max_pooling2d_331/MaxPoolMaxPool,sequential_112/conv2d_333/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(*
ksize
*
paddingVALID*
strides
°
/sequential_112/conv2d_334/Conv2D/ReadVariableOpReadVariableOp8sequential_112_conv2d_334_conv2d_readvariableop_resource*&
_output_shapes
:( *
dtype0ù
 sequential_112/conv2d_334/Conv2DConv2D1sequential_112/max_pooling2d_331/MaxPool:output:07sequential_112/conv2d_334/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *
paddingVALID*
strides
¦
0sequential_112/conv2d_334/BiasAdd/ReadVariableOpReadVariableOp9sequential_112_conv2d_334_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0Ë
!sequential_112/conv2d_334/BiasAddBiasAdd)sequential_112/conv2d_334/Conv2D:output:08sequential_112/conv2d_334/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// 
sequential_112/conv2d_334/ReluRelu*sequential_112/conv2d_334/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// Î
(sequential_112/max_pooling2d_332/MaxPoolMaxPool,sequential_112/conv2d_334/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
°
/sequential_112/conv2d_335/Conv2D/ReadVariableOpReadVariableOp8sequential_112_conv2d_335_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ù
 sequential_112/conv2d_335/Conv2DConv2D1sequential_112/max_pooling2d_332/MaxPool:output:07sequential_112/conv2d_335/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
¦
0sequential_112/conv2d_335/BiasAdd/ReadVariableOpReadVariableOp9sequential_112_conv2d_335_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Ë
!sequential_112/conv2d_335/BiasAddBiasAdd)sequential_112/conv2d_335/Conv2D:output:08sequential_112/conv2d_335/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential_112/conv2d_335/ReluRelu*sequential_112/conv2d_335/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿÎ
(sequential_112/max_pooling2d_333/MaxPoolMaxPool,sequential_112/conv2d_335/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*
ksize
*
paddingVALID*
strides

#sequential_112/dropout_110/IdentityIdentity1sequential_112/max_pooling2d_333/MaxPool:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

q
 sequential_112/flatten_110/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÐ  ¹
"sequential_112/flatten_110/ReshapeReshape,sequential_112/dropout_110/Identity:output:0)sequential_112/flatten_110/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ§
.sequential_112/dense_220/MatMul/ReadVariableOpReadVariableOp7sequential_112_dense_220_matmul_readvariableop_resource*
_output_shapes
:	Ð<*
dtype0À
sequential_112/dense_220/MatMulMatMul+sequential_112/flatten_110/Reshape:output:06sequential_112/dense_220/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¤
/sequential_112/dense_220/BiasAdd/ReadVariableOpReadVariableOp8sequential_112_dense_220_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0Á
 sequential_112/dense_220/BiasAddBiasAdd)sequential_112/dense_220/MatMul:product:07sequential_112/dense_220/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
sequential_112/dense_220/ReluRelu)sequential_112/dense_220/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<¦
.sequential_112/dense_221/MatMul/ReadVariableOpReadVariableOp7sequential_112_dense_221_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0À
sequential_112/dense_221/MatMulMatMul+sequential_112/dense_220/Relu:activations:06sequential_112/dense_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
/sequential_112/dense_221/BiasAdd/ReadVariableOpReadVariableOp8sequential_112_dense_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Á
 sequential_112/dense_221/BiasAddBiasAdd)sequential_112/dense_221/MatMul:product:07sequential_112/dense_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 sequential_112/dense_221/SigmoidSigmoid)sequential_112/dense_221/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$sequential_112/dense_221/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
NoOpNoOp1^sequential_112/conv2d_333/BiasAdd/ReadVariableOp0^sequential_112/conv2d_333/Conv2D/ReadVariableOp1^sequential_112/conv2d_334/BiasAdd/ReadVariableOp0^sequential_112/conv2d_334/Conv2D/ReadVariableOp1^sequential_112/conv2d_335/BiasAdd/ReadVariableOp0^sequential_112/conv2d_335/Conv2D/ReadVariableOp0^sequential_112/dense_220/BiasAdd/ReadVariableOp/^sequential_112/dense_220/MatMul/ReadVariableOp0^sequential_112/dense_221/BiasAdd/ReadVariableOp/^sequential_112/dense_221/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 2d
0sequential_112/conv2d_333/BiasAdd/ReadVariableOp0sequential_112/conv2d_333/BiasAdd/ReadVariableOp2b
/sequential_112/conv2d_333/Conv2D/ReadVariableOp/sequential_112/conv2d_333/Conv2D/ReadVariableOp2d
0sequential_112/conv2d_334/BiasAdd/ReadVariableOp0sequential_112/conv2d_334/BiasAdd/ReadVariableOp2b
/sequential_112/conv2d_334/Conv2D/ReadVariableOp/sequential_112/conv2d_334/Conv2D/ReadVariableOp2d
0sequential_112/conv2d_335/BiasAdd/ReadVariableOp0sequential_112/conv2d_335/BiasAdd/ReadVariableOp2b
/sequential_112/conv2d_335/Conv2D/ReadVariableOp/sequential_112/conv2d_335/Conv2D/ReadVariableOp2b
/sequential_112/dense_220/BiasAdd/ReadVariableOp/sequential_112/dense_220/BiasAdd/ReadVariableOp2`
.sequential_112/dense_220/MatMul/ReadVariableOp.sequential_112/dense_220/MatMul/ReadVariableOp2b
/sequential_112/dense_221/BiasAdd/ReadVariableOp/sequential_112/dense_221/BiasAdd/ReadVariableOp2`
.sequential_112/dense_221/MatMul/ReadVariableOp.sequential_112/dense_221/MatMul/ReadVariableOp:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
*
_user_specified_nameconv2d_333_input

ÿ
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304377

inputs8
conv2d_readvariableop_resource:(-
biasadd_readvariableop_resource:(
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:(*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿdd: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
ú
e
G__inference_dropout_110_layer_call_and_return_conditional_losses_304425

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs

i
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304332

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±?
°
J__inference_sequential_112_layer_call_and_return_conditional_losses_304902

inputsC
)conv2d_333_conv2d_readvariableop_resource:(8
*conv2d_333_biasadd_readvariableop_resource:(C
)conv2d_334_conv2d_readvariableop_resource:( 8
*conv2d_334_biasadd_readvariableop_resource: C
)conv2d_335_conv2d_readvariableop_resource: 8
*conv2d_335_biasadd_readvariableop_resource:;
(dense_220_matmul_readvariableop_resource:	Ð<7
)dense_220_biasadd_readvariableop_resource:<:
(dense_221_matmul_readvariableop_resource:<7
)dense_221_biasadd_readvariableop_resource:
identity¢!conv2d_333/BiasAdd/ReadVariableOp¢ conv2d_333/Conv2D/ReadVariableOp¢!conv2d_334/BiasAdd/ReadVariableOp¢ conv2d_334/Conv2D/ReadVariableOp¢!conv2d_335/BiasAdd/ReadVariableOp¢ conv2d_335/Conv2D/ReadVariableOp¢ dense_220/BiasAdd/ReadVariableOp¢dense_220/MatMul/ReadVariableOp¢ dense_221/BiasAdd/ReadVariableOp¢dense_221/MatMul/ReadVariableOp
 conv2d_333/Conv2D/ReadVariableOpReadVariableOp)conv2d_333_conv2d_readvariableop_resource*&
_output_shapes
:(*
dtype0°
conv2d_333/Conv2DConv2Dinputs(conv2d_333/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*
paddingVALID*
strides

!conv2d_333/BiasAdd/ReadVariableOpReadVariableOp*conv2d_333_biasadd_readvariableop_resource*
_output_shapes
:(*
dtype0
conv2d_333/BiasAddBiasAddconv2d_333/Conv2D:output:0)conv2d_333/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(n
conv2d_333/ReluReluconv2d_333/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(°
max_pooling2d_331/MaxPoolMaxPoolconv2d_333/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(*
ksize
*
paddingVALID*
strides

 conv2d_334/Conv2D/ReadVariableOpReadVariableOp)conv2d_334_conv2d_readvariableop_resource*&
_output_shapes
:( *
dtype0Ì
conv2d_334/Conv2DConv2D"max_pooling2d_331/MaxPool:output:0(conv2d_334/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *
paddingVALID*
strides

!conv2d_334/BiasAdd/ReadVariableOpReadVariableOp*conv2d_334_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_334/BiasAddBiasAddconv2d_334/Conv2D:output:0)conv2d_334/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// n
conv2d_334/ReluReluconv2d_334/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// °
max_pooling2d_332/MaxPoolMaxPoolconv2d_334/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides

 conv2d_335/Conv2D/ReadVariableOpReadVariableOp)conv2d_335_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ì
conv2d_335/Conv2DConv2D"max_pooling2d_332/MaxPool:output:0(conv2d_335/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides

!conv2d_335/BiasAdd/ReadVariableOpReadVariableOp*conv2d_335_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
conv2d_335/BiasAddBiasAddconv2d_335/Conv2D:output:0)conv2d_335/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
conv2d_335/ReluReluconv2d_335/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
max_pooling2d_333/MaxPoolMaxPoolconv2d_335/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*
ksize
*
paddingVALID*
strides
^
dropout_110/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª? 
dropout_110/dropout/MulMul"max_pooling2d_333/MaxPool:output:0"dropout_110/dropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

k
dropout_110/dropout/ShapeShape"max_pooling2d_333/MaxPool:output:0*
T0*
_output_shapes
:¬
0dropout_110/dropout/random_uniform/RandomUniformRandomUniform"dropout_110/dropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*
dtype0g
"dropout_110/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >Ò
 dropout_110/dropout/GreaterEqualGreaterEqual9dropout_110/dropout/random_uniform/RandomUniform:output:0+dropout_110/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


dropout_110/dropout/CastCast$dropout_110/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


dropout_110/dropout/Mul_1Muldropout_110/dropout/Mul:z:0dropout_110/dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

b
flatten_110/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÐ  
flatten_110/ReshapeReshapedropout_110/dropout/Mul_1:z:0flatten_110/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
dense_220/MatMul/ReadVariableOpReadVariableOp(dense_220_matmul_readvariableop_resource*
_output_shapes
:	Ð<*
dtype0
dense_220/MatMulMatMulflatten_110/Reshape:output:0'dense_220/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 dense_220/BiasAdd/ReadVariableOpReadVariableOp)dense_220_biasadd_readvariableop_resource*
_output_shapes
:<*
dtype0
dense_220/BiasAddBiasAdddense_220/MatMul:product:0(dense_220/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<d
dense_220/ReluReludense_220/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
dense_221/MatMul/ReadVariableOpReadVariableOp(dense_221_matmul_readvariableop_resource*
_output_shapes

:<*
dtype0
dense_221/MatMulMatMuldense_220/Relu:activations:0'dense_221/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 dense_221/BiasAdd/ReadVariableOpReadVariableOp)dense_221_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_221/BiasAddBiasAdddense_221/MatMul:product:0(dense_221/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dense_221/SigmoidSigmoiddense_221/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
IdentityIdentitydense_221/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp"^conv2d_333/BiasAdd/ReadVariableOp!^conv2d_333/Conv2D/ReadVariableOp"^conv2d_334/BiasAdd/ReadVariableOp!^conv2d_334/Conv2D/ReadVariableOp"^conv2d_335/BiasAdd/ReadVariableOp!^conv2d_335/Conv2D/ReadVariableOp!^dense_220/BiasAdd/ReadVariableOp ^dense_220/MatMul/ReadVariableOp!^dense_221/BiasAdd/ReadVariableOp ^dense_221/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 2F
!conv2d_333/BiasAdd/ReadVariableOp!conv2d_333/BiasAdd/ReadVariableOp2D
 conv2d_333/Conv2D/ReadVariableOp conv2d_333/Conv2D/ReadVariableOp2F
!conv2d_334/BiasAdd/ReadVariableOp!conv2d_334/BiasAdd/ReadVariableOp2D
 conv2d_334/Conv2D/ReadVariableOp conv2d_334/Conv2D/ReadVariableOp2F
!conv2d_335/BiasAdd/ReadVariableOp!conv2d_335/BiasAdd/ReadVariableOp2D
 conv2d_335/Conv2D/ReadVariableOp conv2d_335/Conv2D/ReadVariableOp2D
 dense_220/BiasAdd/ReadVariableOp dense_220/BiasAdd/ReadVariableOp2B
dense_220/MatMul/ReadVariableOpdense_220/MatMul/ReadVariableOp2D
 dense_221/BiasAdd/ReadVariableOp dense_221/BiasAdd/ReadVariableOp2B
dense_221/MatMul/ReadVariableOpdense_221/MatMul/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
Ä

*__inference_dense_221_layer_call_fn_305086

inputs
unknown:<
	unknown_0:
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_221_layer_call_and_return_conditional_losses_304463o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ<: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_335_layer_call_and_return_conditional_losses_304413

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304979

inputs8
conv2d_readvariableop_resource:( -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:( *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ11(: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(
 
_user_specified_nameinputs
Ç


/__inference_sequential_112_layer_call_fn_304780

inputs!
unknown:(
	unknown_0:(#
	unknown_1:( 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Ð<
	unknown_6:<
	unknown_7:<
	unknown_8:
identity¢StatefulPartitionedCallÇ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_112_layer_call_and_return_conditional_losses_304470o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs

ÿ
F__inference_conv2d_335_layer_call_and_return_conditional_losses_305009

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿX
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
É
c
G__inference_flatten_110_layer_call_and_return_conditional_losses_305057

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÐ  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐY
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs

i
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_305019

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
e
G__inference_dropout_110_layer_call_and_return_conditional_losses_305034

inputs

identity_1V
IdentityIdentityinputs*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

c

Identity_1IdentityIdentity:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs
 

÷
E__inference_dense_220_layer_call_and_return_conditional_losses_305077

inputs1
matmul_readvariableop_resource:	Ð<-
biasadd_readvariableop_resource:<
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ð<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÐ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
 
_user_specified_nameinputs

i
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304344

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¿+

J__inference_sequential_112_layer_call_and_return_conditional_losses_304715
conv2d_333_input+
conv2d_333_304684:(
conv2d_333_304686:(+
conv2d_334_304690:( 
conv2d_334_304692: +
conv2d_335_304696: 
conv2d_335_304698:#
dense_220_304704:	Ð<
dense_220_304706:<"
dense_221_304709:<
dense_221_304711:
identity¢"conv2d_333/StatefulPartitionedCall¢"conv2d_334/StatefulPartitionedCall¢"conv2d_335/StatefulPartitionedCall¢!dense_220/StatefulPartitionedCall¢!dense_221/StatefulPartitionedCall
"conv2d_333/StatefulPartitionedCallStatefulPartitionedCallconv2d_333_inputconv2d_333_304684conv2d_333_304686*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304377÷
!max_pooling2d_331/PartitionedCallPartitionedCall+conv2d_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304332¤
"conv2d_334/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_331/PartitionedCall:output:0conv2d_334_304690conv2d_334_304692*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304395÷
!max_pooling2d_332/PartitionedCallPartitionedCall+conv2d_334/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304344¤
"conv2d_335/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_332/PartitionedCall:output:0conv2d_335_304696conv2d_335_304698*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_335_layer_call_and_return_conditional_losses_304413÷
!max_pooling2d_333/PartitionedCallPartitionedCall+conv2d_335/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_304356ê
dropout_110/PartitionedCallPartitionedCall*max_pooling2d_333/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_110_layer_call_and_return_conditional_losses_304425Ý
flatten_110/PartitionedCallPartitionedCall$dropout_110/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_110_layer_call_and_return_conditional_losses_304433
!dense_220/StatefulPartitionedCallStatefulPartitionedCall$flatten_110/PartitionedCall:output:0dense_220_304704dense_220_304706*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_220_layer_call_and_return_conditional_losses_304446
!dense_221/StatefulPartitionedCallStatefulPartitionedCall*dense_220/StatefulPartitionedCall:output:0dense_221_304709dense_221_304711*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_221_layer_call_and_return_conditional_losses_304463y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿý
NoOpNoOp#^conv2d_333/StatefulPartitionedCall#^conv2d_334/StatefulPartitionedCall#^conv2d_335/StatefulPartitionedCall"^dense_220/StatefulPartitionedCall"^dense_221/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 2H
"conv2d_333/StatefulPartitionedCall"conv2d_333/StatefulPartitionedCall2H
"conv2d_334/StatefulPartitionedCall"conv2d_334/StatefulPartitionedCall2H
"conv2d_335/StatefulPartitionedCall"conv2d_335/StatefulPartitionedCall2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
*
_user_specified_nameconv2d_333_input
µ

f
G__inference_dropout_110_layer_call_and_return_conditional_losses_305046

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs

e
,__inference_dropout_110_layer_call_fn_305029

inputs
identity¢StatefulPartitionedCallÊ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_110_layer_call_and_return_conditional_losses_304539w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs
å


/__inference_sequential_112_layer_call_fn_304681
conv2d_333_input!
unknown:(
	unknown_0:(#
	unknown_1:( 
	unknown_2: #
	unknown_3: 
	unknown_4:
	unknown_5:	Ð<
	unknown_6:<
	unknown_7:<
	unknown_8:
identity¢StatefulPartitionedCallÑ
StatefulPartitionedCallStatefulPartitionedCallconv2d_333_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*,
_read_only_resource_inputs

	
*-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_sequential_112_layer_call_and_return_conditional_losses_304633o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:a ]
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
*
_user_specified_nameconv2d_333_input

i
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304959

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

f
G__inference_dropout_110_layer_call_and_return_conditional_losses_304539

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *«ªª?l
dropout/MulMulinputsdropout/Const:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  >®
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

w
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

q
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

a
IdentityIdentitydropout/Mul_1:z:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ

:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ


 
_user_specified_nameinputs
¼
N
2__inference_max_pooling2d_331_layer_call_fn_304954

inputs
identityÛ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304332
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ,
¹
J__inference_sequential_112_layer_call_and_return_conditional_losses_304633

inputs+
conv2d_333_304602:(
conv2d_333_304604:(+
conv2d_334_304608:( 
conv2d_334_304610: +
conv2d_335_304614: 
conv2d_335_304616:#
dense_220_304622:	Ð<
dense_220_304624:<"
dense_221_304627:<
dense_221_304629:
identity¢"conv2d_333/StatefulPartitionedCall¢"conv2d_334/StatefulPartitionedCall¢"conv2d_335/StatefulPartitionedCall¢!dense_220/StatefulPartitionedCall¢!dense_221/StatefulPartitionedCall¢#dropout_110/StatefulPartitionedCall
"conv2d_333/StatefulPartitionedCallStatefulPartitionedCallinputsconv2d_333_304602conv2d_333_304604*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿbb(*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304377÷
!max_pooling2d_331/PartitionedCallPartitionedCall+conv2d_333/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ11(* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304332¤
"conv2d_334/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_331/PartitionedCall:output:0conv2d_334_304608conv2d_334_304610*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ// *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304395÷
!max_pooling2d_332/PartitionedCallPartitionedCall+conv2d_334/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304344¤
"conv2d_335/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_332/PartitionedCall:output:0conv2d_335_304614conv2d_335_304616*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_conv2d_335_layer_call_and_return_conditional_losses_304413÷
!max_pooling2d_333/PartitionedCallPartitionedCall+conv2d_335/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *V
fQRO
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_304356ú
#dropout_110/StatefulPartitionedCallStatefulPartitionedCall*max_pooling2d_333/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_dropout_110_layer_call_and_return_conditional_losses_304539å
flatten_110/PartitionedCallPartitionedCall,dropout_110/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_flatten_110_layer_call_and_return_conditional_losses_304433
!dense_220/StatefulPartitionedCallStatefulPartitionedCall$flatten_110/PartitionedCall:output:0dense_220_304622dense_220_304624*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_220_layer_call_and_return_conditional_losses_304446
!dense_221/StatefulPartitionedCallStatefulPartitionedCall*dense_220/StatefulPartitionedCall:output:0dense_221_304627dense_221_304629*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_221_layer_call_and_return_conditional_losses_304463y
IdentityIdentity*dense_221/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ£
NoOpNoOp#^conv2d_333/StatefulPartitionedCall#^conv2d_334/StatefulPartitionedCall#^conv2d_335/StatefulPartitionedCall"^dense_220/StatefulPartitionedCall"^dense_221/StatefulPartitionedCall$^dropout_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:ÿÿÿÿÿÿÿÿÿdd: : : : : : : : : : 2H
"conv2d_333/StatefulPartitionedCall"conv2d_333/StatefulPartitionedCall2H
"conv2d_334/StatefulPartitionedCall"conv2d_334/StatefulPartitionedCall2H
"conv2d_335/StatefulPartitionedCall"conv2d_335/StatefulPartitionedCall2F
!dense_220/StatefulPartitionedCall!dense_220/StatefulPartitionedCall2F
!dense_221/StatefulPartitionedCall!dense_221/StatefulPartitionedCall2J
#dropout_110/StatefulPartitionedCall#dropout_110/StatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿdd
 
_user_specified_nameinputs
Ç

*__inference_dense_220_layer_call_fn_305066

inputs
unknown:	Ð<
	unknown_0:<
identity¢StatefulPartitionedCallÚ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_dense_220_layer_call_and_return_conditional_losses_304446o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÐ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
 
_user_specified_nameinputs
 

÷
E__inference_dense_220_layer_call_and_return_conditional_losses_304446

inputs1
matmul_readvariableop_resource:	Ð<-
biasadd_readvariableop_resource:<
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ð<*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:<*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ<w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿÐ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Æ
serving_default²
U
conv2d_333_inputA
"serving_default_conv2d_333_input:0ÿÿÿÿÿÿÿÿÿdd=
	dense_2210
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:´
ê
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer_with_weights-2
layer-4
layer-5
layer-6
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_layer
»

"kernel
#bias
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
»

0kernel
1bias
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
8	variables
9trainable_variables
:regularization_losses
;	keras_api
<__call__
*=&call_and_return_all_conditional_losses"
_tf_keras_layer
¼
>	variables
?trainable_variables
@regularization_losses
A	keras_api
B_random_generator
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Kkernel
Lbias
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses"
_tf_keras_layer
»

Skernel
Tbias
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses"
_tf_keras_layer

[iter

\beta_1

]beta_2
	^decay
_learning_ratem£m¤"m¥#m¦0m§1m¨Km©LmªSm«Tm¬v­v®"v¯#v°0v±1v²Kv³Lv´SvµTv¶"
	optimizer
f
0
1
"2
#3
04
15
K6
L7
S8
T9"
trackable_list_wrapper
f
0
1
"2
#3
04
15
K6
L7
S8
T9"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
2
/__inference_sequential_112_layer_call_fn_304493
/__inference_sequential_112_layer_call_fn_304780
/__inference_sequential_112_layer_call_fn_304805
/__inference_sequential_112_layer_call_fn_304681À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ö2ó
J__inference_sequential_112_layer_call_and_return_conditional_losses_304850
J__inference_sequential_112_layer_call_and_return_conditional_losses_304902
J__inference_sequential_112_layer_call_and_return_conditional_losses_304715
J__inference_sequential_112_layer_call_and_return_conditional_losses_304749À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÕBÒ
!__inference__wrapped_model_304323conv2d_333_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
eserving_default"
signature_map
+:)(2conv2d_333/kernel
:(2conv2d_333/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
fnon_trainable_variables

glayers
hmetrics
ilayer_regularization_losses
jlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_333_layer_call_fn_304938¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304949¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
knon_trainable_variables

llayers
mmetrics
nlayer_regularization_losses
olayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
Ü2Ù
2__inference_max_pooling2d_331_layer_call_fn_304954¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷2ô
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304959¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
+:)( 2conv2d_334/kernel
: 2conv2d_334/bias
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
pnon_trainable_variables

qlayers
rmetrics
slayer_regularization_losses
tlayer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_334_layer_call_fn_304968¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304979¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
Ü2Ù
2__inference_max_pooling2d_332_layer_call_fn_304984¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷2ô
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304989¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
+:) 2conv2d_335/kernel
:2conv2d_335/bias
.
00
11"
trackable_list_wrapper
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
­
znon_trainable_variables

{layers
|metrics
}layer_regularization_losses
~layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
Õ2Ò
+__inference_conv2d_335_layer_call_fn_304998¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_conv2d_335_layer_call_and_return_conditional_losses_305009¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
±
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
8	variables
9trainable_variables
:regularization_losses
<__call__
*=&call_and_return_all_conditional_losses
&="call_and_return_conditional_losses"
_generic_user_object
Ü2Ù
2__inference_max_pooling2d_333_layer_call_fn_305014¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
÷2ô
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_305019¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
>	variables
?trainable_variables
@regularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
,__inference_dropout_110_layer_call_fn_305024
,__inference_dropout_110_layer_call_fn_305029´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ì2É
G__inference_dropout_110_layer_call_and_return_conditional_losses_305034
G__inference_dropout_110_layer_call_and_return_conditional_losses_305046´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
Ö2Ó
,__inference_flatten_110_layer_call_fn_305051¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ñ2î
G__inference_flatten_110_layer_call_and_return_conditional_losses_305057¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
#:!	Ð<2dense_220/kernel
:<2dense_220/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_220_layer_call_fn_305066¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_220_layer_call_and_return_conditional_losses_305077¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
": <2dense_221/kernel
:2dense_221/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
Ô2Ñ
*__inference_dense_221_layer_call_fn_305086¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ï2ì
E__inference_dense_221_layer_call_and_return_conditional_losses_305097¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÔBÑ
$__inference_signature_wrapper_304929conv2d_333_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
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
R

total

count
	variables
	keras_api"
_tf_keras_metric
c

total

count
 
_fn_kwargs
¡	variables
¢	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
¡	variables"
_generic_user_object
0:.(2Adam/conv2d_333/kernel/m
": (2Adam/conv2d_333/bias/m
0:.( 2Adam/conv2d_334/kernel/m
":  2Adam/conv2d_334/bias/m
0:. 2Adam/conv2d_335/kernel/m
": 2Adam/conv2d_335/bias/m
(:&	Ð<2Adam/dense_220/kernel/m
!:<2Adam/dense_220/bias/m
':%<2Adam/dense_221/kernel/m
!:2Adam/dense_221/bias/m
0:.(2Adam/conv2d_333/kernel/v
": (2Adam/conv2d_333/bias/v
0:.( 2Adam/conv2d_334/kernel/v
":  2Adam/conv2d_334/bias/v
0:. 2Adam/conv2d_335/kernel/v
": 2Adam/conv2d_335/bias/v
(:&	Ð<2Adam/dense_220/kernel/v
!:<2Adam/dense_220/bias/v
':%<2Adam/dense_221/kernel/v
!:2Adam/dense_221/bias/v¬
!__inference__wrapped_model_304323
"#01KLSTA¢>
7¢4
2/
conv2d_333_inputÿÿÿÿÿÿÿÿÿdd
ª "5ª2
0
	dense_221# 
	dense_221ÿÿÿÿÿÿÿÿÿ¶
F__inference_conv2d_333_layer_call_and_return_conditional_losses_304949l7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿdd
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿbb(
 
+__inference_conv2d_333_layer_call_fn_304938_7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿdd
ª " ÿÿÿÿÿÿÿÿÿbb(¶
F__inference_conv2d_334_layer_call_and_return_conditional_losses_304979l"#7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ11(
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ// 
 
+__inference_conv2d_334_layer_call_fn_304968_"#7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ11(
ª " ÿÿÿÿÿÿÿÿÿ// ¶
F__inference_conv2d_335_layer_call_and_return_conditional_losses_305009l017¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
+__inference_conv2d_335_layer_call_fn_304998_017¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª " ÿÿÿÿÿÿÿÿÿ¦
E__inference_dense_220_layer_call_and_return_conditional_losses_305077]KL0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ<
 ~
*__inference_dense_220_layer_call_fn_305066PKL0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÐ
ª "ÿÿÿÿÿÿÿÿÿ<¥
E__inference_dense_221_layer_call_and_return_conditional_losses_305097\ST/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_221_layer_call_fn_305086OST/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ<
ª "ÿÿÿÿÿÿÿÿÿ·
G__inference_dropout_110_layer_call_and_return_conditional_losses_305034l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ


p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ


 ·
G__inference_dropout_110_layer_call_and_return_conditional_losses_305046l;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ


p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ


 
,__inference_dropout_110_layer_call_fn_305024_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ


p 
ª " ÿÿÿÿÿÿÿÿÿ


,__inference_dropout_110_layer_call_fn_305029_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ


p
ª " ÿÿÿÿÿÿÿÿÿ

¬
G__inference_flatten_110_layer_call_and_return_conditional_losses_305057a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ


ª "&¢#

0ÿÿÿÿÿÿÿÿÿÐ
 
,__inference_flatten_110_layer_call_fn_305051T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ


ª "ÿÿÿÿÿÿÿÿÿÐð
M__inference_max_pooling2d_331_layer_call_and_return_conditional_losses_304959R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
2__inference_max_pooling2d_331_layer_call_fn_304954R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
M__inference_max_pooling2d_332_layer_call_and_return_conditional_losses_304989R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
2__inference_max_pooling2d_332_layer_call_fn_304984R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿð
M__inference_max_pooling2d_333_layer_call_and_return_conditional_losses_305019R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 È
2__inference_max_pooling2d_333_layer_call_fn_305014R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÌ
J__inference_sequential_112_layer_call_and_return_conditional_losses_304715~
"#01KLSTI¢F
?¢<
2/
conv2d_333_inputÿÿÿÿÿÿÿÿÿdd
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ì
J__inference_sequential_112_layer_call_and_return_conditional_losses_304749~
"#01KLSTI¢F
?¢<
2/
conv2d_333_inputÿÿÿÿÿÿÿÿÿdd
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
J__inference_sequential_112_layer_call_and_return_conditional_losses_304850t
"#01KLST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Â
J__inference_sequential_112_layer_call_and_return_conditional_losses_304902t
"#01KLST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¤
/__inference_sequential_112_layer_call_fn_304493q
"#01KLSTI¢F
?¢<
2/
conv2d_333_inputÿÿÿÿÿÿÿÿÿdd
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¤
/__inference_sequential_112_layer_call_fn_304681q
"#01KLSTI¢F
?¢<
2/
conv2d_333_inputÿÿÿÿÿÿÿÿÿdd
p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_112_layer_call_fn_304780g
"#01KLST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_112_layer_call_fn_304805g
"#01KLST?¢<
5¢2
(%
inputsÿÿÿÿÿÿÿÿÿdd
p

 
ª "ÿÿÿÿÿÿÿÿÿÃ
$__inference_signature_wrapper_304929
"#01KLSTU¢R
¢ 
KªH
F
conv2d_333_input2/
conv2d_333_inputÿÿÿÿÿÿÿÿÿdd"5ª2
0
	dense_221# 
	dense_221ÿÿÿÿÿÿÿÿÿ