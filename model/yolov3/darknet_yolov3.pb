
o
dk_Input	DataInput"&
shape:???????????"0
_output_shape
:???????????
?
layer1-convConvdk_Input"
strides
"
use_bias( "
kernel_shape
"0
_output_shape
:???????????"
pads

    "
auto_padSAME
?
	layer1-bn	BatchNormlayer1-conv"

bias("
scale("
use_global_stats("0
_output_shape
:???????????"
epsilon%??'7
d

layer1-act	LeakyRelu	layer1-bn"0
_output_shape
:???????????"
alpha%???=
?
layer2-maxpoolPool
layer1-act"
strides
"
kernel_shape
"0
_output_shape
:???????????"
pads

        "
pooling_typeMAX
?
layer3-convConvlayer2-maxpool"
auto_padSAME"
pads

    "
strides
"0
_output_shape
:??????????? "
kernel_shape
 "
use_bias( 
?
	layer3-bn	BatchNormlayer3-conv"

bias("
scale("
use_global_stats("0
_output_shape
:??????????? "
epsilon%??'7
d

layer3-act	LeakyRelu	layer3-bn"0
_output_shape
:??????????? "
alpha%???=
?
layer4-maxpoolPool
layer3-act".
_output_shape
:?????????hh "
pooling_typeMAX"
pads

        "
strides
"
kernel_shape

?
layer5-convConvlayer4-maxpool"
use_bias( "
kernel_shape
 @"
pads

    "
strides
"
auto_padSAME".
_output_shape
:?????????hh@
?
	layer5-bn	BatchNormlayer5-conv"

bias(".
_output_shape
:?????????hh@"
use_global_stats("
epsilon%??'7"
scale(
b

layer5-act	LeakyRelu	layer5-bn"
alpha%???=".
_output_shape
:?????????hh@
?
layer6-maxpoolPool
layer5-act"
pooling_typeMAX"
kernel_shape
"
pads

        "
strides
".
_output_shape
:?????????44@
?
layer7-convConvlayer6-maxpool"/
_output_shape
:?????????44?"
kernel_shape	
@?"
use_bias( "
auto_padSAME"
strides
"
pads

    
?
	layer7-bn	BatchNormlayer7-conv"

bias("
epsilon%??'7"
scale("
use_global_stats("/
_output_shape
:?????????44?
c

layer7-act	LeakyRelu	layer7-bn"
alpha%???="/
_output_shape
:?????????44?
?
layer8-maxpoolPool
layer7-act"
pooling_typeMAX"
kernel_shape
"
pads

        "
strides
"/
_output_shape
:??????????
?
layer9-convConvlayer8-maxpool"
auto_padSAME"
pads

    "
strides
"/
_output_shape
:??????????"
kernel_shape

??"
use_bias( 
?
	layer9-bn	BatchNormlayer9-conv"

bias("/
_output_shape
:??????????"
use_global_stats("
epsilon%??'7"
scale(
c

layer9-act	LeakyRelu	layer9-bn"
alpha%???="/
_output_shape
:??????????
?
layer10-maxpoolPool
layer9-act"
pooling_typeMAX"
kernel_shape
"
pads

        "
strides
"/
_output_shape
:??????????
?
layer11-convConvlayer10-maxpool"
use_bias( "
kernel_shape

??"
pads

    "
strides
"
auto_padSAME"/
_output_shape
:??????????
?

layer11-bn	BatchNormlayer11-conv"

bias("/
_output_shape
:??????????"
use_global_stats("
epsilon%??'7"
scale(
e
layer11-act	LeakyRelu
layer11-bn"/
_output_shape
:??????????"
alpha%???=
?
layer12-maxpoolPoollayer11-act"
pooling_typeMAX"/
_output_shape
:??????????"
kernel_shape
"
strides
"
pads

        
?
layer13-convConvlayer12-maxpool"
auto_padSAME"
pads

    "
strides
"/
_output_shape
:??????????"
kernel_shape

??"
use_bias( 
?

layer13-bn	BatchNormlayer13-conv"

bias("
epsilon%??'7"
scale("
use_global_stats("/
_output_shape
:??????????
e
layer13-act	LeakyRelu
layer13-bn"/
_output_shape
:??????????"
alpha%???=
?
layer14-convConvlayer13-act"
strides
"
use_bias( "
kernel_shape

??"/
_output_shape
:??????????"
pads

        "
auto_padSAME
?

layer14-bn	BatchNormlayer14-conv"

bias("
scale("
use_global_stats("/
_output_shape
:??????????"
epsilon%??'7
e
layer14-act	LeakyRelu
layer14-bn"/
_output_shape
:??????????"
alpha%???=
?
layer15-convConvlayer14-act"
strides
"
use_bias( "
kernel_shape

??"/
_output_shape
:??????????"
pads

    "
auto_padSAME
?

layer15-bn	BatchNormlayer15-conv"/
_output_shape
:??????????"
scale("

bias("
epsilon%??'7"
use_global_stats(
e
layer15-act	LeakyRelu
layer15-bn"
alpha%???="/
_output_shape
:??????????
?
layer16-convConvlayer15-act"
use_bias("
kernel_shape

??"
pads

        "
strides
"
auto_padSAME"/
_output_shape
:??????????
?
layer17-yoloyololayer16-conv"
truth_thresh%  ??"
mask
"
ignore_thresh%333?"
classesP"
jitter%???>"	
num"
anchors

%:QR????"
random%  ??
?
layer19-convConvlayer14-act"
strides
"
use_bias( "
kernel_shape

??"/
_output_shape
:??????????"
pads

        "
auto_padSAME
?

layer19-bn	BatchNormlayer19-conv"

bias("
epsilon%??'7"
scale("
use_global_stats("/
_output_shape
:??????????
e
layer19-act	LeakyRelu
layer19-bn"
alpha%???="/
_output_shape
:??????????
p
layer20-upsampleUpSampling2Dlayer19-act"
scales
"/
_output_shape
:??????????
s
layer21-concatConcatlayer20-upsample
layer9-act"/
_output_shape
:??????????"

axis
?
layer22-convConvlayer21-concat"/
_output_shape
:??????????"
kernel_shape

??"
use_bias( "
auto_padSAME"
strides
"
pads

    
?

layer22-bn	BatchNormlayer22-conv"

bias("
scale("
use_global_stats("/
_output_shape
:??????????"
epsilon%??'7
e
layer22-act	LeakyRelu
layer22-bn"/
_output_shape
:??????????"
alpha%???=
?
layer23-convConvlayer22-act"/
_output_shape
:??????????"
kernel_shape

??"
use_bias("
auto_padSAME"
strides
"
pads

        
?
layer24-yoloyololayer23-conv"
jitter%???>"	
num"
classesP"
random%  ??"
ignore_thresh%333?"
mask
 "
truth_thresh%  ??"
anchors

%:QR????