; ModuleID = 'marshal_methods.x86.ll'
source_filename = "marshal_methods.x86.ll"
target datalayout = "e-m:e-p:32:32-p270:32:32-p271:32:32-p272:64:64-f64:32:64-f80:32-n8:16:32-S128"
target triple = "i686-unknown-linux-android21"

%struct.MarshalMethodName = type {
	i64, ; uint64_t id
	ptr ; char* name
}

%struct.MarshalMethodsManagedClass = type {
	i32, ; uint32_t token
	ptr ; MonoClass klass
}

@assembly_image_cache = dso_local local_unnamed_addr global [357 x ptr] zeroinitializer, align 4

; Each entry maps hash of an assembly name to an index into the `assembly_image_cache` array
@assembly_image_cache_hashes = dso_local local_unnamed_addr constant [708 x i32] [
	i32 2616222, ; 0: System.Net.NetworkInformation.dll => 0x27eb9e => 66
	i32 10166715, ; 1: System.Net.NameResolution.dll => 0x9b21bb => 65
	i32 15721112, ; 2: System.Runtime.Intrinsics.dll => 0xefe298 => 106
	i32 32687329, ; 3: Xamarin.AndroidX.Lifecycle.Runtime => 0x1f2c4e1 => 264
	i32 34715100, ; 4: Xamarin.Google.Guava.ListenableFuture.dll => 0x211b5dc => 298
	i32 34839235, ; 5: System.IO.FileSystem.DriveInfo => 0x2139ac3 => 46
	i32 39485524, ; 6: System.Net.WebSockets.dll => 0x25a8054 => 78
	i32 42639949, ; 7: System.Threading.Thread => 0x28aa24d => 141
	i32 57725457, ; 8: it\Microsoft.Data.SqlClient.resources => 0x370d211 => 310
	i32 57727992, ; 9: ja\Microsoft.Data.SqlClient.resources => 0x370dbf8 => 311
	i32 66541672, ; 10: System.Diagnostics.StackTrace => 0x3f75868 => 29
	i32 67008169, ; 11: zh-Hant\Microsoft.Maui.Controls.resources => 0x3fe76a9 => 352
	i32 68219467, ; 12: System.Security.Cryptography.Primitives => 0x410f24b => 122
	i32 72070932, ; 13: Microsoft.Maui.Graphics.dll => 0x44bb714 => 209
	i32 82292897, ; 14: System.Runtime.CompilerServices.VisualC.dll => 0x4e7b0a1 => 100
	i32 101534019, ; 15: Xamarin.AndroidX.SlidingPaneLayout => 0x60d4943 => 282
	i32 117431740, ; 16: System.Runtime.InteropServices => 0x6ffddbc => 105
	i32 120558881, ; 17: Xamarin.AndroidX.SlidingPaneLayout.dll => 0x72f9521 => 282
	i32 122350210, ; 18: System.Threading.Channels.dll => 0x74aea82 => 135
	i32 134690465, ; 19: Xamarin.Kotlin.StdLib.Jdk7.dll => 0x80736a1 => 302
	i32 139659294, ; 20: ja/Microsoft.Data.SqlClient.resources.dll => 0x853081e => 311
	i32 142721839, ; 21: System.Net.WebHeaderCollection => 0x881c32f => 75
	i32 149972175, ; 22: System.Security.Cryptography.Primitives.dll => 0x8f064cf => 122
	i32 159306688, ; 23: System.ComponentModel.Annotations => 0x97ed3c0 => 13
	i32 165246403, ; 24: Xamarin.AndroidX.Collection.dll => 0x9d975c3 => 238
	i32 166535111, ; 25: ru/Microsoft.Data.SqlClient.resources.dll => 0x9ed1fc7 => 315
	i32 176265551, ; 26: System.ServiceProcess => 0xa81994f => 130
	i32 182336117, ; 27: Xamarin.AndroidX.SwipeRefreshLayout.dll => 0xade3a75 => 284
	i32 184328833, ; 28: System.ValueTuple.dll => 0xafca281 => 147
	i32 195452805, ; 29: vi/Microsoft.Maui.Controls.resources.dll => 0xba65f85 => 349
	i32 199333315, ; 30: zh-HK/Microsoft.Maui.Controls.resources.dll => 0xbe195c3 => 350
	i32 205061960, ; 31: System.ComponentModel => 0xc38ff48 => 18
	i32 209399409, ; 32: Xamarin.AndroidX.Browser.dll => 0xc7b2e71 => 236
	i32 220171995, ; 33: System.Diagnostics.Debug => 0xd1f8edb => 26
	i32 230216969, ; 34: Xamarin.AndroidX.Legacy.Support.Core.Utils.dll => 0xdb8d509 => 258
	i32 230752869, ; 35: Microsoft.CSharp.dll => 0xdc10265 => 1
	i32 231409092, ; 36: System.Linq.Parallel => 0xdcb05c4 => 57
	i32 231814094, ; 37: System.Globalization => 0xdd133ce => 40
	i32 246610117, ; 38: System.Reflection.Emit.Lightweight => 0xeb2f8c5 => 89
	i32 261689757, ; 39: Xamarin.AndroidX.ConstraintLayout.dll => 0xf99119d => 241
	i32 264223668, ; 40: zh-Hans\Microsoft.Data.SqlClient.resources => 0xfbfbbb4 => 317
	i32 276479776, ; 41: System.Threading.Timer.dll => 0x107abf20 => 143
	i32 278686392, ; 42: Xamarin.AndroidX.Lifecycle.LiveData.dll => 0x109c6ab8 => 260
	i32 280482487, ; 43: Xamarin.AndroidX.Interpolator => 0x10b7d2b7 => 257
	i32 280992041, ; 44: cs/Microsoft.Maui.Controls.resources.dll => 0x10bf9929 => 321
	i32 291076382, ; 45: System.IO.Pipes.AccessControl.dll => 0x1159791e => 52
	i32 298918909, ; 46: System.Net.Ping.dll => 0x11d123fd => 67
	i32 317674968, ; 47: vi\Microsoft.Maui.Controls.resources => 0x12ef55d8 => 349
	i32 318968648, ; 48: Xamarin.AndroidX.Activity.dll => 0x13031348 => 227
	i32 321597661, ; 49: System.Numerics => 0x132b30dd => 81
	i32 330147069, ; 50: Microsoft.SqlServer.Server => 0x13ada4fd => 210
	i32 336156722, ; 51: ja/Microsoft.Maui.Controls.resources.dll => 0x14095832 => 334
	i32 342366114, ; 52: Xamarin.AndroidX.Lifecycle.Common => 0x146817a2 => 259
	i32 356389973, ; 53: it/Microsoft.Maui.Controls.resources.dll => 0x153e1455 => 333
	i32 360082299, ; 54: System.ServiceModel.Web => 0x15766b7b => 129
	i32 360671332, ; 55: pl\Microsoft.Data.SqlClient.resources => 0x157f6864 => 313
	i32 367780167, ; 56: System.IO.Pipes => 0x15ebe147 => 53
	i32 374914964, ; 57: System.Transactions.Local => 0x1658bf94 => 145
	i32 375677976, ; 58: System.Net.ServicePoint.dll => 0x16646418 => 72
	i32 379916513, ; 59: System.Threading.Thread.dll => 0x16a510e1 => 141
	i32 385762202, ; 60: System.Memory.dll => 0x16fe439a => 60
	i32 392610295, ; 61: System.Threading.ThreadPool.dll => 0x1766c1f7 => 142
	i32 395744057, ; 62: _Microsoft.Android.Resource.Designer => 0x17969339 => 353
	i32 403441872, ; 63: WindowsBase => 0x180c08d0 => 161
	i32 407321033, ; 64: tr/Microsoft.Data.SqlClient.resources.dll => 0x184739c9 => 316
	i32 435591531, ; 65: sv/Microsoft.Maui.Controls.resources.dll => 0x19f6996b => 345
	i32 441335492, ; 66: Xamarin.AndroidX.ConstraintLayout.Core => 0x1a4e3ec4 => 242
	i32 442565967, ; 67: System.Collections => 0x1a61054f => 12
	i32 450948140, ; 68: Xamarin.AndroidX.Fragment.dll => 0x1ae0ec2c => 255
	i32 451504562, ; 69: System.Security.Cryptography.X509Certificates => 0x1ae969b2 => 123
	i32 456227837, ; 70: System.Web.HttpUtility.dll => 0x1b317bfd => 148
	i32 459347974, ; 71: System.Runtime.Serialization.Primitives.dll => 0x1b611806 => 111
	i32 465846621, ; 72: mscorlib => 0x1bc4415d => 162
	i32 469710990, ; 73: System.dll => 0x1bff388e => 160
	i32 476646585, ; 74: Xamarin.AndroidX.Interpolator.dll => 0x1c690cb9 => 257
	i32 485463106, ; 75: Microsoft.IdentityModel.Abstractions => 0x1cef9442 => 198
	i32 486930444, ; 76: Xamarin.AndroidX.LocalBroadcastManager.dll => 0x1d05f80c => 270
	i32 498788369, ; 77: System.ObjectModel => 0x1dbae811 => 82
	i32 500358224, ; 78: id/Microsoft.Maui.Controls.resources.dll => 0x1dd2dc50 => 332
	i32 503918385, ; 79: fi/Microsoft.Maui.Controls.resources.dll => 0x1e092f31 => 326
	i32 513247710, ; 80: Microsoft.Extensions.Primitives.dll => 0x1e9789de => 195
	i32 526420162, ; 81: System.Transactions.dll => 0x1f6088c2 => 146
	i32 527452488, ; 82: Xamarin.Kotlin.StdLib.Jdk7 => 0x1f704948 => 302
	i32 530272170, ; 83: System.Linq.Queryable => 0x1f9b4faa => 58
	i32 539058512, ; 84: Microsoft.Extensions.Logging => 0x20216150 => 191
	i32 540030774, ; 85: System.IO.FileSystem.dll => 0x20303736 => 49
	i32 545304856, ; 86: System.Runtime.Extensions => 0x2080b118 => 101
	i32 546455878, ; 87: System.Runtime.Serialization.Xml => 0x20924146 => 112
	i32 548916678, ; 88: Microsoft.Bcl.AsyncInterfaces => 0x20b7cdc6 => 173
	i32 549171840, ; 89: System.Globalization.Calendars => 0x20bbb280 => 38
	i32 557405415, ; 90: Jsr305Binding => 0x213954e7 => 295
	i32 569601784, ; 91: Xamarin.AndroidX.Window.Extensions.Core.Core => 0x21f36ef8 => 293
	i32 577335427, ; 92: System.Security.Cryptography.Cng => 0x22697083 => 118
	i32 592146354, ; 93: pt-BR/Microsoft.Maui.Controls.resources.dll => 0x234b6fb2 => 340
	i32 601371474, ; 94: System.IO.IsolatedStorage.dll => 0x23d83352 => 50
	i32 605376203, ; 95: System.IO.Compression.FileSystem => 0x24154ecb => 42
	i32 613668793, ; 96: System.Security.Cryptography.Algorithms => 0x2493d7b9 => 117
	i32 627609679, ; 97: Xamarin.AndroidX.CustomView => 0x2568904f => 247
	i32 627931235, ; 98: nl\Microsoft.Maui.Controls.resources => 0x256d7863 => 338
	i32 639843206, ; 99: Xamarin.AndroidX.Emoji2.ViewsHelper.dll => 0x26233b86 => 253
	i32 643868501, ; 100: System.Net => 0x2660a755 => 79
	i32 662205335, ; 101: System.Text.Encodings.Web.dll => 0x27787397 => 221
	i32 663517072, ; 102: Xamarin.AndroidX.VersionedParcelable => 0x278c7790 => 289
	i32 666292255, ; 103: Xamarin.AndroidX.Arch.Core.Common.dll => 0x27b6d01f => 234
	i32 672442732, ; 104: System.Collections.Concurrent => 0x2814a96c => 8
	i32 683518922, ; 105: System.Net.Security => 0x28bdabca => 71
	i32 688181140, ; 106: ca/Microsoft.Maui.Controls.resources.dll => 0x2904cf94 => 320
	i32 690569205, ; 107: System.Xml.Linq.dll => 0x29293ff5 => 151
	i32 691348768, ; 108: Xamarin.KotlinX.Coroutines.Android.dll => 0x29352520 => 304
	i32 693804605, ; 109: System.Windows => 0x295a9e3d => 150
	i32 699345723, ; 110: System.Reflection.Emit => 0x29af2b3b => 90
	i32 700284507, ; 111: Xamarin.Jetbrains.Annotations => 0x29bd7e5b => 299
	i32 700358131, ; 112: System.IO.Compression.ZipFile => 0x29be9df3 => 43
	i32 706645707, ; 113: ko/Microsoft.Maui.Controls.resources.dll => 0x2a1e8ecb => 335
	i32 709152836, ; 114: System.Security.Cryptography.Pkcs.dll => 0x2a44d044 => 219
	i32 709557578, ; 115: de/Microsoft.Maui.Controls.resources.dll => 0x2a4afd4a => 323
	i32 720511267, ; 116: Xamarin.Kotlin.StdLib.Jdk8 => 0x2af22123 => 303
	i32 722857257, ; 117: System.Runtime.Loader.dll => 0x2b15ed29 => 107
	i32 723796036, ; 118: System.ClientModel.dll => 0x2b244044 => 211
	i32 735137430, ; 119: System.Security.SecureString.dll => 0x2bd14e96 => 127
	i32 752232764, ; 120: System.Diagnostics.Contracts.dll => 0x2cd6293c => 25
	i32 755313932, ; 121: Xamarin.Android.Glide.Annotations.dll => 0x2d052d0c => 224
	i32 759454413, ; 122: System.Net.Requests => 0x2d445acd => 70
	i32 762598435, ; 123: System.IO.Pipes.dll => 0x2d745423 => 53
	i32 775507847, ; 124: System.IO.Compression => 0x2e394f87 => 44
	i32 777317022, ; 125: sk\Microsoft.Maui.Controls.resources => 0x2e54ea9e => 344
	i32 789151979, ; 126: Microsoft.Extensions.Options => 0x2f0980eb => 194
	i32 790371945, ; 127: Xamarin.AndroidX.CustomView.PoolingContainer.dll => 0x2f1c1e69 => 248
	i32 804715423, ; 128: System.Data.Common => 0x2ff6fb9f => 22
	i32 807930345, ; 129: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx.dll => 0x302809e9 => 262
	i32 823281589, ; 130: System.Private.Uri.dll => 0x311247b5 => 84
	i32 830298997, ; 131: System.IO.Compression.Brotli => 0x317d5b75 => 41
	i32 832635846, ; 132: System.Xml.XPath.dll => 0x31a103c6 => 156
	i32 834051424, ; 133: System.Net.Quic => 0x31b69d60 => 69
	i32 843511501, ; 134: Xamarin.AndroidX.Print => 0x3246f6cd => 275
	i32 873119928, ; 135: Microsoft.VisualBasic => 0x340ac0b8 => 3
	i32 877678880, ; 136: System.Globalization.dll => 0x34505120 => 40
	i32 878954865, ; 137: System.Net.Http.Json => 0x3463c971 => 61
	i32 904024072, ; 138: System.ComponentModel.Primitives.dll => 0x35e25008 => 16
	i32 911108515, ; 139: System.IO.MemoryMappedFiles.dll => 0x364e69a3 => 51
	i32 926902833, ; 140: tr/Microsoft.Maui.Controls.resources.dll => 0x373f6a31 => 347
	i32 928116545, ; 141: Xamarin.Google.Guava.ListenableFuture => 0x3751ef41 => 298
	i32 952186615, ; 142: System.Runtime.InteropServices.JavaScript.dll => 0x38c136f7 => 103
	i32 956575887, ; 143: Xamarin.Kotlin.StdLib.Jdk8.dll => 0x3904308f => 303
	i32 966729478, ; 144: Xamarin.Google.Crypto.Tink.Android => 0x399f1f06 => 296
	i32 967690846, ; 145: Xamarin.AndroidX.Lifecycle.Common.dll => 0x39adca5e => 259
	i32 975236339, ; 146: System.Diagnostics.Tracing => 0x3a20ecf3 => 33
	i32 975874589, ; 147: System.Xml.XDocument => 0x3a2aaa1d => 154
	i32 986514023, ; 148: System.Private.DataContractSerialization.dll => 0x3acd0267 => 83
	i32 987214855, ; 149: System.Diagnostics.Tools => 0x3ad7b407 => 31
	i32 992768348, ; 150: System.Collections.dll => 0x3b2c715c => 12
	i32 994442037, ; 151: System.IO.FileSystem => 0x3b45fb35 => 49
	i32 999186168, ; 152: Microsoft.Extensions.FileSystemGlobbing.dll => 0x3b8e5ef8 => 190
	i32 1001831731, ; 153: System.IO.UnmanagedMemoryStream.dll => 0x3bb6bd33 => 54
	i32 1012816738, ; 154: Xamarin.AndroidX.SavedState.dll => 0x3c5e5b62 => 279
	i32 1019214401, ; 155: System.Drawing => 0x3cbffa41 => 35
	i32 1028951442, ; 156: Microsoft.Extensions.DependencyInjection.Abstractions => 0x3d548d92 => 187
	i32 1029334545, ; 157: da/Microsoft.Maui.Controls.resources.dll => 0x3d5a6611 => 322
	i32 1031528504, ; 158: Xamarin.Google.ErrorProne.Annotations.dll => 0x3d7be038 => 297
	i32 1035644815, ; 159: Xamarin.AndroidX.AppCompat => 0x3dbaaf8f => 232
	i32 1036536393, ; 160: System.Drawing.Primitives.dll => 0x3dc84a49 => 34
	i32 1044663988, ; 161: System.Linq.Expressions.dll => 0x3e444eb4 => 56
	i32 1048439329, ; 162: de/Microsoft.Data.SqlClient.resources.dll => 0x3e7dea21 => 307
	i32 1052210849, ; 163: Xamarin.AndroidX.Lifecycle.ViewModel.dll => 0x3eb776a1 => 266
	i32 1062017875, ; 164: Microsoft.Identity.Client.Extensions.Msal => 0x3f4d1b53 => 197
	i32 1067306892, ; 165: GoogleGson => 0x3f9dcf8c => 172
	i32 1082857460, ; 166: System.ComponentModel.TypeConverter => 0x408b17f4 => 17
	i32 1084122840, ; 167: Xamarin.Kotlin.StdLib => 0x409e66d8 => 300
	i32 1089913930, ; 168: System.Diagnostics.EventLog.dll => 0x40f6c44a => 214
	i32 1098259244, ; 169: System => 0x41761b2c => 160
	i32 1106973742, ; 170: Microsoft.Extensions.Configuration.FileExtensions.dll => 0x41fb142e => 184
	i32 1118262833, ; 171: ko\Microsoft.Maui.Controls.resources => 0x42a75631 => 335
	i32 1121599056, ; 172: Xamarin.AndroidX.Lifecycle.Runtime.Ktx.dll => 0x42da3e50 => 265
	i32 1127624469, ; 173: Microsoft.Extensions.Logging.Debug => 0x43362f15 => 193
	i32 1138436374, ; 174: Microsoft.Data.SqlClient.dll => 0x43db2916 => 175
	i32 1149092582, ; 175: Xamarin.AndroidX.Window => 0x447dc2e6 => 292
	i32 1157931901, ; 176: Microsoft.EntityFrameworkCore.Abstractions => 0x4504a37d => 177
	i32 1168523401, ; 177: pt\Microsoft.Maui.Controls.resources => 0x45a64089 => 341
	i32 1170634674, ; 178: System.Web.dll => 0x45c677b2 => 149
	i32 1173126369, ; 179: Microsoft.Extensions.FileProviders.Abstractions.dll => 0x45ec7ce1 => 188
	i32 1175144683, ; 180: Xamarin.AndroidX.VectorDrawable.Animated => 0x460b48eb => 288
	i32 1178241025, ; 181: Xamarin.AndroidX.Navigation.Runtime.dll => 0x463a8801 => 273
	i32 1181870847, ; 182: Microsoft.Bcl.Cryptography => 0x4671eaff => 174
	i32 1202000627, ; 183: Microsoft.EntityFrameworkCore.Abstractions.dll => 0x47a512f3 => 177
	i32 1203215381, ; 184: pl/Microsoft.Maui.Controls.resources.dll => 0x47b79c15 => 339
	i32 1204270330, ; 185: Xamarin.AndroidX.Arch.Core.Common => 0x47c7b4fa => 234
	i32 1204575371, ; 186: Microsoft.Extensions.Caching.Memory.dll => 0x47cc5c8b => 181
	i32 1208641965, ; 187: System.Diagnostics.Process => 0x480a69ad => 28
	i32 1214827643, ; 188: CommunityToolkit.Mvvm => 0x4868cc7b => 171
	i32 1219128291, ; 189: System.IO.IsolatedStorage => 0x48aa6be3 => 50
	i32 1234928153, ; 190: nb/Microsoft.Maui.Controls.resources.dll => 0x499b8219 => 337
	i32 1243150071, ; 191: Xamarin.AndroidX.Window.Extensions.Core.Core.dll => 0x4a18f6f7 => 293
	i32 1253011324, ; 192: Microsoft.Win32.Registry => 0x4aaf6f7c => 5
	i32 1260983243, ; 193: cs\Microsoft.Maui.Controls.resources => 0x4b2913cb => 321
	i32 1264511973, ; 194: Xamarin.AndroidX.Startup.StartupRuntime.dll => 0x4b5eebe5 => 283
	i32 1267360935, ; 195: Xamarin.AndroidX.VectorDrawable => 0x4b8a64a7 => 287
	i32 1273260888, ; 196: Xamarin.AndroidX.Collection.Ktx => 0x4be46b58 => 239
	i32 1275534314, ; 197: Xamarin.KotlinX.Coroutines.Android => 0x4c071bea => 304
	i32 1278448581, ; 198: Xamarin.AndroidX.Annotation.Jvm => 0x4c3393c5 => 231
	i32 1293217323, ; 199: Xamarin.AndroidX.DrawerLayout.dll => 0x4d14ee2b => 250
	i32 1309188875, ; 200: System.Private.DataContractSerialization => 0x4e08a30b => 83
	i32 1315359775, ; 201: cs/Microsoft.Data.SqlClient.resources.dll => 0x4e66cc1f => 306
	i32 1322716291, ; 202: Xamarin.AndroidX.Window.dll => 0x4ed70c83 => 292
	i32 1324164729, ; 203: System.Linq => 0x4eed2679 => 59
	i32 1335329327, ; 204: System.Runtime.Serialization.Json.dll => 0x4f97822f => 110
	i32 1364015309, ; 205: System.IO => 0x514d38cd => 55
	i32 1373134921, ; 206: zh-Hans\Microsoft.Maui.Controls.resources => 0x51d86049 => 351
	i32 1376866003, ; 207: Xamarin.AndroidX.SavedState => 0x52114ed3 => 279
	i32 1379779777, ; 208: System.Resources.ResourceManager => 0x523dc4c1 => 97
	i32 1402170036, ; 209: System.Configuration.dll => 0x53936ab4 => 19
	i32 1406073936, ; 210: Xamarin.AndroidX.CoordinatorLayout => 0x53cefc50 => 243
	i32 1408764838, ; 211: System.Runtime.Serialization.Formatters.dll => 0x53f80ba6 => 109
	i32 1411638395, ; 212: System.Runtime.CompilerServices.Unsafe => 0x5423e47b => 99
	i32 1422545099, ; 213: System.Runtime.CompilerServices.VisualC => 0x54ca50cb => 100
	i32 1430672901, ; 214: ar\Microsoft.Maui.Controls.resources => 0x55465605 => 319
	i32 1434145427, ; 215: System.Runtime.Handles => 0x557b5293 => 102
	i32 1435222561, ; 216: Xamarin.Google.Crypto.Tink.Android.dll => 0x558bc221 => 296
	i32 1439761251, ; 217: System.Net.Quic.dll => 0x55d10363 => 69
	i32 1452070440, ; 218: System.Formats.Asn1.dll => 0x568cd628 => 215
	i32 1453312822, ; 219: System.Diagnostics.Tools.dll => 0x569fcb36 => 31
	i32 1457743152, ; 220: System.Runtime.Extensions.dll => 0x56e36530 => 101
	i32 1458022317, ; 221: System.Net.Security.dll => 0x56e7a7ad => 71
	i32 1460893475, ; 222: System.IdentityModel.Tokens.Jwt => 0x57137723 => 216
	i32 1461004990, ; 223: es\Microsoft.Maui.Controls.resources => 0x57152abe => 325
	i32 1461234159, ; 224: System.Collections.Immutable.dll => 0x5718a9ef => 9
	i32 1461719063, ; 225: System.Security.Cryptography.OpenSsl => 0x57201017 => 121
	i32 1462112819, ; 226: System.IO.Compression.dll => 0x57261233 => 44
	i32 1469204771, ; 227: Xamarin.AndroidX.AppCompat.AppCompatResources => 0x57924923 => 233
	i32 1470490898, ; 228: Microsoft.Extensions.Primitives => 0x57a5e912 => 195
	i32 1479771757, ; 229: System.Collections.Immutable => 0x5833866d => 9
	i32 1480492111, ; 230: System.IO.Compression.Brotli.dll => 0x583e844f => 41
	i32 1487239319, ; 231: Microsoft.Win32.Primitives => 0x58a57897 => 4
	i32 1490025113, ; 232: Xamarin.AndroidX.SavedState.SavedState.Ktx.dll => 0x58cffa99 => 280
	i32 1493001747, ; 233: hi/Microsoft.Maui.Controls.resources.dll => 0x58fd6613 => 329
	i32 1498168481, ; 234: Microsoft.IdentityModel.JsonWebTokens.dll => 0x594c3ca1 => 199
	i32 1514721132, ; 235: el/Microsoft.Maui.Controls.resources.dll => 0x5a48cf6c => 324
	i32 1521091094, ; 236: Microsoft.Extensions.FileSystemGlobbing => 0x5aaa0216 => 190
	i32 1536373174, ; 237: System.Diagnostics.TextWriterTraceListener => 0x5b9331b6 => 30
	i32 1543031311, ; 238: System.Text.RegularExpressions.dll => 0x5bf8ca0f => 134
	i32 1543355203, ; 239: System.Reflection.Emit.dll => 0x5bfdbb43 => 90
	i32 1550322496, ; 240: System.Reflection.Extensions.dll => 0x5c680b40 => 91
	i32 1551623176, ; 241: sk/Microsoft.Maui.Controls.resources.dll => 0x5c7be408 => 344
	i32 1565862583, ; 242: System.IO.FileSystem.Primitives => 0x5d552ab7 => 47
	i32 1566207040, ; 243: System.Threading.Tasks.Dataflow.dll => 0x5d5a6c40 => 137
	i32 1573704789, ; 244: System.Runtime.Serialization.Json => 0x5dccd455 => 110
	i32 1580037396, ; 245: System.Threading.Overlapped => 0x5e2d7514 => 136
	i32 1582305585, ; 246: Azure.Identity => 0x5e501131 => 170
	i32 1582372066, ; 247: Xamarin.AndroidX.DocumentFile.dll => 0x5e5114e2 => 249
	i32 1592978981, ; 248: System.Runtime.Serialization.dll => 0x5ef2ee25 => 113
	i32 1596263029, ; 249: zh-Hant\Microsoft.Data.SqlClient.resources => 0x5f250a75 => 318
	i32 1597949149, ; 250: Xamarin.Google.ErrorProne.Annotations => 0x5f3ec4dd => 297
	i32 1601112923, ; 251: System.Xml.Serialization => 0x5f6f0b5b => 153
	i32 1604827217, ; 252: System.Net.WebClient => 0x5fa7b851 => 74
	i32 1618516317, ; 253: System.Net.WebSockets.Client.dll => 0x6078995d => 77
	i32 1622152042, ; 254: Xamarin.AndroidX.Loader.dll => 0x60b0136a => 269
	i32 1622358360, ; 255: System.Dynamic.Runtime => 0x60b33958 => 36
	i32 1624863272, ; 256: Xamarin.AndroidX.ViewPager2 => 0x60d97228 => 291
	i32 1628113371, ; 257: Microsoft.IdentityModel.Protocols.OpenIdConnect => 0x610b09db => 202
	i32 1632842087, ; 258: Microsoft.Extensions.Configuration.Json => 0x61533167 => 185
	i32 1635184631, ; 259: Xamarin.AndroidX.Emoji2.ViewsHelper => 0x6176eff7 => 253
	i32 1636350590, ; 260: Xamarin.AndroidX.CursorAdapter => 0x6188ba7e => 246
	i32 1639515021, ; 261: System.Net.Http.dll => 0x61b9038d => 62
	i32 1639986890, ; 262: System.Text.RegularExpressions => 0x61c036ca => 134
	i32 1641389582, ; 263: System.ComponentModel.EventBasedAsync.dll => 0x61d59e0e => 15
	i32 1657153582, ; 264: System.Runtime => 0x62c6282e => 114
	i32 1658241508, ; 265: Xamarin.AndroidX.Tracing.Tracing.dll => 0x62d6c1e4 => 285
	i32 1658251792, ; 266: Xamarin.Google.Android.Material.dll => 0x62d6ea10 => 294
	i32 1670060433, ; 267: Xamarin.AndroidX.ConstraintLayout => 0x638b1991 => 241
	i32 1675553242, ; 268: System.IO.FileSystem.DriveInfo.dll => 0x63dee9da => 46
	i32 1677501392, ; 269: System.Net.Primitives.dll => 0x63fca3d0 => 68
	i32 1678508291, ; 270: System.Net.WebSockets => 0x640c0103 => 78
	i32 1679769178, ; 271: System.Security.Cryptography => 0x641f3e5a => 124
	i32 1689493916, ; 272: Microsoft.EntityFrameworkCore.dll => 0x64b3a19c => 176
	i32 1691477237, ; 273: System.Reflection.Metadata => 0x64d1e4f5 => 92
	i32 1696967625, ; 274: System.Security.Cryptography.Csp => 0x6525abc9 => 119
	i32 1698840827, ; 275: Xamarin.Kotlin.StdLib.Common => 0x654240fb => 301
	i32 1701541528, ; 276: System.Diagnostics.Debug.dll => 0x656b7698 => 26
	i32 1720223769, ; 277: Xamarin.AndroidX.Lifecycle.LiveData.Core.Ktx => 0x66888819 => 262
	i32 1726116996, ; 278: System.Reflection.dll => 0x66e27484 => 95
	i32 1728033016, ; 279: System.Diagnostics.FileVersionInfo.dll => 0x66ffb0f8 => 27
	i32 1729485958, ; 280: Xamarin.AndroidX.CardView.dll => 0x6715dc86 => 237
	i32 1736233607, ; 281: ro/Microsoft.Maui.Controls.resources.dll => 0x677cd287 => 342
	i32 1743415430, ; 282: ca\Microsoft.Maui.Controls.resources => 0x67ea6886 => 320
	i32 1744735666, ; 283: System.Transactions.Local.dll => 0x67fe8db2 => 145
	i32 1746115085, ; 284: System.IO.Pipelines.dll => 0x68139a0d => 217
	i32 1746316138, ; 285: Mono.Android.Export => 0x6816ab6a => 165
	i32 1750313021, ; 286: Microsoft.Win32.Primitives.dll => 0x6853a83d => 4
	i32 1758240030, ; 287: System.Resources.Reader.dll => 0x68cc9d1e => 96
	i32 1763938596, ; 288: System.Diagnostics.TraceSource.dll => 0x69239124 => 32
	i32 1765942094, ; 289: System.Reflection.Extensions => 0x6942234e => 91
	i32 1766324549, ; 290: Xamarin.AndroidX.SwipeRefreshLayout => 0x6947f945 => 284
	i32 1770582343, ; 291: Microsoft.Extensions.Logging.dll => 0x6988f147 => 191
	i32 1776026572, ; 292: System.Core.dll => 0x69dc03cc => 21
	i32 1777075843, ; 293: System.Globalization.Extensions.dll => 0x69ec0683 => 39
	i32 1780572499, ; 294: Mono.Android.Runtime.dll => 0x6a216153 => 166
	i32 1782862114, ; 295: ms\Microsoft.Maui.Controls.resources => 0x6a445122 => 336
	i32 1788241197, ; 296: Xamarin.AndroidX.Fragment => 0x6a96652d => 255
	i32 1793755602, ; 297: he\Microsoft.Maui.Controls.resources => 0x6aea89d2 => 328
	i32 1794500907, ; 298: Microsoft.Identity.Client.dll => 0x6af5e92b => 196
	i32 1796167890, ; 299: Microsoft.Bcl.AsyncInterfaces.dll => 0x6b0f58d2 => 173
	i32 1808609942, ; 300: Xamarin.AndroidX.Loader => 0x6bcd3296 => 269
	i32 1813058853, ; 301: Xamarin.Kotlin.StdLib.dll => 0x6c111525 => 300
	i32 1813201214, ; 302: Xamarin.Google.Android.Material => 0x6c13413e => 294
	i32 1818569960, ; 303: Xamarin.AndroidX.Navigation.UI.dll => 0x6c652ce8 => 274
	i32 1818787751, ; 304: Microsoft.VisualBasic.Core => 0x6c687fa7 => 2
	i32 1824175904, ; 305: System.Text.Encoding.Extensions => 0x6cbab720 => 132
	i32 1824722060, ; 306: System.Runtime.Serialization.Formatters => 0x6cc30c8c => 109
	i32 1828688058, ; 307: Microsoft.Extensions.Logging.Abstractions.dll => 0x6cff90ba => 192
	i32 1842015223, ; 308: uk/Microsoft.Maui.Controls.resources.dll => 0x6dcaebf7 => 348
	i32 1847515442, ; 309: Xamarin.Android.Glide.Annotations => 0x6e1ed932 => 224
	i32 1853025655, ; 310: sv\Microsoft.Maui.Controls.resources => 0x6e72ed77 => 345
	i32 1858542181, ; 311: System.Linq.Expressions => 0x6ec71a65 => 56
	i32 1870277092, ; 312: System.Reflection.Primitives => 0x6f7a29e4 => 93
	i32 1871986876, ; 313: Microsoft.IdentityModel.Protocols.OpenIdConnect.dll => 0x6f9440bc => 202
	i32 1875935024, ; 314: fr\Microsoft.Maui.Controls.resources => 0x6fd07f30 => 327
	i32 1879696579, ; 315: System.Formats.Tar.dll => 0x7009e4c3 => 37
	i32 1885316902, ; 316: Xamarin.AndroidX.Arch.Core.Runtime.dll => 0x705fa726 => 235
	i32 1888955245, ; 317: System.Diagnostics.Contracts => 0x70972b6d => 25
	i32 1889954781, ; 318: System.Reflection.Metadata.dll => 0x70a66bdd => 92
	i32 1898237753, ; 319: System.Reflection.DispatchProxy => 0x7124cf39 => 87
	i32 1900610850, ; 320: System.Resources.ResourceManager.dll => 0x71490522 => 97
	i32 1910275211, ; 321: System.Collections.NonGeneric.dll => 0x71dc7c8b => 10
	i32 1928098107, ; 322: Notes.dll => 0x72ec713b => 0
	i32 1939592360, ; 323: System.Private.Xml.Linq => 0x739bd4a8 => 85
	i32 1956758971, ; 324: System.Resources.Writer => 0x74a1c5bb => 98
	i32 1961813231, ; 325: Xamarin.AndroidX.Security.SecurityCrypto.dll => 0x74eee4ef => 281
	i32 1968388702, ; 326: Microsoft.Extensions.Configuration.dll => 0x75533a5e => 182
	i32 1983156543, ; 327: Xamarin.Kotlin.StdLib.Common.dll => 0x7634913f => 301
	i32 1985761444, ; 328: Xamarin.Android.Glide.GifDecoder => 0x765c50a4 => 226
	i32 1986222447, ; 329: Microsoft.IdentityModel.Tokens.dll => 0x7663596f => 203
	i32 2003115576, ; 330: el\Microsoft.Maui.Controls.resources => 0x77651e38 => 324
	i32 2011961780, ; 331: System.Buffers.dll => 0x77ec19b4 => 7
	i32 2019465201, ; 332: Xamarin.AndroidX.Lifecycle.ViewModel => 0x785e97f1 => 266
	i32 2025202353, ; 333: ar/Microsoft.Maui.Controls.resources.dll => 0x78b622b1 => 319
	i32 2031763787, ; 334: Xamarin.Android.Glide => 0x791a414b => 223
	i32 2040764568, ; 335: Microsoft.Identity.Client.Extensions.Msal.dll => 0x79a39898 => 197
	i32 2045470958, ; 336: System.Private.Xml => 0x79eb68ee => 86
	i32 2055257422, ; 337: Xamarin.AndroidX.Lifecycle.LiveData.Core.dll => 0x7a80bd4e => 261
	i32 2060060697, ; 338: System.Windows.dll => 0x7aca0819 => 150
	i32 2066184531, ; 339: de\Microsoft.Maui.Controls.resources => 0x7b277953 => 323
	i32 2070888862, ; 340: System.Diagnostics.TraceSource => 0x7b6f419e => 32
	i32 2072397586, ; 341: Microsoft.Extensions.FileProviders.Physical => 0x7b864712 => 189
	i32 2079903147, ; 342: System.Runtime.dll => 0x7bf8cdab => 114
	i32 2090596640, ; 343: System.Numerics.Vectors => 0x7c9bf920 => 80
	i32 2127167465, ; 344: System.Console => 0x7ec9ffe9 => 20
	i32 2142473426, ; 345: System.Collections.Specialized => 0x7fb38cd2 => 11
	i32 2143790110, ; 346: System.Xml.XmlSerializer.dll => 0x7fc7a41e => 158
	i32 2146852085, ; 347: Microsoft.VisualBasic.dll => 0x7ff65cf5 => 3
	i32 2159891885, ; 348: Microsoft.Maui => 0x80bd55ad => 207
	i32 2169148018, ; 349: hu\Microsoft.Maui.Controls.resources => 0x814a9272 => 331
	i32 2181898931, ; 350: Microsoft.Extensions.Options.dll => 0x820d22b3 => 194
	i32 2192057212, ; 351: Microsoft.Extensions.Logging.Abstractions => 0x82a8237c => 192
	i32 2193016926, ; 352: System.ObjectModel.dll => 0x82b6c85e => 82
	i32 2201107256, ; 353: Xamarin.KotlinX.Coroutines.Core.Jvm.dll => 0x83323b38 => 305
	i32 2201231467, ; 354: System.Net.Http => 0x8334206b => 62
	i32 2207618523, ; 355: it\Microsoft.Maui.Controls.resources => 0x839595db => 333
	i32 2217644978, ; 356: Xamarin.AndroidX.VectorDrawable.Animated.dll => 0x842e93b2 => 288
	i32 2222056684, ; 357: System.Threading.Tasks.Parallel => 0x8471e4ec => 139
	i32 2228745826, ; 358: pt-BR\Microsoft.Data.SqlClient.resources => 0x84d7f662 => 314
	i32 2244775296, ; 359: Xamarin.AndroidX.LocalBroadcastManager => 0x85cc8d80 => 270
	i32 2252106437, ; 360: System.Xml.Serialization.dll => 0x863c6ac5 => 153
	i32 2252897993, ; 361: Microsoft.EntityFrameworkCore => 0x86487ec9 => 176
	i32 2253551641, ; 362: Microsoft.IdentityModel.Protocols => 0x86527819 => 201
	i32 2256313426, ; 363: System.Globalization.Extensions => 0x867c9c52 => 39
	i32 2265110946, ; 364: System.Security.AccessControl.dll => 0x8702d9a2 => 115
	i32 2266799131, ; 365: Microsoft.Extensions.Configuration.Abstractions => 0x871c9c1b => 183
	i32 2267999099, ; 366: Xamarin.Android.Glide.DiskLruCache.dll => 0x872eeb7b => 225
	i32 2270573516, ; 367: fr/Microsoft.Maui.Controls.resources.dll => 0x875633cc => 327
	i32 2279755925, ; 368: Xamarin.AndroidX.RecyclerView.dll => 0x87e25095 => 277
	i32 2293034957, ; 369: System.ServiceModel.Web.dll => 0x88acefcd => 129
	i32 2295906218, ; 370: System.Net.Sockets => 0x88d8bfaa => 73
	i32 2298471582, ; 371: System.Net.Mail => 0x88ffe49e => 64
	i32 2303942373, ; 372: nb\Microsoft.Maui.Controls.resources => 0x89535ee5 => 337
	i32 2305521784, ; 373: System.Private.CoreLib.dll => 0x896b7878 => 168
	i32 2309278602, ; 374: ko\Microsoft.Data.SqlClient.resources => 0x89a4cb8a => 312
	i32 2315684594, ; 375: Xamarin.AndroidX.Annotation.dll => 0x8a068af2 => 229
	i32 2320631194, ; 376: System.Threading.Tasks.Parallel.dll => 0x8a52059a => 139
	i32 2340441535, ; 377: System.Runtime.InteropServices.RuntimeInformation.dll => 0x8b804dbf => 104
	i32 2344264397, ; 378: System.ValueTuple => 0x8bbaa2cd => 147
	i32 2353062107, ; 379: System.Net.Primitives => 0x8c40e0db => 68
	i32 2368005991, ; 380: System.Xml.ReaderWriter.dll => 0x8d24e767 => 152
	i32 2369706906, ; 381: Microsoft.IdentityModel.Logging => 0x8d3edb9a => 200
	i32 2371007202, ; 382: Microsoft.Extensions.Configuration => 0x8d52b2e2 => 182
	i32 2378619854, ; 383: System.Security.Cryptography.Csp.dll => 0x8dc6dbce => 119
	i32 2383496789, ; 384: System.Security.Principal.Windows.dll => 0x8e114655 => 125
	i32 2395872292, ; 385: id\Microsoft.Maui.Controls.resources => 0x8ece1c24 => 332
	i32 2401565422, ; 386: System.Web.HttpUtility => 0x8f24faee => 148
	i32 2403452196, ; 387: Xamarin.AndroidX.Emoji2.dll => 0x8f41c524 => 252
	i32 2421380589, ; 388: System.Threading.Tasks.Dataflow => 0x905355ed => 137
	i32 2423080555, ; 389: Xamarin.AndroidX.Collection.Ktx.dll => 0x906d466b => 239
	i32 2427813419, ; 390: hi\Microsoft.Maui.Controls.resources => 0x90b57e2b => 329
	i32 2435356389, ; 391: System.Console.dll => 0x912896e5 => 20
	i32 2435904999, ; 392: System.ComponentModel.DataAnnotations.dll => 0x9130f5e7 => 14
	i32 2454642406, ; 393: System.Text.Encoding.dll => 0x924edee6 => 133
	i32 2458678730, ; 394: System.Net.Sockets.dll => 0x928c75ca => 73
	i32 2459001652, ; 395: System.Linq.Parallel.dll => 0x92916334 => 57
	i32 2465532216, ; 396: Xamarin.AndroidX.ConstraintLayout.Core.dll => 0x92f50938 => 242
	i32 2471841756, ; 397: netstandard.dll => 0x93554fdc => 163
	i32 2475788418, ; 398: Java.Interop.dll => 0x93918882 => 164
	i32 2480646305, ; 399: Microsoft.Maui.Controls => 0x93dba8a1 => 205
	i32 2483903535, ; 400: System.ComponentModel.EventBasedAsync => 0x940d5c2f => 15
	i32 2484371297, ; 401: System.Net.ServicePoint => 0x94147f61 => 72
	i32 2490993605, ; 402: System.AppContext.dll => 0x94798bc5 => 6
	i32 2501346920, ; 403: System.Data.DataSetExtensions => 0x95178668 => 23
	i32 2505896520, ; 404: Xamarin.AndroidX.Lifecycle.Runtime.dll => 0x955cf248 => 264
	i32 2509217888, ; 405: System.Diagnostics.EventLog => 0x958fa060 => 214
	i32 2522472828, ; 406: Xamarin.Android.Glide.dll => 0x9659e17c => 223
	i32 2538310050, ; 407: System.Reflection.Emit.Lightweight.dll => 0x974b89a2 => 89
	i32 2550873716, ; 408: hr\Microsoft.Maui.Controls.resources => 0x980b3e74 => 330
	i32 2562349572, ; 409: Microsoft.CSharp => 0x98ba5a04 => 1
	i32 2570120770, ; 410: System.Text.Encodings.Web => 0x9930ee42 => 221
	i32 2581783588, ; 411: Xamarin.AndroidX.Lifecycle.Runtime.Ktx => 0x99e2e424 => 265
	i32 2581819634, ; 412: Xamarin.AndroidX.VectorDrawable.dll => 0x99e370f2 => 287
	i32 2585220780, ; 413: System.Text.Encoding.Extensions.dll => 0x9a1756ac => 132
	i32 2585805581, ; 414: System.Net.Ping => 0x9a20430d => 67
	i32 2589602615, ; 415: System.Threading.ThreadPool => 0x9a5a3337 => 142
	i32 2592341985, ; 416: Microsoft.Extensions.FileProviders.Abstractions => 0x9a83ffe1 => 188
	i32 2593496499, ; 417: pl\Microsoft.Maui.Controls.resources => 0x9a959db3 => 339
	i32 2605712449, ; 418: Xamarin.KotlinX.Coroutines.Core.Jvm => 0x9b500441 => 305
	i32 2615233544, ; 419: Xamarin.AndroidX.Fragment.Ktx => 0x9be14c08 => 256
	i32 2616218305, ; 420: Microsoft.Extensions.Logging.Debug.dll => 0x9bf052c1 => 193
	i32 2617129537, ; 421: System.Private.Xml.dll => 0x9bfe3a41 => 86
	i32 2618712057, ; 422: System.Reflection.TypeExtensions.dll => 0x9c165ff9 => 94
	i32 2620871830, ; 423: Xamarin.AndroidX.CursorAdapter.dll => 0x9c375496 => 246
	i32 2624644809, ; 424: Xamarin.AndroidX.DynamicAnimation => 0x9c70e6c9 => 251
	i32 2626831493, ; 425: ja\Microsoft.Maui.Controls.resources => 0x9c924485 => 334
	i32 2627185994, ; 426: System.Diagnostics.TextWriterTraceListener.dll => 0x9c97ad4a => 30
	i32 2628210652, ; 427: System.Memory.Data => 0x9ca74fdc => 218
	i32 2629843544, ; 428: System.IO.Compression.ZipFile.dll => 0x9cc03a58 => 43
	i32 2633051222, ; 429: Xamarin.AndroidX.Lifecycle.LiveData => 0x9cf12c56 => 260
	i32 2634653062, ; 430: Microsoft.EntityFrameworkCore.Relational.dll => 0x9d099d86 => 178
	i32 2640290731, ; 431: Microsoft.IdentityModel.Logging.dll => 0x9d5fa3ab => 200
	i32 2640706905, ; 432: Azure.Core => 0x9d65fd59 => 169
	i32 2660759594, ; 433: System.Security.Cryptography.ProtectedData.dll => 0x9e97f82a => 220
	i32 2663391936, ; 434: Xamarin.Android.Glide.DiskLruCache => 0x9ec022c0 => 225
	i32 2663698177, ; 435: System.Runtime.Loader => 0x9ec4cf01 => 107
	i32 2664396074, ; 436: System.Xml.XDocument.dll => 0x9ecf752a => 154
	i32 2665622720, ; 437: System.Drawing.Primitives => 0x9ee22cc0 => 34
	i32 2676780864, ; 438: System.Data.Common.dll => 0x9f8c6f40 => 22
	i32 2677098746, ; 439: Azure.Identity.dll => 0x9f9148fa => 170
	i32 2678266992, ; 440: tr\Microsoft.Data.SqlClient.resources => 0x9fa31c70 => 316
	i32 2686887180, ; 441: System.Runtime.Serialization.Xml.dll => 0xa026a50c => 112
	i32 2693849962, ; 442: System.IO.dll => 0xa090e36a => 55
	i32 2701096212, ; 443: Xamarin.AndroidX.Tracing.Tracing => 0xa0ff7514 => 285
	i32 2709105058, ; 444: Notes => 0xa179a9a2 => 0
	i32 2715334215, ; 445: System.Threading.Tasks.dll => 0xa1d8b647 => 140
	i32 2717744543, ; 446: System.Security.Claims => 0xa1fd7d9f => 116
	i32 2719963679, ; 447: System.Security.Cryptography.Cng.dll => 0xa21f5a1f => 118
	i32 2724373263, ; 448: System.Runtime.Numerics.dll => 0xa262a30f => 108
	i32 2732626843, ; 449: Xamarin.AndroidX.Activity => 0xa2e0939b => 227
	i32 2735172069, ; 450: System.Threading.Channels => 0xa30769e5 => 135
	i32 2737747696, ; 451: Xamarin.AndroidX.AppCompat.AppCompatResources.dll => 0xa32eb6f0 => 233
	i32 2740051746, ; 452: Microsoft.Identity.Client => 0xa351df22 => 196
	i32 2740948882, ; 453: System.IO.Pipes.AccessControl => 0xa35f8f92 => 52
	i32 2748088231, ; 454: System.Runtime.InteropServices.JavaScript => 0xa3cc7fa7 => 103
	i32 2752995522, ; 455: pt-BR\Microsoft.Maui.Controls.resources => 0xa41760c2 => 340
	i32 2755098380, ; 456: Microsoft.SqlServer.Server.dll => 0xa437770c => 210
	i32 2755643133, ; 457: Microsoft.EntityFrameworkCore.SqlServer => 0xa43fc6fd => 179
	i32 2758225723, ; 458: Microsoft.Maui.Controls.Xaml => 0xa4672f3b => 206
	i32 2764765095, ; 459: Microsoft.Maui.dll => 0xa4caf7a7 => 207
	i32 2765824710, ; 460: System.Text.Encoding.CodePages.dll => 0xa4db22c6 => 131
	i32 2770495804, ; 461: Xamarin.Jetbrains.Annotations.dll => 0xa522693c => 299
	i32 2778768386, ; 462: Xamarin.AndroidX.ViewPager.dll => 0xa5a0a402 => 290
	i32 2779977773, ; 463: Xamarin.AndroidX.ResourceInspection.Annotation.dll => 0xa5b3182d => 278
	i32 2785988530, ; 464: th\Microsoft.Maui.Controls.resources => 0xa60ecfb2 => 346
	i32 2788224221, ; 465: Xamarin.AndroidX.Fragment.Ktx.dll => 0xa630ecdd => 256
	i32 2801831435, ; 466: Microsoft.Maui.Graphics => 0xa7008e0b => 209
	i32 2803228030, ; 467: System.Xml.XPath.XDocument.dll => 0xa715dd7e => 155
	i32 2804509662, ; 468: es/Microsoft.Data.SqlClient.resources.dll => 0xa7296bde => 308
	i32 2806116107, ; 469: es/Microsoft.Maui.Controls.resources.dll => 0xa741ef0b => 325
	i32 2810250172, ; 470: Xamarin.AndroidX.CoordinatorLayout.dll => 0xa78103bc => 243
	i32 2819470561, ; 471: System.Xml.dll => 0xa80db4e1 => 159
	i32 2821205001, ; 472: System.ServiceProcess.dll => 0xa8282c09 => 130
	i32 2821294376, ; 473: Xamarin.AndroidX.ResourceInspection.Annotation => 0xa8298928 => 278
	i32 2824502124, ; 474: System.Xml.XmlDocument => 0xa85a7b6c => 157
	i32 2831556043, ; 475: nl/Microsoft.Maui.Controls.resources.dll => 0xa8c61dcb => 338
	i32 2838993487, ; 476: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx.dll => 0xa9379a4f => 267
	i32 2841937114, ; 477: it/Microsoft.Data.SqlClient.resources.dll => 0xa96484da => 310
	i32 2847789619, ; 478: Microsoft.EntityFrameworkCore.Relational => 0xa9bdd233 => 178
	i32 2849599387, ; 479: System.Threading.Overlapped.dll => 0xa9d96f9b => 136
	i32 2853208004, ; 480: Xamarin.AndroidX.ViewPager => 0xaa107fc4 => 290
	i32 2855708567, ; 481: Xamarin.AndroidX.Transition => 0xaa36a797 => 286
	i32 2861098320, ; 482: Mono.Android.Export.dll => 0xaa88e550 => 165
	i32 2861189240, ; 483: Microsoft.Maui.Essentials => 0xaa8a4878 => 208
	i32 2867946736, ; 484: System.Security.Cryptography.ProtectedData => 0xaaf164f0 => 220
	i32 2870099610, ; 485: Xamarin.AndroidX.Activity.Ktx.dll => 0xab123e9a => 228
	i32 2875164099, ; 486: Jsr305Binding.dll => 0xab5f85c3 => 295
	i32 2875220617, ; 487: System.Globalization.Calendars.dll => 0xab606289 => 38
	i32 2884993177, ; 488: Xamarin.AndroidX.ExifInterface => 0xabf58099 => 254
	i32 2887636118, ; 489: System.Net.dll => 0xac1dd496 => 79
	i32 2891872470, ; 490: cs\Microsoft.Data.SqlClient.resources => 0xac5e78d6 => 306
	i32 2899753641, ; 491: System.IO.UnmanagedMemoryStream => 0xacd6baa9 => 54
	i32 2900621748, ; 492: System.Dynamic.Runtime.dll => 0xace3f9b4 => 36
	i32 2901442782, ; 493: System.Reflection => 0xacf080de => 95
	i32 2905242038, ; 494: mscorlib.dll => 0xad2a79b6 => 162
	i32 2909740682, ; 495: System.Private.CoreLib => 0xad6f1e8a => 168
	i32 2911054922, ; 496: Microsoft.Extensions.FileProviders.Physical.dll => 0xad832c4a => 189
	i32 2916838712, ; 497: Xamarin.AndroidX.ViewPager2.dll => 0xaddb6d38 => 291
	i32 2919462931, ; 498: System.Numerics.Vectors.dll => 0xae037813 => 80
	i32 2921128767, ; 499: Xamarin.AndroidX.Annotation.Experimental.dll => 0xae1ce33f => 230
	i32 2936416060, ; 500: System.Resources.Reader => 0xaf06273c => 96
	i32 2940926066, ; 501: System.Diagnostics.StackTrace.dll => 0xaf4af872 => 29
	i32 2942453041, ; 502: System.Xml.XPath.XDocument => 0xaf624531 => 155
	i32 2944313911, ; 503: System.Configuration.ConfigurationManager.dll => 0xaf7eaa37 => 212
	i32 2959614098, ; 504: System.ComponentModel.dll => 0xb0682092 => 18
	i32 2968338931, ; 505: System.Security.Principal.Windows => 0xb0ed41f3 => 125
	i32 2972252294, ; 506: System.Security.Cryptography.Algorithms.dll => 0xb128f886 => 117
	i32 2978675010, ; 507: Xamarin.AndroidX.DrawerLayout => 0xb18af942 => 250
	i32 2987532451, ; 508: Xamarin.AndroidX.Security.SecurityCrypto => 0xb21220a3 => 281
	i32 2996846495, ; 509: Xamarin.AndroidX.Lifecycle.Process.dll => 0xb2a03f9f => 263
	i32 3012788804, ; 510: System.Configuration.ConfigurationManager => 0xb3938244 => 212
	i32 3016983068, ; 511: Xamarin.AndroidX.Startup.StartupRuntime => 0xb3d3821c => 283
	i32 3023353419, ; 512: WindowsBase.dll => 0xb434b64b => 161
	i32 3023511517, ; 513: ru\Microsoft.Data.SqlClient.resources => 0xb4371fdd => 315
	i32 3024354802, ; 514: Xamarin.AndroidX.Legacy.Support.Core.Utils => 0xb443fdf2 => 258
	i32 3033605958, ; 515: System.Memory.Data.dll => 0xb4d12746 => 218
	i32 3038032645, ; 516: _Microsoft.Android.Resource.Designer.dll => 0xb514b305 => 353
	i32 3056245963, ; 517: Xamarin.AndroidX.SavedState.SavedState.Ktx => 0xb62a9ccb => 280
	i32 3057625584, ; 518: Xamarin.AndroidX.Navigation.Common => 0xb63fa9f0 => 271
	i32 3059408633, ; 519: Mono.Android.Runtime => 0xb65adef9 => 166
	i32 3059793426, ; 520: System.ComponentModel.Primitives => 0xb660be12 => 16
	i32 3069363400, ; 521: Microsoft.Extensions.Caching.Abstractions.dll => 0xb6f2c4c8 => 180
	i32 3075834255, ; 522: System.Threading.Tasks => 0xb755818f => 140
	i32 3077302341, ; 523: hu/Microsoft.Maui.Controls.resources.dll => 0xb76be845 => 331
	i32 3084678329, ; 524: Microsoft.IdentityModel.Tokens => 0xb7dc74b9 => 203
	i32 3090735792, ; 525: System.Security.Cryptography.X509Certificates.dll => 0xb838e2b0 => 123
	i32 3099732863, ; 526: System.Security.Claims.dll => 0xb8c22b7f => 116
	i32 3103600923, ; 527: System.Formats.Asn1 => 0xb8fd311b => 215
	i32 3111772706, ; 528: System.Runtime.Serialization => 0xb979e222 => 113
	i32 3121463068, ; 529: System.IO.FileSystem.AccessControl.dll => 0xba0dbf1c => 45
	i32 3124832203, ; 530: System.Threading.Tasks.Extensions => 0xba4127cb => 138
	i32 3132293585, ; 531: System.Security.AccessControl => 0xbab301d1 => 115
	i32 3147165239, ; 532: System.Diagnostics.Tracing.dll => 0xbb95ee37 => 33
	i32 3148237826, ; 533: GoogleGson.dll => 0xbba64c02 => 172
	i32 3158628304, ; 534: zh-Hant/Microsoft.Data.SqlClient.resources.dll => 0xbc44d7d0 => 318
	i32 3159123045, ; 535: System.Reflection.Primitives.dll => 0xbc4c6465 => 93
	i32 3160747431, ; 536: System.IO.MemoryMappedFiles => 0xbc652da7 => 51
	i32 3178803400, ; 537: Xamarin.AndroidX.Navigation.Fragment.dll => 0xbd78b0c8 => 272
	i32 3192346100, ; 538: System.Security.SecureString => 0xbe4755f4 => 127
	i32 3193515020, ; 539: System.Web => 0xbe592c0c => 149
	i32 3195844289, ; 540: Microsoft.Extensions.Caching.Abstractions => 0xbe7cb6c1 => 180
	i32 3204380047, ; 541: System.Data.dll => 0xbefef58f => 24
	i32 3209718065, ; 542: System.Xml.XmlDocument.dll => 0xbf506931 => 157
	i32 3211777861, ; 543: Xamarin.AndroidX.DocumentFile => 0xbf6fd745 => 249
	i32 3220365878, ; 544: System.Threading => 0xbff2e236 => 144
	i32 3226221578, ; 545: System.Runtime.Handles.dll => 0xc04c3c0a => 102
	i32 3251039220, ; 546: System.Reflection.DispatchProxy.dll => 0xc1c6ebf4 => 87
	i32 3258312781, ; 547: Xamarin.AndroidX.CardView => 0xc235e84d => 237
	i32 3265493905, ; 548: System.Linq.Queryable.dll => 0xc2a37b91 => 58
	i32 3265893370, ; 549: System.Threading.Tasks.Extensions.dll => 0xc2a993fa => 138
	i32 3268887220, ; 550: fr/Microsoft.Data.SqlClient.resources.dll => 0xc2d742b4 => 309
	i32 3276600297, ; 551: pt-BR/Microsoft.Data.SqlClient.resources.dll => 0xc34cf3e9 => 314
	i32 3277815716, ; 552: System.Resources.Writer.dll => 0xc35f7fa4 => 98
	i32 3279906254, ; 553: Microsoft.Win32.Registry.dll => 0xc37f65ce => 5
	i32 3280506390, ; 554: System.ComponentModel.Annotations.dll => 0xc3888e16 => 13
	i32 3290767353, ; 555: System.Security.Cryptography.Encoding => 0xc4251ff9 => 120
	i32 3299363146, ; 556: System.Text.Encoding => 0xc4a8494a => 133
	i32 3303498502, ; 557: System.Diagnostics.FileVersionInfo => 0xc4e76306 => 27
	i32 3305363605, ; 558: fi\Microsoft.Maui.Controls.resources => 0xc503d895 => 326
	i32 3312457198, ; 559: Microsoft.IdentityModel.JsonWebTokens => 0xc57015ee => 199
	i32 3316684772, ; 560: System.Net.Requests.dll => 0xc5b097e4 => 70
	i32 3317135071, ; 561: Xamarin.AndroidX.CustomView.dll => 0xc5b776df => 247
	i32 3317144872, ; 562: System.Data => 0xc5b79d28 => 24
	i32 3340431453, ; 563: Xamarin.AndroidX.Arch.Core.Runtime => 0xc71af05d => 235
	i32 3343947874, ; 564: fr\Microsoft.Data.SqlClient.resources => 0xc7509862 => 309
	i32 3345895724, ; 565: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller.dll => 0xc76e512c => 276
	i32 3346324047, ; 566: Xamarin.AndroidX.Navigation.Runtime => 0xc774da4f => 273
	i32 3357674450, ; 567: ru\Microsoft.Maui.Controls.resources => 0xc8220bd2 => 343
	i32 3358260929, ; 568: System.Text.Json => 0xc82afec1 => 222
	i32 3362336904, ; 569: Xamarin.AndroidX.Activity.Ktx => 0xc8693088 => 228
	i32 3362522851, ; 570: Xamarin.AndroidX.Core => 0xc86c06e3 => 244
	i32 3366347497, ; 571: Java.Interop => 0xc8a662e9 => 164
	i32 3374879918, ; 572: Microsoft.IdentityModel.Protocols.dll => 0xc92894ae => 201
	i32 3374999561, ; 573: Xamarin.AndroidX.RecyclerView => 0xc92a6809 => 277
	i32 3381016424, ; 574: da\Microsoft.Maui.Controls.resources => 0xc9863768 => 322
	i32 3395150330, ; 575: System.Runtime.CompilerServices.Unsafe.dll => 0xca5de1fa => 99
	i32 3403906625, ; 576: System.Security.Cryptography.OpenSsl.dll => 0xcae37e41 => 121
	i32 3405233483, ; 577: Xamarin.AndroidX.CustomView.PoolingContainer => 0xcaf7bd4b => 248
	i32 3428513518, ; 578: Microsoft.Extensions.DependencyInjection.dll => 0xcc5af6ee => 186
	i32 3429136800, ; 579: System.Xml => 0xcc6479a0 => 159
	i32 3430777524, ; 580: netstandard => 0xcc7d82b4 => 163
	i32 3441283291, ; 581: Xamarin.AndroidX.DynamicAnimation.dll => 0xcd1dd0db => 251
	i32 3445260447, ; 582: System.Formats.Tar => 0xcd5a809f => 37
	i32 3452344032, ; 583: Microsoft.Maui.Controls.Compatibility.dll => 0xcdc696e0 => 204
	i32 3463511458, ; 584: hr/Microsoft.Maui.Controls.resources.dll => 0xce70fda2 => 330
	i32 3471940407, ; 585: System.ComponentModel.TypeConverter.dll => 0xcef19b37 => 17
	i32 3476120550, ; 586: Mono.Android => 0xcf3163e6 => 167
	i32 3479583265, ; 587: ru/Microsoft.Maui.Controls.resources.dll => 0xcf663a21 => 343
	i32 3484440000, ; 588: ro\Microsoft.Maui.Controls.resources => 0xcfb055c0 => 342
	i32 3485117614, ; 589: System.Text.Json.dll => 0xcfbaacae => 222
	i32 3486566296, ; 590: System.Transactions => 0xcfd0c798 => 146
	i32 3493954962, ; 591: Xamarin.AndroidX.Concurrent.Futures.dll => 0xd0418592 => 240
	i32 3509114376, ; 592: System.Xml.Linq => 0xd128d608 => 151
	i32 3512826571, ; 593: Microsoft.Bcl.Cryptography.dll => 0xd1617acb => 174
	i32 3515174580, ; 594: System.Security.dll => 0xd1854eb4 => 128
	i32 3530912306, ; 595: System.Configuration => 0xd2757232 => 19
	i32 3539954161, ; 596: System.Net.HttpListener => 0xd2ff69f1 => 63
	i32 3545306353, ; 597: Microsoft.Data.SqlClient => 0xd35114f1 => 175
	i32 3555084973, ; 598: de\Microsoft.Data.SqlClient.resources => 0xd3e64aad => 307
	i32 3558648585, ; 599: System.ClientModel => 0xd41cab09 => 211
	i32 3560100363, ; 600: System.Threading.Timer => 0xd432d20b => 143
	i32 3561949811, ; 601: Azure.Core.dll => 0xd44f0a73 => 169
	i32 3570554715, ; 602: System.IO.FileSystem.AccessControl => 0xd4d2575b => 45
	i32 3580758918, ; 603: zh-HK\Microsoft.Maui.Controls.resources => 0xd56e0b86 => 350
	i32 3597029428, ; 604: Xamarin.Android.Glide.GifDecoder.dll => 0xd6665034 => 226
	i32 3598340787, ; 605: System.Net.WebSockets.Client => 0xd67a52b3 => 77
	i32 3608519521, ; 606: System.Linq.dll => 0xd715a361 => 59
	i32 3624195450, ; 607: System.Runtime.InteropServices.RuntimeInformation => 0xd804d57a => 104
	i32 3627220390, ; 608: Xamarin.AndroidX.Print.dll => 0xd832fda6 => 275
	i32 3633644679, ; 609: Xamarin.AndroidX.Annotation.Experimental => 0xd8950487 => 230
	i32 3638274909, ; 610: System.IO.FileSystem.Primitives.dll => 0xd8dbab5d => 47
	i32 3641597786, ; 611: Xamarin.AndroidX.Lifecycle.LiveData.Core => 0xd90e5f5a => 261
	i32 3643446276, ; 612: tr\Microsoft.Maui.Controls.resources => 0xd92a9404 => 347
	i32 3643854240, ; 613: Xamarin.AndroidX.Navigation.Fragment => 0xd930cda0 => 272
	i32 3645089577, ; 614: System.ComponentModel.DataAnnotations => 0xd943a729 => 14
	i32 3657292374, ; 615: Microsoft.Extensions.Configuration.Abstractions.dll => 0xd9fdda56 => 183
	i32 3660523487, ; 616: System.Net.NetworkInformation => 0xda2f27df => 66
	i32 3672681054, ; 617: Mono.Android.dll => 0xdae8aa5e => 167
	i32 3682565725, ; 618: Xamarin.AndroidX.Browser => 0xdb7f7e5d => 236
	i32 3684561358, ; 619: Xamarin.AndroidX.Concurrent.Futures => 0xdb9df1ce => 240
	i32 3697841164, ; 620: zh-Hant/Microsoft.Maui.Controls.resources.dll => 0xdc68940c => 352
	i32 3700591436, ; 621: Microsoft.IdentityModel.Abstractions.dll => 0xdc928b4c => 198
	i32 3700866549, ; 622: System.Net.WebProxy.dll => 0xdc96bdf5 => 76
	i32 3706696989, ; 623: Xamarin.AndroidX.Core.Core.Ktx.dll => 0xdcefb51d => 245
	i32 3716563718, ; 624: System.Runtime.Intrinsics => 0xdd864306 => 106
	i32 3718780102, ; 625: Xamarin.AndroidX.Annotation => 0xdda814c6 => 229
	i32 3722202641, ; 626: Microsoft.Extensions.Configuration.Json.dll => 0xdddc4e11 => 185
	i32 3724971120, ; 627: Xamarin.AndroidX.Navigation.Common.dll => 0xde068c70 => 271
	i32 3732100267, ; 628: System.Net.NameResolution => 0xde7354ab => 65
	i32 3737834244, ; 629: System.Net.Http.Json.dll => 0xdecad304 => 61
	i32 3748608112, ; 630: System.Diagnostics.DiagnosticSource => 0xdf6f3870 => 213
	i32 3751444290, ; 631: System.Xml.XPath => 0xdf9a7f42 => 156
	i32 3758424670, ; 632: Microsoft.Extensions.Configuration.FileExtensions => 0xe005025e => 184
	i32 3786282454, ; 633: Xamarin.AndroidX.Collection => 0xe1ae15d6 => 238
	i32 3792276235, ; 634: System.Collections.NonGeneric => 0xe2098b0b => 10
	i32 3800979733, ; 635: Microsoft.Maui.Controls.Compatibility => 0xe28e5915 => 204
	i32 3802395368, ; 636: System.Collections.Specialized.dll => 0xe2a3f2e8 => 11
	i32 3803019198, ; 637: zh-Hans/Microsoft.Data.SqlClient.resources.dll => 0xe2ad77be => 317
	i32 3807198597, ; 638: System.Security.Cryptography.Pkcs => 0xe2ed3d85 => 219
	i32 3819260425, ; 639: System.Net.WebProxy => 0xe3a54a09 => 76
	i32 3823082795, ; 640: System.Security.Cryptography.dll => 0xe3df9d2b => 124
	i32 3829621856, ; 641: System.Numerics.dll => 0xe4436460 => 81
	i32 3841636137, ; 642: Microsoft.Extensions.DependencyInjection.Abstractions.dll => 0xe4fab729 => 187
	i32 3844307129, ; 643: System.Net.Mail.dll => 0xe52378b9 => 64
	i32 3848348906, ; 644: es\Microsoft.Data.SqlClient.resources => 0xe56124ea => 308
	i32 3849253459, ; 645: System.Runtime.InteropServices.dll => 0xe56ef253 => 105
	i32 3870376305, ; 646: System.Net.HttpListener.dll => 0xe6b14171 => 63
	i32 3873536506, ; 647: System.Security.Principal => 0xe6e179fa => 126
	i32 3875112723, ; 648: System.Security.Cryptography.Encoding.dll => 0xe6f98713 => 120
	i32 3885497537, ; 649: System.Net.WebHeaderCollection.dll => 0xe797fcc1 => 75
	i32 3885922214, ; 650: Xamarin.AndroidX.Transition.dll => 0xe79e77a6 => 286
	i32 3888767677, ; 651: Xamarin.AndroidX.ProfileInstaller.ProfileInstaller => 0xe7c9e2bd => 276
	i32 3889960447, ; 652: zh-Hans/Microsoft.Maui.Controls.resources.dll => 0xe7dc15ff => 351
	i32 3896106733, ; 653: System.Collections.Concurrent.dll => 0xe839deed => 8
	i32 3896760992, ; 654: Xamarin.AndroidX.Core.dll => 0xe843daa0 => 244
	i32 3901907137, ; 655: Microsoft.VisualBasic.Core.dll => 0xe89260c1 => 2
	i32 3920810846, ; 656: System.IO.Compression.FileSystem.dll => 0xe9b2d35e => 42
	i32 3921031405, ; 657: Xamarin.AndroidX.VersionedParcelable.dll => 0xe9b630ed => 289
	i32 3928044579, ; 658: System.Xml.ReaderWriter => 0xea213423 => 152
	i32 3930554604, ; 659: System.Security.Principal.dll => 0xea4780ec => 126
	i32 3931092270, ; 660: Xamarin.AndroidX.Navigation.UI => 0xea4fb52e => 274
	i32 3945713374, ; 661: System.Data.DataSetExtensions.dll => 0xeb2ecede => 23
	i32 3953953790, ; 662: System.Text.Encoding.CodePages => 0xebac8bfe => 131
	i32 3955647286, ; 663: Xamarin.AndroidX.AppCompat.dll => 0xebc66336 => 232
	i32 3959773229, ; 664: Xamarin.AndroidX.Lifecycle.Process => 0xec05582d => 263
	i32 3980434154, ; 665: th/Microsoft.Maui.Controls.resources.dll => 0xed409aea => 346
	i32 3987592930, ; 666: he/Microsoft.Maui.Controls.resources.dll => 0xedadd6e2 => 328
	i32 4003436829, ; 667: System.Diagnostics.Process.dll => 0xee9f991d => 28
	i32 4015948917, ; 668: Xamarin.AndroidX.Annotation.Jvm.dll => 0xef5e8475 => 231
	i32 4023392905, ; 669: System.IO.Pipelines => 0xefd01a89 => 217
	i32 4025784931, ; 670: System.Memory => 0xeff49a63 => 60
	i32 4046471985, ; 671: Microsoft.Maui.Controls.Xaml.dll => 0xf1304331 => 206
	i32 4054681211, ; 672: System.Reflection.Emit.ILGeneration => 0xf1ad867b => 88
	i32 4064142224, ; 673: pl/Microsoft.Data.SqlClient.resources.dll => 0xf23de390 => 313
	i32 4068434129, ; 674: System.Private.Xml.Linq.dll => 0xf27f60d1 => 85
	i32 4073602200, ; 675: System.Threading.dll => 0xf2ce3c98 => 144
	i32 4094352644, ; 676: Microsoft.Maui.Essentials.dll => 0xf40add04 => 208
	i32 4099507663, ; 677: System.Drawing.dll => 0xf45985cf => 35
	i32 4100113165, ; 678: System.Private.Uri => 0xf462c30d => 84
	i32 4101593132, ; 679: Xamarin.AndroidX.Emoji2 => 0xf479582c => 252
	i32 4101842092, ; 680: Microsoft.Extensions.Caching.Memory => 0xf47d24ac => 181
	i32 4102112229, ; 681: pt/Microsoft.Maui.Controls.resources.dll => 0xf48143e5 => 341
	i32 4125707920, ; 682: ms/Microsoft.Maui.Controls.resources.dll => 0xf5e94e90 => 336
	i32 4126470640, ; 683: Microsoft.Extensions.DependencyInjection => 0xf5f4f1f0 => 186
	i32 4127667938, ; 684: System.IO.FileSystem.Watcher => 0xf60736e2 => 48
	i32 4130442656, ; 685: System.AppContext => 0xf6318da0 => 6
	i32 4147896353, ; 686: System.Reflection.Emit.ILGeneration.dll => 0xf73be021 => 88
	i32 4150914736, ; 687: uk\Microsoft.Maui.Controls.resources => 0xf769eeb0 => 348
	i32 4151237749, ; 688: System.Core => 0xf76edc75 => 21
	i32 4159265925, ; 689: System.Xml.XmlSerializer => 0xf7e95c85 => 158
	i32 4161255271, ; 690: System.Reflection.TypeExtensions => 0xf807b767 => 94
	i32 4164802419, ; 691: System.IO.FileSystem.Watcher.dll => 0xf83dd773 => 48
	i32 4181436372, ; 692: System.Runtime.Serialization.Primitives => 0xf93ba7d4 => 111
	i32 4182413190, ; 693: Xamarin.AndroidX.Lifecycle.ViewModelSavedState.dll => 0xf94a8f86 => 268
	i32 4185676441, ; 694: System.Security => 0xf97c5a99 => 128
	i32 4194278001, ; 695: Microsoft.EntityFrameworkCore.SqlServer.dll => 0xf9ff9a71 => 179
	i32 4196529839, ; 696: System.Net.WebClient.dll => 0xfa21f6af => 74
	i32 4213026141, ; 697: System.Diagnostics.DiagnosticSource.dll => 0xfb1dad5d => 213
	i32 4256097574, ; 698: Xamarin.AndroidX.Core.Core.Ktx => 0xfdaee526 => 245
	i32 4257443520, ; 699: ko/Microsoft.Data.SqlClient.resources.dll => 0xfdc36ec0 => 312
	i32 4258378803, ; 700: Xamarin.AndroidX.Lifecycle.ViewModel.Ktx => 0xfdd1b433 => 267
	i32 4260525087, ; 701: System.Buffers => 0xfdf2741f => 7
	i32 4263231520, ; 702: System.IdentityModel.Tokens.Jwt.dll => 0xfe1bc020 => 216
	i32 4271975918, ; 703: Microsoft.Maui.Controls.dll => 0xfea12dee => 205
	i32 4274623895, ; 704: CommunityToolkit.Mvvm.dll => 0xfec99597 => 171
	i32 4274976490, ; 705: System.Runtime.Numerics => 0xfecef6ea => 108
	i32 4292120959, ; 706: Xamarin.AndroidX.Lifecycle.ViewModelSavedState => 0xffd4917f => 268
	i32 4294763496 ; 707: Xamarin.AndroidX.ExifInterface.dll => 0xfffce3e8 => 254
], align 4

@assembly_image_cache_indices = dso_local local_unnamed_addr constant [708 x i32] [
	i32 66, ; 0
	i32 65, ; 1
	i32 106, ; 2
	i32 264, ; 3
	i32 298, ; 4
	i32 46, ; 5
	i32 78, ; 6
	i32 141, ; 7
	i32 310, ; 8
	i32 311, ; 9
	i32 29, ; 10
	i32 352, ; 11
	i32 122, ; 12
	i32 209, ; 13
	i32 100, ; 14
	i32 282, ; 15
	i32 105, ; 16
	i32 282, ; 17
	i32 135, ; 18
	i32 302, ; 19
	i32 311, ; 20
	i32 75, ; 21
	i32 122, ; 22
	i32 13, ; 23
	i32 238, ; 24
	i32 315, ; 25
	i32 130, ; 26
	i32 284, ; 27
	i32 147, ; 28
	i32 349, ; 29
	i32 350, ; 30
	i32 18, ; 31
	i32 236, ; 32
	i32 26, ; 33
	i32 258, ; 34
	i32 1, ; 35
	i32 57, ; 36
	i32 40, ; 37
	i32 89, ; 38
	i32 241, ; 39
	i32 317, ; 40
	i32 143, ; 41
	i32 260, ; 42
	i32 257, ; 43
	i32 321, ; 44
	i32 52, ; 45
	i32 67, ; 46
	i32 349, ; 47
	i32 227, ; 48
	i32 81, ; 49
	i32 210, ; 50
	i32 334, ; 51
	i32 259, ; 52
	i32 333, ; 53
	i32 129, ; 54
	i32 313, ; 55
	i32 53, ; 56
	i32 145, ; 57
	i32 72, ; 58
	i32 141, ; 59
	i32 60, ; 60
	i32 142, ; 61
	i32 353, ; 62
	i32 161, ; 63
	i32 316, ; 64
	i32 345, ; 65
	i32 242, ; 66
	i32 12, ; 67
	i32 255, ; 68
	i32 123, ; 69
	i32 148, ; 70
	i32 111, ; 71
	i32 162, ; 72
	i32 160, ; 73
	i32 257, ; 74
	i32 198, ; 75
	i32 270, ; 76
	i32 82, ; 77
	i32 332, ; 78
	i32 326, ; 79
	i32 195, ; 80
	i32 146, ; 81
	i32 302, ; 82
	i32 58, ; 83
	i32 191, ; 84
	i32 49, ; 85
	i32 101, ; 86
	i32 112, ; 87
	i32 173, ; 88
	i32 38, ; 89
	i32 295, ; 90
	i32 293, ; 91
	i32 118, ; 92
	i32 340, ; 93
	i32 50, ; 94
	i32 42, ; 95
	i32 117, ; 96
	i32 247, ; 97
	i32 338, ; 98
	i32 253, ; 99
	i32 79, ; 100
	i32 221, ; 101
	i32 289, ; 102
	i32 234, ; 103
	i32 8, ; 104
	i32 71, ; 105
	i32 320, ; 106
	i32 151, ; 107
	i32 304, ; 108
	i32 150, ; 109
	i32 90, ; 110
	i32 299, ; 111
	i32 43, ; 112
	i32 335, ; 113
	i32 219, ; 114
	i32 323, ; 115
	i32 303, ; 116
	i32 107, ; 117
	i32 211, ; 118
	i32 127, ; 119
	i32 25, ; 120
	i32 224, ; 121
	i32 70, ; 122
	i32 53, ; 123
	i32 44, ; 124
	i32 344, ; 125
	i32 194, ; 126
	i32 248, ; 127
	i32 22, ; 128
	i32 262, ; 129
	i32 84, ; 130
	i32 41, ; 131
	i32 156, ; 132
	i32 69, ; 133
	i32 275, ; 134
	i32 3, ; 135
	i32 40, ; 136
	i32 61, ; 137
	i32 16, ; 138
	i32 51, ; 139
	i32 347, ; 140
	i32 298, ; 141
	i32 103, ; 142
	i32 303, ; 143
	i32 296, ; 144
	i32 259, ; 145
	i32 33, ; 146
	i32 154, ; 147
	i32 83, ; 148
	i32 31, ; 149
	i32 12, ; 150
	i32 49, ; 151
	i32 190, ; 152
	i32 54, ; 153
	i32 279, ; 154
	i32 35, ; 155
	i32 187, ; 156
	i32 322, ; 157
	i32 297, ; 158
	i32 232, ; 159
	i32 34, ; 160
	i32 56, ; 161
	i32 307, ; 162
	i32 266, ; 163
	i32 197, ; 164
	i32 172, ; 165
	i32 17, ; 166
	i32 300, ; 167
	i32 214, ; 168
	i32 160, ; 169
	i32 184, ; 170
	i32 335, ; 171
	i32 265, ; 172
	i32 193, ; 173
	i32 175, ; 174
	i32 292, ; 175
	i32 177, ; 176
	i32 341, ; 177
	i32 149, ; 178
	i32 188, ; 179
	i32 288, ; 180
	i32 273, ; 181
	i32 174, ; 182
	i32 177, ; 183
	i32 339, ; 184
	i32 234, ; 185
	i32 181, ; 186
	i32 28, ; 187
	i32 171, ; 188
	i32 50, ; 189
	i32 337, ; 190
	i32 293, ; 191
	i32 5, ; 192
	i32 321, ; 193
	i32 283, ; 194
	i32 287, ; 195
	i32 239, ; 196
	i32 304, ; 197
	i32 231, ; 198
	i32 250, ; 199
	i32 83, ; 200
	i32 306, ; 201
	i32 292, ; 202
	i32 59, ; 203
	i32 110, ; 204
	i32 55, ; 205
	i32 351, ; 206
	i32 279, ; 207
	i32 97, ; 208
	i32 19, ; 209
	i32 243, ; 210
	i32 109, ; 211
	i32 99, ; 212
	i32 100, ; 213
	i32 319, ; 214
	i32 102, ; 215
	i32 296, ; 216
	i32 69, ; 217
	i32 215, ; 218
	i32 31, ; 219
	i32 101, ; 220
	i32 71, ; 221
	i32 216, ; 222
	i32 325, ; 223
	i32 9, ; 224
	i32 121, ; 225
	i32 44, ; 226
	i32 233, ; 227
	i32 195, ; 228
	i32 9, ; 229
	i32 41, ; 230
	i32 4, ; 231
	i32 280, ; 232
	i32 329, ; 233
	i32 199, ; 234
	i32 324, ; 235
	i32 190, ; 236
	i32 30, ; 237
	i32 134, ; 238
	i32 90, ; 239
	i32 91, ; 240
	i32 344, ; 241
	i32 47, ; 242
	i32 137, ; 243
	i32 110, ; 244
	i32 136, ; 245
	i32 170, ; 246
	i32 249, ; 247
	i32 113, ; 248
	i32 318, ; 249
	i32 297, ; 250
	i32 153, ; 251
	i32 74, ; 252
	i32 77, ; 253
	i32 269, ; 254
	i32 36, ; 255
	i32 291, ; 256
	i32 202, ; 257
	i32 185, ; 258
	i32 253, ; 259
	i32 246, ; 260
	i32 62, ; 261
	i32 134, ; 262
	i32 15, ; 263
	i32 114, ; 264
	i32 285, ; 265
	i32 294, ; 266
	i32 241, ; 267
	i32 46, ; 268
	i32 68, ; 269
	i32 78, ; 270
	i32 124, ; 271
	i32 176, ; 272
	i32 92, ; 273
	i32 119, ; 274
	i32 301, ; 275
	i32 26, ; 276
	i32 262, ; 277
	i32 95, ; 278
	i32 27, ; 279
	i32 237, ; 280
	i32 342, ; 281
	i32 320, ; 282
	i32 145, ; 283
	i32 217, ; 284
	i32 165, ; 285
	i32 4, ; 286
	i32 96, ; 287
	i32 32, ; 288
	i32 91, ; 289
	i32 284, ; 290
	i32 191, ; 291
	i32 21, ; 292
	i32 39, ; 293
	i32 166, ; 294
	i32 336, ; 295
	i32 255, ; 296
	i32 328, ; 297
	i32 196, ; 298
	i32 173, ; 299
	i32 269, ; 300
	i32 300, ; 301
	i32 294, ; 302
	i32 274, ; 303
	i32 2, ; 304
	i32 132, ; 305
	i32 109, ; 306
	i32 192, ; 307
	i32 348, ; 308
	i32 224, ; 309
	i32 345, ; 310
	i32 56, ; 311
	i32 93, ; 312
	i32 202, ; 313
	i32 327, ; 314
	i32 37, ; 315
	i32 235, ; 316
	i32 25, ; 317
	i32 92, ; 318
	i32 87, ; 319
	i32 97, ; 320
	i32 10, ; 321
	i32 0, ; 322
	i32 85, ; 323
	i32 98, ; 324
	i32 281, ; 325
	i32 182, ; 326
	i32 301, ; 327
	i32 226, ; 328
	i32 203, ; 329
	i32 324, ; 330
	i32 7, ; 331
	i32 266, ; 332
	i32 319, ; 333
	i32 223, ; 334
	i32 197, ; 335
	i32 86, ; 336
	i32 261, ; 337
	i32 150, ; 338
	i32 323, ; 339
	i32 32, ; 340
	i32 189, ; 341
	i32 114, ; 342
	i32 80, ; 343
	i32 20, ; 344
	i32 11, ; 345
	i32 158, ; 346
	i32 3, ; 347
	i32 207, ; 348
	i32 331, ; 349
	i32 194, ; 350
	i32 192, ; 351
	i32 82, ; 352
	i32 305, ; 353
	i32 62, ; 354
	i32 333, ; 355
	i32 288, ; 356
	i32 139, ; 357
	i32 314, ; 358
	i32 270, ; 359
	i32 153, ; 360
	i32 176, ; 361
	i32 201, ; 362
	i32 39, ; 363
	i32 115, ; 364
	i32 183, ; 365
	i32 225, ; 366
	i32 327, ; 367
	i32 277, ; 368
	i32 129, ; 369
	i32 73, ; 370
	i32 64, ; 371
	i32 337, ; 372
	i32 168, ; 373
	i32 312, ; 374
	i32 229, ; 375
	i32 139, ; 376
	i32 104, ; 377
	i32 147, ; 378
	i32 68, ; 379
	i32 152, ; 380
	i32 200, ; 381
	i32 182, ; 382
	i32 119, ; 383
	i32 125, ; 384
	i32 332, ; 385
	i32 148, ; 386
	i32 252, ; 387
	i32 137, ; 388
	i32 239, ; 389
	i32 329, ; 390
	i32 20, ; 391
	i32 14, ; 392
	i32 133, ; 393
	i32 73, ; 394
	i32 57, ; 395
	i32 242, ; 396
	i32 163, ; 397
	i32 164, ; 398
	i32 205, ; 399
	i32 15, ; 400
	i32 72, ; 401
	i32 6, ; 402
	i32 23, ; 403
	i32 264, ; 404
	i32 214, ; 405
	i32 223, ; 406
	i32 89, ; 407
	i32 330, ; 408
	i32 1, ; 409
	i32 221, ; 410
	i32 265, ; 411
	i32 287, ; 412
	i32 132, ; 413
	i32 67, ; 414
	i32 142, ; 415
	i32 188, ; 416
	i32 339, ; 417
	i32 305, ; 418
	i32 256, ; 419
	i32 193, ; 420
	i32 86, ; 421
	i32 94, ; 422
	i32 246, ; 423
	i32 251, ; 424
	i32 334, ; 425
	i32 30, ; 426
	i32 218, ; 427
	i32 43, ; 428
	i32 260, ; 429
	i32 178, ; 430
	i32 200, ; 431
	i32 169, ; 432
	i32 220, ; 433
	i32 225, ; 434
	i32 107, ; 435
	i32 154, ; 436
	i32 34, ; 437
	i32 22, ; 438
	i32 170, ; 439
	i32 316, ; 440
	i32 112, ; 441
	i32 55, ; 442
	i32 285, ; 443
	i32 0, ; 444
	i32 140, ; 445
	i32 116, ; 446
	i32 118, ; 447
	i32 108, ; 448
	i32 227, ; 449
	i32 135, ; 450
	i32 233, ; 451
	i32 196, ; 452
	i32 52, ; 453
	i32 103, ; 454
	i32 340, ; 455
	i32 210, ; 456
	i32 179, ; 457
	i32 206, ; 458
	i32 207, ; 459
	i32 131, ; 460
	i32 299, ; 461
	i32 290, ; 462
	i32 278, ; 463
	i32 346, ; 464
	i32 256, ; 465
	i32 209, ; 466
	i32 155, ; 467
	i32 308, ; 468
	i32 325, ; 469
	i32 243, ; 470
	i32 159, ; 471
	i32 130, ; 472
	i32 278, ; 473
	i32 157, ; 474
	i32 338, ; 475
	i32 267, ; 476
	i32 310, ; 477
	i32 178, ; 478
	i32 136, ; 479
	i32 290, ; 480
	i32 286, ; 481
	i32 165, ; 482
	i32 208, ; 483
	i32 220, ; 484
	i32 228, ; 485
	i32 295, ; 486
	i32 38, ; 487
	i32 254, ; 488
	i32 79, ; 489
	i32 306, ; 490
	i32 54, ; 491
	i32 36, ; 492
	i32 95, ; 493
	i32 162, ; 494
	i32 168, ; 495
	i32 189, ; 496
	i32 291, ; 497
	i32 80, ; 498
	i32 230, ; 499
	i32 96, ; 500
	i32 29, ; 501
	i32 155, ; 502
	i32 212, ; 503
	i32 18, ; 504
	i32 125, ; 505
	i32 117, ; 506
	i32 250, ; 507
	i32 281, ; 508
	i32 263, ; 509
	i32 212, ; 510
	i32 283, ; 511
	i32 161, ; 512
	i32 315, ; 513
	i32 258, ; 514
	i32 218, ; 515
	i32 353, ; 516
	i32 280, ; 517
	i32 271, ; 518
	i32 166, ; 519
	i32 16, ; 520
	i32 180, ; 521
	i32 140, ; 522
	i32 331, ; 523
	i32 203, ; 524
	i32 123, ; 525
	i32 116, ; 526
	i32 215, ; 527
	i32 113, ; 528
	i32 45, ; 529
	i32 138, ; 530
	i32 115, ; 531
	i32 33, ; 532
	i32 172, ; 533
	i32 318, ; 534
	i32 93, ; 535
	i32 51, ; 536
	i32 272, ; 537
	i32 127, ; 538
	i32 149, ; 539
	i32 180, ; 540
	i32 24, ; 541
	i32 157, ; 542
	i32 249, ; 543
	i32 144, ; 544
	i32 102, ; 545
	i32 87, ; 546
	i32 237, ; 547
	i32 58, ; 548
	i32 138, ; 549
	i32 309, ; 550
	i32 314, ; 551
	i32 98, ; 552
	i32 5, ; 553
	i32 13, ; 554
	i32 120, ; 555
	i32 133, ; 556
	i32 27, ; 557
	i32 326, ; 558
	i32 199, ; 559
	i32 70, ; 560
	i32 247, ; 561
	i32 24, ; 562
	i32 235, ; 563
	i32 309, ; 564
	i32 276, ; 565
	i32 273, ; 566
	i32 343, ; 567
	i32 222, ; 568
	i32 228, ; 569
	i32 244, ; 570
	i32 164, ; 571
	i32 201, ; 572
	i32 277, ; 573
	i32 322, ; 574
	i32 99, ; 575
	i32 121, ; 576
	i32 248, ; 577
	i32 186, ; 578
	i32 159, ; 579
	i32 163, ; 580
	i32 251, ; 581
	i32 37, ; 582
	i32 204, ; 583
	i32 330, ; 584
	i32 17, ; 585
	i32 167, ; 586
	i32 343, ; 587
	i32 342, ; 588
	i32 222, ; 589
	i32 146, ; 590
	i32 240, ; 591
	i32 151, ; 592
	i32 174, ; 593
	i32 128, ; 594
	i32 19, ; 595
	i32 63, ; 596
	i32 175, ; 597
	i32 307, ; 598
	i32 211, ; 599
	i32 143, ; 600
	i32 169, ; 601
	i32 45, ; 602
	i32 350, ; 603
	i32 226, ; 604
	i32 77, ; 605
	i32 59, ; 606
	i32 104, ; 607
	i32 275, ; 608
	i32 230, ; 609
	i32 47, ; 610
	i32 261, ; 611
	i32 347, ; 612
	i32 272, ; 613
	i32 14, ; 614
	i32 183, ; 615
	i32 66, ; 616
	i32 167, ; 617
	i32 236, ; 618
	i32 240, ; 619
	i32 352, ; 620
	i32 198, ; 621
	i32 76, ; 622
	i32 245, ; 623
	i32 106, ; 624
	i32 229, ; 625
	i32 185, ; 626
	i32 271, ; 627
	i32 65, ; 628
	i32 61, ; 629
	i32 213, ; 630
	i32 156, ; 631
	i32 184, ; 632
	i32 238, ; 633
	i32 10, ; 634
	i32 204, ; 635
	i32 11, ; 636
	i32 317, ; 637
	i32 219, ; 638
	i32 76, ; 639
	i32 124, ; 640
	i32 81, ; 641
	i32 187, ; 642
	i32 64, ; 643
	i32 308, ; 644
	i32 105, ; 645
	i32 63, ; 646
	i32 126, ; 647
	i32 120, ; 648
	i32 75, ; 649
	i32 286, ; 650
	i32 276, ; 651
	i32 351, ; 652
	i32 8, ; 653
	i32 244, ; 654
	i32 2, ; 655
	i32 42, ; 656
	i32 289, ; 657
	i32 152, ; 658
	i32 126, ; 659
	i32 274, ; 660
	i32 23, ; 661
	i32 131, ; 662
	i32 232, ; 663
	i32 263, ; 664
	i32 346, ; 665
	i32 328, ; 666
	i32 28, ; 667
	i32 231, ; 668
	i32 217, ; 669
	i32 60, ; 670
	i32 206, ; 671
	i32 88, ; 672
	i32 313, ; 673
	i32 85, ; 674
	i32 144, ; 675
	i32 208, ; 676
	i32 35, ; 677
	i32 84, ; 678
	i32 252, ; 679
	i32 181, ; 680
	i32 341, ; 681
	i32 336, ; 682
	i32 186, ; 683
	i32 48, ; 684
	i32 6, ; 685
	i32 88, ; 686
	i32 348, ; 687
	i32 21, ; 688
	i32 158, ; 689
	i32 94, ; 690
	i32 48, ; 691
	i32 111, ; 692
	i32 268, ; 693
	i32 128, ; 694
	i32 179, ; 695
	i32 74, ; 696
	i32 213, ; 697
	i32 245, ; 698
	i32 312, ; 699
	i32 267, ; 700
	i32 7, ; 701
	i32 216, ; 702
	i32 205, ; 703
	i32 171, ; 704
	i32 108, ; 705
	i32 268, ; 706
	i32 254 ; 707
], align 4

@marshal_methods_number_of_classes = dso_local local_unnamed_addr constant i32 0, align 4

@marshal_methods_class_cache = dso_local local_unnamed_addr global [0 x %struct.MarshalMethodsManagedClass] zeroinitializer, align 4

; Names of classes in which marshal methods reside
@mm_class_names = dso_local local_unnamed_addr constant [0 x ptr] zeroinitializer, align 4

@mm_method_names = dso_local local_unnamed_addr constant [1 x %struct.MarshalMethodName] [
	%struct.MarshalMethodName {
		i64 0, ; id 0x0; name: 
		ptr @.MarshalMethodName.0_name; char* name
	} ; 0
], align 8

; get_function_pointer (uint32_t mono_image_index, uint32_t class_index, uint32_t method_token, void*& target_ptr)
@get_function_pointer = internal dso_local unnamed_addr global ptr null, align 4

; Functions

; Function attributes: "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" uwtable willreturn
define void @xamarin_app_init(ptr nocapture noundef readnone %env, ptr noundef %fn) local_unnamed_addr #0
{
	%fnIsNull = icmp eq ptr %fn, null
	br i1 %fnIsNull, label %1, label %2

1: ; preds = %0
	%putsResult = call noundef i32 @puts(ptr @.str.0)
	call void @abort()
	unreachable 

2: ; preds = %1, %0
	store ptr %fn, ptr @get_function_pointer, align 4, !tbaa !3
	ret void
}

; Strings
@.str.0 = private unnamed_addr constant [40 x i8] c"get_function_pointer MUST be specified\0A\00", align 1

;MarshalMethodName
@.MarshalMethodName.0_name = private unnamed_addr constant [1 x i8] c"\00", align 1

; External functions

; Function attributes: "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8"
declare void @abort() local_unnamed_addr #2

; Function attributes: nofree nounwind
declare noundef i32 @puts(ptr noundef) local_unnamed_addr #1
attributes #0 = { "min-legal-vector-width"="0" mustprogress "no-trapping-math"="true" nofree norecurse nosync nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" uwtable willreturn }
attributes #1 = { nofree nounwind }
attributes #2 = { "no-trapping-math"="true" noreturn nounwind "stack-protector-buffer-size"="8" "stackrealign" "target-cpu"="i686" "target-features"="+cx8,+mmx,+sse,+sse2,+sse3,+ssse3,+x87" "tune-cpu"="generic" }

; Metadata
!llvm.module.flags = !{!0, !1, !7}
!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!llvm.ident = !{!2}
!2 = !{!"Xamarin.Android remotes/origin/release/8.0.4xx @ 82d8938cf80f6d5fa6c28529ddfbdb753d805ab4"}
!3 = !{!4, !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{i32 1, !"NumRegisterParameters", i32 0}
