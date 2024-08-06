; ModuleID = 'obj\Debug\130\android\marshal_methods.armeabi-v7a.ll'
source_filename = "obj\Debug\130\android\marshal_methods.armeabi-v7a.ll"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv7-unknown-linux-android"


%struct.MonoImage = type opaque

%struct.MonoClass = type opaque

%struct.MarshalMethodsManagedClass = type {
	i32,; uint32_t token
	%struct.MonoClass*; MonoClass* klass
}

%struct.MarshalMethodName = type {
	i64,; uint64_t id
	i8*; char* name
}

%class._JNIEnv = type opaque

%class._jobject = type {
	i8; uint8_t b
}

%class._jclass = type {
	i8; uint8_t b
}

%class._jstring = type {
	i8; uint8_t b
}

%class._jthrowable = type {
	i8; uint8_t b
}

%class._jarray = type {
	i8; uint8_t b
}

%class._jobjectArray = type {
	i8; uint8_t b
}

%class._jbooleanArray = type {
	i8; uint8_t b
}

%class._jbyteArray = type {
	i8; uint8_t b
}

%class._jcharArray = type {
	i8; uint8_t b
}

%class._jshortArray = type {
	i8; uint8_t b
}

%class._jintArray = type {
	i8; uint8_t b
}

%class._jlongArray = type {
	i8; uint8_t b
}

%class._jfloatArray = type {
	i8; uint8_t b
}

%class._jdoubleArray = type {
	i8; uint8_t b
}

; assembly_image_cache
@assembly_image_cache = local_unnamed_addr global [0 x %struct.MonoImage*] zeroinitializer, align 4
; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = local_unnamed_addr constant [234 x i32] [
	i32 32687329, ; 0: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 73
	i32 34715100, ; 1: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 102
	i32 57263871, ; 2: Xamarin.Forms.Core.dll => 0x369c6ff => 97
	i32 101534019, ; 3: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 87
	i32 117431740, ; 4: System.Runtime.InteropServices => 0x6ffddbc => 2
	i32 120558881, ; 5: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 87
	i32 156689657, ; 6: todaysvideo => 0x956e4f9 => 43
	i32 165246403, ; 7: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 54
	i32 182336117, ; 8: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 88
	i32 209399409, ; 9: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 52
	i32 220171995, ; 10: System.Diagnostics.Debug => 0xd1f8edb => 3
	i32 230216969, ; 11: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 68
	i32 231814094, ; 12: System.Globalization => 0xdd133ce => 5
	i32 232815796, ; 13: System.Web.Services => 0xde07cb4 => 111
	i32 246610117, ; 14: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 114
	i32 261689757, ; 15: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 57
	i32 278686392, ; 16: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 72
	i32 280482487, ; 17: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 66
	i32 318968648, ; 18: Xamarin.AndroidX.Activity.dll => 0x13031348 => 44
	i32 321597661, ; 19: System.Numerics => 0x132b30dd => 37
	i32 331603304, ; 20: SixLabors.Fonts => 0x13c3dd68 => 25
	i32 342366114, ; 21: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 70
	i32 347068432, ; 22: SQLitePCLRaw.lib.e_sqlite3.android.dll => 0x14afd810 => 29
	i32 385762202, ; 23: System.Memory.dll => 0x16fe439a => 35
	i32 441335492, ; 24: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 56
	i32 442521989, ; 25: Xamarin.Essentials => 0x1a605985 => 96
	i32 442565967, ; 26: System.Collections => 0x1a61054f => 6
	i32 450948140, ; 27: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 65
	i32 465846621, ; 28: mscorlib => 0x1bc4415d => 24
	i32 469710990, ; 29: System.dll => 0x1bff388e => 33
	i32 476646585, ; 30: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 66
	i32 486930444, ; 31: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 77
	i32 526420162, ; 32: System.Transactions.dll => 0x1f6088c2 => 105
	i32 545304856, ; 33: System.Runtime.Extensions => 0x2080b118 => 7
	i32 605376203, ; 34: System.IO.Compression.FileSystem => 0x24154ecb => 109
	i32 627609679, ; 35: Xamarin.AndroidX.CustomView => 0x2568904f => 61
	i32 663517072, ; 36: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 93
	i32 666292255, ; 37: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 49
	i32 690569205, ; 38: System.Xml.Linq.dll => 0x29293ff5 => 42
	i32 748832960, ; 39: SQLitePCLRaw.batteries_v2 => 0x2ca248c0 => 27
	i32 775507847, ; 40: System.IO.Compression => 0x2e394f87 => 108
	i32 809851609, ; 41: System.Drawing.Common.dll => 0x30455ad9 => 107
	i32 843511501, ; 42: Xamarin.AndroidX.Print => 0x3246f6cd => 84
	i32 877678880, ; 43: System.Globalization.dll => 0x34505120 => 5
	i32 928116545, ; 44: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 102
	i32 967690846, ; 45: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 70
	i32 974778368, ; 46: FormsViewGroup.dll => 0x3a19f000 => 20
	i32 992768348, ; 47: System.Collections.dll => 0x3b2c715c => 6
	i32 1012816738, ; 48: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 86
	i32 1035644815, ; 49: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 48
	i32 1042160112, ; 50: Xamarin.Forms.Platform.dll => 0x3e1e19f0 => 99
	i32 1052210849, ; 51: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 74
	i32 1083751839, ; 52: System.IO.Packaging => 0x4098bd9f => 34
	i32 1098259244, ; 53: System => 0x41761b2c => 33
	i32 1175144683, ; 54: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 91
	i32 1178241025, ; 55: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 81
	i32 1204270330, ; 56: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 49
	i32 1267360935, ; 57: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 92
	i32 1292207520, ; 58: SQLitePCLRaw.core.dll => 0x4d0585a0 => 28
	i32 1293217323, ; 59: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 63
	i32 1324164729, ; 60: System.Linq => 0x4eed2679 => 13
	i32 1338318188, ; 61: ExcelNumberFormat.dll => 0x4fc51d6c => 19
	i32 1338781641, ; 62: DocumentFormat.OpenXml.dll => 0x4fcc2fc9 => 18
	i32 1364015309, ; 63: System.IO => 0x514d38cd => 16
	i32 1365406463, ; 64: System.ServiceModel.Internals.dll => 0x516272ff => 112
	i32 1376866003, ; 65: Xamarin.AndroidX.SavedState => 0x52114ed3 => 86
	i32 1379779777, ; 66: System.Resources.ResourceManager => 0x523dc4c1 => 4
	i32 1395857551, ; 67: Xamarin.AndroidX.Media.dll => 0x5333188f => 78
	i32 1406073936, ; 68: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 58
	i32 1411638395, ; 69: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 39
	i32 1457743152, ; 70: System.Runtime.Extensions.dll => 0x56e36530 => 7
	i32 1460219004, ; 71: Xamarin.Forms.Xaml => 0x57092c7c => 100
	i32 1462112819, ; 72: System.IO.Compression.dll => 0x57261233 => 108
	i32 1469204771, ; 73: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 47
	i32 1523320876, ; 74: todaysvideo.dll => 0x5acc082c => 43
	i32 1543031311, ; 75: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 9
	i32 1550322496, ; 76: System.Reflection.Extensions.dll => 0x5c680b40 => 12
	i32 1582372066, ; 77: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 62
	i32 1592978981, ; 78: System.Runtime.Serialization.dll => 0x5ef2ee25 => 15
	i32 1622152042, ; 79: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 76
	i32 1624863272, ; 80: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 95
	i32 1636350590, ; 81: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 60
	i32 1639515021, ; 82: System.Net.Http.dll => 0x61b9038d => 36
	i32 1639986890, ; 83: System.Text.RegularExpressions => 0x61c036ca => 9
	i32 1657153582, ; 84: System.Runtime => 0x62c6282e => 40
	i32 1658241508, ; 85: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 89
	i32 1658251792, ; 86: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 101
	i32 1670060433, ; 87: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 57
	i32 1701541528, ; 88: System.Diagnostics.Debug.dll => 0x656b7698 => 3
	i32 1711441057, ; 89: SQLitePCLRaw.lib.e_sqlite3.android => 0x660284a1 => 29
	i32 1726116996, ; 90: System.Reflection.dll => 0x66e27484 => 10
	i32 1729485958, ; 91: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 53
	i32 1765942094, ; 92: System.Reflection.Extensions => 0x6942234e => 12
	i32 1766324549, ; 93: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 88
	i32 1776026572, ; 94: System.Core.dll => 0x69dc03cc => 32
	i32 1788241197, ; 95: Xamarin.AndroidX.Fragment => 0x6a96652d => 65
	i32 1808609942, ; 96: Xamarin.AndroidX.Loader => 0x6bcd3296 => 76
	i32 1813201214, ; 97: Xamarin.Google.Android.Material => 0x6c13413e => 101
	i32 1818569960, ; 98: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 82
	i32 1856505197, ; 99: Irony => 0x6ea8056d => 21
	i32 1867746548, ; 100: Xamarin.Essentials.dll => 0x6f538cf4 => 96
	i32 1870277092, ; 101: System.Reflection.Primitives => 0x6f7a29e4 => 14
	i32 1878053835, ; 102: Xamarin.Forms.Xaml.dll => 0x6ff0d3cb => 100
	i32 1885316902, ; 103: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 50
	i32 1900610850, ; 104: System.Resources.ResourceManager.dll => 0x71490522 => 4
	i32 1919157823, ; 105: Xamarin.AndroidX.MultiDex.dll => 0x7264063f => 79
	i32 2011961780, ; 106: System.Buffers.dll => 0x77ec19b4 => 31
	i32 2019465201, ; 107: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 74
	i32 2055257422, ; 108: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 71
	i32 2079903147, ; 109: System.Runtime.dll => 0x7bf8cdab => 40
	i32 2090596640, ; 110: System.Numerics.Vectors => 0x7c9bf920 => 38
	i32 2097448633, ; 111: Xamarin.AndroidX.Legacy.Support.Core.UI => 0x7d0486b9 => 67
	i32 2103459038, ; 112: SQLitePCLRaw.provider.e_sqlite3.dll => 0x7d603cde => 30
	i32 2126786730, ; 113: Xamarin.Forms.Platform.Android => 0x7ec430aa => 98
	i32 2166698602, ; 114: ClosedXML => 0x8125326a => 17
	i32 2201231467, ; 115: System.Net.Http => 0x8334206b => 36
	i32 2217644978, ; 116: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 91
	i32 2244775296, ; 117: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 77
	i32 2256548716, ; 118: Xamarin.AndroidX.MultiDex => 0x8680336c => 79
	i32 2261435625, ; 119: Xamarin.AndroidX.Legacy.Support.V4.dll => 0x86cac4e9 => 69
	i32 2279755925, ; 120: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 85
	i32 2315684594, ; 121: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 45
	i32 2395108224, ; 122: todaysvideo.Android => 0x8ec27380 => 0
	i32 2409053734, ; 123: Xamarin.AndroidX.Preference.dll => 0x8f973e26 => 83
	i32 2465273461, ; 124: SQLitePCLRaw.batteries_v2.dll => 0x92f11675 => 27
	i32 2465532216, ; 125: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 56
	i32 2471841756, ; 126: netstandard.dll => 0x93554fdc => 1
	i32 2475788418, ; 127: Java.Interop.dll => 0x93918882 => 22
	i32 2501346920, ; 128: System.Data.DataSetExtensions => 0x95178668 => 106
	i32 2505896520, ; 129: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 73
	i32 2538310050, ; 130: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 114
	i32 2538318350, ; 131: Irony.dll => 0x974baa0e => 21
	i32 2581819634, ; 132: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 92
	i32 2618712057, ; 133: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 113
	i32 2620871830, ; 134: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 60
	i32 2624644809, ; 135: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 64
	i32 2633051222, ; 136: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 72
	i32 2693849962, ; 137: System.IO.dll => 0xa090e36a => 16
	i32 2701096212, ; 138: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 89
	i32 2724373263, ; 139: System.Runtime.Numerics.dll => 0xa262a30f => 8
	i32 2732626843, ; 140: Xamarin.AndroidX.Activity => 0xa2e0939b => 44
	i32 2737747696, ; 141: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 47
	i32 2766581644, ; 142: Xamarin.Forms.Core => 0xa4e6af8c => 97
	i32 2778768386, ; 143: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 94
	i32 2810250172, ; 144: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 58
	i32 2819470561, ; 145: System.Xml.dll => 0xa80db4e1 => 41
	i32 2853208004, ; 146: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 94
	i32 2855708567, ; 147: Xamarin.AndroidX.Transition => 0xaa36a797 => 90
	i32 2877542466, ; 148: ClosedXML.dll => 0xab83d042 => 17
	i32 2901442782, ; 149: System.Reflection => 0xacf080de => 10
	i32 2903344695, ; 150: System.ComponentModel.Composition => 0xad0d8637 => 110
	i32 2904610611, ; 151: XLParser => 0xad20d733 => 103
	i32 2905242038, ; 152: mscorlib.dll => 0xad2a79b6 => 24
	i32 2916838712, ; 153: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 95
	i32 2919462931, ; 154: System.Numerics.Vectors.dll => 0xae037813 => 38
	i32 2921128767, ; 155: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 46
	i32 2978675010, ; 156: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 63
	i32 3024354802, ; 157: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 68
	i32 3044182254, ; 158: FormsViewGroup => 0xb57288ee => 20
	i32 3057625584, ; 159: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 80
	i32 3111772706, ; 160: System.Runtime.Serialization => 0xb979e222 => 15
	i32 3118851116, ; 161: ExcelNumberFormat => 0xb9e5e42c => 19
	i32 3159123045, ; 162: System.Reflection.Primitives.dll => 0xbc4c6465 => 14
	i32 3178908327, ; 163: SixLabors.Fonts.dll => 0xbd7a4aa7 => 25
	i32 3204380047, ; 164: System.Data.dll => 0xbefef58f => 104
	i32 3211777861, ; 165: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 62
	i32 3220365878, ; 166: System.Threading => 0xbff2e236 => 11
	i32 3247949154, ; 167: Mono.Security => 0xc197c562 => 116
	i32 3258312781, ; 168: Xamarin.AndroidX.CardView => 0xc235e84d => 53
	i32 3267021929, ; 169: Xamarin.AndroidX.AsyncLayoutInflater => 0xc2bacc69 => 51
	i32 3286872994, ; 170: SQLite-net.dll => 0xc3e9b3a2 => 26
	i32 3317135071, ; 171: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 61
	i32 3317144872, ; 172: System.Data => 0xc5b79d28 => 104
	i32 3340431453, ; 173: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 50
	i32 3346324047, ; 174: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 81
	i32 3353484488, ; 175: Xamarin.AndroidX.Legacy.Support.Core.UI.dll => 0xc7e21cc8 => 67
	i32 3360279109, ; 176: SQLitePCLRaw.core => 0xc849ca45 => 28
	i32 3362522851, ; 177: Xamarin.AndroidX.Core => 0xc86c06e3 => 59
	i32 3366347497, ; 178: Java.Interop => 0xc8a662e9 => 22
	i32 3374999561, ; 179: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 85
	i32 3395150330, ; 180: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 39
	i32 3404865022, ; 181: System.ServiceModel.Internals => 0xcaf21dfe => 112
	i32 3429136800, ; 182: System.Xml => 0xcc6479a0 => 41
	i32 3430777524, ; 183: netstandard => 0xcc7d82b4 => 1
	i32 3441283291, ; 184: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 64
	i32 3476120550, ; 185: Mono.Android => 0xcf3163e6 => 23
	i32 3486566296, ; 186: System.Transactions => 0xcfd0c798 => 105
	i32 3493954962, ; 187: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 55
	i32 3501239056, ; 188: Xamarin.AndroidX.AsyncLayoutInflater.dll => 0xd0b0ab10 => 51
	i32 3509114376, ; 189: System.Xml.Linq => 0xd128d608 => 42
	i32 3536029504, ; 190: Xamarin.Forms.Platform.Android.dll => 0xd2c38740 => 98
	i32 3567349600, ; 191: System.ComponentModel.Composition.dll => 0xd4a16f60 => 110
	i32 3608519521, ; 192: System.Linq.dll => 0xd715a361 => 13
	i32 3618140916, ; 193: Xamarin.AndroidX.Preference => 0xd7a872f4 => 83
	i32 3627220390, ; 194: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 84
	i32 3632359727, ; 195: Xamarin.Forms.Platform => 0xd881692f => 99
	i32 3633644679, ; 196: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 46
	i32 3641597786, ; 197: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 71
	i32 3672681054, ; 198: Mono.Android.dll => 0xdae8aa5e => 23
	i32 3676310014, ; 199: System.Web.Services.dll => 0xdb2009fe => 111
	i32 3682565725, ; 200: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 52
	i32 3684561358, ; 201: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 55
	i32 3689375977, ; 202: System.Drawing.Common => 0xdbe768e9 => 107
	i32 3718780102, ; 203: Xamarin.AndroidX.Annotation => 0xdda814c6 => 45
	i32 3724971120, ; 204: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 80
	i32 3754567612, ; 205: SQLitePCLRaw.provider.e_sqlite3 => 0xdfca27bc => 30
	i32 3758932259, ; 206: Xamarin.AndroidX.Legacy.Support.V4 => 0xe00cc123 => 69
	i32 3786282454, ; 207: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 54
	i32 3822443793, ; 208: DocumentFormat.OpenXml => 0xe3d5dd11 => 18
	i32 3822602673, ; 209: Xamarin.AndroidX.Media => 0xe3d849b1 => 78
	i32 3829621856, ; 210: System.Numerics.dll => 0xe4436460 => 37
	i32 3849253459, ; 211: System.Runtime.InteropServices.dll => 0xe56ef253 => 2
	i32 3876362041, ; 212: SQLite-net => 0xe70c9739 => 26
	i32 3885922214, ; 213: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 90
	i32 3896760992, ; 214: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 59
	i32 3904328613, ; 215: todaysvideo.Android.dll => 0xe8b753a5 => 0
	i32 3904638161, ; 216: XLParser.dll => 0xe8bc0cd1 => 103
	i32 3920810846, ; 217: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 109
	i32 3921031405, ; 218: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 93
	i32 3931092270, ; 219: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 82
	i32 3945713374, ; 220: System.Data.DataSetExtensions.dll => 0xeb2ecede => 106
	i32 3952357212, ; 221: System.IO.Packaging.dll => 0xeb942f5c => 34
	i32 3955647286, ; 222: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 48
	i32 4025784931, ; 223: System.Memory => 0xeff49a63 => 35
	i32 4054681211, ; 224: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 115
	i32 4073602200, ; 225: System.Threading.dll => 0xf2ce3c98 => 11
	i32 4105002889, ; 226: Mono.Security.dll => 0xf4ad5f89 => 116
	i32 4147896353, ; 227: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 115
	i32 4151237749, ; 228: System.Core => 0xf76edc75 => 32
	i32 4161255271, ; 229: System.Reflection.TypeExtensions => 0xf807b767 => 113
	i32 4182413190, ; 230: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 75
	i32 4260525087, ; 231: System.Buffers => 0xfdf2741f => 31
	i32 4274976490, ; 232: System.Runtime.Numerics => 0xfecef6ea => 8
	i32 4292120959 ; 233: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 75
], align 4
@assembly_image_cache_indices = local_unnamed_addr constant [234 x i32] [
	i32 73, i32 102, i32 97, i32 87, i32 2, i32 87, i32 43, i32 54, ; 0..7
	i32 88, i32 52, i32 3, i32 68, i32 5, i32 111, i32 114, i32 57, ; 8..15
	i32 72, i32 66, i32 44, i32 37, i32 25, i32 70, i32 29, i32 35, ; 16..23
	i32 56, i32 96, i32 6, i32 65, i32 24, i32 33, i32 66, i32 77, ; 24..31
	i32 105, i32 7, i32 109, i32 61, i32 93, i32 49, i32 42, i32 27, ; 32..39
	i32 108, i32 107, i32 84, i32 5, i32 102, i32 70, i32 20, i32 6, ; 40..47
	i32 86, i32 48, i32 99, i32 74, i32 34, i32 33, i32 91, i32 81, ; 48..55
	i32 49, i32 92, i32 28, i32 63, i32 13, i32 19, i32 18, i32 16, ; 56..63
	i32 112, i32 86, i32 4, i32 78, i32 58, i32 39, i32 7, i32 100, ; 64..71
	i32 108, i32 47, i32 43, i32 9, i32 12, i32 62, i32 15, i32 76, ; 72..79
	i32 95, i32 60, i32 36, i32 9, i32 40, i32 89, i32 101, i32 57, ; 80..87
	i32 3, i32 29, i32 10, i32 53, i32 12, i32 88, i32 32, i32 65, ; 88..95
	i32 76, i32 101, i32 82, i32 21, i32 96, i32 14, i32 100, i32 50, ; 96..103
	i32 4, i32 79, i32 31, i32 74, i32 71, i32 40, i32 38, i32 67, ; 104..111
	i32 30, i32 98, i32 17, i32 36, i32 91, i32 77, i32 79, i32 69, ; 112..119
	i32 85, i32 45, i32 0, i32 83, i32 27, i32 56, i32 1, i32 22, ; 120..127
	i32 106, i32 73, i32 114, i32 21, i32 92, i32 113, i32 60, i32 64, ; 128..135
	i32 72, i32 16, i32 89, i32 8, i32 44, i32 47, i32 97, i32 94, ; 136..143
	i32 58, i32 41, i32 94, i32 90, i32 17, i32 10, i32 110, i32 103, ; 144..151
	i32 24, i32 95, i32 38, i32 46, i32 63, i32 68, i32 20, i32 80, ; 152..159
	i32 15, i32 19, i32 14, i32 25, i32 104, i32 62, i32 11, i32 116, ; 160..167
	i32 53, i32 51, i32 26, i32 61, i32 104, i32 50, i32 81, i32 67, ; 168..175
	i32 28, i32 59, i32 22, i32 85, i32 39, i32 112, i32 41, i32 1, ; 176..183
	i32 64, i32 23, i32 105, i32 55, i32 51, i32 42, i32 98, i32 110, ; 184..191
	i32 13, i32 83, i32 84, i32 99, i32 46, i32 71, i32 23, i32 111, ; 192..199
	i32 52, i32 55, i32 107, i32 45, i32 80, i32 30, i32 69, i32 54, ; 200..207
	i32 18, i32 78, i32 37, i32 2, i32 26, i32 90, i32 59, i32 0, ; 208..215
	i32 103, i32 109, i32 93, i32 82, i32 106, i32 34, i32 48, i32 35, ; 216..223
	i32 115, i32 11, i32 116, i32 115, i32 32, i32 113, i32 75, i32 31, ; 224..231
	i32 8, i32 75 ; 232..233
], align 4

@marshal_methods_number_of_classes = local_unnamed_addr constant i32 0, align 4

; marshal_methods_class_cache
@marshal_methods_class_cache = global [0 x %struct.MarshalMethodsManagedClass] [
], align 4; end of 'marshal_methods_class_cache' array


@get_function_pointer = internal unnamed_addr global void (i32, i32, i32, i8**)* null, align 4

; Function attributes: "frame-pointer"="all" "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" uwtable willreturn writeonly
define void @xamarin_app_init (void (i32, i32, i32, i8**)* %fn) local_unnamed_addr #0
{
	store void (i32, i32, i32, i8**)* %fn, void (i32, i32, i32, i8**)** @get_function_pointer, align 4
	ret void
}

; Names of classes in which marshal methods reside
@mm_class_names = local_unnamed_addr constant [0 x i8*] zeroinitializer, align 4
@__MarshalMethodName_name.0 = internal constant [1 x i8] c"\00", align 1

; mm_method_names
@mm_method_names = local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	; 0
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		i8* getelementptr inbounds ([1 x i8], [1 x i8]* @__MarshalMethodName_name.0, i32 0, i32 0); name
	}
], align 8; end of 'mm_method_names' array


attributes #0 = { "min-legal-vector-width"="0" mustprogress nofree norecurse nosync "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable willreturn writeonly "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nounwind sspstrong "stack-protector-buffer-size"="8" uwtable "frame-pointer"="all" "target-cpu"="generic" "target-features"="+armv7-a,+d32,+dsp,+fp64,+neon,+thumb-mode,+vfp2,+vfp2sp,+vfp3,+vfp3d16,+vfp3d16sp,+vfp3sp,-aes,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fullfp16,-sha2,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 1, !"min_enum_size", i32 4}
!3 = !{!"Xamarin.Android remotes/origin/d17-5 @ 45b0e144f73b2c8747d8b5ec8cbd3b55beca67f0"}
!llvm.linker.options = !{}
