йч"
Л0╘/
:
Add
x"T
y"T
z"T"
Ttype:
2	
W
AddN
inputs"T*N
sum"T"
Nint(0"!
Ttype:
2	АР
Ы
ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
╢
AsString

input"T

output"
Ttype:
	2	
"
	precisionint         "

scientificbool( "
shortestbool( "
widthint         "
fillstring 
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
S
	Bucketize

input"T

output"
Ttype:
2	"

boundarieslist(float)
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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
B
Equal
x"T
y"T
z
"
Ttype:
2	
Р
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
М
Gather
params"Tparams
indices"Tindices
output"Tparams"
validate_indicesbool("
Tparamstype"
Tindicestype:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
б
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetypeИ
V
HistogramSummary
tag
values"T
summary"
Ttype0:
2	
.
Identity

input"T
output"T"	
Ttype
b
InitializeTableV2
table_handle
keys"Tkey
values"Tval"
Tkeytype"
TvaltypeИ
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
TouttypeИ
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
Н
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
E
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
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
Н
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
D
Relu
features"T
activations"T"
Ttype:
2	
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
P
ScalarSummary
tags
values"T
summary"
Ttype:
2	
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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

2
a
Slice

input"T
begin"Index
size"Index
output"T"	
Ttype"
Indextype:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2
▀
SparseFeatureCross
indices	*N
values2sparse_types
shapes	*N
dense2dense_types
output_indices	
output_values"out_type
output_shape	"

Nint("
hashed_outputbool"
num_bucketsint("$
sparse_types
list(type)(:
2	"#
dense_types
list(type)(:
2	"
out_typetype:
2	"
internal_typetype:
2	
╖
SparseFillEmptyRows
indices	
values"T
dense_shape	
default_value"T
output_indices	
output_values"T
empty_row_indicator

reverse_index_map	"	
Ttype
h
SparseReshape
input_indices	
input_shape	
	new_shape	
output_indices	
output_shape	
z
SparseSegmentMean	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2"
Tidxtype0:
2	
Г
SparseSegmentSum	
data"T
indices"Tidx
segment_ids
output"T"
Ttype:
2	"
Tidxtype0:
2	
Ў
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
G
StringToHashBucketFast	
input

output	"
num_bucketsint(0
:
Sub
x"T
y"T
z"T"
Ttype:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
P
Unique
x"T
y"T
idx"out_idx"	
Ttype"
out_idxtype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И
E
Where

input"T	
index	"%
Ttype0
:
2	

&
	ZerosLike
x"T
y"T"	
Ttype"serve*1.5.0-dev201801032v1.3.0-rc1-6714-g136697e╟ы 

global_step/Initializer/zerosConst*
dtype0	*
_class
loc:@global_step*
value	B	 R *
_output_shapes
: 
П
global_step
VariableV2*
	container *
_output_shapes
: *
dtype0	*
shape: *
_class
loc:@global_step*
shared_name 
▓
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
j
global_step/readIdentityglobal_step*
_class
loc:@global_step*
T0	*
_output_shapes
: 
f
PlaceholderPlaceholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_1Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_2Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_3Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_4Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_5Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_6Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_7Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_8Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
h
Placeholder_9Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
i
Placeholder_10Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
i
Placeholder_11Placeholder*
dtype0*
shape:         *#
_output_shapes
:         
Y
ExpandDims/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
u

ExpandDims
ExpandDimsPlaceholder_9ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_1/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
w
ExpandDims_1
ExpandDimsPlaceholderExpandDims_1/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_2/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
y
ExpandDims_2
ExpandDimsPlaceholder_1ExpandDims_2/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_3/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
y
ExpandDims_3
ExpandDimsPlaceholder_2ExpandDims_3/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_4/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
y
ExpandDims_4
ExpandDimsPlaceholder_3ExpandDims_4/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_5/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
y
ExpandDims_5
ExpandDimsPlaceholder_4ExpandDims_5/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_6/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
y
ExpandDims_6
ExpandDimsPlaceholder_5ExpandDims_6/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_7/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
z
ExpandDims_7
ExpandDimsPlaceholder_10ExpandDims_7/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_8/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
z
ExpandDims_8
ExpandDimsPlaceholder_11ExpandDims_8/dim*

Tdim0*
T0*'
_output_shapes
:         
[
ExpandDims_9/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
y
ExpandDims_9
ExpandDimsPlaceholder_6ExpandDims_9/dim*

Tdim0*
T0*'
_output_shapes
:         
\
ExpandDims_10/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
{
ExpandDims_10
ExpandDimsPlaceholder_7ExpandDims_10/dim*

Tdim0*
T0*'
_output_shapes
:         
\
ExpandDims_11/dimConst*
dtype0*
valueB :
         *
_output_shapes
: 
{
ExpandDims_11
ExpandDimsPlaceholder_8ExpandDims_11/dim*

Tdim0*
T0*'
_output_shapes
:         
ъ
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize	BucketizeExpandDims_5*&

boundaries
"  аA  ▄A  B  *B  HB*
T0*'
_output_shapes
:         
ж
qdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/shapeShapeudnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize*
out_type0*
T0*
_output_shapes
:
╔
dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
╠
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╠
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ч
ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_sliceStridedSliceqdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/shapednn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice/stackБdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice/stack_1Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
╣
wdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
╣
wdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ш
qdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/rangeRangewdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range/startydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slicewdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range/delta*

Tidx0*#
_output_shapes
:         
┤
wdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros/shapePackydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice*
N*

axis *
T0*
_output_shapes
:
╣
wdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
л
qdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zerosFillwdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros/shapewdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros/Const*

index_type0*
T0*#
_output_shapes
:         
╠
ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
м
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshapeReshapeudnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketizeydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshape/shape*#
_output_shapes
:         *
Tshape0*
T0
ж
qdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stackPackqdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/rangeqdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros*
N*

axis *
T0*'
_output_shapes
:         
Ц
zdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/RankRankqdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack*
T0*
_output_shapes
: 
╜
{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ъ
ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/subSubzdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/Rank{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/sub/y*
T0*
_output_shapes
: 
─
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
─
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
░
{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/RangeRangeБdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/Range/startzdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/RankБdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/Range/delta*

Tidx0*
_output_shapes
:
Я
{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/sub_1Subydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/sub{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/Range*
T0*
_output_shapes
:
▒
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose	Transposeqdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:         
│
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64Castudnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose*

DstT0	*

SrcT0*'
_output_shapes
:         
╖
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_1/1Const*
dtype0*
value	B :*
_output_shapes
: 
з
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_1Packydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_sliceudnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_1/1*
N*

axis *
T0*
_output_shapes
:
ж
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_1Castsdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_1*

DstT0	*

SrcT0*
_output_shapes
:
э
wdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize_1	BucketizeExpandDims_11*&

boundaries
"  Ё┬  ╫┬  ╛┬  е┬  М┬*
T0*'
_output_shapes
:         
к
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/shape_1Shapewdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize_1*
out_type0*
T0*
_output_shapes
:
╠
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:
╬
Гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╬
Гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
в
{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1StridedSlicesdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/shape_1Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1/stackГdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1/stack_1Гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
╗
ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
╗
ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
а
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range_1Rangeydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range_1/start{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range_1/delta*

Tidx0*#
_output_shapes
:         
╕
ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros_1/shapePack{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1*
N*

axis *
T0*
_output_shapes
:
╗
ydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros_1/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
▒
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros_1Fillydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros_1/shapeydnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros_1/Const*

index_type0*
T0*#
_output_shapes
:         
╬
{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
▓
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshape_1Reshapewdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize_1{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshape_1/shape*#
_output_shapes
:         *
Tshape0*
T0
м
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_2Packsdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/range_1sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/zeros_1*
N*

axis *
T0*'
_output_shapes
:         
Ъ
|dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/RankRanksdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_2*
T0*
_output_shapes
: 
┐
}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
а
{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/subSub|dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/Rank}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/sub/y*
T0*
_output_shapes
: 
╞
Гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
╞
Гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╕
}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/RangeRangeГdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/Range/start|dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/RankГdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/Range/delta*

Tidx0*
_output_shapes
:
е
}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/sub_1Sub{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/sub}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/Range*
T0*
_output_shapes
:
╖
wdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1	Transposesdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_2}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1/sub_1*
Tperm0*
T0*'
_output_shapes
:         
╖
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_2Castwdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/transpose_1*

DstT0	*

SrcT0*'
_output_shapes
:         
╖
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_3/1Const*
dtype0*
value	B :*
_output_shapes
: 
й
sdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_3Pack{dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/strided_slice_1udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_3/1*
N*

axis *
T0*
_output_shapes
:
ж
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_3Castsdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/stack_3*

DstT0	*

SrcT0*
_output_shapes
:
п
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_4Castsdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshape*

DstT0	*

SrcT0*#
_output_shapes
:         
▒
udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_5Castudnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/reshape_1*

DstT0	*

SrcT0*#
_output_shapes
:         
О
qdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/crossSparseFeatureCrosssdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_2udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_4udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_5udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_1udnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/ToInt64_3*
internal_type0	*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N*
num_buckets*
dense_types
 *
sparse_types
2		
╫
Мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╙
Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_sliceStridedSlicesdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/cross:2Мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice/stackОdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_1Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
█
Рdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
█
Рdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
█
Иdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1StridedSlicesdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/cross:2Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stackРdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_1Рdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
╚
~dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╬
}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/ProdProdИdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_slice_1~dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
╩
Иdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/concat/values_1Pack}dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
╟
Дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
р
dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/concatConcatV2Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/strided_sliceИdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/concat/values_1Дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
░
Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshapeSparseReshapeqdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/crosssdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/cross:2dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/concat*-
_output_shapes
:         :
┐
Пdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshape/IdentityIdentitysdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/cross:1*
T0	*#
_output_shapes
:         
╚
Вdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
valueB"      *
_output_shapes
:
╗
Бdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 
╜
Гdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
valueB
 *═╠L>*
_output_shapes
: 
ш
Мdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalВdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes

:*
dtype0*
seed2 *

seed *
T0*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0
║
Аdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mulMulМdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalГdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/stddev*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes

:
з
|dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normalAddАdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mulБdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mean*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes

:
╟
_dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
shared_name 
Х
fdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/AssignAssign_dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0|dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
ю
ddnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/readIdentity_dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes

:
√
░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
·
пdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╓
кdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SliceSliceИdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshape:1░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice/beginпdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
ї
кdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╩
йdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/ProdProdкdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Sliceкdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Ў
│dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
╞
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/GatherGatherИdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshape:1│dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
╚
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Cast/xPackйdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Prodлdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:
╡
▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseReshapeSparseReshapeЖdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshapeИdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshape:1лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Cast/x*-
_output_shapes
:         :
И
╗dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseReshape/IdentityIdentityПdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:         
Ў
│dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ф
▒dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/GreaterEqualGreaterEqual╗dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseReshape/Identity│dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ъ
кdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/WhereWhere▒dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:         
Ж
▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
╓
мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/ReshapeReshapeкdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Where▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
№
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Gather_1Gather▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseReshapeмdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
Б
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Gather_2Gather╗dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseReshape/Identityмdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Ц
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/IdentityIdentity┤dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
Б
╛dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ф
╠dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Gather_1нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Gather_2нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Identity╛dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
в
╨dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
д
╥dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
д
╥dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
╞	
╩dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice╠dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows╨dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack╥dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1╥dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╘
┴dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/CastCast╩dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ы
├dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/UniqueUnique╬dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
╪
═dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherddnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/read├dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*'
_output_shapes
:         
ь
╝dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparseSparseSegmentMean═dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/embedding_lookup┼dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/Unique:1┴dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
Ж
┤dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
В
оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape_1Reshape╬dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2┤dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

и
кdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/ShapeShape╝dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Г
╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Е
║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Е
║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╖
▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_sliceStridedSliceкdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Shape╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_slice/stack║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_slice/stack_1║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
я
мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
╤
кdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/stackPackмdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/stack/0▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
▌
йdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/TileTileоdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape_1кdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
о
пdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/zeros_like	ZerosLike╝dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
■
дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweightsSelectйdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Tileпdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/zeros_like╝dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
є
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Cast_1CastИdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
¤
▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
№
▒dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
 
мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_1Sliceлdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Cast_1▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_1/begin▒dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Shape_1Shapeдdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights*
out_type0*
T0*
_output_shapes
:
¤
▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Е
▒dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
А
мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_2Sliceмdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Shape_1▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_2/begin▒dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
є
░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Г
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/concatConcatV2мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_1мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Slice_2░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╧
оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape_2Reshapeдdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweightsлdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/concat*'
_output_shapes
:         *
Tshape0*
T0
ы
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize	BucketizeExpandDims_10*&

boundaries
"  аA  ▄A  B  *B  HB*
T0*'
_output_shapes
:         
ж
qdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/shapeShapeudnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize*
out_type0*
T0*
_output_shapes
:
╔
dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
╠
Бdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╠
Бdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ч
ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_sliceStridedSliceqdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/shapednn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stackБdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_1Бdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
╣
wdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
╣
wdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
Ш
qdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/rangeRangewdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/startydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slicewdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/delta*

Tidx0*#
_output_shapes
:         
┤
wdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/shapePackydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice*
N*

axis *
T0*
_output_shapes
:
╣
wdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
л
qdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zerosFillwdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/shapewdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/Const*

index_type0*
T0*#
_output_shapes
:         
╠
ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
м
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshapeReshapeudnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketizeydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape/shape*#
_output_shapes
:         *
Tshape0*
T0
ж
qdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stackPackqdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/rangeqdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros*
N*

axis *
T0*'
_output_shapes
:         
Ц
zdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/RankRankqdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack*
T0*
_output_shapes
: 
╜
{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ъ
ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/subSubzdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Rank{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub/y*
T0*
_output_shapes
: 
─
Бdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
─
Бdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
░
{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/RangeRangeБdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/startzdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/RankБdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/delta*

Tidx0*
_output_shapes
:
Я
{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub_1Subydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range*
T0*
_output_shapes
:
▒
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose	Transposeqdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:         
│
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64Castudnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose*

DstT0	*

SrcT0*'
_output_shapes
:         
╖
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1/1Const*
dtype0*
value	B :*
_output_shapes
: 
з
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1Packydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_sliceudnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1/1*
N*

axis *
T0*
_output_shapes
:
ж
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_1Castsdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1*

DstT0	*

SrcT0*
_output_shapes
:
ь
wdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize_1	BucketizeExpandDims_6*&

boundaries
"  Ё┬  ╫┬  ╛┬  е┬  М┬*
T0*'
_output_shapes
:         
к
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_1Shapewdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize_1*
out_type0*
T0*
_output_shapes
:
╠
Бdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:
╬
Гdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╬
Гdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
в
{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1StridedSlicesdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_1Бdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stackГdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_1Гdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
╗
ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
╗
ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
а
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1Rangeydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/start{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/delta*

Tidx0*#
_output_shapes
:         
╕
ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/shapePack{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1*
N*

axis *
T0*
_output_shapes
:
╗
ydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
▒
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1Fillydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/shapeydnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/Const*

index_type0*
T0*#
_output_shapes
:         
╬
{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
▓
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1Reshapewdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize_1{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1/shape*#
_output_shapes
:         *
Tshape0*
T0
м
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_2Packsdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1*
N*

axis *
T0*'
_output_shapes
:         
Ъ
|dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/RankRanksdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_2*
T0*
_output_shapes
: 
┐
}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
а
{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/subSub|dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Rank}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub/y*
T0*
_output_shapes
: 
╞
Гdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
╞
Гdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╕
}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/RangeRangeГdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/start|dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/RankГdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/delta*

Tidx0*
_output_shapes
:
е
}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub_1Sub{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range*
T0*
_output_shapes
:
╖
wdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1	Transposesdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_2}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub_1*
Tperm0*
T0*'
_output_shapes
:         
╖
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_2Castwdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1*

DstT0	*

SrcT0*'
_output_shapes
:         
╖
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3/1Const*
dtype0*
value	B :*
_output_shapes
: 
й
sdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3Pack{dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3/1*
N*

axis *
T0*
_output_shapes
:
ж
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_3Castsdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3*

DstT0	*

SrcT0*
_output_shapes
:
п
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_4Castsdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape*

DstT0	*

SrcT0*#
_output_shapes
:         
▒
udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_5Castudnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1*

DstT0	*

SrcT0*#
_output_shapes
:         
О
qdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/crossSparseFeatureCrosssdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_2udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_4udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_5udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_1udnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_3*
internal_type0	*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N*
num_buckets*
dense_types
 *
sparse_types
2		
╫
Мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╙
Жdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_sliceStridedSlicesdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:2Мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stackОdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_1Оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
█
Рdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
█
Рdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
█
Иdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1StridedSlicesdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:2Оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stackРdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_1Рdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
╚
~dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╬
}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/ProdProdИdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1~dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
╩
Иdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/values_1Pack}dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
╟
Дdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
р
dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concatConcatV2Жdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_sliceИdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/values_1Дdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
░
Жdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshapeSparseReshapeqdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/crosssdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:2dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat*-
_output_shapes
:         :
┐
Пdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape/IdentityIdentitysdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:1*
T0	*#
_output_shapes
:         
╚
Вdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
valueB"      *
_output_shapes
:
╗
Бdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 
╜
Гdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
valueB
 *═╠L>*
_output_shapes
: 
ш
Мdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalВdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes

:*
dtype0*
seed2 *

seed *
T0*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0
║
Аdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mulMulМdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalГdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/stddev*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes

:
з
|dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normalAddАdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mulБdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mean*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes

:
╟
_dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
shared_name 
Х
fdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/AssignAssign_dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0|dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
ю
ddnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/readIdentity_dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes

:
√
░dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
·
пdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╓
кdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SliceSliceИdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1░dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/beginпdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
ї
кdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╩
йdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ProdProdкdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Sliceкdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Ў
│dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
╞
лdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GatherGatherИdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1│dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
╚
лdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast/xPackйdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Prodлdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:
╡
▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshapeSparseReshapeЖdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshapeИdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1лdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast/x*-
_output_shapes
:         :
И
╗dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape/IdentityIdentityПdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:         
Ў
│dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ф
▒dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqualGreaterEqual╗dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape/Identity│dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ъ
кdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/WhereWhere▒dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:         
Ж
▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
╓
мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ReshapeReshapeкdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Where▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
№
нdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_1Gather▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshapeмdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
Б
нdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_2Gather╗dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape/Identityмdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Ц
нdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/IdentityIdentity┤dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
Б
╛dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ф
╠dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsнdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_1нdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_2нdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Identity╛dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
в
╨dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
д
╥dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
д
╥dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
╞	
╩dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSlice╠dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows╨dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack╥dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1╥dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╘
┴dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/CastCast╩dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ы
├dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/UniqueUnique╬dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
╪
═dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherddnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/read├dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*'
_output_shapes
:         
ь
╝dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparseSparseSegmentMean═dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/embedding_lookup┼dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/Unique:1┴dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
Ж
┤dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
В
оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1Reshape╬dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2┤dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

и
кdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ShapeShape╝dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Г
╕dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Е
║dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Е
║dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╖
▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_sliceStridedSliceкdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Shape╕dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack║dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_1║dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
я
мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
╤
кdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stackPackмdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stack/0▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
▌
йdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/TileTileоdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1кdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
о
пdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/zeros_like	ZerosLike╝dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
■
дdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweightsSelectйdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Tileпdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/zeros_like╝dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
є
лdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast_1CastИdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
¤
▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
№
▒dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
 
мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1Sliceлdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast_1▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/begin▒dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Shape_1Shapeдdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights*
out_type0*
T0*
_output_shapes
:
¤
▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Е
▒dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
А
мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2Sliceмdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Shape_1▓dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/begin▒dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
є
░dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Г
лdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concatConcatV2мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1мdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2░dnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╧
оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_2Reshapeдdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweightsлdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concat*'
_output_shapes
:         *
Tshape0*
T0
╤
Ыdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shapeShapeudnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize*
out_type0*
T0*
_output_shapes
:
Ї
йdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ў
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ў
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ь
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_sliceStridedSliceЫdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shapeйdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stackлdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_1лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
ф
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
ф
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
─
Ыdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/rangeRangeбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/startгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_sliceбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range/delta*

Tidx0*#
_output_shapes
:         
К
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/shapePackгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice*
N*

axis *
T0*
_output_shapes
:
ф
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
м
Ыdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zerosFillбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/shapeбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros/Const*

index_type0*
T0*#
_output_shapes
:         
ў
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
В
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshapeReshapeudnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketizeгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape/shape*#
_output_shapes
:         *
Tshape0*
T0
з
Ыdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stackPackЫdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/rangeЫdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros*
N*

axis *
T0*'
_output_shapes
:         
ь
дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/RankRankЫdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack*
T0*
_output_shapes
: 
ш
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ы
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/subSubдdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Rankеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub/y*
T0*
_output_shapes
: 
ю
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
ю
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
┌
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/RangeRangeлdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/startдdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Rankлdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range/delta*

Tidx0*
_output_shapes
:
а
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub_1Subгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/subеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/Range*
T0*
_output_shapes
:
▓
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose	TransposeЫdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stackеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:         
Й
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64CastЯdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose*

DstT0	*

SrcT0*'
_output_shapes
:         
т
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1/1Const*
dtype0*
value	B :*
_output_shapes
: 
и
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1Packгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_sliceЯdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1/1*
N*

axis *
T0*
_output_shapes
:
№
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_1CastЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_1*

DstT0	*

SrcT0*
_output_shapes
:
╒
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_1Shapewdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize_1*
out_type0*
T0*
_output_shapes
:
Ў
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:
°
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
°
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ў
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1StridedSliceЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_1лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stackнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_1нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╠
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1Rangeгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/startеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1/delta*

Tidx0*#
_output_shapes
:         
О
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/shapePackеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1*
N*

axis *
T0*
_output_shapes
:
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
▓
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1Fillгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/shapeгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1/Const*

index_type0*
T0*#
_output_shapes
:         
∙
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
И
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1Reshapewdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/bucketize_1еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1/shape*#
_output_shapes
:         *
Tshape0*
T0
н
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_2PackЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_1Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_1*
N*

axis *
T0*'
_output_shapes
:         
Ё
жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/RankRankЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_2*
T0*
_output_shapes
: 
ъ
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
б
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/subSubжdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Rankзdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub/y*
T0*
_output_shapes
: 
Ё
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Ё
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
т
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/RangeRangeнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/startжdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Rankнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range/delta*

Tidx0*
_output_shapes
:
ж
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub_1Subеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/subзdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/Range*
T0*
_output_shapes
:
╕
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1	TransposeЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_2зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1/sub_1*
Tperm0*
T0*'
_output_shapes
:         
Н
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_2Castбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_1*

DstT0	*

SrcT0*'
_output_shapes
:         
т
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3/1Const*
dtype0*
value	B :*
_output_shapes
: 
к
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3Packеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_1Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3/1*
N*

axis *
T0*
_output_shapes
:
№
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_3CastЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_3*

DstT0	*

SrcT0*
_output_shapes
:
╙
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_2Shapeudnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize*
out_type0*
T0*
_output_shapes
:
Ў
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
°
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
°
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ў
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2StridedSliceЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_2лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2/stackнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2/stack_1нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╠
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_2Rangeгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_2/startеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_2/delta*

Tidx0*#
_output_shapes
:         
О
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_2/shapePackеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2*
N*

axis *
T0*
_output_shapes
:
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_2/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
▓
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_2Fillгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_2/shapeгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_2/Const*

index_type0*
T0*#
_output_shapes
:         
∙
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_2/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ж
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_2Reshapeudnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketizeеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_2/shape*#
_output_shapes
:         *
Tshape0*
T0
н
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_4PackЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_2Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_2*
N*

axis *
T0*'
_output_shapes
:         
Ё
жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/RankRankЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_4*
T0*
_output_shapes
: 
ъ
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
б
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/subSubжdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/Rankзdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/sub/y*
T0*
_output_shapes
: 
Ё
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Ё
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
т
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/RangeRangeнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/Range/startжdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/Rankнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/Range/delta*

Tidx0*
_output_shapes
:
ж
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/sub_1Subеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/subзdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/Range*
T0*
_output_shapes
:
╕
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2	TransposeЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_4зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2/sub_1*
Tperm0*
T0*'
_output_shapes
:         
Н
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_4Castбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_2*

DstT0	*

SrcT0*'
_output_shapes
:         
т
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_5/1Const*
dtype0*
value	B :*
_output_shapes
: 
к
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_5Packеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_2Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_5/1*
N*

axis *
T0*
_output_shapes
:
№
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_5CastЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_5*

DstT0	*

SrcT0*
_output_shapes
:
╒
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_3Shapewdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize_1*
out_type0*
T0*
_output_shapes
:
Ў
лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3/stackConst*
dtype0*
valueB: *
_output_shapes
:
°
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
°
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ў
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3StridedSliceЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/shape_3лdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3/stackнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3/stack_1нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_3/startConst*
dtype0*
value	B : *
_output_shapes
: 
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_3/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╠
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_3Rangeгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_3/startеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_3/delta*

Tidx0*#
_output_shapes
:         
О
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_3/shapePackеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3*
N*

axis *
T0*
_output_shapes
:
ц
гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_3/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
▓
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_3Fillгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_3/shapeгdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_3/Const*

index_type0*
T0*#
_output_shapes
:         
∙
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_3/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
И
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_3Reshapewdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/bucketize_1еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_3/shape*#
_output_shapes
:         *
Tshape0*
T0
н
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_6PackЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/range_3Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/zeros_3*
N*

axis *
T0*'
_output_shapes
:         
Ё
жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/RankRankЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_6*
T0*
_output_shapes
: 
ъ
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
б
еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/subSubжdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/Rankзdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/sub/y*
T0*
_output_shapes
: 
Ё
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Ё
нdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
т
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/RangeRangeнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/Range/startжdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/Rankнdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/Range/delta*

Tidx0*
_output_shapes
:
ж
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/sub_1Subеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/subзdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/Range*
T0*
_output_shapes
:
╕
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3	TransposeЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_6зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3/sub_1*
Tperm0*
T0*'
_output_shapes
:         
Н
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_6Castбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/transpose_3*

DstT0	*

SrcT0*'
_output_shapes
:         
т
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_7/1Const*
dtype0*
value	B :*
_output_shapes
: 
к
Эdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_7Packеdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/strided_slice_3Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_7/1*
N*

axis *
T0*
_output_shapes
:
№
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_7CastЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/stack_7*

DstT0	*

SrcT0*
_output_shapes
:
Е
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_8CastЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape*

DstT0	*

SrcT0*#
_output_shapes
:         
З
Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_9CastЯdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_1*

DstT0	*

SrcT0*#
_output_shapes
:         
И
аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_10CastЯdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_2*

DstT0	*

SrcT0*#
_output_shapes
:         
И
аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_11CastЯdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/reshape_3*

DstT0	*

SrcT0*#
_output_shapes
:         
М
Ыdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/crossSparseFeatureCrossЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_2Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_4Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_6Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_8Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_9аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_10аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_11Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_1Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_3Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_5Яdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/ToInt64_7*
internal_type0	*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N*
num_bucketsё*
dense_types
 *
sparse_types
2				
Б
╢dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Г
╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Г
╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ж
░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_sliceStridedSliceЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:2╢dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_1╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
Г
╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
Е
║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
Е
║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
о
▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1StridedSliceЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:2╕dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_1║dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
є
иdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╬
зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/ProdProd▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice_1иdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Я
▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/values_1Packзdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
ё
оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Й
йdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concatConcatV2░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/strided_slice▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/values_1оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
█
░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshapeSparseReshapeЫdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/crossЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:2йdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/concat*-
_output_shapes
:         :
Ф
╣dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape/IdentityIdentityЭdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/cross:1*
T0	*#
_output_shapes
:         
а
мdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
valueB"q     *
_output_shapes
:
У
лdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 
Х
нdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
valueB
 *
╫#=*
_output_shapes
: 
ы
╢dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalмdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes
:	ё*
dtype0*
seed2 *

seed *
T0*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0
ч
кdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mulMul╢dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalнdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/stddev*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes
:	ё
╒
жdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normalAddкdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mulлdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal/mean*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes
:	ё
в
Йdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0
VariableV2*
	container *
_output_shapes
:	ё*
dtype0*
shape:	ё*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
shared_name 
┼
Рdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/AssignAssignЙdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0жdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ё
є
Оdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/readIdentityЙdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
T0*
_output_shapes
:	ё
╧
Дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
╬
Гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
№
■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SliceSlice▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1Дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/beginГdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
╔
■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╞
¤dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ProdProd■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
╩
Зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
Ш
 dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GatherGather▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1Зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
─
 dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast/xPack¤dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Prod dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:
▒
Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshapeSparseReshape░dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1 dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast/x*-
_output_shapes
:         :
Ж
Пdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape/IdentityIdentity╣dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:         
╩
Зdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
р
Еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqualGreaterEqualПdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape/IdentityЗdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:         
┬
■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/WhereWhereЕdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:         
┌
Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
╥
Аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ReshapeReshape■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/WhereЖdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
°
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_1GatherЖdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshapeАdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
¤
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_2GatherПdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape/IdentityАdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
╛
Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/IdentityIdentityИdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
╒
Тdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╕
аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsБdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_1Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Gather_2Бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/IdentityТdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
Ў
дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
°
жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
°
жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ъ
Юdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSliceаdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsдdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stackжdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
№
Хdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/CastCastЮdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
У
Чdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/UniqueUniqueвdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
┘
бdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherОdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/readЧdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*'
_output_shapes
:         
╝	
Рdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparseSparseSegmentMeanбdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/embedding_lookupЩdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/Unique:1Хdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
┌
Иdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
■
Вdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1Reshapeвdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2Иdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

╨
■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ShapeShapeРdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
╫
Мdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
┘
Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
█
Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_sliceStridedSlice■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/ShapeМdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stackОdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_1Оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
├
Аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
═
■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stackPackАdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stack/0Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
┘
¤dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/TileTileВdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_1■dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
╓
Гdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/zeros_like	ZerosLikeРdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
╬
°dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweightsSelect¤dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/TileГdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/zeros_likeРdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ё
 dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast_1Cast▓dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
╤
Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
╨
Еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╧
Аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1Slice dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Cast_1Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/beginЕdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
║
Аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Shape_1Shape°dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights*
out_type0*
T0*
_output_shapes
:
╤
Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
┘
Еdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
╨
Аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2SliceАdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Shape_1Жdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/beginЕdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
╟
Дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╙
 dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concatConcatV2Аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_1Аdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Slice_2Дdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╦
Вdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_2Reshape°dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights dnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/concat*'
_output_shapes
:         *
Tshape0*
T0
╟
Wdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/crossSparseFeatureCrossExpandDims_7
ExpandDims*
internal_type0*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N *
num_bucketsш*
dense_types
2*
sparse_types
 
╝
rdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
╛
tdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╛
tdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
═
ldnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_sliceStridedSliceYdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/cross:2rdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice/stacktdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice/stack_1tdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
╛
tdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
└
vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
└
vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╒
ndnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1StridedSliceYdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/cross:2tdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1/stackvdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1/stack_1vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
о
ddnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
 
cdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/ProdProdndnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slice_1ddnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Х
ndnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/concat/values_1Packcdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
м
jdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ї
ednn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/concatConcatV2ldnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/strided_slicendnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/concat/values_1jdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
╟
ldnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshapeSparseReshapeWdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/crossYdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/cross:2ednn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/concat*-
_output_shapes
:         :
К
udnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshape/IdentityIdentityYdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/cross:1*
T0	*#
_output_shapes
:         
У
hdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
valueB"ш     *
_output_shapes
:
Ж
gdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 
И
idnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
valueB
 *тЖ=*
_output_shapes
: 
Щ
rdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalhdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes
:	ш*
dtype0*
seed2 *

seed *
T0*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0
╨
fdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/mulMulrdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalidnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/stddev*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
T0*
_output_shapes
:	ш
╛
bdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normalAddfdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/mulgdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal/mean*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
T0*
_output_shapes
:	ш
Х
Ednn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0
VariableV2*
	container *
_output_shapes
:	ш*
dtype0*
shape:	ш*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
shared_name 
о
Ldnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/AssignAssignEdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0bdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
б
Jdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/readIdentityEdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
T0*
_output_shapes
:	ш
╞
|dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
┼
{dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ь
vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SliceSlicendnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshape:1|dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice/begin{dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
└
vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
л
udnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/ProdProdvdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slicevdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
┴
dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
┴
wdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/GatherGatherndnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshape:1dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
й
wdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Cast/xPackudnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Prodwdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:
Х
~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseReshapeSparseReshapeldnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshapendnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshape:1wdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Cast/x*-
_output_shapes
:         :
╣
Зdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseReshape/IdentityIdentityudnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:         
┴
dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╞
}dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/GreaterEqualGreaterEqualЗdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseReshape/Identitydnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:         
░
vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/WhereWhere}dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:         
╤
~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
╖
xdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/ReshapeReshapevdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Where~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
▌
ydnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Gather_1Gather~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseReshapexdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
у
ydnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Gather_2GatherЗdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseReshape/Identityxdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
н
ydnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/IdentityIdentityАdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
═
Кdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Н
Шdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsydnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Gather_1ydnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Gather_2ydnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/IdentityКdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
ю
Ьdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ё
Юdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ё
Юdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
┬
Цdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSliceШdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsЬdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_slice/stackЮdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Юdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ь
Нdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/CastCastЦdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
Г
Пdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/UniqueUniqueЪdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
╝
Щdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherJdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/readПdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*'
_output_shapes
:         
Ь
Иdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparseSparseSegmentMeanЩdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/embedding_lookupСdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/Unique:1Нdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
╥
Аdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
х
zdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape_1ReshapeЪdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2Аdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

┐
vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/ShapeShapeИdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
╧
Дdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
╤
Жdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╤
Жdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
▒
~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_sliceStridedSlicevdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/ShapeДdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_slice/stackЖdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_slice/stack_1Жdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
║
xdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
▓
vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/stackPackxdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/stack/0~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
╛
udnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/TileTilezdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape_1vdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
┼
{dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/zeros_like	ZerosLikeИdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
л
pdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweightsSelectudnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Tile{dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/zeros_likeИdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
г
wdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Cast_1Castndnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
╚
~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
╟
}dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
л
xdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_1Slicewdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Cast_1~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_1/begin}dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
и
xdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Shape_1Shapepdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights*
out_type0*
T0*
_output_shapes
:
╚
~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
╨
}dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
м
xdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_2Slicexdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Shape_1~dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_2/begin}dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
╛
|dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
п
wdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/concatConcatV2xdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_1xdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Slice_2|dnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
░
zdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape_2Reshapepdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweightswdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/concat*'
_output_shapes
:         *
Tshape0*
T0
п
ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/ignore_value/xConst*
dtype0*
valueB B *
_output_shapes
: 
д
hdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/NotEqualNotEqualExpandDims_8ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:         
М
gdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/indicesWherehdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:         
н
fdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/valuesGatherNdExpandDims_8gdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/indices*
Tparams0*
Tindices0	*#
_output_shapes
:         
╖
kdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/dense_shapeShapeExpandDims_8*
out_type0	*
T0*
_output_shapes
:
╫
Xdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/ConstConst*
dtype0*K
valueBB@BASBVXBF9BUABUSBWNBHABEVBMQBDLBOOBB6BNKBAA*
_output_shapes
:
Щ
Wdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
а
^dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
а
^dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
в
Xdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/rangeRange^dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/range/startWdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/Size^dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/range/delta*

Tidx0*
_output_shapes
:
Ё
Zdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/ToInt64CastXdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
щ
]dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
о
cdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
         *
_output_shapes
: 
к
hdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_table/table_initInitializeTableV2]dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_tableXdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/ConstZdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/ToInt64*

Tkey0*

Tval0	
┌
]dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/hash_table_LookupLookupTableFindV2]dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_tablefdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/valuescdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:         
╢
ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
╕
ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╕
ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╟
fdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_sliceStridedSlicekdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/dense_shapeldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice/stackndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice/stack_1ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
╕
ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
║
pdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
║
pdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╧
hdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1StridedSlicekdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/dense_shapendnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1/stackpdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1/stack_1pdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
и
^dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
э
]dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/ProdProdhdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slice_1^dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Й
hdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/concat/values_1Pack]dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
ж
ddnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
▌
_dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/concatConcatV2fdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/strided_slicehdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/concat/values_1ddnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
▌
fdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshapeSparseReshapegdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/indiceskdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/DenseToSparseTensor/dense_shape_dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/concat*-
_output_shapes
:         :
И
odnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshape/IdentityIdentity]dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/hash_table_Lookup*
T0	*#
_output_shapes
:         
З
bdnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
valueB"      *
_output_shapes
:
·
adnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 
№
cdnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
valueB
 *w╓И>*
_output_shapes
: 
Ж
ldnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormalbdnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes

:*
dtype0*
seed2 *

seed *
T0*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0
╖
`dnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/mulMulldnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalcdnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/stddev*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
T0*
_output_shapes

:
е
\dnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normalAdd`dnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/muladnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal/mean*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
T0*
_output_shapes

:
З
?dnn/input_from_feature_columns/carrier_embedding/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
shared_name 
Х
Fdnn/input_from_feature_columns/carrier_embedding/weights/part_0/AssignAssign?dnn/input_from_feature_columns/carrier_embedding/weights/part_0\dnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
О
Ddnn/input_from_feature_columns/carrier_embedding/weights/part_0/readIdentity?dnn/input_from_feature_columns/carrier_embedding/weights/part_0*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
T0*
_output_shapes

:
║
pdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
╣
odnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Є
jdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SliceSlicehdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshape:1pdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice/beginodnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
┤
jdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
З
idnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/ProdProdjdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slicejdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
╡
sdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
г
kdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/GatherGatherhdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshape:1sdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
Е
kdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Cast/xPackidnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Prodkdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:
ё
rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseReshapeSparseReshapefdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshapehdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshape:1kdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Cast/x*-
_output_shapes
:         :
ж
{dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseReshape/IdentityIdentityodnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:         
╡
sdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
б
qdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/GreaterEqualGreaterEqual{dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseReshape/Identitysdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ш
jdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/WhereWhereqdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:         
┼
rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
У
ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/ReshapeReshapejdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Whererdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
╣
mdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Gather_1Gatherrdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseReshapeldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
╛
mdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Gather_2Gather{dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseReshape/Identityldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Ф
mdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/IdentityIdentitytdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
└
~dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╨
Мdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsmdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Gather_1mdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Gather_2mdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Identity~dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
т
Рdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
ф
Тdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
ф
Тdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Ж
Кdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSliceМdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsРdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_slice/stackТdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Тdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╘
Бdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/CastCastКdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ы
Гdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/UniqueUniqueОdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
Ш
Нdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherDdnn/input_from_feature_columns/carrier_embedding/weights/part_0/readГdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*'
_output_shapes
:         
ы
|dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparseSparseSegmentMeanНdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/embedding_lookupЕdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/Unique:1Бdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
┼
tdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
└
ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape_1ReshapeОdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2tdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

ж
jdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/ShapeShape|dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
┬
xdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
─
zdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
─
zdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Є
rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_sliceStridedSlicejdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Shapexdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_slice/stackzdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_slice/stack_1zdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
о
ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
О
jdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/stackPackldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/stack/0rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
Ъ
idnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/TileTilendnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape_1jdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
м
odnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/zeros_like	ZerosLike|dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
·
ddnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweightsSelectidnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Tileodnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/zeros_like|dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
С
kdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Cast_1Casthdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
╝
rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
╗
qdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
√
ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_1Slicekdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Cast_1rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_1/beginqdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Р
ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Shape_1Shapeddnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights*
out_type0*
T0*
_output_shapes
:
╝
rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
─
qdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
№
ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_2Sliceldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Shape_1rdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_2/beginqdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
▓
pdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
 
kdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/concatConcatV2ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_1ldnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Slice_2pdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
М
ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape_2Reshapeddnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweightskdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/concat*'
_output_shapes
:         *
Tshape0*
T0
м
kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/ignore_value/xConst*
dtype0*
valueB B *
_output_shapes
: 
Ю
ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/NotEqualNotEqualExpandDims_7kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:         
Ж
ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/indicesWhereednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:         
з
cdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/valuesGatherNdExpandDims_7ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/indices*
Tparams0*
Tindices0	*#
_output_shapes
:         
┤
hdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/dense_shapeShapeExpandDims_7*
out_type0	*
T0*
_output_shapes
:
З
Odnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/lookupStringToHashBucketFastcdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/values*#
_output_shapes
:         *
num_bucketsш
│
idnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
╡
kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╡
kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╕
cdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/dense_shapeidnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice/stackkdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice/stack_1kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
╡
kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
╖
mdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
╖
mdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
└
ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1StridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/dense_shapekdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1/stackmdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1/stack_1mdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
е
[dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ф
Zdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/ProdProdednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_slice_1[dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Г
ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/concat/values_1PackZdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
г
adnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╤
\dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/concatConcatV2cdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/strided_sliceednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/concat/values_1adnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
╤
cdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshapeSparseReshapeddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/indiceshdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/DenseToSparseTensor/dense_shape\dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/concat*-
_output_shapes
:         :
ў
ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshape/IdentityIdentityOdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/lookup*
T0	*#
_output_shapes
:         
Б
_dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
valueB"ш     *
_output_shapes
:
Ї
^dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 
Ў
`dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
valueB
 *тЖ=*
_output_shapes
: 
■
idnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormal_dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes
:	ш*
dtype0*
seed2 *

seed *
T0*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0
м
]dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/mulMulidnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormal`dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/stddev*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
T0*
_output_shapes
:	ш
Ъ
Ydnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normalAdd]dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/mul^dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal/mean*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
T0*
_output_shapes
:	ш
Г
<dnn/input_from_feature_columns/dest_embedding/weights/part_0
VariableV2*
	container *
_output_shapes
:	ш*
dtype0*
shape:	ш*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
shared_name 
К
Cdnn/input_from_feature_columns/dest_embedding/weights/part_0/AssignAssign<dnn/input_from_feature_columns/dest_embedding/weights/part_0Ydnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
Ж
Adnn/input_from_feature_columns/dest_embedding/weights/part_0/readIdentity<dnn/input_from_feature_columns/dest_embedding/weights/part_0*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
T0*
_output_shapes
:	ш
┤
jdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
│
idnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
▌
ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SliceSliceednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshape:1jdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice/beginidnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
о
ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ї
cdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/ProdProdddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Sliceddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
п
mdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
Ф
ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/GatherGatherednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshape:1mdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
є
ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Cast/xPackcdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Prodednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:
▀
ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseReshapeSparseReshapecdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshapeednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshape:1ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Cast/x*-
_output_shapes
:         :
Э
udnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseReshape/IdentityIdentityldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:         
п
mdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
П
kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/GreaterEqualGreaterEqualudnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseReshape/Identitymdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:         
М
ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/WhereWherekdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:         
┐
ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Б
fdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/ReshapeReshapeddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Whereldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
з
gdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Gather_1Gatherldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseReshapefdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
м
gdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Gather_2Gatherudnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseReshape/Identityfdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
И
gdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/IdentityIdentityndnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
║
xdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
▓
Жdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsgdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Gather_1gdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Gather_2gdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Identityxdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
▄
Кdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
▐
Мdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
▐
Мdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
ш
Дdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSliceЖdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsКdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_slice/stackМdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Мdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╟
{dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/CastCastДdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
▐
}dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/UniqueUniqueИdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
Е
Зdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherAdnn/input_from_feature_columns/dest_embedding/weights/part_0/read}dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*'
_output_shapes
:         
╤
vdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparseSparseSegmentMeanЗdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/embedding_lookupdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/Unique:1{dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
┐
ndnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
о
hdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape_1ReshapeИdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2ndnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

Ъ
ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/ShapeShapevdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
╝
rdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
╛
tdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╛
tdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╘
ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_sliceStridedSliceddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Shaperdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_slice/stacktdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_slice/stack_1tdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
и
fdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
№
ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/stackPackfdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/stack/0ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
И
cdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/TileTilehdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape_1ddnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
а
idnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/zeros_like	ZerosLikevdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
т
^dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweightsSelectcdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Tileidnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/zeros_likevdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
И
ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Cast_1Castednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
╢
ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
╡
kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
у
fdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_1Sliceednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Cast_1ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_1/beginkdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Д
fdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Shape_1Shape^dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights*
out_type0*
T0*
_output_shapes
:
╢
ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
╛
kdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
ф
fdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_2Slicefdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Shape_1ldnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_2/beginkdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
м
jdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ч
ednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/concatConcatV2fdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_1fdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Slice_2jdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
·
hdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape_2Reshape^dnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweightsednn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/concat*'
_output_shapes
:         *
Tshape0*
T0
о
mdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/ignore_value/xConst*
dtype0*
valueB B *
_output_shapes
: 
а
gdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/NotEqualNotEqual
ExpandDimsmdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:         
К
fdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/indicesWheregdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:         
й
ednn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/valuesGatherNd
ExpandDimsfdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/indices*
Tparams0*
Tindices0	*#
_output_shapes
:         
┤
jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/dense_shapeShape
ExpandDims*
out_type0	*
T0*
_output_shapes
:
Л
Qdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/lookupStringToHashBucketFastednn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/values*#
_output_shapes
:         *
num_bucketsш
╡
kdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
╖
mdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
╖
mdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
┬
ednn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_sliceStridedSlicejdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/dense_shapekdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice/stackmdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice/stack_1mdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask*
ellipsis_mask *
end_mask *
T0	*
shrink_axis_mask 
╖
mdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
╣
odnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1/stack_1Const*
dtype0*
valueB: *
_output_shapes
:
╣
odnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╩
gdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1StridedSlicejdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/dense_shapemdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1/stackodnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1/stack_1odnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
:*

begin_mask *
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask 
з
]dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ъ
\dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/ProdProdgdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slice_1]dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
З
gdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/concat/values_1Pack\dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/Prod*
N*

axis *
T0	*
_output_shapes
:
е
cdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
┘
^dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/concatConcatV2ednn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/strided_slicegdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/concat/values_1cdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/concat/axis*
N*

Tidx0*
T0	*
_output_shapes
:
┘
ednn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshapeSparseReshapefdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/indicesjdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/DenseToSparseTensor/dense_shape^dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/concat*-
_output_shapes
:         :
√
ndnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshape/IdentityIdentityQdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/lookup*
T0	*#
_output_shapes
:         
Е
adnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/shapeConst*
dtype0*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
valueB"ш     *
_output_shapes
:
°
`dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/meanConst*
dtype0*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
valueB
 *    *
_output_shapes
: 
·
bdnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/stddevConst*
dtype0*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
valueB
 *тЖ=*
_output_shapes
: 
Д
kdnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalTruncatedNormaladnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/shape*
_output_shapes
:	ш*
dtype0*
seed2 *

seed *
T0*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0
┤
_dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/mulMulkdnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/TruncatedNormalbdnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/stddev*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
T0*
_output_shapes
:	ш
в
[dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normalAdd_dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/mul`dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal/mean*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
T0*
_output_shapes
:	ш
З
>dnn/input_from_feature_columns/origin_embedding/weights/part_0
VariableV2*
	container *
_output_shapes
:	ш*
dtype0*
shape:	ш*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
shared_name 
Т
Ednn/input_from_feature_columns/origin_embedding/weights/part_0/AssignAssign>dnn/input_from_feature_columns/origin_embedding/weights/part_0[dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal*
validate_shape(*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
М
Cdnn/input_from_feature_columns/origin_embedding/weights/part_0/readIdentity>dnn/input_from_feature_columns/origin_embedding/weights/part_0*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
T0*
_output_shapes
:	ш
╕
ndnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
╖
mdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ы
hdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SliceSlicegdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshape:1ndnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice/beginmdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice/size*
Index0*
T0	*
_output_shapes
:
▓
hdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Б
gdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/ProdProdhdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slicehdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
│
qdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
Ю
idnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/GatherGathergdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshape:1qdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
 
idnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Cast/xPackgdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Prodidnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Gather*
N*

axis *
T0	*
_output_shapes
:
ы
pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseReshapeSparseReshapeednn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshapegdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshape:1idnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Cast/x*-
_output_shapes
:         :
г
ydnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseReshape/IdentityIdentityndnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshape/Identity*
T0	*#
_output_shapes
:         
│
qdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ы
odnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/GreaterEqualGreaterEqualydnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseReshape/Identityqdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ф
hdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/WhereWhereodnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/GreaterEqual*
T0
*'
_output_shapes
:         
├
pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Н
jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/ReshapeReshapehdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Wherepdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
│
kdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Gather_1Gatherpdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseReshapejdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
╕
kdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Gather_2Gatherydnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseReshape/Identityjdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Р
kdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/IdentityIdentityrdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseReshape:1*
T0	*
_output_shapes
:
╛
|dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╞
Кdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowskdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Gather_1kdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Gather_2kdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Identity|dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
р
Оdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
т
Рdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
т
Рdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
№
Иdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_sliceStridedSliceКdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRowsОdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_slice/stackРdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_1Рdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╧
dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/CastCastИdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ч
Бdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/UniqueUniqueМdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
Т
Лdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/embedding_lookupGatherCdnn/input_from_feature_columns/origin_embedding/weights/part_0/readБdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*'
_output_shapes
:         
т
zdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparseSparseSegmentMeanЛdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/embedding_lookupГdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/Unique:1dnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
├
rdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
║
ldnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape_1ReshapeМdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/SparseFillEmptyRows/SparseFillEmptyRows:2rdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

в
hdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/ShapeShapezdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
└
vdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
┬
xdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
┬
xdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ш
pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_sliceStridedSlicehdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Shapevdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_slice/stackxdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_slice/stack_1xdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
м
jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
И
hdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/stackPackjdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/stack/0pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/strided_slice*
N*

axis *
T0*
_output_shapes
:
Ф
gdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/TileTileldnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape_1hdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
и
mdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/zeros_like	ZerosLikezdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Є
bdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweightsSelectgdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Tilemdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/zeros_likezdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
О
idnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Cast_1Castgdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/InnerFlatten/SparseReshape:1*

DstT0*

SrcT0	*
_output_shapes
:
║
pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
╣
odnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
є
jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_1Sliceidnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Cast_1pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_1/beginodnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_1/size*
Index0*
T0*
_output_shapes
:
М
jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Shape_1Shapebdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights*
out_type0*
T0*
_output_shapes
:
║
pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
┬
odnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ї
jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_2Slicejdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Shape_1pdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_2/beginodnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_2/size*
Index0*
T0*
_output_shapes
:
░
ndnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ў
idnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/concatConcatV2jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_1jdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Slice_2ndnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
Ж
ldnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape_2Reshapebdnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweightsidnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/concat*'
_output_shapes
:         *
Tshape0*
T0
З
Ednn/input_from_feature_columns/input_from_feature_columns/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
Е
@dnn/input_from_feature_columns/input_from_feature_columns/concatConcatV2оdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_embeddingweights/Reshape_2оdnn/input_from_feature_columns/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_2Вdnn/input_from_feature_columns/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embeddingweights/Reshape_2zdnn/input_from_feature_columns/input_from_feature_columns/dest_X_origin_embedding/dest_X_origin_embeddingweights/Reshape_2ndnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/carrier_embeddingweights/Reshape_2hdnn/input_from_feature_columns/input_from_feature_columns/dest_embedding/dest_embeddingweights/Reshape_2ldnn/input_from_feature_columns/input_from_feature_columns/origin_embedding/origin_embeddingweights/Reshape_2ExpandDims_5ExpandDims_11ExpandDims_9ExpandDims_2ExpandDims_3ExpandDims_10ExpandDims_6ExpandDims_1ExpandDims_4Ednn/input_from_feature_columns/input_from_feature_columns/concat/axis*
N*

Tidx0*
T0*'
_output_shapes
:         8
╟
Adnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB"8   @   *
_output_shapes
:
╣
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/minConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB
 *.∙d╛*
_output_shapes
: 
╣
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
valueB
 *.∙d>*
_output_shapes
: 
б
Idnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

:8@*
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0
Ю
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes
: 
░
?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:8@
в
;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:8@
╔
 dnn/hiddenlayer_0/weights/part_0
VariableV2*
	container *
_output_shapes

:8@*
dtype0*
shape
:8@*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
shared_name 
Ч
'dnn/hiddenlayer_0/weights/part_0/AssignAssign dnn/hiddenlayer_0/weights/part_0;dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
T0*
_output_shapes

:8@
▒
%dnn/hiddenlayer_0/weights/part_0/readIdentity dnn/hiddenlayer_0/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
T0*
_output_shapes

:8@
▓
1dnn/hiddenlayer_0/biases/part_0/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
valueB@*    *
_output_shapes
:@
┐
dnn/hiddenlayer_0/biases/part_0
VariableV2*
	container *
_output_shapes
:@*
dtype0*
shape:@*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
shared_name 
Ж
&dnn/hiddenlayer_0/biases/part_0/AssignAssigndnn/hiddenlayer_0/biases/part_01dnn/hiddenlayer_0/biases/part_0/Initializer/zeros*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
T0*
_output_shapes
:@
к
$dnn/hiddenlayer_0/biases/part_0/readIdentitydnn/hiddenlayer_0/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
T0*
_output_shapes
:@
u
dnn/hiddenlayer_0/weightsIdentity%dnn/hiddenlayer_0/weights/part_0/read*
T0*
_output_shapes

:8@
╫
dnn/hiddenlayer_0/MatMulMatMul@dnn/input_from_feature_columns/input_from_feature_columns/concatdnn/hiddenlayer_0/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         @
o
dnn/hiddenlayer_0/biasesIdentity$dnn/hiddenlayer_0/biases/part_0/read*
T0*
_output_shapes
:@
б
dnn/hiddenlayer_0/BiasAddBiasAdddnn/hiddenlayer_0/MatMuldnn/hiddenlayer_0/biases*'
_output_shapes
:         @*
data_formatNHWC*
T0
y
$dnn/hiddenlayer_0/hiddenlayer_0/ReluReludnn/hiddenlayer_0/BiasAdd*
T0*'
_output_shapes
:         @
[
dnn/zero_fraction/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Р
dnn/zero_fraction/EqualEqual$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/zero_fraction/zero*
T0*'
_output_shapes
:         @
x
dnn/zero_fraction/CastCastdnn/zero_fraction/Equal*

DstT0*

SrcT0
*'
_output_shapes
:         @
h
dnn/zero_fraction/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
Н
dnn/zero_fraction/MeanMeandnn/zero_fraction/Castdnn/zero_fraction/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
а
2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsConst*
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_0/fraction_of_zero_values*
_output_shapes
: 
л
-dnn/dnn/hiddenlayer_0/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_0/fraction_of_zero_values/tagsdnn/zero_fraction/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_0/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_0/activation*
_output_shapes
: 
б
 dnn/dnn/hiddenlayer_0/activationHistogramSummary$dnn/dnn/hiddenlayer_0/activation/tag$dnn/hiddenlayer_0/hiddenlayer_0/Relu*
T0*
_output_shapes
: 
╟
Adnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB"@      *
_output_shapes
:
╣
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/minConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB
 *М7М╛*
_output_shapes
: 
╣
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
valueB
 *М7М>*
_output_shapes
: 
б
Idnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

:@*
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0
Ю
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes
: 
░
?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:@
в
;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:@
╔
 dnn/hiddenlayer_1/weights/part_0
VariableV2*
	container *
_output_shapes

:@*
dtype0*
shape
:@*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
shared_name 
Ч
'dnn/hiddenlayer_1/weights/part_0/AssignAssign dnn/hiddenlayer_1/weights/part_0;dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
T0*
_output_shapes

:@
▒
%dnn/hiddenlayer_1/weights/part_0/readIdentity dnn/hiddenlayer_1/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
T0*
_output_shapes

:@
▓
1dnn/hiddenlayer_1/biases/part_0/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
valueB*    *
_output_shapes
:
┐
dnn/hiddenlayer_1/biases/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
shared_name 
Ж
&dnn/hiddenlayer_1/biases/part_0/AssignAssigndnn/hiddenlayer_1/biases/part_01dnn/hiddenlayer_1/biases/part_0/Initializer/zeros*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
T0*
_output_shapes
:
к
$dnn/hiddenlayer_1/biases/part_0/readIdentitydnn/hiddenlayer_1/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
T0*
_output_shapes
:
u
dnn/hiddenlayer_1/weightsIdentity%dnn/hiddenlayer_1/weights/part_0/read*
T0*
_output_shapes

:@
╗
dnn/hiddenlayer_1/MatMulMatMul$dnn/hiddenlayer_0/hiddenlayer_0/Reludnn/hiddenlayer_1/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         
o
dnn/hiddenlayer_1/biasesIdentity$dnn/hiddenlayer_1/biases/part_0/read*
T0*
_output_shapes
:
б
dnn/hiddenlayer_1/BiasAddBiasAdddnn/hiddenlayer_1/MatMuldnn/hiddenlayer_1/biases*'
_output_shapes
:         *
data_formatNHWC*
T0
y
$dnn/hiddenlayer_1/hiddenlayer_1/ReluReludnn/hiddenlayer_1/BiasAdd*
T0*'
_output_shapes
:         
]
dnn/zero_fraction_1/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Ф
dnn/zero_fraction_1/EqualEqual$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/zero_fraction_1/zero*
T0*'
_output_shapes
:         
|
dnn/zero_fraction_1/CastCastdnn/zero_fraction_1/Equal*

DstT0*

SrcT0
*'
_output_shapes
:         
j
dnn/zero_fraction_1/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
У
dnn/zero_fraction_1/MeanMeandnn/zero_fraction_1/Castdnn/zero_fraction_1/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
а
2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsConst*
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_1/fraction_of_zero_values*
_output_shapes
: 
н
-dnn/dnn/hiddenlayer_1/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_1/fraction_of_zero_values/tagsdnn/zero_fraction_1/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_1/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_1/activation*
_output_shapes
: 
б
 dnn/dnn/hiddenlayer_1/activationHistogramSummary$dnn/dnn/hiddenlayer_1/activation/tag$dnn/hiddenlayer_1/hiddenlayer_1/Relu*
T0*
_output_shapes
: 
╟
Adnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
valueB"      *
_output_shapes
:
╣
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/minConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
valueB
 *М7┐*
_output_shapes
: 
╣
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
valueB
 *М7?*
_output_shapes
: 
б
Idnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniformAdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

:*
dtype0*
seed2 *

seed *
T0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0
Ю
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/subSub?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/max?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
T0*
_output_shapes
: 
░
?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mulMulIdnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/RandomUniform?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/sub*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
T0*
_output_shapes

:
в
;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniformAdd?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/mul?dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform/min*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
T0*
_output_shapes

:
╔
 dnn/hiddenlayer_2/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
shared_name 
Ч
'dnn/hiddenlayer_2/weights/part_0/AssignAssign dnn/hiddenlayer_2/weights/part_0;dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
use_locking(*
T0*
_output_shapes

:
▒
%dnn/hiddenlayer_2/weights/part_0/readIdentity dnn/hiddenlayer_2/weights/part_0*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
T0*
_output_shapes

:
▓
1dnn/hiddenlayer_2/biases/part_0/Initializer/zerosConst*
dtype0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
valueB*    *
_output_shapes
:
┐
dnn/hiddenlayer_2/biases/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
shared_name 
Ж
&dnn/hiddenlayer_2/biases/part_0/AssignAssigndnn/hiddenlayer_2/biases/part_01dnn/hiddenlayer_2/biases/part_0/Initializer/zeros*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
use_locking(*
T0*
_output_shapes
:
к
$dnn/hiddenlayer_2/biases/part_0/readIdentitydnn/hiddenlayer_2/biases/part_0*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
T0*
_output_shapes
:
u
dnn/hiddenlayer_2/weightsIdentity%dnn/hiddenlayer_2/weights/part_0/read*
T0*
_output_shapes

:
╗
dnn/hiddenlayer_2/MatMulMatMul$dnn/hiddenlayer_1/hiddenlayer_1/Reludnn/hiddenlayer_2/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         
o
dnn/hiddenlayer_2/biasesIdentity$dnn/hiddenlayer_2/biases/part_0/read*
T0*
_output_shapes
:
б
dnn/hiddenlayer_2/BiasAddBiasAdddnn/hiddenlayer_2/MatMuldnn/hiddenlayer_2/biases*'
_output_shapes
:         *
data_formatNHWC*
T0
y
$dnn/hiddenlayer_2/hiddenlayer_2/ReluReludnn/hiddenlayer_2/BiasAdd*
T0*'
_output_shapes
:         
]
dnn/zero_fraction_2/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
Ф
dnn/zero_fraction_2/EqualEqual$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/zero_fraction_2/zero*
T0*'
_output_shapes
:         
|
dnn/zero_fraction_2/CastCastdnn/zero_fraction_2/Equal*

DstT0*

SrcT0
*'
_output_shapes
:         
j
dnn/zero_fraction_2/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
У
dnn/zero_fraction_2/MeanMeandnn/zero_fraction_2/Castdnn/zero_fraction_2/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
а
2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsConst*
dtype0*>
value5B3 B-dnn/dnn/hiddenlayer_2/fraction_of_zero_values*
_output_shapes
: 
н
-dnn/dnn/hiddenlayer_2/fraction_of_zero_valuesScalarSummary2dnn/dnn/hiddenlayer_2/fraction_of_zero_values/tagsdnn/zero_fraction_2/Mean*
T0*
_output_shapes
: 
Е
$dnn/dnn/hiddenlayer_2/activation/tagConst*
dtype0*1
value(B& B dnn/dnn/hiddenlayer_2/activation*
_output_shapes
: 
б
 dnn/dnn/hiddenlayer_2/activationHistogramSummary$dnn/dnn/hiddenlayer_2/activation/tag$dnn/hiddenlayer_2/hiddenlayer_2/Relu*
T0*
_output_shapes
: 
╣
:dnn/logits/weights/part_0/Initializer/random_uniform/shapeConst*
dtype0*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB"      *
_output_shapes
:
л
8dnn/logits/weights/part_0/Initializer/random_uniform/minConst*
dtype0*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB
 *М7М┐*
_output_shapes
: 
л
8dnn/logits/weights/part_0/Initializer/random_uniform/maxConst*
dtype0*,
_class"
 loc:@dnn/logits/weights/part_0*
valueB
 *М7М?*
_output_shapes
: 
М
Bdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniformRandomUniform:dnn/logits/weights/part_0/Initializer/random_uniform/shape*
_output_shapes

:*
dtype0*
seed2 *

seed *
T0*,
_class"
 loc:@dnn/logits/weights/part_0
В
8dnn/logits/weights/part_0/Initializer/random_uniform/subSub8dnn/logits/weights/part_0/Initializer/random_uniform/max8dnn/logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes
: 
Ф
8dnn/logits/weights/part_0/Initializer/random_uniform/mulMulBdnn/logits/weights/part_0/Initializer/random_uniform/RandomUniform8dnn/logits/weights/part_0/Initializer/random_uniform/sub*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes

:
Ж
4dnn/logits/weights/part_0/Initializer/random_uniformAdd8dnn/logits/weights/part_0/Initializer/random_uniform/mul8dnn/logits/weights/part_0/Initializer/random_uniform/min*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes

:
╗
dnn/logits/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*,
_class"
 loc:@dnn/logits/weights/part_0*
shared_name 
√
 dnn/logits/weights/part_0/AssignAssigndnn/logits/weights/part_04dnn/logits/weights/part_0/Initializer/random_uniform*
validate_shape(*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
T0*
_output_shapes

:
Ь
dnn/logits/weights/part_0/readIdentitydnn/logits/weights/part_0*,
_class"
 loc:@dnn/logits/weights/part_0*
T0*
_output_shapes

:
д
*dnn/logits/biases/part_0/Initializer/zerosConst*
dtype0*+
_class!
loc:@dnn/logits/biases/part_0*
valueB*    *
_output_shapes
:
▒
dnn/logits/biases/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*+
_class!
loc:@dnn/logits/biases/part_0*
shared_name 
ъ
dnn/logits/biases/part_0/AssignAssigndnn/logits/biases/part_0*dnn/logits/biases/part_0/Initializer/zeros*
validate_shape(*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
T0*
_output_shapes
:
Х
dnn/logits/biases/part_0/readIdentitydnn/logits/biases/part_0*+
_class!
loc:@dnn/logits/biases/part_0*
T0*
_output_shapes
:
g
dnn/logits/weightsIdentitydnn/logits/weights/part_0/read*
T0*
_output_shapes

:
н
dnn/logits/MatMulMatMul$dnn/hiddenlayer_2/hiddenlayer_2/Reludnn/logits/weights*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:         
a
dnn/logits/biasesIdentitydnn/logits/biases/part_0/read*
T0*
_output_shapes
:
М
dnn/logits/BiasAddBiasAdddnn/logits/MatMuldnn/logits/biases*'
_output_shapes
:         *
data_formatNHWC*
T0
]
dnn/zero_fraction_3/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
В
dnn/zero_fraction_3/EqualEqualdnn/logits/BiasAdddnn/zero_fraction_3/zero*
T0*'
_output_shapes
:         
|
dnn/zero_fraction_3/CastCastdnn/zero_fraction_3/Equal*

DstT0*

SrcT0
*'
_output_shapes
:         
j
dnn/zero_fraction_3/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
У
dnn/zero_fraction_3/MeanMeandnn/zero_fraction_3/Castdnn/zero_fraction_3/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Т
+dnn/dnn/logits/fraction_of_zero_values/tagsConst*
dtype0*7
value.B, B&dnn/dnn/logits/fraction_of_zero_values*
_output_shapes
: 
Я
&dnn/dnn/logits/fraction_of_zero_valuesScalarSummary+dnn/dnn/logits/fraction_of_zero_values/tagsdnn/zero_fraction_3/Mean*
T0*
_output_shapes
: 
w
dnn/dnn/logits/activation/tagConst*
dtype0**
value!B Bdnn/dnn/logits/activation*
_output_shapes
: 
Б
dnn/dnn/logits/activationHistogramSummarydnn/dnn/logits/activation/tagdnn/logits/BiasAdd*
T0*
_output_shapes
: 
М
linear/linear/bucketize	BucketizeExpandDims_5*&

boundaries
"  аA  ▄A  B  *B  HB*
T0*'
_output_shapes
:         
j
linear/linear/shapeShapelinear/linear/bucketize*
out_type0*
T0*
_output_shapes
:
k
!linear/linear/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
m
#linear/linear/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
m
#linear/linear/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
┐
linear/linear/strided_sliceStridedSlicelinear/linear/shape!linear/linear/strided_slice/stack#linear/linear/strided_slice/stack_1#linear/linear/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
[
linear/linear/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
[
linear/linear/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
а
linear/linear/rangeRangelinear/linear/range/startlinear/linear/strided_slicelinear/linear/range/delta*

Tidx0*#
_output_shapes
:         
x
linear/linear/zeros/shapePacklinear/linear/strided_slice*
N*

axis *
T0*
_output_shapes
:
[
linear/linear/zeros/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
С
linear/linear/zerosFilllinear/linear/zeros/shapelinear/linear/zeros/Const*

index_type0*
T0*#
_output_shapes
:         
n
linear/linear/reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Т
linear/linear/reshapeReshapelinear/linear/bucketizelinear/linear/reshape/shape*#
_output_shapes
:         *
Tshape0*
T0
М
linear/linear/stackPacklinear/linear/rangelinear/linear/zeros*
N*

axis *
T0*'
_output_shapes
:         
Z
linear/linear/transpose/RankRanklinear/linear/stack*
T0*
_output_shapes
: 
_
linear/linear/transpose/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
А
linear/linear/transpose/subSublinear/linear/transpose/Ranklinear/linear/transpose/sub/y*
T0*
_output_shapes
: 
e
#linear/linear/transpose/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
e
#linear/linear/transpose/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╢
linear/linear/transpose/RangeRange#linear/linear/transpose/Range/startlinear/linear/transpose/Rank#linear/linear/transpose/Range/delta*

Tidx0*
_output_shapes
:
Е
linear/linear/transpose/sub_1Sublinear/linear/transpose/sublinear/linear/transpose/Range*
T0*
_output_shapes
:
Ч
linear/linear/transpose	Transposelinear/linear/stacklinear/linear/transpose/sub_1*
Tperm0*
T0*'
_output_shapes
:         
w
linear/linear/ToInt64Castlinear/linear/transpose*

DstT0	*

SrcT0*'
_output_shapes
:         
Y
linear/linear/stack_1/1Const*
dtype0*
value	B :*
_output_shapes
: 
Н
linear/linear/stack_1Packlinear/linear/strided_slicelinear/linear/stack_1/1*
N*

axis *
T0*
_output_shapes
:
j
linear/linear/ToInt64_1Castlinear/linear/stack_1*

DstT0	*

SrcT0*
_output_shapes
:
П
linear/linear/bucketize_1	BucketizeExpandDims_11*&

boundaries
"  Ё┬  ╫┬  ╛┬  е┬  М┬*
T0*'
_output_shapes
:         
n
linear/linear/shape_1Shapelinear/linear/bucketize_1*
out_type0*
T0*
_output_shapes
:
m
#linear/linear/strided_slice_1/stackConst*
dtype0*
valueB: *
_output_shapes
:
o
%linear/linear/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
o
%linear/linear/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╔
linear/linear/strided_slice_1StridedSlicelinear/linear/shape_1#linear/linear/strided_slice_1/stack%linear/linear/strided_slice_1/stack_1%linear/linear/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
]
linear/linear/range_1/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
linear/linear/range_1/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
и
linear/linear/range_1Rangelinear/linear/range_1/startlinear/linear/strided_slice_1linear/linear/range_1/delta*

Tidx0*#
_output_shapes
:         
|
linear/linear/zeros_1/shapePacklinear/linear/strided_slice_1*
N*

axis *
T0*
_output_shapes
:
]
linear/linear/zeros_1/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
linear/linear/zeros_1Filllinear/linear/zeros_1/shapelinear/linear/zeros_1/Const*

index_type0*
T0*#
_output_shapes
:         
p
linear/linear/reshape_1/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ш
linear/linear/reshape_1Reshapelinear/linear/bucketize_1linear/linear/reshape_1/shape*#
_output_shapes
:         *
Tshape0*
T0
Т
linear/linear/stack_2Packlinear/linear/range_1linear/linear/zeros_1*
N*

axis *
T0*'
_output_shapes
:         
^
linear/linear/transpose_1/RankRanklinear/linear/stack_2*
T0*
_output_shapes
: 
a
linear/linear/transpose_1/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ж
linear/linear/transpose_1/subSublinear/linear/transpose_1/Ranklinear/linear/transpose_1/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_1/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%linear/linear/transpose_1/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╛
linear/linear/transpose_1/RangeRange%linear/linear/transpose_1/Range/startlinear/linear/transpose_1/Rank%linear/linear/transpose_1/Range/delta*

Tidx0*
_output_shapes
:
Л
linear/linear/transpose_1/sub_1Sublinear/linear/transpose_1/sublinear/linear/transpose_1/Range*
T0*
_output_shapes
:
Э
linear/linear/transpose_1	Transposelinear/linear/stack_2linear/linear/transpose_1/sub_1*
Tperm0*
T0*'
_output_shapes
:         
{
linear/linear/ToInt64_2Castlinear/linear/transpose_1*

DstT0	*

SrcT0*'
_output_shapes
:         
Y
linear/linear/stack_3/1Const*
dtype0*
value	B :*
_output_shapes
: 
П
linear/linear/stack_3Packlinear/linear/strided_slice_1linear/linear/stack_3/1*
N*

axis *
T0*
_output_shapes
:
j
linear/linear/ToInt64_3Castlinear/linear/stack_3*

DstT0	*

SrcT0*
_output_shapes
:
s
linear/linear/ToInt64_4Castlinear/linear/reshape*

DstT0	*

SrcT0*#
_output_shapes
:         
u
linear/linear/ToInt64_5Castlinear/linear/reshape_1*

DstT0	*

SrcT0*#
_output_shapes
:         
№
linear/linear/crossSparseFeatureCrosslinear/linear/ToInt64linear/linear/ToInt64_2linear/linear/ToInt64_4linear/linear/ToInt64_5linear/linear/ToInt64_1linear/linear/ToInt64_3*
internal_type0	*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N*
num_buckets*
dense_types
 *
sparse_types
2		
Ў
Olinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/Initializer/zerosConst*
dtype0*P
_classF
DBloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*
valueB*    *
_output_shapes

:
Г
=linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*P
_classF
DBloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*
shared_name 
В
Dlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/AssignAssign=linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0Olinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/Initializer/zeros*
validate_shape(*P
_classF
DBloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
И
Blinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/readIdentity=linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*P
_classF
DBloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*
T0*
_output_shapes

:
╗
qlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
║
plinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
в
klinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SliceSlicelinear/linear/cross:2qlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice/beginplinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
╡
klinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
К
jlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/ProdProdklinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Sliceklinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
╢
tlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
╥
llinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/GatherGatherlinear/linear/cross:2tlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
И
llinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Cast/xPackjlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Prodllinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
═
slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseReshapeSparseReshapelinear/linear/crosslinear/linear/cross:2llinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Cast/x*-
_output_shapes
:         :
═
|linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseReshape/IdentityIdentitylinear/linear/cross:1*
T0	*#
_output_shapes
:         
╢
tlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
д
rlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/GreaterEqualGreaterEqual|linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseReshape/Identitytlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ъ
klinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/WhereWhererlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/GreaterEqual*
T0
*'
_output_shapes
:         
╞
slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ц
mlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/ReshapeReshapeklinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Whereslinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
╝
nlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Gather_1Gatherslinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseReshapemlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
┴
nlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Gather_2Gather|linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseReshape/Identitymlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Ц
nlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/IdentityIdentityulinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseReshape:1*
T0	*
_output_shapes
:
┴
linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╒
Нlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsnlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Gather_1nlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Gather_2nlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Identitylinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
у
Сlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
х
Уlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
х
Уlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Л
Лlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_sliceStridedSliceНlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRowsСlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stackУlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1Уlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╓
Вlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/CastCastЛlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
э
Дlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/UniqueUniqueПlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
Ц
Оlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/embedding_lookupGatherBlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/readДlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*P
_classF
DBloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*'
_output_shapes
:         
ю
}linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparseSparseSegmentSumОlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/embedding_lookupЖlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/Unique:1Вlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
╞
ulinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
├
olinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape_1ReshapeПlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:2ulinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

и
klinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/ShapeShape}linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
├
ylinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
┼
{linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
┼
{linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ў
slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_sliceStridedSliceklinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Shapeylinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_slice/stack{linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_slice/stack_1{linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
п
mlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
С
klinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/stackPackmlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/stack/0slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
Э
jlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/TileTileolinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape_1klinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
о
plinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/zeros_like	ZerosLike}linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
■
elinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weightsSelectjlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Tileplinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/zeros_like}linear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
┐
llinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Cast_1Castlinear/linear/cross:2*

DstT0*

SrcT0	*
_output_shapes
:
╜
slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
╝
rlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
 
mlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_1Slicellinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Cast_1slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_1/beginrlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
mlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Shape_1Shapeelinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights*
out_type0*
T0*
_output_shapes
:
╜
slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
┼
rlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
А
mlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_2Slicemlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Shape_1slinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_2/beginrlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
│
qlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Г
llinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/concatConcatV2mlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_1mlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Slice_2qlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
П
olinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape_2Reshapeelinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weightsllinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/concat*'
_output_shapes
:         *
Tshape0*
T0
l
linear/linear/Reshape/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
ю
linear/linear/ReshapeReshapeolinear/linear/arr_lat_bucketized_X_arr_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_weights/Reshape_2linear/linear/Reshape/shape*'
_output_shapes
:         *
Tshape0*
T0
П
linear/linear/bucketize_2	BucketizeExpandDims_10*&

boundaries
"  аA  ▄A  B  *B  HB*
T0*'
_output_shapes
:         
n
linear/linear/shape_2Shapelinear/linear/bucketize_2*
out_type0*
T0*
_output_shapes
:
m
#linear/linear/strided_slice_2/stackConst*
dtype0*
valueB: *
_output_shapes
:
o
%linear/linear/strided_slice_2/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
o
%linear/linear/strided_slice_2/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╔
linear/linear/strided_slice_2StridedSlicelinear/linear/shape_2#linear/linear/strided_slice_2/stack%linear/linear/strided_slice_2/stack_1%linear/linear/strided_slice_2/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
]
linear/linear/range_2/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
linear/linear/range_2/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
и
linear/linear/range_2Rangelinear/linear/range_2/startlinear/linear/strided_slice_2linear/linear/range_2/delta*

Tidx0*#
_output_shapes
:         
|
linear/linear/zeros_2/shapePacklinear/linear/strided_slice_2*
N*

axis *
T0*
_output_shapes
:
]
linear/linear/zeros_2/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
linear/linear/zeros_2Filllinear/linear/zeros_2/shapelinear/linear/zeros_2/Const*

index_type0*
T0*#
_output_shapes
:         
p
linear/linear/reshape_2/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ш
linear/linear/reshape_2Reshapelinear/linear/bucketize_2linear/linear/reshape_2/shape*#
_output_shapes
:         *
Tshape0*
T0
Т
linear/linear/stack_4Packlinear/linear/range_2linear/linear/zeros_2*
N*

axis *
T0*'
_output_shapes
:         
^
linear/linear/transpose_2/RankRanklinear/linear/stack_4*
T0*
_output_shapes
: 
a
linear/linear/transpose_2/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ж
linear/linear/transpose_2/subSublinear/linear/transpose_2/Ranklinear/linear/transpose_2/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_2/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%linear/linear/transpose_2/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╛
linear/linear/transpose_2/RangeRange%linear/linear/transpose_2/Range/startlinear/linear/transpose_2/Rank%linear/linear/transpose_2/Range/delta*

Tidx0*
_output_shapes
:
Л
linear/linear/transpose_2/sub_1Sublinear/linear/transpose_2/sublinear/linear/transpose_2/Range*
T0*
_output_shapes
:
Э
linear/linear/transpose_2	Transposelinear/linear/stack_4linear/linear/transpose_2/sub_1*
Tperm0*
T0*'
_output_shapes
:         
{
linear/linear/ToInt64_6Castlinear/linear/transpose_2*

DstT0	*

SrcT0*'
_output_shapes
:         
Y
linear/linear/stack_5/1Const*
dtype0*
value	B :*
_output_shapes
: 
П
linear/linear/stack_5Packlinear/linear/strided_slice_2linear/linear/stack_5/1*
N*

axis *
T0*
_output_shapes
:
j
linear/linear/ToInt64_7Castlinear/linear/stack_5*

DstT0	*

SrcT0*
_output_shapes
:
О
linear/linear/bucketize_3	BucketizeExpandDims_6*&

boundaries
"  Ё┬  ╫┬  ╛┬  е┬  М┬*
T0*'
_output_shapes
:         
n
linear/linear/shape_3Shapelinear/linear/bucketize_3*
out_type0*
T0*
_output_shapes
:
m
#linear/linear/strided_slice_3/stackConst*
dtype0*
valueB: *
_output_shapes
:
o
%linear/linear/strided_slice_3/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
o
%linear/linear/strided_slice_3/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╔
linear/linear/strided_slice_3StridedSlicelinear/linear/shape_3#linear/linear/strided_slice_3/stack%linear/linear/strided_slice_3/stack_1%linear/linear/strided_slice_3/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
]
linear/linear/range_3/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
linear/linear/range_3/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
и
linear/linear/range_3Rangelinear/linear/range_3/startlinear/linear/strided_slice_3linear/linear/range_3/delta*

Tidx0*#
_output_shapes
:         
|
linear/linear/zeros_3/shapePacklinear/linear/strided_slice_3*
N*

axis *
T0*
_output_shapes
:
]
linear/linear/zeros_3/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
linear/linear/zeros_3Filllinear/linear/zeros_3/shapelinear/linear/zeros_3/Const*

index_type0*
T0*#
_output_shapes
:         
p
linear/linear/reshape_3/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ш
linear/linear/reshape_3Reshapelinear/linear/bucketize_3linear/linear/reshape_3/shape*#
_output_shapes
:         *
Tshape0*
T0
Т
linear/linear/stack_6Packlinear/linear/range_3linear/linear/zeros_3*
N*

axis *
T0*'
_output_shapes
:         
^
linear/linear/transpose_3/RankRanklinear/linear/stack_6*
T0*
_output_shapes
: 
a
linear/linear/transpose_3/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ж
linear/linear/transpose_3/subSublinear/linear/transpose_3/Ranklinear/linear/transpose_3/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_3/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%linear/linear/transpose_3/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╛
linear/linear/transpose_3/RangeRange%linear/linear/transpose_3/Range/startlinear/linear/transpose_3/Rank%linear/linear/transpose_3/Range/delta*

Tidx0*
_output_shapes
:
Л
linear/linear/transpose_3/sub_1Sublinear/linear/transpose_3/sublinear/linear/transpose_3/Range*
T0*
_output_shapes
:
Э
linear/linear/transpose_3	Transposelinear/linear/stack_6linear/linear/transpose_3/sub_1*
Tperm0*
T0*'
_output_shapes
:         
{
linear/linear/ToInt64_8Castlinear/linear/transpose_3*

DstT0	*

SrcT0*'
_output_shapes
:         
Y
linear/linear/stack_7/1Const*
dtype0*
value	B :*
_output_shapes
: 
П
linear/linear/stack_7Packlinear/linear/strided_slice_3linear/linear/stack_7/1*
N*

axis *
T0*
_output_shapes
:
j
linear/linear/ToInt64_9Castlinear/linear/stack_7*

DstT0	*

SrcT0*
_output_shapes
:
v
linear/linear/ToInt64_10Castlinear/linear/reshape_2*

DstT0	*

SrcT0*#
_output_shapes
:         
v
linear/linear/ToInt64_11Castlinear/linear/reshape_3*

DstT0	*

SrcT0*#
_output_shapes
:         
В
linear/linear/cross_1SparseFeatureCrosslinear/linear/ToInt64_6linear/linear/ToInt64_8linear/linear/ToInt64_10linear/linear/ToInt64_11linear/linear/ToInt64_7linear/linear/ToInt64_9*
internal_type0	*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N*
num_buckets*
dense_types
 *
sparse_types
2		
Ў
Olinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zerosConst*
dtype0*P
_classF
DBloc:@linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
valueB*    *
_output_shapes

:
Г
=linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*P
_classF
DBloc:@linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
shared_name 
В
Dlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/AssignAssign=linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0Olinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros*
validate_shape(*P
_classF
DBloc:@linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
И
Blinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/readIdentity=linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*P
_classF
DBloc:@linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
T0*
_output_shapes

:
╗
qlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
║
plinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
д
klinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SliceSlicelinear/linear/cross_1:2qlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/beginplinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
╡
klinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
К
jlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/ProdProdklinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Sliceklinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
╢
tlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
╘
llinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/GatherGatherlinear/linear/cross_1:2tlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
И
llinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast/xPackjlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Prodllinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
╤
slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshapeSparseReshapelinear/linear/cross_1linear/linear/cross_1:2llinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast/x*-
_output_shapes
:         :
╧
|linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape/IdentityIdentitylinear/linear/cross_1:1*
T0	*#
_output_shapes
:         
╢
tlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
д
rlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqualGreaterEqual|linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape/Identitytlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ъ
klinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/WhereWhererlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqual*
T0
*'
_output_shapes
:         
╞
slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ц
mlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/ReshapeReshapeklinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Whereslinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
╝
nlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_1Gatherslinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshapemlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
┴
nlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_2Gather|linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape/Identitymlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Ц
nlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/IdentityIdentityulinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape:1*
T0	*
_output_shapes
:
┴
linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╒
Нlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRowsnlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_1nlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_2nlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Identitylinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
у
Сlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
х
Уlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
х
Уlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
Л
Лlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_sliceStridedSliceНlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRowsСlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stackУlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1Уlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╓
Вlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/CastCastЛlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
э
Дlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/UniqueUniqueПlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
Ц
Оlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/embedding_lookupGatherBlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/readДlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*P
_classF
DBloc:@linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*'
_output_shapes
:         
ю
}linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparseSparseSegmentSumОlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/embedding_lookupЖlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/Unique:1Вlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
╞
ulinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
├
olinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1ReshapeПlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:2ulinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

и
klinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/ShapeShape}linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
├
ylinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
┼
{linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
┼
{linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
ў
slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_sliceStridedSliceklinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Shapeylinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack{linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_1{linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
п
mlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
С
klinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/stackPackmlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/stack/0slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
Э
jlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/TileTileolinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1klinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
о
plinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/zeros_like	ZerosLike}linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
■
elinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weightsSelectjlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Tileplinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/zeros_like}linear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
┴
llinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast_1Castlinear/linear/cross_1:2*

DstT0*

SrcT0	*
_output_shapes
:
╜
slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
╝
rlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
 
mlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1Slicellinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast_1slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/beginrlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
mlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Shape_1Shapeelinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights*
out_type0*
T0*
_output_shapes
:
╜
slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
┼
rlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
А
mlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2Slicemlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Shape_1slinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/beginrlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
│
qlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Г
llinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/concatConcatV2mlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1mlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2qlinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
П
olinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_2Reshapeelinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weightsllinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/concat*'
_output_shapes
:         *
Tshape0*
T0
n
linear/linear/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
Є
linear/linear/Reshape_1Reshapeolinear/linear/dep_lat_bucketized_X_dep_lon_bucketized/dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_2linear/linear/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0
l
linear/linear/shape_4Shapelinear/linear/bucketize*
out_type0*
T0*
_output_shapes
:
m
#linear/linear/strided_slice_4/stackConst*
dtype0*
valueB: *
_output_shapes
:
o
%linear/linear/strided_slice_4/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
o
%linear/linear/strided_slice_4/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╔
linear/linear/strided_slice_4StridedSlicelinear/linear/shape_4#linear/linear/strided_slice_4/stack%linear/linear/strided_slice_4/stack_1%linear/linear/strided_slice_4/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
]
linear/linear/range_4/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
linear/linear/range_4/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
и
linear/linear/range_4Rangelinear/linear/range_4/startlinear/linear/strided_slice_4linear/linear/range_4/delta*

Tidx0*#
_output_shapes
:         
|
linear/linear/zeros_4/shapePacklinear/linear/strided_slice_4*
N*

axis *
T0*
_output_shapes
:
]
linear/linear/zeros_4/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
linear/linear/zeros_4Filllinear/linear/zeros_4/shapelinear/linear/zeros_4/Const*

index_type0*
T0*#
_output_shapes
:         
p
linear/linear/reshape_4/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ц
linear/linear/reshape_4Reshapelinear/linear/bucketizelinear/linear/reshape_4/shape*#
_output_shapes
:         *
Tshape0*
T0
Т
linear/linear/stack_8Packlinear/linear/range_4linear/linear/zeros_4*
N*

axis *
T0*'
_output_shapes
:         
^
linear/linear/transpose_4/RankRanklinear/linear/stack_8*
T0*
_output_shapes
: 
a
linear/linear/transpose_4/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ж
linear/linear/transpose_4/subSublinear/linear/transpose_4/Ranklinear/linear/transpose_4/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_4/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%linear/linear/transpose_4/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╛
linear/linear/transpose_4/RangeRange%linear/linear/transpose_4/Range/startlinear/linear/transpose_4/Rank%linear/linear/transpose_4/Range/delta*

Tidx0*
_output_shapes
:
Л
linear/linear/transpose_4/sub_1Sublinear/linear/transpose_4/sublinear/linear/transpose_4/Range*
T0*
_output_shapes
:
Э
linear/linear/transpose_4	Transposelinear/linear/stack_8linear/linear/transpose_4/sub_1*
Tperm0*
T0*'
_output_shapes
:         
|
linear/linear/ToInt64_12Castlinear/linear/transpose_4*

DstT0	*

SrcT0*'
_output_shapes
:         
Y
linear/linear/stack_9/1Const*
dtype0*
value	B :*
_output_shapes
: 
П
linear/linear/stack_9Packlinear/linear/strided_slice_4linear/linear/stack_9/1*
N*

axis *
T0*
_output_shapes
:
k
linear/linear/ToInt64_13Castlinear/linear/stack_9*

DstT0	*

SrcT0*
_output_shapes
:
n
linear/linear/shape_5Shapelinear/linear/bucketize_1*
out_type0*
T0*
_output_shapes
:
m
#linear/linear/strided_slice_5/stackConst*
dtype0*
valueB: *
_output_shapes
:
o
%linear/linear/strided_slice_5/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
o
%linear/linear/strided_slice_5/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╔
linear/linear/strided_slice_5StridedSlicelinear/linear/shape_5#linear/linear/strided_slice_5/stack%linear/linear/strided_slice_5/stack_1%linear/linear/strided_slice_5/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
]
linear/linear/range_5/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
linear/linear/range_5/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
и
linear/linear/range_5Rangelinear/linear/range_5/startlinear/linear/strided_slice_5linear/linear/range_5/delta*

Tidx0*#
_output_shapes
:         
|
linear/linear/zeros_5/shapePacklinear/linear/strided_slice_5*
N*

axis *
T0*
_output_shapes
:
]
linear/linear/zeros_5/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
linear/linear/zeros_5Filllinear/linear/zeros_5/shapelinear/linear/zeros_5/Const*

index_type0*
T0*#
_output_shapes
:         
p
linear/linear/reshape_5/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ш
linear/linear/reshape_5Reshapelinear/linear/bucketize_1linear/linear/reshape_5/shape*#
_output_shapes
:         *
Tshape0*
T0
У
linear/linear/stack_10Packlinear/linear/range_5linear/linear/zeros_5*
N*

axis *
T0*'
_output_shapes
:         
_
linear/linear/transpose_5/RankRanklinear/linear/stack_10*
T0*
_output_shapes
: 
a
linear/linear/transpose_5/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ж
linear/linear/transpose_5/subSublinear/linear/transpose_5/Ranklinear/linear/transpose_5/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_5/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%linear/linear/transpose_5/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╛
linear/linear/transpose_5/RangeRange%linear/linear/transpose_5/Range/startlinear/linear/transpose_5/Rank%linear/linear/transpose_5/Range/delta*

Tidx0*
_output_shapes
:
Л
linear/linear/transpose_5/sub_1Sublinear/linear/transpose_5/sublinear/linear/transpose_5/Range*
T0*
_output_shapes
:
Ю
linear/linear/transpose_5	Transposelinear/linear/stack_10linear/linear/transpose_5/sub_1*
Tperm0*
T0*'
_output_shapes
:         
|
linear/linear/ToInt64_14Castlinear/linear/transpose_5*

DstT0	*

SrcT0*'
_output_shapes
:         
Z
linear/linear/stack_11/1Const*
dtype0*
value	B :*
_output_shapes
: 
С
linear/linear/stack_11Packlinear/linear/strided_slice_5linear/linear/stack_11/1*
N*

axis *
T0*
_output_shapes
:
l
linear/linear/ToInt64_15Castlinear/linear/stack_11*

DstT0	*

SrcT0*
_output_shapes
:
n
linear/linear/shape_6Shapelinear/linear/bucketize_2*
out_type0*
T0*
_output_shapes
:
m
#linear/linear/strided_slice_6/stackConst*
dtype0*
valueB: *
_output_shapes
:
o
%linear/linear/strided_slice_6/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
o
%linear/linear/strided_slice_6/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╔
linear/linear/strided_slice_6StridedSlicelinear/linear/shape_6#linear/linear/strided_slice_6/stack%linear/linear/strided_slice_6/stack_1%linear/linear/strided_slice_6/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
]
linear/linear/range_6/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
linear/linear/range_6/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
и
linear/linear/range_6Rangelinear/linear/range_6/startlinear/linear/strided_slice_6linear/linear/range_6/delta*

Tidx0*#
_output_shapes
:         
|
linear/linear/zeros_6/shapePacklinear/linear/strided_slice_6*
N*

axis *
T0*
_output_shapes
:
]
linear/linear/zeros_6/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
linear/linear/zeros_6Filllinear/linear/zeros_6/shapelinear/linear/zeros_6/Const*

index_type0*
T0*#
_output_shapes
:         
p
linear/linear/reshape_6/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ш
linear/linear/reshape_6Reshapelinear/linear/bucketize_2linear/linear/reshape_6/shape*#
_output_shapes
:         *
Tshape0*
T0
У
linear/linear/stack_12Packlinear/linear/range_6linear/linear/zeros_6*
N*

axis *
T0*'
_output_shapes
:         
_
linear/linear/transpose_6/RankRanklinear/linear/stack_12*
T0*
_output_shapes
: 
a
linear/linear/transpose_6/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ж
linear/linear/transpose_6/subSublinear/linear/transpose_6/Ranklinear/linear/transpose_6/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_6/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%linear/linear/transpose_6/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╛
linear/linear/transpose_6/RangeRange%linear/linear/transpose_6/Range/startlinear/linear/transpose_6/Rank%linear/linear/transpose_6/Range/delta*

Tidx0*
_output_shapes
:
Л
linear/linear/transpose_6/sub_1Sublinear/linear/transpose_6/sublinear/linear/transpose_6/Range*
T0*
_output_shapes
:
Ю
linear/linear/transpose_6	Transposelinear/linear/stack_12linear/linear/transpose_6/sub_1*
Tperm0*
T0*'
_output_shapes
:         
|
linear/linear/ToInt64_16Castlinear/linear/transpose_6*

DstT0	*

SrcT0*'
_output_shapes
:         
Z
linear/linear/stack_13/1Const*
dtype0*
value	B :*
_output_shapes
: 
С
linear/linear/stack_13Packlinear/linear/strided_slice_6linear/linear/stack_13/1*
N*

axis *
T0*
_output_shapes
:
l
linear/linear/ToInt64_17Castlinear/linear/stack_13*

DstT0	*

SrcT0*
_output_shapes
:
n
linear/linear/shape_7Shapelinear/linear/bucketize_3*
out_type0*
T0*
_output_shapes
:
m
#linear/linear/strided_slice_7/stackConst*
dtype0*
valueB: *
_output_shapes
:
o
%linear/linear/strided_slice_7/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
o
%linear/linear/strided_slice_7/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╔
linear/linear/strided_slice_7StridedSlicelinear/linear/shape_7#linear/linear/strided_slice_7/stack%linear/linear/strided_slice_7/stack_1%linear/linear/strided_slice_7/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
]
linear/linear/range_7/startConst*
dtype0*
value	B : *
_output_shapes
: 
]
linear/linear/range_7/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
и
linear/linear/range_7Rangelinear/linear/range_7/startlinear/linear/strided_slice_7linear/linear/range_7/delta*

Tidx0*#
_output_shapes
:         
|
linear/linear/zeros_7/shapePacklinear/linear/strided_slice_7*
N*

axis *
T0*
_output_shapes
:
]
linear/linear/zeros_7/ConstConst*
dtype0*
value	B : *
_output_shapes
: 
Ч
linear/linear/zeros_7Filllinear/linear/zeros_7/shapelinear/linear/zeros_7/Const*

index_type0*
T0*#
_output_shapes
:         
p
linear/linear/reshape_7/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Ш
linear/linear/reshape_7Reshapelinear/linear/bucketize_3linear/linear/reshape_7/shape*#
_output_shapes
:         *
Tshape0*
T0
У
linear/linear/stack_14Packlinear/linear/range_7linear/linear/zeros_7*
N*

axis *
T0*'
_output_shapes
:         
_
linear/linear/transpose_7/RankRanklinear/linear/stack_14*
T0*
_output_shapes
: 
a
linear/linear/transpose_7/sub/yConst*
dtype0*
value	B :*
_output_shapes
: 
Ж
linear/linear/transpose_7/subSublinear/linear/transpose_7/Ranklinear/linear/transpose_7/sub/y*
T0*
_output_shapes
: 
g
%linear/linear/transpose_7/Range/startConst*
dtype0*
value	B : *
_output_shapes
: 
g
%linear/linear/transpose_7/Range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╛
linear/linear/transpose_7/RangeRange%linear/linear/transpose_7/Range/startlinear/linear/transpose_7/Rank%linear/linear/transpose_7/Range/delta*

Tidx0*
_output_shapes
:
Л
linear/linear/transpose_7/sub_1Sublinear/linear/transpose_7/sublinear/linear/transpose_7/Range*
T0*
_output_shapes
:
Ю
linear/linear/transpose_7	Transposelinear/linear/stack_14linear/linear/transpose_7/sub_1*
Tperm0*
T0*'
_output_shapes
:         
|
linear/linear/ToInt64_18Castlinear/linear/transpose_7*

DstT0	*

SrcT0*'
_output_shapes
:         
Z
linear/linear/stack_15/1Const*
dtype0*
value	B :*
_output_shapes
: 
С
linear/linear/stack_15Packlinear/linear/strided_slice_7linear/linear/stack_15/1*
N*

axis *
T0*
_output_shapes
:
l
linear/linear/ToInt64_19Castlinear/linear/stack_15*

DstT0	*

SrcT0*
_output_shapes
:
v
linear/linear/ToInt64_20Castlinear/linear/reshape_4*

DstT0	*

SrcT0*#
_output_shapes
:         
v
linear/linear/ToInt64_21Castlinear/linear/reshape_5*

DstT0	*

SrcT0*#
_output_shapes
:         
v
linear/linear/ToInt64_22Castlinear/linear/reshape_6*

DstT0	*

SrcT0*#
_output_shapes
:         
v
linear/linear/ToInt64_23Castlinear/linear/reshape_7*

DstT0	*

SrcT0*#
_output_shapes
:         
е
linear/linear/cross_2SparseFeatureCrosslinear/linear/ToInt64_12linear/linear/ToInt64_14linear/linear/ToInt64_16linear/linear/ToInt64_18linear/linear/ToInt64_20linear/linear/ToInt64_21linear/linear/ToInt64_22linear/linear/ToInt64_23linear/linear/ToInt64_13linear/linear/ToInt64_15linear/linear/ToInt64_17linear/linear/ToInt64_19*
internal_type0	*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N*
num_bucketsё*
dense_types
 *
sparse_types
2				
╠
ylinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zerosConst*
dtype0*z
_classp
nlloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
valueB	ё*    *
_output_shapes
:	ё
┘
glinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0
VariableV2*
	container *
_output_shapes
:	ё*
dtype0*
shape:	ё*z
_classp
nlloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
shared_name 
л
nlinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/AssignAssignglinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0ylinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros*
validate_shape(*z
_classp
nlloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ё
З
llinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/readIdentityglinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*z
_classp
nlloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
T0*
_output_shapes
:	ё
Р
┼linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
П
─linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
г
┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SliceSlicelinear/linear/cross_2:2┼linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/begin─linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
К
┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
Й
╛linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/ProdProd┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
Л
╚linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
■
└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/GatherGatherlinear/linear/cross_2:2╚linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
З
└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast/xPack╛linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Prod└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
√
╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshapeSparseReshapelinear/linear/cross_2linear/linear/cross_2:2└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast/x*-
_output_shapes
:         :
д
╨linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape/IdentityIdentitylinear/linear/cross_2:1*
T0	*#
_output_shapes
:         
Л
╚linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
г
╞linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqualGreaterEqual╨linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape/Identity╚linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
─
┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/WhereWhere╞linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/GreaterEqual*
T0
*'
_output_shapes
:         
Ы
╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
Х
┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/ReshapeReshape┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Where╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
╗
┬linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_1Gather╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
└
┬linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_2Gather╨linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape/Identity┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
└
┬linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/IdentityIdentity╔linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseReshape:1*
T0	*
_output_shapes
:
Ц
╙linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
¤
сlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows┬linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_1┬linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Gather_2┬linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Identity╙linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
╖
хlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
╣
чlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
╣
чlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
п

▀linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_sliceStridedSliceсlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRowsхlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stackчlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_1чlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
■
╓linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/CastCast▀linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
Х
╪linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/UniqueUniqueуlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
Т
тlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/embedding_lookupGatherllinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/read╪linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*z
_classp
nlloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*'
_output_shapes
:         
┐
╤linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparseSparseSegmentSumтlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/embedding_lookup┌linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/Unique:1╓linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
Ы
╔linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
┴
├linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1Reshapeуlinear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/SparseFillEmptyRows/SparseFillEmptyRows:2╔linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

╥
┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/ShapeShape╤linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Ш
═linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Ъ
╧linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ъ
╧linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
а	
╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_sliceStridedSlice┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Shape═linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack╧linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_1╧linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
Д
┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
Р
┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/stackPack┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/stack/0╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
Ь
╛linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/TileTile├linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_1┐linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
╪
─linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/zeros_like	ZerosLike╤linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
╥
╣linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weightsSelect╛linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Tile─linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/zeros_like╤linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ц
└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast_1Castlinear/linear/cross_2:2*

DstT0*

SrcT0	*
_output_shapes
:
Т
╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
С
╞linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
╙
┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1Slice└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Cast_1╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/begin╞linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
╝
┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Shape_1Shape╣linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights*
out_type0*
T0*
_output_shapes
:
Т
╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Ъ
╞linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
╘
┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2Slice┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Shape_1╟linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/begin╞linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
И
┼linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
╫
└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/concatConcatV2┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_1┴linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Slice_2┼linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
О
├linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_2Reshape╣linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights└linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/concat*'
_output_shapes
:         *
Tshape0*
T0
n
linear/linear/Reshape_2/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
╟
linear/linear/Reshape_2Reshape├linear/linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_weights/Reshape_2linear/linear/Reshape_2/shape*'
_output_shapes
:         *
Tshape0*
T0
Е
linear/linear/cross_3SparseFeatureCrossExpandDims_7
ExpandDims*
internal_type0*
hashed_output(*<
_output_shapes*
(:         :         :*
out_type0	*
N *
num_bucketsш*
dense_types
2*
sparse_types
 
─
5linear/dest_X_origin/weights/part_0/Initializer/zerosConst*
dtype0*6
_class,
*(loc:@linear/dest_X_origin/weights/part_0*
valueB	ш*    *
_output_shapes
:	ш
╤
#linear/dest_X_origin/weights/part_0
VariableV2*
	container *
_output_shapes
:	ш*
dtype0*
shape:	ш*6
_class,
*(loc:@linear/dest_X_origin/weights/part_0*
shared_name 
Ы
*linear/dest_X_origin/weights/part_0/AssignAssign#linear/dest_X_origin/weights/part_05linear/dest_X_origin/weights/part_0/Initializer/zeros*
validate_shape(*6
_class,
*(loc:@linear/dest_X_origin/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
╗
(linear/dest_X_origin/weights/part_0/readIdentity#linear/dest_X_origin/weights/part_0*6
_class,
*(loc:@linear/dest_X_origin/weights/part_0*
T0*
_output_shapes
:	ш
З
=linear/linear/dest_X_origin/dest_X_origin_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
Ж
<linear/linear/dest_X_origin/dest_X_origin_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
И
7linear/linear/dest_X_origin/dest_X_origin_weights/SliceSlicelinear/linear/cross_3:2=linear/linear/dest_X_origin/dest_X_origin_weights/Slice/begin<linear/linear/dest_X_origin/dest_X_origin_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
Б
7linear/linear/dest_X_origin/dest_X_origin_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
ю
6linear/linear/dest_X_origin/dest_X_origin_weights/ProdProd7linear/linear/dest_X_origin/dest_X_origin_weights/Slice7linear/linear/dest_X_origin/dest_X_origin_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
В
@linear/linear/dest_X_origin/dest_X_origin_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ь
8linear/linear/dest_X_origin/dest_X_origin_weights/GatherGatherlinear/linear/cross_3:2@linear/linear/dest_X_origin/dest_X_origin_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
ь
8linear/linear/dest_X_origin/dest_X_origin_weights/Cast/xPack6linear/linear/dest_X_origin/dest_X_origin_weights/Prod8linear/linear/dest_X_origin/dest_X_origin_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
щ
?linear/linear/dest_X_origin/dest_X_origin_weights/SparseReshapeSparseReshapelinear/linear/cross_3linear/linear/cross_3:28linear/linear/dest_X_origin/dest_X_origin_weights/Cast/x*-
_output_shapes
:         :
Ы
Hlinear/linear/dest_X_origin/dest_X_origin_weights/SparseReshape/IdentityIdentitylinear/linear/cross_3:1*
T0	*#
_output_shapes
:         
В
@linear/linear/dest_X_origin/dest_X_origin_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
И
>linear/linear/dest_X_origin/dest_X_origin_weights/GreaterEqualGreaterEqualHlinear/linear/dest_X_origin/dest_X_origin_weights/SparseReshape/Identity@linear/linear/dest_X_origin/dest_X_origin_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
▓
7linear/linear/dest_X_origin/dest_X_origin_weights/WhereWhere>linear/linear/dest_X_origin/dest_X_origin_weights/GreaterEqual*
T0
*'
_output_shapes
:         
Т
?linear/linear/dest_X_origin/dest_X_origin_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
·
9linear/linear/dest_X_origin/dest_X_origin_weights/ReshapeReshape7linear/linear/dest_X_origin/dest_X_origin_weights/Where?linear/linear/dest_X_origin/dest_X_origin_weights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
а
:linear/linear/dest_X_origin/dest_X_origin_weights/Gather_1Gather?linear/linear/dest_X_origin/dest_X_origin_weights/SparseReshape9linear/linear/dest_X_origin/dest_X_origin_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
е
:linear/linear/dest_X_origin/dest_X_origin_weights/Gather_2GatherHlinear/linear/dest_X_origin/dest_X_origin_weights/SparseReshape/Identity9linear/linear/dest_X_origin/dest_X_origin_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
о
:linear/linear/dest_X_origin/dest_X_origin_weights/IdentityIdentityAlinear/linear/dest_X_origin/dest_X_origin_weights/SparseReshape:1*
T0	*
_output_shapes
:
Н
Klinear/linear/dest_X_origin/dest_X_origin_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╨
Ylinear/linear/dest_X_origin/dest_X_origin_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows:linear/linear/dest_X_origin/dest_X_origin_weights/Gather_1:linear/linear/dest_X_origin/dest_X_origin_weights/Gather_2:linear/linear/dest_X_origin/dest_X_origin_weights/IdentityKlinear/linear/dest_X_origin/dest_X_origin_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
о
]linear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
░
_linear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
░
_linear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
В
Wlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_sliceStridedSliceYlinear/linear/dest_X_origin/dest_X_origin_weights/SparseFillEmptyRows/SparseFillEmptyRows]linear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_slice/stack_linear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_slice/stack_1_linear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
ь
Nlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/CastCastWlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
Г
Plinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/UniqueUnique[linear/linear/dest_X_origin/dest_X_origin_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
°
Zlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/embedding_lookupGather(linear/dest_X_origin/weights/part_0/readPlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*6
_class,
*(loc:@linear/dest_X_origin/weights/part_0*'
_output_shapes
:         
Ы
Ilinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparseSparseSegmentSumZlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/embedding_lookupRlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/Unique:1Nlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
Т
Alinear/linear/dest_X_origin/dest_X_origin_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
ж
;linear/linear/dest_X_origin/dest_X_origin_weights/Reshape_1Reshape[linear/linear/dest_X_origin/dest_X_origin_weights/SparseFillEmptyRows/SparseFillEmptyRows:2Alinear/linear/dest_X_origin/dest_X_origin_weights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

└
7linear/linear/dest_X_origin/dest_X_origin_weights/ShapeShapeIlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
П
Elinear/linear/dest_X_origin/dest_X_origin_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
С
Glinear/linear/dest_X_origin/dest_X_origin_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
С
Glinear/linear/dest_X_origin/dest_X_origin_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
є
?linear/linear/dest_X_origin/dest_X_origin_weights/strided_sliceStridedSlice7linear/linear/dest_X_origin/dest_X_origin_weights/ShapeElinear/linear/dest_X_origin/dest_X_origin_weights/strided_slice/stackGlinear/linear/dest_X_origin/dest_X_origin_weights/strided_slice/stack_1Glinear/linear/dest_X_origin/dest_X_origin_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
{
9linear/linear/dest_X_origin/dest_X_origin_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
ї
7linear/linear/dest_X_origin/dest_X_origin_weights/stackPack9linear/linear/dest_X_origin/dest_X_origin_weights/stack/0?linear/linear/dest_X_origin/dest_X_origin_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
Б
6linear/linear/dest_X_origin/dest_X_origin_weights/TileTile;linear/linear/dest_X_origin/dest_X_origin_weights/Reshape_17linear/linear/dest_X_origin/dest_X_origin_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
╞
<linear/linear/dest_X_origin/dest_X_origin_weights/zeros_like	ZerosLikeIlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
о
1linear/linear/dest_X_origin/dest_X_origin_weightsSelect6linear/linear/dest_X_origin/dest_X_origin_weights/Tile<linear/linear/dest_X_origin/dest_X_origin_weights/zeros_likeIlinear/linear/dest_X_origin/dest_X_origin_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Н
8linear/linear/dest_X_origin/dest_X_origin_weights/Cast_1Castlinear/linear/cross_3:2*

DstT0*

SrcT0	*
_output_shapes
:
Й
?linear/linear/dest_X_origin/dest_X_origin_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
И
>linear/linear/dest_X_origin/dest_X_origin_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
п
9linear/linear/dest_X_origin/dest_X_origin_weights/Slice_1Slice8linear/linear/dest_X_origin/dest_X_origin_weights/Cast_1?linear/linear/dest_X_origin/dest_X_origin_weights/Slice_1/begin>linear/linear/dest_X_origin/dest_X_origin_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
к
9linear/linear/dest_X_origin/dest_X_origin_weights/Shape_1Shape1linear/linear/dest_X_origin/dest_X_origin_weights*
out_type0*
T0*
_output_shapes
:
Й
?linear/linear/dest_X_origin/dest_X_origin_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
С
>linear/linear/dest_X_origin/dest_X_origin_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
░
9linear/linear/dest_X_origin/dest_X_origin_weights/Slice_2Slice9linear/linear/dest_X_origin/dest_X_origin_weights/Shape_1?linear/linear/dest_X_origin/dest_X_origin_weights/Slice_2/begin>linear/linear/dest_X_origin/dest_X_origin_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:

=linear/linear/dest_X_origin/dest_X_origin_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
│
8linear/linear/dest_X_origin/dest_X_origin_weights/concatConcatV29linear/linear/dest_X_origin/dest_X_origin_weights/Slice_19linear/linear/dest_X_origin/dest_X_origin_weights/Slice_2=linear/linear/dest_X_origin/dest_X_origin_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
є
;linear/linear/dest_X_origin/dest_X_origin_weights/Reshape_2Reshape1linear/linear/dest_X_origin/dest_X_origin_weights8linear/linear/dest_X_origin/dest_X_origin_weights/concat*'
_output_shapes
:         *
Tshape0*
T0
n
linear/linear/Reshape_3/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
╛
linear/linear/Reshape_3Reshape;linear/linear/dest_X_origin/dest_X_origin_weights/Reshape_2linear/linear/Reshape_3/shape*'
_output_shapes
:         *
Tshape0*
T0
q
0linear/linear/DenseToSparseTensor/ignore_value/xConst*
dtype0*
valueB B *
_output_shapes
: 
и
*linear/linear/DenseToSparseTensor/NotEqualNotEqualExpandDims_80linear/linear/DenseToSparseTensor/ignore_value/x*
T0*'
_output_shapes
:         
Р
)linear/linear/DenseToSparseTensor/indicesWhere*linear/linear/DenseToSparseTensor/NotEqual*
T0
*'
_output_shapes
:         
▒
(linear/linear/DenseToSparseTensor/valuesGatherNdExpandDims_8)linear/linear/DenseToSparseTensor/indices*
Tparams0*
Tindices0	*#
_output_shapes
:         
y
-linear/linear/DenseToSparseTensor/dense_shapeShapeExpandDims_8*
out_type0	*
T0*
_output_shapes
:
Щ
linear/linear/lookup/ConstConst*
dtype0*K
valueBB@BASBVXBF9BUABUSBWNBHABEVBMQBDLBOOBB6BNKBAA*
_output_shapes
:
[
linear/linear/lookup/SizeConst*
dtype0*
value	B :*
_output_shapes
: 
b
 linear/linear/lookup/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
b
 linear/linear/lookup/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
к
linear/linear/lookup/rangeRange linear/linear/lookup/range/startlinear/linear/lookup/Size linear/linear/lookup/range/delta*

Tidx0*
_output_shapes
:
t
linear/linear/lookup/ToInt64Castlinear/linear/lookup/range*

DstT0	*

SrcT0*
_output_shapes
:
л
linear/linear/lookup/hash_tableHashTableV2*
	container *
	key_dtype0*
_output_shapes
: *
use_node_name_sharing( *
value_dtype0	*
shared_name 
p
%linear/linear/lookup/hash_table/ConstConst*
dtype0	*
valueB	 R
         *
_output_shapes
: 
▓
*linear/linear/lookup/hash_table/table_initInitializeTableV2linear/linear/lookup/hash_tablelinear/linear/lookup/Constlinear/linear/lookup/ToInt64*

Tkey0*

Tval0	
т
linear/linear/hash_table_LookupLookupTableFindV2linear/linear/lookup/hash_table(linear/linear/DenseToSparseTensor/values%linear/linear/lookup/hash_table/Const*	
Tin0*

Tout0	*#
_output_shapes
:         
╢
/linear/carrier/weights/part_0/Initializer/zerosConst*
dtype0*0
_class&
$"loc:@linear/carrier/weights/part_0*
valueB*    *
_output_shapes

:
├
linear/carrier/weights/part_0
VariableV2*
	container *
_output_shapes

:*
dtype0*
shape
:*0
_class&
$"loc:@linear/carrier/weights/part_0*
shared_name 
В
$linear/carrier/weights/part_0/AssignAssignlinear/carrier/weights/part_0/linear/carrier/weights/part_0/Initializer/zeros*
validate_shape(*0
_class&
$"loc:@linear/carrier/weights/part_0*
use_locking(*
T0*
_output_shapes

:
и
"linear/carrier/weights/part_0/readIdentitylinear/carrier/weights/part_0*0
_class&
$"loc:@linear/carrier/weights/part_0*
T0*
_output_shapes

:
{
1linear/linear/carrier/carrier_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
z
0linear/linear/carrier/carrier_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
·
+linear/linear/carrier/carrier_weights/SliceSlice-linear/linear/DenseToSparseTensor/dense_shape1linear/linear/carrier/carrier_weights/Slice/begin0linear/linear/carrier/carrier_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
u
+linear/linear/carrier/carrier_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╩
*linear/linear/carrier/carrier_weights/ProdProd+linear/linear/carrier/carrier_weights/Slice+linear/linear/carrier/carrier_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
v
4linear/linear/carrier/carrier_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ъ
,linear/linear/carrier/carrier_weights/GatherGather-linear/linear/DenseToSparseTensor/dense_shape4linear/linear/carrier/carrier_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
╚
,linear/linear/carrier/carrier_weights/Cast/xPack*linear/linear/carrier/carrier_weights/Prod,linear/linear/carrier/carrier_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
√
3linear/linear/carrier/carrier_weights/SparseReshapeSparseReshape)linear/linear/DenseToSparseTensor/indices-linear/linear/DenseToSparseTensor/dense_shape,linear/linear/carrier/carrier_weights/Cast/x*-
_output_shapes
:         :
Ч
<linear/linear/carrier/carrier_weights/SparseReshape/IdentityIdentitylinear/linear/hash_table_Lookup*
T0	*#
_output_shapes
:         
v
4linear/linear/carrier/carrier_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
ф
2linear/linear/carrier/carrier_weights/GreaterEqualGreaterEqual<linear/linear/carrier/carrier_weights/SparseReshape/Identity4linear/linear/carrier/carrier_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ъ
+linear/linear/carrier/carrier_weights/WhereWhere2linear/linear/carrier/carrier_weights/GreaterEqual*
T0
*'
_output_shapes
:         
Ж
3linear/linear/carrier/carrier_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
╓
-linear/linear/carrier/carrier_weights/ReshapeReshape+linear/linear/carrier/carrier_weights/Where3linear/linear/carrier/carrier_weights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
№
.linear/linear/carrier/carrier_weights/Gather_1Gather3linear/linear/carrier/carrier_weights/SparseReshape-linear/linear/carrier/carrier_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
Б
.linear/linear/carrier/carrier_weights/Gather_2Gather<linear/linear/carrier/carrier_weights/SparseReshape/Identity-linear/linear/carrier/carrier_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Ц
.linear/linear/carrier/carrier_weights/IdentityIdentity5linear/linear/carrier/carrier_weights/SparseReshape:1*
T0	*
_output_shapes
:
Б
?linear/linear/carrier/carrier_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ф
Mlinear/linear/carrier/carrier_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows.linear/linear/carrier/carrier_weights/Gather_1.linear/linear/carrier/carrier_weights/Gather_2.linear/linear/carrier/carrier_weights/Identity?linear/linear/carrier/carrier_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
в
Qlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
д
Slinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
д
Slinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
╞
Klinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_sliceStridedSliceMlinear/linear/carrier/carrier_weights/SparseFillEmptyRows/SparseFillEmptyRowsQlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_slice/stackSlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_slice/stack_1Slinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╘
Blinear/linear/carrier/carrier_weights/embedding_lookup_sparse/CastCastKlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ы
Dlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/UniqueUniqueOlinear/linear/carrier/carrier_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
╘
Nlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/embedding_lookupGather"linear/carrier/weights/part_0/readDlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*0
_class&
$"loc:@linear/carrier/weights/part_0*'
_output_shapes
:         
ы
=linear/linear/carrier/carrier_weights/embedding_lookup_sparseSparseSegmentSumNlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/embedding_lookupFlinear/linear/carrier/carrier_weights/embedding_lookup_sparse/Unique:1Blinear/linear/carrier/carrier_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
Ж
5linear/linear/carrier/carrier_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
В
/linear/linear/carrier/carrier_weights/Reshape_1ReshapeOlinear/linear/carrier/carrier_weights/SparseFillEmptyRows/SparseFillEmptyRows:25linear/linear/carrier/carrier_weights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

и
+linear/linear/carrier/carrier_weights/ShapeShape=linear/linear/carrier/carrier_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Г
9linear/linear/carrier/carrier_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Е
;linear/linear/carrier/carrier_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Е
;linear/linear/carrier/carrier_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
╖
3linear/linear/carrier/carrier_weights/strided_sliceStridedSlice+linear/linear/carrier/carrier_weights/Shape9linear/linear/carrier/carrier_weights/strided_slice/stack;linear/linear/carrier/carrier_weights/strided_slice/stack_1;linear/linear/carrier/carrier_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
o
-linear/linear/carrier/carrier_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
╤
+linear/linear/carrier/carrier_weights/stackPack-linear/linear/carrier/carrier_weights/stack/03linear/linear/carrier/carrier_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
▌
*linear/linear/carrier/carrier_weights/TileTile/linear/linear/carrier/carrier_weights/Reshape_1+linear/linear/carrier/carrier_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
о
0linear/linear/carrier/carrier_weights/zeros_like	ZerosLike=linear/linear/carrier/carrier_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
■
%linear/linear/carrier/carrier_weightsSelect*linear/linear/carrier/carrier_weights/Tile0linear/linear/carrier/carrier_weights/zeros_like=linear/linear/carrier/carrier_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ч
,linear/linear/carrier/carrier_weights/Cast_1Cast-linear/linear/DenseToSparseTensor/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
}
3linear/linear/carrier/carrier_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
|
2linear/linear/carrier/carrier_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
 
-linear/linear/carrier/carrier_weights/Slice_1Slice,linear/linear/carrier/carrier_weights/Cast_13linear/linear/carrier/carrier_weights/Slice_1/begin2linear/linear/carrier/carrier_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Т
-linear/linear/carrier/carrier_weights/Shape_1Shape%linear/linear/carrier/carrier_weights*
out_type0*
T0*
_output_shapes
:
}
3linear/linear/carrier/carrier_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Е
2linear/linear/carrier/carrier_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
А
-linear/linear/carrier/carrier_weights/Slice_2Slice-linear/linear/carrier/carrier_weights/Shape_13linear/linear/carrier/carrier_weights/Slice_2/begin2linear/linear/carrier/carrier_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
s
1linear/linear/carrier/carrier_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
Г
,linear/linear/carrier/carrier_weights/concatConcatV2-linear/linear/carrier/carrier_weights/Slice_1-linear/linear/carrier/carrier_weights/Slice_21linear/linear/carrier/carrier_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╧
/linear/linear/carrier/carrier_weights/Reshape_2Reshape%linear/linear/carrier/carrier_weights,linear/linear/carrier/carrier_weights/concat*'
_output_shapes
:         *
Tshape0*
T0
n
linear/linear/Reshape_4/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
▓
linear/linear/Reshape_4Reshape/linear/linear/carrier/carrier_weights/Reshape_2linear/linear/Reshape_4/shape*'
_output_shapes
:         *
Tshape0*
T0
s
2linear/linear/DenseToSparseTensor_1/ignore_value/xConst*
dtype0*
valueB B *
_output_shapes
: 
м
,linear/linear/DenseToSparseTensor_1/NotEqualNotEqualExpandDims_72linear/linear/DenseToSparseTensor_1/ignore_value/x*
T0*'
_output_shapes
:         
Ф
+linear/linear/DenseToSparseTensor_1/indicesWhere,linear/linear/DenseToSparseTensor_1/NotEqual*
T0
*'
_output_shapes
:         
╡
*linear/linear/DenseToSparseTensor_1/valuesGatherNdExpandDims_7+linear/linear/DenseToSparseTensor_1/indices*
Tparams0*
Tindices0	*#
_output_shapes
:         
{
/linear/linear/DenseToSparseTensor_1/dense_shapeShapeExpandDims_7*
out_type0	*
T0*
_output_shapes
:
Х
linear/linear/lookup_1StringToHashBucketFast*linear/linear/DenseToSparseTensor_1/values*#
_output_shapes
:         *
num_bucketsш
▓
,linear/dest/weights/part_0/Initializer/zerosConst*
dtype0*-
_class#
!loc:@linear/dest/weights/part_0*
valueB	ш*    *
_output_shapes
:	ш
┐
linear/dest/weights/part_0
VariableV2*
	container *
_output_shapes
:	ш*
dtype0*
shape:	ш*-
_class#
!loc:@linear/dest/weights/part_0*
shared_name 
ў
!linear/dest/weights/part_0/AssignAssignlinear/dest/weights/part_0,linear/dest/weights/part_0/Initializer/zeros*
validate_shape(*-
_class#
!loc:@linear/dest/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
а
linear/dest/weights/part_0/readIdentitylinear/dest/weights/part_0*-
_class#
!loc:@linear/dest/weights/part_0*
T0*
_output_shapes
:	ш
u
+linear/linear/dest/dest_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
t
*linear/linear/dest/dest_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ъ
%linear/linear/dest/dest_weights/SliceSlice/linear/linear/DenseToSparseTensor_1/dense_shape+linear/linear/dest/dest_weights/Slice/begin*linear/linear/dest/dest_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
o
%linear/linear/dest/dest_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
╕
$linear/linear/dest/dest_weights/ProdProd%linear/linear/dest/dest_weights/Slice%linear/linear/dest/dest_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
p
.linear/linear/dest/dest_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
р
&linear/linear/dest/dest_weights/GatherGather/linear/linear/DenseToSparseTensor_1/dense_shape.linear/linear/dest/dest_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
╢
&linear/linear/dest/dest_weights/Cast/xPack$linear/linear/dest/dest_weights/Prod&linear/linear/dest/dest_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
є
-linear/linear/dest/dest_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_1/indices/linear/linear/DenseToSparseTensor_1/dense_shape&linear/linear/dest/dest_weights/Cast/x*-
_output_shapes
:         :
И
6linear/linear/dest/dest_weights/SparseReshape/IdentityIdentitylinear/linear/lookup_1*
T0	*#
_output_shapes
:         
p
.linear/linear/dest/dest_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
╥
,linear/linear/dest/dest_weights/GreaterEqualGreaterEqual6linear/linear/dest/dest_weights/SparseReshape/Identity.linear/linear/dest/dest_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
О
%linear/linear/dest/dest_weights/WhereWhere,linear/linear/dest/dest_weights/GreaterEqual*
T0
*'
_output_shapes
:         
А
-linear/linear/dest/dest_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
─
'linear/linear/dest/dest_weights/ReshapeReshape%linear/linear/dest/dest_weights/Where-linear/linear/dest/dest_weights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
ъ
(linear/linear/dest/dest_weights/Gather_1Gather-linear/linear/dest/dest_weights/SparseReshape'linear/linear/dest/dest_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
я
(linear/linear/dest/dest_weights/Gather_2Gather6linear/linear/dest/dest_weights/SparseReshape/Identity'linear/linear/dest/dest_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
К
(linear/linear/dest/dest_weights/IdentityIdentity/linear/linear/dest/dest_weights/SparseReshape:1*
T0	*
_output_shapes
:
{
9linear/linear/dest/dest_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
Ў
Glinear/linear/dest/dest_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows(linear/linear/dest/dest_weights/Gather_1(linear/linear/dest/dest_weights/Gather_2(linear/linear/dest/dest_weights/Identity9linear/linear/dest/dest_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
Ь
Klinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
Ю
Mlinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
Ю
Mlinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
и
Elinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_sliceStridedSliceGlinear/linear/dest/dest_weights/SparseFillEmptyRows/SparseFillEmptyRowsKlinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_slice/stackMlinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_slice/stack_1Mlinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╚
<linear/linear/dest/dest_weights/embedding_lookup_sparse/CastCastElinear/linear/dest/dest_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
▀
>linear/linear/dest/dest_weights/embedding_lookup_sparse/UniqueUniqueIlinear/linear/dest/dest_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
┬
Hlinear/linear/dest/dest_weights/embedding_lookup_sparse/embedding_lookupGatherlinear/dest/weights/part_0/read>linear/linear/dest/dest_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*-
_class#
!loc:@linear/dest/weights/part_0*'
_output_shapes
:         
╙
7linear/linear/dest/dest_weights/embedding_lookup_sparseSparseSegmentSumHlinear/linear/dest/dest_weights/embedding_lookup_sparse/embedding_lookup@linear/linear/dest/dest_weights/embedding_lookup_sparse/Unique:1<linear/linear/dest/dest_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
А
/linear/linear/dest/dest_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
Ё
)linear/linear/dest/dest_weights/Reshape_1ReshapeIlinear/linear/dest/dest_weights/SparseFillEmptyRows/SparseFillEmptyRows:2/linear/linear/dest/dest_weights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

Ь
%linear/linear/dest/dest_weights/ShapeShape7linear/linear/dest/dest_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
}
3linear/linear/dest/dest_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:

5linear/linear/dest/dest_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:

5linear/linear/dest/dest_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Щ
-linear/linear/dest/dest_weights/strided_sliceStridedSlice%linear/linear/dest/dest_weights/Shape3linear/linear/dest/dest_weights/strided_slice/stack5linear/linear/dest/dest_weights/strided_slice/stack_15linear/linear/dest/dest_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
i
'linear/linear/dest/dest_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
┐
%linear/linear/dest/dest_weights/stackPack'linear/linear/dest/dest_weights/stack/0-linear/linear/dest/dest_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
╦
$linear/linear/dest/dest_weights/TileTile)linear/linear/dest/dest_weights/Reshape_1%linear/linear/dest/dest_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
в
*linear/linear/dest/dest_weights/zeros_like	ZerosLike7linear/linear/dest/dest_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
ц
linear/linear/dest/dest_weightsSelect$linear/linear/dest/dest_weights/Tile*linear/linear/dest/dest_weights/zeros_like7linear/linear/dest/dest_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
У
&linear/linear/dest/dest_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_1/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
w
-linear/linear/dest/dest_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
v
,linear/linear/dest/dest_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ч
'linear/linear/dest/dest_weights/Slice_1Slice&linear/linear/dest/dest_weights/Cast_1-linear/linear/dest/dest_weights/Slice_1/begin,linear/linear/dest/dest_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
Ж
'linear/linear/dest/dest_weights/Shape_1Shapelinear/linear/dest/dest_weights*
out_type0*
T0*
_output_shapes
:
w
-linear/linear/dest/dest_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:

,linear/linear/dest/dest_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
ш
'linear/linear/dest/dest_weights/Slice_2Slice'linear/linear/dest/dest_weights/Shape_1-linear/linear/dest/dest_weights/Slice_2/begin,linear/linear/dest/dest_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
m
+linear/linear/dest/dest_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
ы
&linear/linear/dest/dest_weights/concatConcatV2'linear/linear/dest/dest_weights/Slice_1'linear/linear/dest/dest_weights/Slice_2+linear/linear/dest/dest_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╜
)linear/linear/dest/dest_weights/Reshape_2Reshapelinear/linear/dest/dest_weights&linear/linear/dest/dest_weights/concat*'
_output_shapes
:         *
Tshape0*
T0
n
linear/linear/Reshape_5/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
м
linear/linear/Reshape_5Reshape)linear/linear/dest/dest_weights/Reshape_2linear/linear/Reshape_5/shape*'
_output_shapes
:         *
Tshape0*
T0
s
2linear/linear/DenseToSparseTensor_2/ignore_value/xConst*
dtype0*
valueB B *
_output_shapes
: 
к
,linear/linear/DenseToSparseTensor_2/NotEqualNotEqual
ExpandDims2linear/linear/DenseToSparseTensor_2/ignore_value/x*
T0*'
_output_shapes
:         
Ф
+linear/linear/DenseToSparseTensor_2/indicesWhere,linear/linear/DenseToSparseTensor_2/NotEqual*
T0
*'
_output_shapes
:         
│
*linear/linear/DenseToSparseTensor_2/valuesGatherNd
ExpandDims+linear/linear/DenseToSparseTensor_2/indices*
Tparams0*
Tindices0	*#
_output_shapes
:         
y
/linear/linear/DenseToSparseTensor_2/dense_shapeShape
ExpandDims*
out_type0	*
T0*
_output_shapes
:
Х
linear/linear/lookup_2StringToHashBucketFast*linear/linear/DenseToSparseTensor_2/values*#
_output_shapes
:         *
num_bucketsш
╢
.linear/origin/weights/part_0/Initializer/zerosConst*
dtype0*/
_class%
#!loc:@linear/origin/weights/part_0*
valueB	ш*    *
_output_shapes
:	ш
├
linear/origin/weights/part_0
VariableV2*
	container *
_output_shapes
:	ш*
dtype0*
shape:	ш*/
_class%
#!loc:@linear/origin/weights/part_0*
shared_name 
 
#linear/origin/weights/part_0/AssignAssignlinear/origin/weights/part_0.linear/origin/weights/part_0/Initializer/zeros*
validate_shape(*/
_class%
#!loc:@linear/origin/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
ж
!linear/origin/weights/part_0/readIdentitylinear/origin/weights/part_0*/
_class%
#!loc:@linear/origin/weights/part_0*
T0*
_output_shapes
:	ш
y
/linear/linear/origin/origin_weights/Slice/beginConst*
dtype0*
valueB: *
_output_shapes
:
x
.linear/linear/origin/origin_weights/Slice/sizeConst*
dtype0*
valueB:*
_output_shapes
:
Ў
)linear/linear/origin/origin_weights/SliceSlice/linear/linear/DenseToSparseTensor_2/dense_shape/linear/linear/origin/origin_weights/Slice/begin.linear/linear/origin/origin_weights/Slice/size*
Index0*
T0	*
_output_shapes
:
s
)linear/linear/origin/origin_weights/ConstConst*
dtype0*
valueB: *
_output_shapes
:
─
(linear/linear/origin/origin_weights/ProdProd)linear/linear/origin/origin_weights/Slice)linear/linear/origin/origin_weights/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0	
t
2linear/linear/origin/origin_weights/Gather/indicesConst*
dtype0*
value	B :*
_output_shapes
: 
ш
*linear/linear/origin/origin_weights/GatherGather/linear/linear/DenseToSparseTensor_2/dense_shape2linear/linear/origin/origin_weights/Gather/indices*
validate_indices(*
Tparams0	*
Tindices0*
_output_shapes
: 
┬
*linear/linear/origin/origin_weights/Cast/xPack(linear/linear/origin/origin_weights/Prod*linear/linear/origin/origin_weights/Gather*
N*

axis *
T0	*
_output_shapes
:
√
1linear/linear/origin/origin_weights/SparseReshapeSparseReshape+linear/linear/DenseToSparseTensor_2/indices/linear/linear/DenseToSparseTensor_2/dense_shape*linear/linear/origin/origin_weights/Cast/x*-
_output_shapes
:         :
М
:linear/linear/origin/origin_weights/SparseReshape/IdentityIdentitylinear/linear/lookup_2*
T0	*#
_output_shapes
:         
t
2linear/linear/origin/origin_weights/GreaterEqual/yConst*
dtype0	*
value	B	 R *
_output_shapes
: 
▐
0linear/linear/origin/origin_weights/GreaterEqualGreaterEqual:linear/linear/origin/origin_weights/SparseReshape/Identity2linear/linear/origin/origin_weights/GreaterEqual/y*
T0	*#
_output_shapes
:         
Ц
)linear/linear/origin/origin_weights/WhereWhere0linear/linear/origin/origin_weights/GreaterEqual*
T0
*'
_output_shapes
:         
Д
1linear/linear/origin/origin_weights/Reshape/shapeConst*
dtype0*
valueB:
         *
_output_shapes
:
╨
+linear/linear/origin/origin_weights/ReshapeReshape)linear/linear/origin/origin_weights/Where1linear/linear/origin/origin_weights/Reshape/shape*#
_output_shapes
:         *
Tshape0*
T0	
Ў
,linear/linear/origin/origin_weights/Gather_1Gather1linear/linear/origin/origin_weights/SparseReshape+linear/linear/origin/origin_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*'
_output_shapes
:         
√
,linear/linear/origin/origin_weights/Gather_2Gather:linear/linear/origin/origin_weights/SparseReshape/Identity+linear/linear/origin/origin_weights/Reshape*
validate_indices(*
Tparams0	*
Tindices0	*#
_output_shapes
:         
Т
,linear/linear/origin/origin_weights/IdentityIdentity3linear/linear/origin/origin_weights/SparseReshape:1*
T0	*
_output_shapes
:

=linear/linear/origin/origin_weights/SparseFillEmptyRows/ConstConst*
dtype0	*
value	B	 R *
_output_shapes
: 
К
Klinear/linear/origin/origin_weights/SparseFillEmptyRows/SparseFillEmptyRowsSparseFillEmptyRows,linear/linear/origin/origin_weights/Gather_1,linear/linear/origin/origin_weights/Gather_2,linear/linear/origin/origin_weights/Identity=linear/linear/origin/origin_weights/SparseFillEmptyRows/Const*
T0	*T
_output_shapesB
@:         :         :         :         
а
Olinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_slice/stackConst*
dtype0*
valueB"        *
_output_shapes
:
в
Qlinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_slice/stack_1Const*
dtype0*
valueB"       *
_output_shapes
:
в
Qlinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_slice/stack_2Const*
dtype0*
valueB"      *
_output_shapes
:
╝
Ilinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_sliceStridedSliceKlinear/linear/origin/origin_weights/SparseFillEmptyRows/SparseFillEmptyRowsOlinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_slice/stackQlinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_slice/stack_1Qlinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_slice/stack_2*
new_axis_mask *
Index0*#
_output_shapes
:         *

begin_mask*
ellipsis_mask *
end_mask*
T0	*
shrink_axis_mask
╨
@linear/linear/origin/origin_weights/embedding_lookup_sparse/CastCastIlinear/linear/origin/origin_weights/embedding_lookup_sparse/strided_slice*

DstT0*

SrcT0	*#
_output_shapes
:         
ч
Blinear/linear/origin/origin_weights/embedding_lookup_sparse/UniqueUniqueMlinear/linear/origin/origin_weights/SparseFillEmptyRows/SparseFillEmptyRows:1*
out_idx0*
T0	*2
_output_shapes 
:         :         
╬
Llinear/linear/origin/origin_weights/embedding_lookup_sparse/embedding_lookupGather!linear/origin/weights/part_0/readBlinear/linear/origin/origin_weights/embedding_lookup_sparse/Unique*
validate_indices(*
Tparams0*
Tindices0	*/
_class%
#!loc:@linear/origin/weights/part_0*'
_output_shapes
:         
у
;linear/linear/origin/origin_weights/embedding_lookup_sparseSparseSegmentSumLlinear/linear/origin/origin_weights/embedding_lookup_sparse/embedding_lookupDlinear/linear/origin/origin_weights/embedding_lookup_sparse/Unique:1@linear/linear/origin/origin_weights/embedding_lookup_sparse/Cast*'
_output_shapes
:         *

Tidx0*
T0
Д
3linear/linear/origin/origin_weights/Reshape_1/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
№
-linear/linear/origin/origin_weights/Reshape_1ReshapeMlinear/linear/origin/origin_weights/SparseFillEmptyRows/SparseFillEmptyRows:23linear/linear/origin/origin_weights/Reshape_1/shape*'
_output_shapes
:         *
Tshape0*
T0

д
)linear/linear/origin/origin_weights/ShapeShape;linear/linear/origin/origin_weights/embedding_lookup_sparse*
out_type0*
T0*
_output_shapes
:
Б
7linear/linear/origin/origin_weights/strided_slice/stackConst*
dtype0*
valueB:*
_output_shapes
:
Г
9linear/linear/origin/origin_weights/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Г
9linear/linear/origin/origin_weights/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
н
1linear/linear/origin/origin_weights/strided_sliceStridedSlice)linear/linear/origin/origin_weights/Shape7linear/linear/origin/origin_weights/strided_slice/stack9linear/linear/origin/origin_weights/strided_slice/stack_19linear/linear/origin/origin_weights/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
m
+linear/linear/origin/origin_weights/stack/0Const*
dtype0*
value	B :*
_output_shapes
: 
╦
)linear/linear/origin/origin_weights/stackPack+linear/linear/origin/origin_weights/stack/01linear/linear/origin/origin_weights/strided_slice*
N*

axis *
T0*
_output_shapes
:
╫
(linear/linear/origin/origin_weights/TileTile-linear/linear/origin/origin_weights/Reshape_1)linear/linear/origin/origin_weights/stack*

Tmultiples0*
T0
*0
_output_shapes
:                  
к
.linear/linear/origin/origin_weights/zeros_like	ZerosLike;linear/linear/origin/origin_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ў
#linear/linear/origin/origin_weightsSelect(linear/linear/origin/origin_weights/Tile.linear/linear/origin/origin_weights/zeros_like;linear/linear/origin/origin_weights/embedding_lookup_sparse*
T0*'
_output_shapes
:         
Ч
*linear/linear/origin/origin_weights/Cast_1Cast/linear/linear/DenseToSparseTensor_2/dense_shape*

DstT0*

SrcT0	*
_output_shapes
:
{
1linear/linear/origin/origin_weights/Slice_1/beginConst*
dtype0*
valueB: *
_output_shapes
:
z
0linear/linear/origin/origin_weights/Slice_1/sizeConst*
dtype0*
valueB:*
_output_shapes
:
ў
+linear/linear/origin/origin_weights/Slice_1Slice*linear/linear/origin/origin_weights/Cast_11linear/linear/origin/origin_weights/Slice_1/begin0linear/linear/origin/origin_weights/Slice_1/size*
Index0*
T0*
_output_shapes
:
О
+linear/linear/origin/origin_weights/Shape_1Shape#linear/linear/origin/origin_weights*
out_type0*
T0*
_output_shapes
:
{
1linear/linear/origin/origin_weights/Slice_2/beginConst*
dtype0*
valueB:*
_output_shapes
:
Г
0linear/linear/origin/origin_weights/Slice_2/sizeConst*
dtype0*
valueB:
         *
_output_shapes
:
°
+linear/linear/origin/origin_weights/Slice_2Slice+linear/linear/origin/origin_weights/Shape_11linear/linear/origin/origin_weights/Slice_2/begin0linear/linear/origin/origin_weights/Slice_2/size*
Index0*
T0*
_output_shapes
:
q
/linear/linear/origin/origin_weights/concat/axisConst*
dtype0*
value	B : *
_output_shapes
: 
√
*linear/linear/origin/origin_weights/concatConcatV2+linear/linear/origin/origin_weights/Slice_1+linear/linear/origin/origin_weights/Slice_2/linear/linear/origin/origin_weights/concat/axis*
N*

Tidx0*
T0*
_output_shapes
:
╔
-linear/linear/origin/origin_weights/Reshape_2Reshape#linear/linear/origin/origin_weights*linear/linear/origin/origin_weights/concat*'
_output_shapes
:         *
Tshape0*
T0
n
linear/linear/Reshape_6/shapeConst*
dtype0*
valueB"       *
_output_shapes
:
░
linear/linear/Reshape_6Reshape-linear/linear/origin/origin_weights/Reshape_2linear/linear/Reshape_6/shape*'
_output_shapes
:         *
Tshape0*
T0
В
linear/linear/AddNAddNlinear/linear/Reshapelinear/linear/Reshape_1linear/linear/Reshape_2linear/linear/Reshape_3linear/linear/Reshape_4linear/linear/Reshape_5linear/linear/Reshape_6*'
_output_shapes
:         *
T0*
N
ж
+linear/bias_weight/part_0/Initializer/zerosConst*
dtype0*,
_class"
 loc:@linear/bias_weight/part_0*
valueB*    *
_output_shapes
:
│
linear/bias_weight/part_0
VariableV2*
	container *
_output_shapes
:*
dtype0*
shape:*,
_class"
 loc:@linear/bias_weight/part_0*
shared_name 
ю
 linear/bias_weight/part_0/AssignAssignlinear/bias_weight/part_0+linear/bias_weight/part_0/Initializer/zeros*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:
Ш
linear/bias_weight/part_0/readIdentitylinear/bias_weight/part_0*,
_class"
 loc:@linear/bias_weight/part_0*
T0*
_output_shapes
:
c
linear/bias_weightIdentitylinear/bias_weight/part_0/read*
T0*
_output_shapes
:
С
linear/linear/BiasAddBiasAddlinear/linear/AddNlinear/bias_weight*'
_output_shapes
:         *
data_formatNHWC*
T0
^
linear/zero_fraction/zeroConst*
dtype0*
valueB
 *    *
_output_shapes
: 
З
linear/zero_fraction/EqualEquallinear/linear/BiasAddlinear/zero_fraction/zero*
T0*'
_output_shapes
:         
~
linear/zero_fraction/CastCastlinear/zero_fraction/Equal*

DstT0*

SrcT0
*'
_output_shapes
:         
k
linear/zero_fraction/ConstConst*
dtype0*
valueB"       *
_output_shapes
:
Ц
linear/zero_fraction/MeanMeanlinear/zero_fraction/Castlinear/zero_fraction/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
Р
*linear/linear/fraction_of_zero_values/tagsConst*
dtype0*6
value-B+ B%linear/linear/fraction_of_zero_values*
_output_shapes
: 
Ю
%linear/linear/fraction_of_zero_valuesScalarSummary*linear/linear/fraction_of_zero_values/tagslinear/zero_fraction/Mean*
T0*
_output_shapes
: 
u
linear/linear/activation/tagConst*
dtype0*)
value B Blinear/linear/activation*
_output_shapes
: 
В
linear/linear/activationHistogramSummarylinear/linear/activation/taglinear/linear/BiasAdd*
T0*
_output_shapes
: 
g
addAdddnn/logits/BiasAddlinear/linear/BiasAdd*
T0*'
_output_shapes
:         
o
+binary_logistic_head/predictions/zeros_like	ZerosLikeadd*
T0*'
_output_shapes
:         
n
,binary_logistic_head/predictions/concat/axisConst*
dtype0*
value	B :*
_output_shapes
: 
┌
'binary_logistic_head/predictions/concatConcatV2+binary_logistic_head/predictions/zeros_likeadd,binary_logistic_head/predictions/concat/axis*
N*

Tidx0*
T0*'
_output_shapes
:         
k
)binary_logistic_head/predictions/logisticSigmoidadd*
T0*'
_output_shapes
:         
Ф
.binary_logistic_head/predictions/probabilitiesSoftmax'binary_logistic_head/predictions/concat*
T0*'
_output_shapes
:         
t
2binary_logistic_head/predictions/classes/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
▄
(binary_logistic_head/predictions/classesArgMax'binary_logistic_head/predictions/concat2binary_logistic_head/predictions/classes/dimension*
output_type0	*#
_output_shapes
:         *

Tidx0*
T0
м
>binary_logistic_head/_classification_output_alternatives/ShapeShape.binary_logistic_head/predictions/probabilities*
out_type0*
T0*
_output_shapes
:
Ц
Lbinary_logistic_head/_classification_output_alternatives/strided_slice/stackConst*
dtype0*
valueB: *
_output_shapes
:
Ш
Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ш
Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
Ц
Fbinary_logistic_head/_classification_output_alternatives/strided_sliceStridedSlice>binary_logistic_head/_classification_output_alternatives/ShapeLbinary_logistic_head/_classification_output_alternatives/strided_slice/stackNbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_1Nbinary_logistic_head/_classification_output_alternatives/strided_slice/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
о
@binary_logistic_head/_classification_output_alternatives/Shape_1Shape.binary_logistic_head/predictions/probabilities*
out_type0*
T0*
_output_shapes
:
Ш
Nbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stackConst*
dtype0*
valueB:*
_output_shapes
:
Ъ
Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Const*
dtype0*
valueB:*
_output_shapes
:
Ъ
Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2Const*
dtype0*
valueB:*
_output_shapes
:
а
Hbinary_logistic_head/_classification_output_alternatives/strided_slice_1StridedSlice@binary_logistic_head/_classification_output_alternatives/Shape_1Nbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stackPbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_1Pbinary_logistic_head/_classification_output_alternatives/strided_slice_1/stack_2*
new_axis_mask *
Index0*
_output_shapes
: *

begin_mask *
ellipsis_mask *
end_mask *
T0*
shrink_axis_mask
Ж
Dbinary_logistic_head/_classification_output_alternatives/range/startConst*
dtype0*
value	B : *
_output_shapes
: 
Ж
Dbinary_logistic_head/_classification_output_alternatives/range/deltaConst*
dtype0*
value	B :*
_output_shapes
: 
╬
>binary_logistic_head/_classification_output_alternatives/rangeRangeDbinary_logistic_head/_classification_output_alternatives/range/startHbinary_logistic_head/_classification_output_alternatives/strided_slice_1Dbinary_logistic_head/_classification_output_alternatives/range/delta*

Tidx0*#
_output_shapes
:         
Й
Gbinary_logistic_head/_classification_output_alternatives/ExpandDims/dimConst*
dtype0*
value	B : *
_output_shapes
: 
Ш
Cbinary_logistic_head/_classification_output_alternatives/ExpandDims
ExpandDims>binary_logistic_head/_classification_output_alternatives/rangeGbinary_logistic_head/_classification_output_alternatives/ExpandDims/dim*

Tdim0*
T0*'
_output_shapes
:         
Л
Ibinary_logistic_head/_classification_output_alternatives/Tile/multiples/1Const*
dtype0*
value	B :*
_output_shapes
: 
Ь
Gbinary_logistic_head/_classification_output_alternatives/Tile/multiplesPackFbinary_logistic_head/_classification_output_alternatives/strided_sliceIbinary_logistic_head/_classification_output_alternatives/Tile/multiples/1*
N*

axis *
T0*
_output_shapes
:
а
=binary_logistic_head/_classification_output_alternatives/TileTileCbinary_logistic_head/_classification_output_alternatives/ExpandDimsGbinary_logistic_head/_classification_output_alternatives/Tile/multiples*

Tmultiples0*
T0*0
_output_shapes
:                  
л
Gbinary_logistic_head/_classification_output_alternatives/classes_tensorAsString=binary_logistic_head/_classification_output_alternatives/Tile*

scientific( *0
_output_shapes
:                  *
	precision         *
width         *
T0*
shortest( *

fill 

initNoOp

init_1NoOp
п
init_all_tablesNoOpi^dnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_table/table_init+^linear/linear/lookup/hash_table/table_init
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_b37e3bb852dc4e15aef439007a3c5a03/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
М
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 
п	
save/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*╙
value╔B╞Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBВdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weightsBXdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weightsB8dnn/input_from_feature_columns/carrier_embedding/weightsBXdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weightsB>dnn/input_from_feature_columns/dest_X_origin_embedding/weightsB5dnn/input_from_feature_columns/dest_embedding/weightsB7dnn/input_from_feature_columns/origin_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepB6linear/arr_lat_bucketized_X_arr_lon_bucketized/weightsB`linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weightsBlinear/bias_weightBlinear/carrier/weightsB6linear/dep_lat_bucketized_X_dep_lon_bucketized/weightsBlinear/dest/weightsBlinear/dest_X_origin/weightsBlinear/origin/weights*
_output_shapes
:
╬
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*ю
valueфBсB64 0,64B56 64 0,56:0,64B16 0,16B64 16 0,64:0,16B4 0,4B16 4 0,16:0,4B625 5 0,625:0,5B25 5 0,25:0,5B14 5 0,14:0,5B25 5 0,25:0,5B1000 5 0,1000:0,5B1000 11 0,1000:0,11B1000 11 0,1000:0,11B1 0,1B4 1 0,4:0,1B B25 1 0,25:0,1B625 1 0,625:0,1B1 0,1B14 1 0,14:0,1B25 1 0,25:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1*
_output_shapes
:
ь
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/readОdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/readddnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/readDdnn/input_from_feature_columns/carrier_embedding/weights/part_0/readddnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/readJdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/readAdnn/input_from_feature_columns/dest_embedding/weights/part_0/readCdnn/input_from_feature_columns/origin_embedding/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_stepBlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/readllinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/readlinear/bias_weight/part_0/read"linear/carrier/weights/part_0/readBlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/readlinear/dest/weights/part_0/read(linear/dest_X_origin/weights/part_0/read!linear/origin/weights/part_0/read"/device:CPU:0*&
dtypes
2	
а
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
м
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*

axis *
T0*
_output_shapes
:
М
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(
Й
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
|
save/RestoreV2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_0/biases*
_output_shapes
:
o
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueBB64 0,64*
_output_shapes
:
Т
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:@
╚
save/AssignAssigndnn/hiddenlayer_0/biases/part_0save/RestoreV2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
T0*
_output_shapes
:@

save/RestoreV2_1/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_0/weights*
_output_shapes
:
y
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*$
valueBB56 64 0,56:0,64*
_output_shapes
:
Ь
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:8@
╥
save/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save/RestoreV2_1*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
T0*
_output_shapes

:8@
~
save/RestoreV2_2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_1/biases*
_output_shapes
:
q
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueBB16 0,16*
_output_shapes
:
Ш
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
╠
save/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save/RestoreV2_2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_3/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_1/weights*
_output_shapes
:
y
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*$
valueBB64 16 0,64:0,16*
_output_shapes
:
Ь
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:@
╥
save/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save/RestoreV2_3*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
T0*
_output_shapes

:@
~
save/RestoreV2_4/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_2/biases*
_output_shapes
:
o
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueBB4 0,4*
_output_shapes
:
Ш
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
╠
save/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save/RestoreV2_4*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
use_locking(*
T0*
_output_shapes
:

save/RestoreV2_5/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_2/weights*
_output_shapes
:
w
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*"
valueBB16 4 0,16:0,4*
_output_shapes
:
Ь
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:
╥
save/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save/RestoreV2_5*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
use_locking(*
T0*
_output_shapes

:
ь
save/RestoreV2_6/tensor_namesConst*
dtype0*Ъ
valueРBНBВdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights*
_output_shapes
:
y
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*$
valueBB625 5 0,625:0,5*
_output_shapes
:
Э
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:	ё
к
save/Assign_6AssignЙdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0save/RestoreV2_6*
validate_shape(*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ё
╛
save/RestoreV2_7/tensor_namesConst*
dtype0*m
valuedBbBXdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights*
_output_shapes
:
w
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*"
valueBB25 5 0,25:0,5*
_output_shapes
:
Ь
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes

:
╨
save/Assign_7Assign_dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0save/RestoreV2_7*
validate_shape(*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
Ю
save/RestoreV2_8/tensor_namesConst*
dtype0*M
valueDBBB8dnn/input_from_feature_columns/carrier_embedding/weights*
_output_shapes
:
w
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*"
valueBB14 5 0,14:0,5*
_output_shapes
:
Ь
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes

:
Р
save/Assign_8Assign?dnn/input_from_feature_columns/carrier_embedding/weights/part_0save/RestoreV2_8*
validate_shape(*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
╛
save/RestoreV2_9/tensor_namesConst*
dtype0*m
valuedBbBXdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights*
_output_shapes
:
w
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*"
valueBB25 5 0,25:0,5*
_output_shapes
:
Ь
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes

:
╨
save/Assign_9Assign_dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0save/RestoreV2_9*
validate_shape(*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
е
save/RestoreV2_10/tensor_namesConst*
dtype0*S
valueJBHB>dnn/input_from_feature_columns/dest_X_origin_embedding/weights*
_output_shapes
:
|
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*&
valueBB1000 5 0,1000:0,5*
_output_shapes
:
а
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
Я
save/Assign_10AssignEdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0save/RestoreV2_10*
validate_shape(*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
Ь
save/RestoreV2_11/tensor_namesConst*
dtype0*J
valueAB?B5dnn/input_from_feature_columns/dest_embedding/weights*
_output_shapes
:
~
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*(
valueBB1000 11 0,1000:0,11*
_output_shapes
:
а
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
Н
save/Assign_11Assign<dnn/input_from_feature_columns/dest_embedding/weights/part_0save/RestoreV2_11*
validate_shape(*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
Ю
save/RestoreV2_12/tensor_namesConst*
dtype0*L
valueCBAB7dnn/input_from_feature_columns/origin_embedding/weights*
_output_shapes
:
~
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*(
valueBB1000 11 0,1000:0,11*
_output_shapes
:
а
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
С
save/Assign_12Assign>dnn/input_from_feature_columns/origin_embedding/weights/part_0save/RestoreV2_12*
validate_shape(*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
x
save/RestoreV2_13/tensor_namesConst*
dtype0*&
valueBBdnn/logits/biases*
_output_shapes
:
p
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
Ы
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
└
save/Assign_13Assigndnn/logits/biases/part_0save/RestoreV2_13*
validate_shape(*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
T0*
_output_shapes
:
y
save/RestoreV2_14/tensor_namesConst*
dtype0*'
valueBBdnn/logits/weights*
_output_shapes
:
v
"save/RestoreV2_14/shape_and_slicesConst*
dtype0* 
valueBB4 1 0,4:0,1*
_output_shapes
:
Я
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes

:
╞
save/Assign_14Assigndnn/logits/weights/part_0save/RestoreV2_14*
validate_shape(*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
T0*
_output_shapes

:
r
save/RestoreV2_15/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2	*
_output_shapes
:
в
save/Assign_15Assignglobal_stepsave/RestoreV2_15*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
Э
save/RestoreV2_16/tensor_namesConst*
dtype0*K
valueBB@B6linear/arr_lat_bucketized_X_arr_lon_bucketized/weights*
_output_shapes
:
x
"save/RestoreV2_16/shape_and_slicesConst*
dtype0*"
valueBB25 1 0,25:0,1*
_output_shapes
:
Я
save/RestoreV2_16	RestoreV2
save/Constsave/RestoreV2_16/tensor_names"save/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes

:
О
save/Assign_16Assign=linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0save/RestoreV2_16*
validate_shape(*P
_classF
DBloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
╟
save/RestoreV2_17/tensor_namesConst*
dtype0*u
valuelBjB`linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights*
_output_shapes
:
z
"save/RestoreV2_17/shape_and_slicesConst*
dtype0*$
valueBB625 1 0,625:0,1*
_output_shapes
:
а
save/RestoreV2_17	RestoreV2
save/Constsave/RestoreV2_17/tensor_names"save/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:	ё
у
save/Assign_17Assignglinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0save/RestoreV2_17*
validate_shape(*z
_classp
nlloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ё
y
save/RestoreV2_18/tensor_namesConst*
dtype0*'
valueBBlinear/bias_weight*
_output_shapes
:
p
"save/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
Ы
save/RestoreV2_18	RestoreV2
save/Constsave/RestoreV2_18/tensor_names"save/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
┬
save/Assign_18Assignlinear/bias_weight/part_0save/RestoreV2_18*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:
}
save/RestoreV2_19/tensor_namesConst*
dtype0*+
value"B Blinear/carrier/weights*
_output_shapes
:
x
"save/RestoreV2_19/shape_and_slicesConst*
dtype0*"
valueBB14 1 0,14:0,1*
_output_shapes
:
Я
save/RestoreV2_19	RestoreV2
save/Constsave/RestoreV2_19/tensor_names"save/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes

:
╬
save/Assign_19Assignlinear/carrier/weights/part_0save/RestoreV2_19*
validate_shape(*0
_class&
$"loc:@linear/carrier/weights/part_0*
use_locking(*
T0*
_output_shapes

:
Э
save/RestoreV2_20/tensor_namesConst*
dtype0*K
valueBB@B6linear/dep_lat_bucketized_X_dep_lon_bucketized/weights*
_output_shapes
:
x
"save/RestoreV2_20/shape_and_slicesConst*
dtype0*"
valueBB25 1 0,25:0,1*
_output_shapes
:
Я
save/RestoreV2_20	RestoreV2
save/Constsave/RestoreV2_20/tensor_names"save/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes

:
О
save/Assign_20Assign=linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0save/RestoreV2_20*
validate_shape(*P
_classF
DBloc:@linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
z
save/RestoreV2_21/tensor_namesConst*
dtype0*(
valueBBlinear/dest/weights*
_output_shapes
:
|
"save/RestoreV2_21/shape_and_slicesConst*
dtype0*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:
а
save/RestoreV2_21	RestoreV2
save/Constsave/RestoreV2_21/tensor_names"save/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
╔
save/Assign_21Assignlinear/dest/weights/part_0save/RestoreV2_21*
validate_shape(*-
_class#
!loc:@linear/dest/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
Г
save/RestoreV2_22/tensor_namesConst*
dtype0*1
value(B&Blinear/dest_X_origin/weights*
_output_shapes
:
|
"save/RestoreV2_22/shape_and_slicesConst*
dtype0*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:
а
save/RestoreV2_22	RestoreV2
save/Constsave/RestoreV2_22/tensor_names"save/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
█
save/Assign_22Assign#linear/dest_X_origin/weights/part_0save/RestoreV2_22*
validate_shape(*6
_class,
*(loc:@linear/dest_X_origin/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
|
save/RestoreV2_23/tensor_namesConst*
dtype0**
value!BBlinear/origin/weights*
_output_shapes
:
|
"save/RestoreV2_23/shape_and_slicesConst*
dtype0*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:
а
save/RestoreV2_23	RestoreV2
save/Constsave/RestoreV2_23/tensor_names"save/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
═
save/Assign_23Assignlinear/origin/weights/part_0save/RestoreV2_23*
validate_shape(*/
_class%
#!loc:@linear/origin/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
ж
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23
-
save/restore_allNoOp^save/restore_shard
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_d96f20801b1e4553969ed82c5657186a/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
m
save_1/ShardedFilename/shardConst"/device:CPU:0*
dtype0*
value	B : *
_output_shapes
: 
Ф
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards"/device:CPU:0*
_output_shapes
: 
▒	
save_1/SaveV2/tensor_namesConst"/device:CPU:0*
dtype0*╙
value╔B╞Bdnn/hiddenlayer_0/biasesBdnn/hiddenlayer_0/weightsBdnn/hiddenlayer_1/biasesBdnn/hiddenlayer_1/weightsBdnn/hiddenlayer_2/biasesBdnn/hiddenlayer_2/weightsBВdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weightsBXdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weightsB8dnn/input_from_feature_columns/carrier_embedding/weightsBXdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weightsB>dnn/input_from_feature_columns/dest_X_origin_embedding/weightsB5dnn/input_from_feature_columns/dest_embedding/weightsB7dnn/input_from_feature_columns/origin_embedding/weightsBdnn/logits/biasesBdnn/logits/weightsBglobal_stepB6linear/arr_lat_bucketized_X_arr_lon_bucketized/weightsB`linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weightsBlinear/bias_weightBlinear/carrier/weightsB6linear/dep_lat_bucketized_X_dep_lon_bucketized/weightsBlinear/dest/weightsBlinear/dest_X_origin/weightsBlinear/origin/weights*
_output_shapes
:
╨
save_1/SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*ю
valueфBсB64 0,64B56 64 0,56:0,64B16 0,16B64 16 0,64:0,16B4 0,4B16 4 0,16:0,4B625 5 0,625:0,5B25 5 0,25:0,5B14 5 0,14:0,5B25 5 0,25:0,5B1000 5 0,1000:0,5B1000 11 0,1000:0,11B1000 11 0,1000:0,11B1 0,1B4 1 0,4:0,1B B25 1 0,25:0,1B625 1 0,625:0,1B1 0,1B14 1 0,14:0,1B25 1 0,25:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1B1000 1 0,1000:0,1*
_output_shapes
:
Ї
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slices$dnn/hiddenlayer_0/biases/part_0/read%dnn/hiddenlayer_0/weights/part_0/read$dnn/hiddenlayer_1/biases/part_0/read%dnn/hiddenlayer_1/weights/part_0/read$dnn/hiddenlayer_2/biases/part_0/read%dnn/hiddenlayer_2/weights/part_0/readОdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/readddnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/readDdnn/input_from_feature_columns/carrier_embedding/weights/part_0/readddnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/readJdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/readAdnn/input_from_feature_columns/dest_embedding/weights/part_0/readCdnn/input_from_feature_columns/origin_embedding/weights/part_0/readdnn/logits/biases/part_0/readdnn/logits/weights/part_0/readglobal_stepBlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/readllinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/readlinear/bias_weight/part_0/read"linear/carrier/weights/part_0/readBlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/readlinear/dest/weights/part_0/read(linear/dest_X_origin/weights/part_0/read!linear/origin/weights/part_0/read"/device:CPU:0*&
dtypes
2	
и
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2"/device:CPU:0*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
▓
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency"/device:CPU:0*
N*

axis *
T0*
_output_shapes
:
Т
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const"/device:CPU:0*
delete_old_dirs(
С
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
~
save_1/RestoreV2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_0/biases*
_output_shapes
:
q
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueBB64 0,64*
_output_shapes
:
Ъ
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:@
╠
save_1/AssignAssigndnn/hiddenlayer_0/biases/part_0save_1/RestoreV2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_0/biases/part_0*
use_locking(*
T0*
_output_shapes
:@
Б
save_1/RestoreV2_1/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_0/weights*
_output_shapes
:
{
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*$
valueBB56 64 0,56:0,64*
_output_shapes
:
д
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2*
_output_shapes

:8@
╓
save_1/Assign_1Assign dnn/hiddenlayer_0/weights/part_0save_1/RestoreV2_1*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_0/weights/part_0*
use_locking(*
T0*
_output_shapes

:8@
А
save_1/RestoreV2_2/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_1/biases*
_output_shapes
:
s
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueBB16 0,16*
_output_shapes
:
а
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
╨
save_1/Assign_2Assigndnn/hiddenlayer_1/biases/part_0save_1/RestoreV2_2*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_1/biases/part_0*
use_locking(*
T0*
_output_shapes
:
Б
save_1/RestoreV2_3/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_1/weights*
_output_shapes
:
{
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*$
valueBB64 16 0,64:0,16*
_output_shapes
:
д
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes

:@
╓
save_1/Assign_3Assign dnn/hiddenlayer_1/weights/part_0save_1/RestoreV2_3*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_1/weights/part_0*
use_locking(*
T0*
_output_shapes

:@
А
save_1/RestoreV2_4/tensor_namesConst*
dtype0*-
value$B"Bdnn/hiddenlayer_2/biases*
_output_shapes
:
q
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueBB4 0,4*
_output_shapes
:
а
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
╨
save_1/Assign_4Assigndnn/hiddenlayer_2/biases/part_0save_1/RestoreV2_4*
validate_shape(*2
_class(
&$loc:@dnn/hiddenlayer_2/biases/part_0*
use_locking(*
T0*
_output_shapes
:
Б
save_1/RestoreV2_5/tensor_namesConst*
dtype0*.
value%B#Bdnn/hiddenlayer_2/weights*
_output_shapes
:
y
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*"
valueBB16 4 0,16:0,4*
_output_shapes
:
д
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes

:
╓
save_1/Assign_5Assign dnn/hiddenlayer_2/weights/part_0save_1/RestoreV2_5*
validate_shape(*3
_class)
'%loc:@dnn/hiddenlayer_2/weights/part_0*
use_locking(*
T0*
_output_shapes

:
ю
save_1/RestoreV2_6/tensor_namesConst*
dtype0*Ъ
valueРBНBВdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights*
_output_shapes
:
{
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*$
valueBB625 5 0,625:0,5*
_output_shapes
:
е
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:	ё
о
save_1/Assign_6AssignЙdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0save_1/RestoreV2_6*
validate_shape(*Я
_classФ
СОloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ё
└
save_1/RestoreV2_7/tensor_namesConst*
dtype0*m
valuedBbBXdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights*
_output_shapes
:
y
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*"
valueBB25 5 0,25:0,5*
_output_shapes
:
д
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes

:
╘
save_1/Assign_7Assign_dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0save_1/RestoreV2_7*
validate_shape(*r
_classh
fdloc:@dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
а
save_1/RestoreV2_8/tensor_namesConst*
dtype0*M
valueDBBB8dnn/input_from_feature_columns/carrier_embedding/weights*
_output_shapes
:
y
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*"
valueBB14 5 0,14:0,5*
_output_shapes
:
д
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes

:
Ф
save_1/Assign_8Assign?dnn/input_from_feature_columns/carrier_embedding/weights/part_0save_1/RestoreV2_8*
validate_shape(*R
_classH
FDloc:@dnn/input_from_feature_columns/carrier_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
└
save_1/RestoreV2_9/tensor_namesConst*
dtype0*m
valuedBbBXdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights*
_output_shapes
:
y
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*"
valueBB25 5 0,25:0,5*
_output_shapes
:
д
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes

:
╘
save_1/Assign_9Assign_dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0save_1/RestoreV2_9*
validate_shape(*r
_classh
fdloc:@dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes

:
з
 save_1/RestoreV2_10/tensor_namesConst*
dtype0*S
valueJBHB>dnn/input_from_feature_columns/dest_X_origin_embedding/weights*
_output_shapes
:
~
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*&
valueBB1000 5 0,1000:0,5*
_output_shapes
:
и
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
г
save_1/Assign_10AssignEdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0save_1/RestoreV2_10*
validate_shape(*X
_classN
LJloc:@dnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
Ю
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*J
valueAB?B5dnn/input_from_feature_columns/dest_embedding/weights*
_output_shapes
:
А
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0*(
valueBB1000 11 0,1000:0,11*
_output_shapes
:
и
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
С
save_1/Assign_11Assign<dnn/input_from_feature_columns/dest_embedding/weights/part_0save_1/RestoreV2_11*
validate_shape(*O
_classE
CAloc:@dnn/input_from_feature_columns/dest_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
а
 save_1/RestoreV2_12/tensor_namesConst*
dtype0*L
valueCBAB7dnn/input_from_feature_columns/origin_embedding/weights*
_output_shapes
:
А
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*(
valueBB1000 11 0,1000:0,11*
_output_shapes
:
и
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
Х
save_1/Assign_12Assign>dnn/input_from_feature_columns/origin_embedding/weights/part_0save_1/RestoreV2_12*
validate_shape(*Q
_classG
ECloc:@dnn/input_from_feature_columns/origin_embedding/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
z
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*&
valueBBdnn/logits/biases*
_output_shapes
:
r
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
г
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
─
save_1/Assign_13Assigndnn/logits/biases/part_0save_1/RestoreV2_13*
validate_shape(*+
_class!
loc:@dnn/logits/biases/part_0*
use_locking(*
T0*
_output_shapes
:
{
 save_1/RestoreV2_14/tensor_namesConst*
dtype0*'
valueBBdnn/logits/weights*
_output_shapes
:
x
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0* 
valueBB4 1 0,4:0,1*
_output_shapes
:
з
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes

:
╩
save_1/Assign_14Assigndnn/logits/weights/part_0save_1/RestoreV2_14*
validate_shape(*,
_class"
 loc:@dnn/logits/weights/part_0*
use_locking(*
T0*
_output_shapes

:
t
 save_1/RestoreV2_15/tensor_namesConst*
dtype0* 
valueBBglobal_step*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
б
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2	*
_output_shapes
:
ж
save_1/Assign_15Assignglobal_stepsave_1/RestoreV2_15*
validate_shape(*
_class
loc:@global_step*
use_locking(*
T0	*
_output_shapes
: 
Я
 save_1/RestoreV2_16/tensor_namesConst*
dtype0*K
valueBB@B6linear/arr_lat_bucketized_X_arr_lon_bucketized/weights*
_output_shapes
:
z
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*"
valueBB25 1 0,25:0,1*
_output_shapes
:
з
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes

:
Т
save_1/Assign_16Assign=linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0save_1/RestoreV2_16*
validate_shape(*P
_classF
DBloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
╔
 save_1/RestoreV2_17/tensor_namesConst*
dtype0*u
valuelBjB`linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights*
_output_shapes
:
|
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*$
valueBB625 1 0,625:0,1*
_output_shapes
:
и
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:	ё
ч
save_1/Assign_17Assignglinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0save_1/RestoreV2_17*
validate_shape(*z
_classp
nlloc:@linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ё
{
 save_1/RestoreV2_18/tensor_namesConst*
dtype0*'
valueBBlinear/bias_weight*
_output_shapes
:
r
$save_1/RestoreV2_18/shape_and_slicesConst*
dtype0*
valueBB1 0,1*
_output_shapes
:
г
save_1/RestoreV2_18	RestoreV2save_1/Const save_1/RestoreV2_18/tensor_names$save_1/RestoreV2_18/shape_and_slices*
dtypes
2*
_output_shapes
:
╞
save_1/Assign_18Assignlinear/bias_weight/part_0save_1/RestoreV2_18*
validate_shape(*,
_class"
 loc:@linear/bias_weight/part_0*
use_locking(*
T0*
_output_shapes
:

 save_1/RestoreV2_19/tensor_namesConst*
dtype0*+
value"B Blinear/carrier/weights*
_output_shapes
:
z
$save_1/RestoreV2_19/shape_and_slicesConst*
dtype0*"
valueBB14 1 0,14:0,1*
_output_shapes
:
з
save_1/RestoreV2_19	RestoreV2save_1/Const save_1/RestoreV2_19/tensor_names$save_1/RestoreV2_19/shape_and_slices*
dtypes
2*
_output_shapes

:
╥
save_1/Assign_19Assignlinear/carrier/weights/part_0save_1/RestoreV2_19*
validate_shape(*0
_class&
$"loc:@linear/carrier/weights/part_0*
use_locking(*
T0*
_output_shapes

:
Я
 save_1/RestoreV2_20/tensor_namesConst*
dtype0*K
valueBB@B6linear/dep_lat_bucketized_X_dep_lon_bucketized/weights*
_output_shapes
:
z
$save_1/RestoreV2_20/shape_and_slicesConst*
dtype0*"
valueBB25 1 0,25:0,1*
_output_shapes
:
з
save_1/RestoreV2_20	RestoreV2save_1/Const save_1/RestoreV2_20/tensor_names$save_1/RestoreV2_20/shape_and_slices*
dtypes
2*
_output_shapes

:
Т
save_1/Assign_20Assign=linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0save_1/RestoreV2_20*
validate_shape(*P
_classF
DBloc:@linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0*
use_locking(*
T0*
_output_shapes

:
|
 save_1/RestoreV2_21/tensor_namesConst*
dtype0*(
valueBBlinear/dest/weights*
_output_shapes
:
~
$save_1/RestoreV2_21/shape_and_slicesConst*
dtype0*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:
и
save_1/RestoreV2_21	RestoreV2save_1/Const save_1/RestoreV2_21/tensor_names$save_1/RestoreV2_21/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
═
save_1/Assign_21Assignlinear/dest/weights/part_0save_1/RestoreV2_21*
validate_shape(*-
_class#
!loc:@linear/dest/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
Е
 save_1/RestoreV2_22/tensor_namesConst*
dtype0*1
value(B&Blinear/dest_X_origin/weights*
_output_shapes
:
~
$save_1/RestoreV2_22/shape_and_slicesConst*
dtype0*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:
и
save_1/RestoreV2_22	RestoreV2save_1/Const save_1/RestoreV2_22/tensor_names$save_1/RestoreV2_22/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
▀
save_1/Assign_22Assign#linear/dest_X_origin/weights/part_0save_1/RestoreV2_22*
validate_shape(*6
_class,
*(loc:@linear/dest_X_origin/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
~
 save_1/RestoreV2_23/tensor_namesConst*
dtype0**
value!BBlinear/origin/weights*
_output_shapes
:
~
$save_1/RestoreV2_23/shape_and_slicesConst*
dtype0*&
valueBB1000 1 0,1000:0,1*
_output_shapes
:
и
save_1/RestoreV2_23	RestoreV2save_1/Const save_1/RestoreV2_23/tensor_names$save_1/RestoreV2_23/shape_and_slices*
dtypes
2*
_output_shapes
:	ш
╤
save_1/Assign_23Assignlinear/origin/weights/part_0save_1/RestoreV2_23*
validate_shape(*/
_class%
#!loc:@linear/origin/weights/part_0*
use_locking(*
T0*
_output_shapes
:	ш
╪
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17^save_1/Assign_18^save_1/Assign_19^save_1/Assign_20^save_1/Assign_21^save_1/Assign_22^save_1/Assign_23
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8" 
global_step

global_step:0"╩9
trainable_variables▓9п9
Ы
adnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0:0fdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Assignfdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/read:0"f
Xdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights  "2~dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
Ы
adnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0fdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Assignfdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/read:0"f
Xdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights  "2~dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
ї
Лdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0Рdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/AssignРdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/read:0"У
Вdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weightsё  "ё2иdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
Ы
Gdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0:0Ldnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/AssignLdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/read:0"N
>dnn/input_from_feature_columns/dest_X_origin_embedding/weightsш  "ш2ddnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal:0
√
Adnn/input_from_feature_columns/carrier_embedding/weights/part_0:0Fdnn/input_from_feature_columns/carrier_embedding/weights/part_0/AssignFdnn/input_from_feature_columns/carrier_embedding/weights/part_0/read:0"F
8dnn/input_from_feature_columns/carrier_embedding/weights  "2^dnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal:0
ю
>dnn/input_from_feature_columns/dest_embedding/weights/part_0:0Cdnn/input_from_feature_columns/dest_embedding/weights/part_0/AssignCdnn/input_from_feature_columns/dest_embedding/weights/part_0/read:0"E
5dnn/input_from_feature_columns/dest_embedding/weightsш  "ш2[dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal:0
°
@dnn/input_from_feature_columns/origin_embedding/weights/part_0:0Ednn/input_from_feature_columns/origin_embedding/weights/part_0/AssignEdnn/input_from_feature_columns/origin_embedding/weights/part_0/read:0"G
7dnn/input_from_feature_columns/origin_embedding/weightsш  "ш2]dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal:0
▐
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weights8@  "8@2=dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biases@ "@23dnn/hiddenlayer_0/biases/part_0/Initializer/zeros:0
▐
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weights@  "@2=dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biases "23dnn/hiddenlayer_1/biases/part_0/Initializer/zeros:0
▐
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weights  "2=dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases "23dnn/hiddenlayer_2/biases/part_0/Initializer/zeros:0
╗
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "26dnn/logits/weights/part_0/Initializer/random_uniform:0
к
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "2,dnn/logits/biases/part_0/Initializer/zeros:0
ц
?linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0:0Dlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/AssignDlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/read:0"D
6linear/arr_lat_bucketized_X_arr_lon_bucketized/weights  "2Qlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/Initializer/zeros:0
ц
?linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0Dlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/AssignDlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/read:0"D
6linear/dep_lat_bucketized_X_dep_lon_bucketized/weights  "2Qlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros:0
║
ilinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0nlinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Assignnlinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/read:0"p
`linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weightsё  "ё2{linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros:0
ц
%linear/dest_X_origin/weights/part_0:0*linear/dest_X_origin/weights/part_0/Assign*linear/dest_X_origin/weights/part_0/read:0",
linear/dest_X_origin/weightsш  "ш27linear/dest_X_origin/weights/part_0/Initializer/zeros:0
╞
linear/carrier/weights/part_0:0$linear/carrier/weights/part_0/Assign$linear/carrier/weights/part_0/read:0"$
linear/carrier/weights  "21linear/carrier/weights/part_0/Initializer/zeros:0
╣
linear/dest/weights/part_0:0!linear/dest/weights/part_0/Assign!linear/dest/weights/part_0/read:0"#
linear/dest/weightsш  "ш2.linear/dest/weights/part_0/Initializer/zeros:0
├
linear/origin/weights/part_0:0#linear/origin/weights/part_0/Assign#linear/origin/weights/part_0/read:0"%
linear/origin/weightsш  "ш20linear/origin/weights/part_0/Initializer/zeros:0
п
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:0"Ъ:
	variablesМ:Й:
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
Ы
adnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0:0fdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Assignfdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/read:0"f
Xdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights  "2~dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
Ы
adnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0fdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Assignfdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/read:0"f
Xdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights  "2~dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
ї
Лdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0Рdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/AssignРdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/read:0"У
Вdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weightsё  "ё2иdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
Ы
Gdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0:0Ldnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/AssignLdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/read:0"N
>dnn/input_from_feature_columns/dest_X_origin_embedding/weightsш  "ш2ddnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal:0
√
Adnn/input_from_feature_columns/carrier_embedding/weights/part_0:0Fdnn/input_from_feature_columns/carrier_embedding/weights/part_0/AssignFdnn/input_from_feature_columns/carrier_embedding/weights/part_0/read:0"F
8dnn/input_from_feature_columns/carrier_embedding/weights  "2^dnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal:0
ю
>dnn/input_from_feature_columns/dest_embedding/weights/part_0:0Cdnn/input_from_feature_columns/dest_embedding/weights/part_0/AssignCdnn/input_from_feature_columns/dest_embedding/weights/part_0/read:0"E
5dnn/input_from_feature_columns/dest_embedding/weightsш  "ш2[dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal:0
°
@dnn/input_from_feature_columns/origin_embedding/weights/part_0:0Ednn/input_from_feature_columns/origin_embedding/weights/part_0/AssignEdnn/input_from_feature_columns/origin_embedding/weights/part_0/read:0"G
7dnn/input_from_feature_columns/origin_embedding/weightsш  "ш2]dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal:0
▐
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weights8@  "8@2=dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biases@ "@23dnn/hiddenlayer_0/biases/part_0/Initializer/zeros:0
▐
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weights@  "@2=dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biases "23dnn/hiddenlayer_1/biases/part_0/Initializer/zeros:0
▐
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weights  "2=dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases "23dnn/hiddenlayer_2/biases/part_0/Initializer/zeros:0
╗
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "26dnn/logits/weights/part_0/Initializer/random_uniform:0
к
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "2,dnn/logits/biases/part_0/Initializer/zeros:0
ц
?linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0:0Dlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/AssignDlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/read:0"D
6linear/arr_lat_bucketized_X_arr_lon_bucketized/weights  "2Qlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/Initializer/zeros:0
ц
?linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0Dlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/AssignDlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/read:0"D
6linear/dep_lat_bucketized_X_dep_lon_bucketized/weights  "2Qlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros:0
║
ilinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0nlinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Assignnlinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/read:0"p
`linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weightsё  "ё2{linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros:0
ц
%linear/dest_X_origin/weights/part_0:0*linear/dest_X_origin/weights/part_0/Assign*linear/dest_X_origin/weights/part_0/read:0",
linear/dest_X_origin/weightsш  "ш27linear/dest_X_origin/weights/part_0/Initializer/zeros:0
╞
linear/carrier/weights/part_0:0$linear/carrier/weights/part_0/Assign$linear/carrier/weights/part_0/read:0"$
linear/carrier/weights  "21linear/carrier/weights/part_0/Initializer/zeros:0
╣
linear/dest/weights/part_0:0!linear/dest/weights/part_0/Assign!linear/dest/weights/part_0/read:0"#
linear/dest/weightsш  "ш2.linear/dest/weights/part_0/Initializer/zeros:0
├
linear/origin/weights/part_0:0#linear/origin/weights/part_0/Assign#linear/origin/weights/part_0/read:0"%
linear/origin/weightsш  "ш20linear/origin/weights/part_0/Initializer/zeros:0
п
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:0"√
dnnє
Ё
adnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0:0
adnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0
Лdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0
Gdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0:0
Adnn/input_from_feature_columns/carrier_embedding/weights/part_0:0
>dnn/input_from_feature_columns/dest_embedding/weights/part_0:0
@dnn/input_from_feature_columns/origin_embedding/weights/part_0:0
"dnn/hiddenlayer_0/weights/part_0:0
!dnn/hiddenlayer_0/biases/part_0:0
"dnn/hiddenlayer_1/weights/part_0:0
!dnn/hiddenlayer_1/biases/part_0:0
"dnn/hiddenlayer_2/weights/part_0:0
!dnn/hiddenlayer_2/biases/part_0:0
dnn/logits/weights/part_0:0
dnn/logits/biases/part_0:0"п
table_initializerЩ
Ц
hdnn/input_from_feature_columns/input_from_feature_columns/carrier_embedding/lookup/hash_table/table_init
*linear/linear/lookup/hash_table/table_init" 
legacy_init_op


group_deps"П
input_feature_keysyw
origin
distance
avg_dep_delay
	dep_delay
taxiout
arr_lat
dep_lon
dest
carrier
avg_arr_delay
dep_lat
arr_lon"Ь
	summariesО
Л
/dnn/dnn/hiddenlayer_0/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_0/activation:0
/dnn/dnn/hiddenlayer_1/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_1/activation:0
/dnn/dnn/hiddenlayer_2/fraction_of_zero_values:0
"dnn/dnn/hiddenlayer_2/activation:0
(dnn/dnn/logits/fraction_of_zero_values:0
dnn/dnn/logits/activation:0
'linear/linear/fraction_of_zero_values:0
linear/linear/activation:0"╞9
model_variables▓9п9
Ы
adnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0:0fdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Assignfdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/read:0"f
Xdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights  "2~dnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
Ы
adnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0fdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Assignfdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/read:0"f
Xdnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights  "2~dnn/input_from_feature_columns/dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
ї
Лdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0:0Рdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/AssignРdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/read:0"У
Вdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weightsё  "ё2иdnn/input_from_feature_columns/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized_embedding/weights/part_0/Initializer/truncated_normal:0
Ы
Gdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0:0Ldnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/AssignLdnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/read:0"N
>dnn/input_from_feature_columns/dest_X_origin_embedding/weightsш  "ш2ddnn/input_from_feature_columns/dest_X_origin_embedding/weights/part_0/Initializer/truncated_normal:0
√
Adnn/input_from_feature_columns/carrier_embedding/weights/part_0:0Fdnn/input_from_feature_columns/carrier_embedding/weights/part_0/AssignFdnn/input_from_feature_columns/carrier_embedding/weights/part_0/read:0"F
8dnn/input_from_feature_columns/carrier_embedding/weights  "2^dnn/input_from_feature_columns/carrier_embedding/weights/part_0/Initializer/truncated_normal:0
ю
>dnn/input_from_feature_columns/dest_embedding/weights/part_0:0Cdnn/input_from_feature_columns/dest_embedding/weights/part_0/AssignCdnn/input_from_feature_columns/dest_embedding/weights/part_0/read:0"E
5dnn/input_from_feature_columns/dest_embedding/weightsш  "ш2[dnn/input_from_feature_columns/dest_embedding/weights/part_0/Initializer/truncated_normal:0
°
@dnn/input_from_feature_columns/origin_embedding/weights/part_0:0Ednn/input_from_feature_columns/origin_embedding/weights/part_0/AssignEdnn/input_from_feature_columns/origin_embedding/weights/part_0/read:0"G
7dnn/input_from_feature_columns/origin_embedding/weightsш  "ш2]dnn/input_from_feature_columns/origin_embedding/weights/part_0/Initializer/truncated_normal:0
▐
"dnn/hiddenlayer_0/weights/part_0:0'dnn/hiddenlayer_0/weights/part_0/Assign'dnn/hiddenlayer_0/weights/part_0/read:0"'
dnn/hiddenlayer_0/weights8@  "8@2=dnn/hiddenlayer_0/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_0/biases/part_0:0&dnn/hiddenlayer_0/biases/part_0/Assign&dnn/hiddenlayer_0/biases/part_0/read:0"#
dnn/hiddenlayer_0/biases@ "@23dnn/hiddenlayer_0/biases/part_0/Initializer/zeros:0
▐
"dnn/hiddenlayer_1/weights/part_0:0'dnn/hiddenlayer_1/weights/part_0/Assign'dnn/hiddenlayer_1/weights/part_0/read:0"'
dnn/hiddenlayer_1/weights@  "@2=dnn/hiddenlayer_1/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_1/biases/part_0:0&dnn/hiddenlayer_1/biases/part_0/Assign&dnn/hiddenlayer_1/biases/part_0/read:0"#
dnn/hiddenlayer_1/biases "23dnn/hiddenlayer_1/biases/part_0/Initializer/zeros:0
▐
"dnn/hiddenlayer_2/weights/part_0:0'dnn/hiddenlayer_2/weights/part_0/Assign'dnn/hiddenlayer_2/weights/part_0/read:0"'
dnn/hiddenlayer_2/weights  "2=dnn/hiddenlayer_2/weights/part_0/Initializer/random_uniform:0
═
!dnn/hiddenlayer_2/biases/part_0:0&dnn/hiddenlayer_2/biases/part_0/Assign&dnn/hiddenlayer_2/biases/part_0/read:0"#
dnn/hiddenlayer_2/biases "23dnn/hiddenlayer_2/biases/part_0/Initializer/zeros:0
╗
dnn/logits/weights/part_0:0 dnn/logits/weights/part_0/Assign dnn/logits/weights/part_0/read:0" 
dnn/logits/weights  "26dnn/logits/weights/part_0/Initializer/random_uniform:0
к
dnn/logits/biases/part_0:0dnn/logits/biases/part_0/Assigndnn/logits/biases/part_0/read:0"
dnn/logits/biases "2,dnn/logits/biases/part_0/Initializer/zeros:0
ц
?linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0:0Dlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/AssignDlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/read:0"D
6linear/arr_lat_bucketized_X_arr_lon_bucketized/weights  "2Qlinear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0/Initializer/zeros:0
ц
?linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0Dlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/AssignDlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/read:0"D
6linear/dep_lat_bucketized_X_dep_lon_bucketized/weights  "2Qlinear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros:0
║
ilinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0nlinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Assignnlinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/read:0"p
`linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weightsё  "ё2{linear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0/Initializer/zeros:0
ц
%linear/dest_X_origin/weights/part_0:0*linear/dest_X_origin/weights/part_0/Assign*linear/dest_X_origin/weights/part_0/read:0",
linear/dest_X_origin/weightsш  "ш27linear/dest_X_origin/weights/part_0/Initializer/zeros:0
╞
linear/carrier/weights/part_0:0$linear/carrier/weights/part_0/Assign$linear/carrier/weights/part_0/read:0"$
linear/carrier/weights  "21linear/carrier/weights/part_0/Initializer/zeros:0
╣
linear/dest/weights/part_0:0!linear/dest/weights/part_0/Assign!linear/dest/weights/part_0/read:0"#
linear/dest/weightsш  "ш2.linear/dest/weights/part_0/Initializer/zeros:0
├
linear/origin/weights/part_0:0#linear/origin/weights/part_0/Assign#linear/origin/weights/part_0/read:0"%
linear/origin/weightsш  "ш20linear/origin/weights/part_0/Initializer/zeros:0
п
linear/bias_weight/part_0:0 linear/bias_weight/part_0/Assign linear/bias_weight/part_0/read:0"
linear/bias_weight "2-linear/bias_weight/part_0/Initializer/zeros:0"Ю
linearУ
Р
?linear/arr_lat_bucketized_X_arr_lon_bucketized/weights/part_0:0
?linear/dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0
ilinear/arr_lat_bucketized_X_arr_lon_bucketized_X_dep_lat_bucketized_X_dep_lon_bucketized/weights/part_0:0
%linear/dest_X_origin/weights/part_0:0
linear/carrier/weights/part_0:0
linear/dest/weights/part_0:0
linear/origin/weights/part_0:0
linear/bias_weight/part_0:0*╬
default_input_alternative:Noneл
,
origin"
Placeholder_9:0         
,
distance 
Placeholder:0         
3
avg_dep_delay"
Placeholder_1:0         
/
	dep_delay"
Placeholder_2:0         
-
taxiout"
Placeholder_3:0         
-
arr_lat"
Placeholder_4:0         
-
dep_lon"
Placeholder_5:0         
+
dest#
Placeholder_10:0         
.
carrier#
Placeholder_11:0         
3
avg_arr_delay"
Placeholder_6:0         
-
dep_lat"
Placeholder_7:0         
-
arr_lon"
Placeholder_8:0         X
probabilitiesG
0binary_logistic_head/predictions/probabilities:0         t
classesi
Ibinary_logistic_head/_classification_output_alternatives/classes_tensor:0                  tensorflow/serving/predict*┐
serving_defaultл
,
origin"
Placeholder_9:0         
,
distance 
Placeholder:0         
3
avg_dep_delay"
Placeholder_1:0         
/
	dep_delay"
Placeholder_2:0         
-
taxiout"
Placeholder_3:0         
-
arr_lat"
Placeholder_4:0         
-
dep_lon"
Placeholder_5:0         
+
dest#
Placeholder_10:0         
.
carrier#
Placeholder_11:0         
3
avg_arr_delay"
Placeholder_6:0         
-
dep_lat"
Placeholder_7:0         
-
arr_lon"
Placeholder_8:0         X
probabilitiesG
0binary_logistic_head/predictions/probabilities:0         t
classesi
Ibinary_logistic_head/_classification_output_alternatives/classes_tensor:0                  tensorflow/serving/predict