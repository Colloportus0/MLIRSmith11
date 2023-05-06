module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 2 , 2] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [5 , 2 , 2 , 2] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.func @omTensorListGetSize(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorPrint(!llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorListGetOmtArray(!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
  llvm.func @omTensorSetDataType(!llvm.ptr<i8>, i64)
  llvm.func @omTensorGetDataType(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorGetStrides(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetShape(!llvm.ptr<i8>) -> !llvm.ptr<i64>
  llvm.func @omTensorGetRank(!llvm.ptr<i8>) -> i64
  llvm.func @omTensorSetDataPtr(!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>)
  llvm.func @omTensorGetDataPtr(!llvm.ptr<i8>) -> !llvm.ptr<i8>
  llvm.func @omTensorCreateUntyped(i64) -> !llvm.ptr<i8>
  llvm.func @omTensorListCreate(!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.mlir.global internal constant @constant_1(dense<[[[[3, 6], [7, 4]], [[3, 5], [6, 5]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[4, 6], [7, 5]], [[4, 6], [6, 3]]]]> : tensor<1x2x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<2 x array<2 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64, %arg22: !llvm.ptr<i32>, %arg23: !llvm.ptr<i32>, %arg24: i64, %arg25: i64, %arg26: i64, %arg27: i64, %arg28: i64, %arg29: i64, %arg30: i64, %arg31: i64, %arg32: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v6_0", "v3_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v5_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg18, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg19, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.insertvalue %arg20, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.insertvalue %arg17, %21[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.insertvalue %arg21, %22[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %25 = llvm.insertvalue %arg22, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %arg23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.insertvalue %arg24, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.insertvalue %arg25, %27[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.insertvalue %arg29, %28[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.insertvalue %arg26, %29[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %arg30, %30[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.insertvalue %arg27, %31[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.insertvalue %arg31, %32[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.insertvalue %arg28, %33[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.insertvalue %arg32, %34[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.mlir.constant(0 : i32) : i32
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(8 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(2 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(2 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x array<2 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(8 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(2 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.mlir.constant(4 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.mlir.constant(2 : index) : i64
    %77 = llvm.insertvalue %76, %75[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(2 : index) : i64
    %79 = llvm.insertvalue %78, %77[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.mlir.constant(2 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.mlir.constant(2 : index) : i64
    %85 = llvm.mlir.constant(2 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(4 : index) : i64
    %90 = llvm.mlir.constant(8 : index) : i64
    %91 = llvm.mlir.constant(16 : index) : i64
    %92 = llvm.mlir.null : !llvm.ptr<i32>
    %93 = llvm.getelementptr %92[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i32> to i64
    %95 = llvm.mlir.constant(16 : index) : i64
    %96 = llvm.add %94, %95  : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i32> to i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.sub %95, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.urem %102, %95  : i64
    %104 = llvm.sub %102, %103  : i64
    %105 = llvm.inttoptr %104 : i64 to !llvm.ptr<i32>
    %106 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %107 = llvm.insertvalue %98, %106[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %84, %110[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %85, %111[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %86, %112[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %87, %113[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %90, %114[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %89, %115[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %87, %116[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %88, %117[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%119 : i64)
  ^bb1(%122: i64):  // 2 preds: ^bb0, ^bb11
    %123 = llvm.icmp "slt" %122, %120 : i64
    llvm.cond_br %123, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %124 = llvm.mlir.constant(0 : index) : i64
    %125 = llvm.mlir.constant(2 : index) : i64
    %126 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%124 : i64)
  ^bb3(%127: i64):  // 2 preds: ^bb2, ^bb10
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%129 : i64)
  ^bb5(%132: i64):  // 2 preds: ^bb4, ^bb9
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.mlir.constant(2 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%134 : i64)
  ^bb7(%137: i64):  // 2 preds: ^bb6, ^bb8
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %139 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.add %122, %37  : i64
    %141 = llvm.add %140, %37  : i64
    %142 = llvm.add %141, %37  : i64
    %143 = llvm.getelementptr %139[%142] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.mlir.constant(8 : index) : i64
    %147 = llvm.mul %37, %146  : i64
    %148 = llvm.mlir.constant(4 : index) : i64
    %149 = llvm.mul %127, %148  : i64
    %150 = llvm.add %147, %149  : i64
    %151 = llvm.mlir.constant(2 : index) : i64
    %152 = llvm.mul %132, %151  : i64
    %153 = llvm.add %150, %152  : i64
    %154 = llvm.add %153, %137  : i64
    %155 = llvm.getelementptr %145[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %156 = llvm.load %155 : !llvm.ptr<i32>
    %157 = llvm.icmp "sgt" %144, %156 : i32
    %158 = llvm.select %157, %144, %156 : i1, i32
    %159 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.mlir.constant(8 : index) : i64
    %161 = llvm.mul %122, %160  : i64
    %162 = llvm.mlir.constant(4 : index) : i64
    %163 = llvm.mul %127, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.mlir.constant(2 : index) : i64
    %166 = llvm.mul %132, %165  : i64
    %167 = llvm.add %164, %166  : i64
    %168 = llvm.add %167, %137  : i64
    %169 = llvm.getelementptr %159[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %158, %169 : !llvm.ptr<i32>
    %170 = llvm.add %137, %136  : i64
    llvm.br ^bb7(%170 : i64)
  ^bb9:  // pred: ^bb7
    %171 = llvm.add %132, %131  : i64
    llvm.br ^bb5(%171 : i64)
  ^bb10:  // pred: ^bb5
    %172 = llvm.add %127, %126  : i64
    llvm.br ^bb3(%172 : i64)
  ^bb11:  // pred: ^bb3
    %173 = llvm.add %122, %121  : i64
    llvm.br ^bb1(%173 : i64)
  ^bb12:  // pred: ^bb1
    %174 = llvm.mlir.constant(2 : index) : i64
    %175 = llvm.mlir.constant(2 : index) : i64
    %176 = llvm.mlir.constant(2 : index) : i64
    %177 = llvm.mlir.constant(2 : index) : i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.mlir.constant(4 : index) : i64
    %180 = llvm.mlir.constant(8 : index) : i64
    %181 = llvm.mlir.constant(16 : index) : i64
    %182 = llvm.mlir.null : !llvm.ptr<i32>
    %183 = llvm.getelementptr %182[%181] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %184 = llvm.ptrtoint %183 : !llvm.ptr<i32> to i64
    %185 = llvm.mlir.constant(16 : index) : i64
    %186 = llvm.add %184, %185  : i64
    %187 = llvm.call @malloc(%186) : (i64) -> !llvm.ptr<i8>
    %188 = llvm.bitcast %187 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %189 = llvm.ptrtoint %188 : !llvm.ptr<i32> to i64
    %190 = llvm.mlir.constant(1 : index) : i64
    %191 = llvm.sub %185, %190  : i64
    %192 = llvm.add %189, %191  : i64
    %193 = llvm.urem %192, %185  : i64
    %194 = llvm.sub %192, %193  : i64
    %195 = llvm.inttoptr %194 : i64 to !llvm.ptr<i32>
    %196 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %197 = llvm.insertvalue %188, %196[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %195, %197[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.insertvalue %199, %198[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %201 = llvm.insertvalue %174, %200[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %202 = llvm.insertvalue %175, %201[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %203 = llvm.insertvalue %176, %202[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %204 = llvm.insertvalue %177, %203[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %205 = llvm.insertvalue %180, %204[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %206 = llvm.insertvalue %179, %205[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %207 = llvm.insertvalue %177, %206[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %208 = llvm.insertvalue %178, %207[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(2 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%209 : i64)
  ^bb13(%212: i64):  // 2 preds: ^bb12, ^bb23
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(2 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%214 : i64)
  ^bb15(%217: i64):  // 2 preds: ^bb14, ^bb22
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %219 = llvm.mlir.constant(0 : index) : i64
    %220 = llvm.mlir.constant(2 : index) : i64
    %221 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%219 : i64)
  ^bb17(%222: i64):  // 2 preds: ^bb16, ^bb21
    %223 = llvm.icmp "slt" %222, %220 : i64
    llvm.cond_br %223, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(2 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%224 : i64)
  ^bb19(%227: i64):  // 2 preds: ^bb18, ^bb20
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %229 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.mlir.constant(8 : index) : i64
    %231 = llvm.mul %212, %230  : i64
    %232 = llvm.mlir.constant(4 : index) : i64
    %233 = llvm.mul %217, %232  : i64
    %234 = llvm.add %231, %233  : i64
    %235 = llvm.mlir.constant(2 : index) : i64
    %236 = llvm.mul %222, %235  : i64
    %237 = llvm.add %234, %236  : i64
    %238 = llvm.add %237, %227  : i64
    %239 = llvm.getelementptr %229[%238] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %240 = llvm.load %239 : !llvm.ptr<i32>
    %241 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %242 = llvm.mlir.constant(8 : index) : i64
    %243 = llvm.mul %212, %242  : i64
    %244 = llvm.mlir.constant(4 : index) : i64
    %245 = llvm.mul %217, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mul %222, %247  : i64
    %249 = llvm.add %246, %248  : i64
    %250 = llvm.add %249, %227  : i64
    %251 = llvm.getelementptr %241[%250] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %252 = llvm.load %251 : !llvm.ptr<i32>
    %253 = llvm.mul %240, %252  : i32
    %254 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.mlir.constant(8 : index) : i64
    %256 = llvm.mul %212, %255  : i64
    %257 = llvm.mlir.constant(4 : index) : i64
    %258 = llvm.mul %217, %257  : i64
    %259 = llvm.add %256, %258  : i64
    %260 = llvm.mlir.constant(2 : index) : i64
    %261 = llvm.mul %222, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.add %262, %227  : i64
    %264 = llvm.getelementptr %254[%263] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %253, %264 : !llvm.ptr<i32>
    %265 = llvm.add %227, %226  : i64
    llvm.br ^bb19(%265 : i64)
  ^bb21:  // pred: ^bb19
    %266 = llvm.add %222, %221  : i64
    llvm.br ^bb17(%266 : i64)
  ^bb22:  // pred: ^bb17
    %267 = llvm.add %217, %216  : i64
    llvm.br ^bb15(%267 : i64)
  ^bb23:  // pred: ^bb15
    %268 = llvm.add %212, %211  : i64
    llvm.br ^bb13(%268 : i64)
  ^bb24:  // pred: ^bb13
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.mlir.constant(2 : index) : i64
    %271 = llvm.mlir.constant(2 : index) : i64
    %272 = llvm.mlir.constant(2 : index) : i64
    %273 = llvm.mlir.constant(1 : index) : i64
    %274 = llvm.mlir.constant(4 : index) : i64
    %275 = llvm.mlir.constant(8 : index) : i64
    %276 = llvm.mlir.constant(16 : index) : i64
    %277 = llvm.mlir.null : !llvm.ptr<i32>
    %278 = llvm.getelementptr %277[%276] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i32> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i32> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<i32>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.insertvalue %269, %295[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %297 = llvm.insertvalue %270, %296[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.insertvalue %271, %297[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %299 = llvm.insertvalue %272, %298[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.insertvalue %275, %299[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %301 = llvm.insertvalue %274, %300[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %302 = llvm.insertvalue %272, %301[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %303 = llvm.insertvalue %273, %302[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(2 : index) : i64
    %306 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%304 : i64)
  ^bb25(%307: i64):  // 2 preds: ^bb24, ^bb35
    %308 = llvm.icmp "slt" %307, %305 : i64
    llvm.cond_br %308, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %309 = llvm.mlir.constant(0 : index) : i64
    %310 = llvm.mlir.constant(2 : index) : i64
    %311 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%309 : i64)
  ^bb27(%312: i64):  // 2 preds: ^bb26, ^bb34
    %313 = llvm.icmp "slt" %312, %310 : i64
    llvm.cond_br %313, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %314 = llvm.mlir.constant(0 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%314 : i64)
  ^bb29(%317: i64):  // 2 preds: ^bb28, ^bb33
    %318 = llvm.icmp "slt" %317, %315 : i64
    llvm.cond_br %318, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %319 = llvm.mlir.constant(0 : index) : i64
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%319 : i64)
  ^bb31(%322: i64):  // 2 preds: ^bb30, ^bb32
    %323 = llvm.icmp "slt" %322, %320 : i64
    llvm.cond_br %323, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %324 = llvm.extractvalue %208[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.mlir.constant(8 : index) : i64
    %326 = llvm.mul %307, %325  : i64
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mul %312, %327  : i64
    %329 = llvm.add %326, %328  : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mul %317, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.add %332, %322  : i64
    %334 = llvm.getelementptr %324[%333] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %335 = llvm.load %334 : !llvm.ptr<i32>
    %336 = llvm.sub %36, %335  : i32
    %337 = llvm.extractvalue %303[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.mlir.constant(8 : index) : i64
    %339 = llvm.mul %307, %338  : i64
    %340 = llvm.mlir.constant(4 : index) : i64
    %341 = llvm.mul %312, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mul %317, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.add %345, %322  : i64
    %347 = llvm.getelementptr %337[%346] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %336, %347 : !llvm.ptr<i32>
    %348 = llvm.add %322, %321  : i64
    llvm.br ^bb31(%348 : i64)
  ^bb33:  // pred: ^bb31
    %349 = llvm.add %317, %316  : i64
    llvm.br ^bb29(%349 : i64)
  ^bb34:  // pred: ^bb29
    %350 = llvm.add %312, %311  : i64
    llvm.br ^bb27(%350 : i64)
  ^bb35:  // pred: ^bb27
    %351 = llvm.add %307, %306  : i64
    llvm.br ^bb25(%351 : i64)
  ^bb36:  // pred: ^bb25
    %352 = llvm.mlir.constant(5 : index) : i64
    %353 = llvm.mlir.constant(2 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(2 : index) : i64
    %356 = llvm.mlir.constant(1 : index) : i64
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mlir.constant(8 : index) : i64
    %359 = llvm.mlir.constant(40 : index) : i64
    %360 = llvm.mlir.null : !llvm.ptr<i32>
    %361 = llvm.getelementptr %360[%359] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %362 = llvm.ptrtoint %361 : !llvm.ptr<i32> to i64
    %363 = llvm.mlir.constant(16 : index) : i64
    %364 = llvm.add %362, %363  : i64
    %365 = llvm.call @malloc(%364) : (i64) -> !llvm.ptr<i8>
    %366 = llvm.bitcast %365 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %367 = llvm.ptrtoint %366 : !llvm.ptr<i32> to i64
    %368 = llvm.mlir.constant(1 : index) : i64
    %369 = llvm.sub %363, %368  : i64
    %370 = llvm.add %367, %369  : i64
    %371 = llvm.urem %370, %363  : i64
    %372 = llvm.sub %370, %371  : i64
    %373 = llvm.inttoptr %372 : i64 to !llvm.ptr<i32>
    %374 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %375 = llvm.insertvalue %366, %374[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %376 = llvm.insertvalue %373, %375[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %377 = llvm.mlir.constant(0 : index) : i64
    %378 = llvm.insertvalue %377, %376[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.insertvalue %352, %378[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %380 = llvm.insertvalue %353, %379[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.insertvalue %354, %380[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %382 = llvm.insertvalue %355, %381[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.insertvalue %358, %382[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.insertvalue %357, %383[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.insertvalue %355, %384[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %386 = llvm.insertvalue %356, %385[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%387 : i64)
  ^bb37(%390: i64):  // 2 preds: ^bb36, ^bb47
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %392 = llvm.mlir.constant(0 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%392 : i64)
  ^bb39(%395: i64):  // 2 preds: ^bb38, ^bb46
    %396 = llvm.icmp "slt" %395, %393 : i64
    llvm.cond_br %396, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.mlir.constant(2 : index) : i64
    %399 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%397 : i64)
  ^bb41(%400: i64):  // 2 preds: ^bb40, ^bb45
    %401 = llvm.icmp "slt" %400, %398 : i64
    llvm.cond_br %401, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %402 = llvm.mlir.constant(0 : index) : i64
    %403 = llvm.mlir.constant(2 : index) : i64
    %404 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%402 : i64)
  ^bb43(%405: i64):  // 2 preds: ^bb42, ^bb44
    %406 = llvm.icmp "slt" %405, %403 : i64
    llvm.cond_br %406, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %407 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %408 = llvm.mlir.constant(8 : index) : i64
    %409 = llvm.mul %390, %408  : i64
    %410 = llvm.mlir.constant(4 : index) : i64
    %411 = llvm.mul %395, %410  : i64
    %412 = llvm.add %409, %411  : i64
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mul %400, %413  : i64
    %415 = llvm.add %412, %414  : i64
    %416 = llvm.add %415, %405  : i64
    %417 = llvm.getelementptr %407[%416] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %418 = llvm.load %417 : !llvm.ptr<i32>
    %419 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.mlir.constant(8 : index) : i64
    %421 = llvm.mul %390, %420  : i64
    %422 = llvm.mlir.constant(4 : index) : i64
    %423 = llvm.mul %395, %422  : i64
    %424 = llvm.add %421, %423  : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mul %400, %425  : i64
    %427 = llvm.add %424, %426  : i64
    %428 = llvm.add %427, %405  : i64
    %429 = llvm.getelementptr %419[%428] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %418, %429 : !llvm.ptr<i32>
    %430 = llvm.add %405, %404  : i64
    llvm.br ^bb43(%430 : i64)
  ^bb45:  // pred: ^bb43
    %431 = llvm.add %400, %399  : i64
    llvm.br ^bb41(%431 : i64)
  ^bb46:  // pred: ^bb41
    %432 = llvm.add %395, %394  : i64
    llvm.br ^bb39(%432 : i64)
  ^bb47:  // pred: ^bb39
    %433 = llvm.add %390, %389  : i64
    llvm.br ^bb37(%433 : i64)
  ^bb48:  // pred: ^bb37
    %434 = llvm.mlir.constant(0 : index) : i64
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%434 : i64)
  ^bb49(%437: i64):  // 2 preds: ^bb48, ^bb59
    %438 = llvm.icmp "slt" %437, %435 : i64
    llvm.cond_br %438, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %439 = llvm.mlir.constant(0 : index) : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%439 : i64)
  ^bb51(%442: i64):  // 2 preds: ^bb50, ^bb58
    %443 = llvm.icmp "slt" %442, %440 : i64
    llvm.cond_br %443, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %444 = llvm.mlir.constant(0 : index) : i64
    %445 = llvm.mlir.constant(2 : index) : i64
    %446 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%444 : i64)
  ^bb53(%447: i64):  // 2 preds: ^bb52, ^bb57
    %448 = llvm.icmp "slt" %447, %445 : i64
    llvm.cond_br %448, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %449 = llvm.mlir.constant(0 : index) : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%449 : i64)
  ^bb55(%452: i64):  // 2 preds: ^bb54, ^bb56
    %453 = llvm.icmp "slt" %452, %450 : i64
    llvm.cond_br %453, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %454 = llvm.mlir.constant(1 : index) : i64
    %455 = llvm.add %437, %454  : i64
    %456 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(8 : index) : i64
    %458 = llvm.mul %437, %457  : i64
    %459 = llvm.mlir.constant(4 : index) : i64
    %460 = llvm.mul %442, %459  : i64
    %461 = llvm.add %458, %460  : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mul %447, %462  : i64
    %464 = llvm.add %461, %463  : i64
    %465 = llvm.add %464, %452  : i64
    %466 = llvm.getelementptr %456[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %467 = llvm.load %466 : !llvm.ptr<i32>
    %468 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %469 = llvm.mlir.constant(8 : index) : i64
    %470 = llvm.mul %455, %469  : i64
    %471 = llvm.mlir.constant(4 : index) : i64
    %472 = llvm.mul %442, %471  : i64
    %473 = llvm.add %470, %472  : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mul %447, %474  : i64
    %476 = llvm.add %473, %475  : i64
    %477 = llvm.add %476, %452  : i64
    %478 = llvm.getelementptr %468[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %467, %478 : !llvm.ptr<i32>
    %479 = llvm.add %452, %451  : i64
    llvm.br ^bb55(%479 : i64)
  ^bb57:  // pred: ^bb55
    %480 = llvm.add %447, %446  : i64
    llvm.br ^bb53(%480 : i64)
  ^bb58:  // pred: ^bb53
    %481 = llvm.add %442, %441  : i64
    llvm.br ^bb51(%481 : i64)
  ^bb59:  // pred: ^bb51
    %482 = llvm.add %437, %436  : i64
    llvm.br ^bb49(%482 : i64)
  ^bb60:  // pred: ^bb49
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%483 : i64)
  ^bb61(%486: i64):  // 2 preds: ^bb60, ^bb71
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %488 = llvm.mlir.constant(0 : index) : i64
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%488 : i64)
  ^bb63(%491: i64):  // 2 preds: ^bb62, ^bb70
    %492 = llvm.icmp "slt" %491, %489 : i64
    llvm.cond_br %492, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %493 = llvm.mlir.constant(0 : index) : i64
    %494 = llvm.mlir.constant(2 : index) : i64
    %495 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%493 : i64)
  ^bb65(%496: i64):  // 2 preds: ^bb64, ^bb69
    %497 = llvm.icmp "slt" %496, %494 : i64
    llvm.cond_br %497, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(2 : index) : i64
    %500 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%498 : i64)
  ^bb67(%501: i64):  // 2 preds: ^bb66, ^bb68
    %502 = llvm.icmp "slt" %501, %499 : i64
    llvm.cond_br %502, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %503 = llvm.mlir.constant(3 : index) : i64
    %504 = llvm.add %486, %503  : i64
    %505 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.mlir.constant(8 : index) : i64
    %507 = llvm.mul %486, %506  : i64
    %508 = llvm.mlir.constant(4 : index) : i64
    %509 = llvm.mul %491, %508  : i64
    %510 = llvm.add %507, %509  : i64
    %511 = llvm.mlir.constant(2 : index) : i64
    %512 = llvm.mul %496, %511  : i64
    %513 = llvm.add %510, %512  : i64
    %514 = llvm.add %513, %501  : i64
    %515 = llvm.getelementptr %505[%514] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %516 = llvm.load %515 : !llvm.ptr<i32>
    %517 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(8 : index) : i64
    %519 = llvm.mul %504, %518  : i64
    %520 = llvm.mlir.constant(4 : index) : i64
    %521 = llvm.mul %491, %520  : i64
    %522 = llvm.add %519, %521  : i64
    %523 = llvm.mlir.constant(2 : index) : i64
    %524 = llvm.mul %496, %523  : i64
    %525 = llvm.add %522, %524  : i64
    %526 = llvm.add %525, %501  : i64
    %527 = llvm.getelementptr %517[%526] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %516, %527 : !llvm.ptr<i32>
    %528 = llvm.add %501, %500  : i64
    llvm.br ^bb67(%528 : i64)
  ^bb69:  // pred: ^bb67
    %529 = llvm.add %496, %495  : i64
    llvm.br ^bb65(%529 : i64)
  ^bb70:  // pred: ^bb65
    %530 = llvm.add %491, %490  : i64
    llvm.br ^bb63(%530 : i64)
  ^bb71:  // pred: ^bb63
    %531 = llvm.add %486, %485  : i64
    llvm.br ^bb61(%531 : i64)
  ^bb72:  // pred: ^bb61
    %532 = llvm.mlir.constant(0 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%532 : i64)
  ^bb73(%535: i64):  // 2 preds: ^bb72, ^bb83
    %536 = llvm.icmp "slt" %535, %533 : i64
    llvm.cond_br %536, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %537 = llvm.mlir.constant(0 : index) : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%537 : i64)
  ^bb75(%540: i64):  // 2 preds: ^bb74, ^bb82
    %541 = llvm.icmp "slt" %540, %538 : i64
    llvm.cond_br %541, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %542 = llvm.mlir.constant(0 : index) : i64
    %543 = llvm.mlir.constant(2 : index) : i64
    %544 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%542 : i64)
  ^bb77(%545: i64):  // 2 preds: ^bb76, ^bb81
    %546 = llvm.icmp "slt" %545, %543 : i64
    llvm.cond_br %546, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%547 : i64)
  ^bb79(%550: i64):  // 2 preds: ^bb78, ^bb80
    %551 = llvm.icmp "slt" %550, %548 : i64
    llvm.cond_br %551, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %552 = llvm.mlir.constant(4 : index) : i64
    %553 = llvm.add %535, %552  : i64
    %554 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %555 = llvm.mlir.constant(8 : index) : i64
    %556 = llvm.mul %535, %555  : i64
    %557 = llvm.mlir.constant(4 : index) : i64
    %558 = llvm.mul %540, %557  : i64
    %559 = llvm.add %556, %558  : i64
    %560 = llvm.mlir.constant(2 : index) : i64
    %561 = llvm.mul %545, %560  : i64
    %562 = llvm.add %559, %561  : i64
    %563 = llvm.add %562, %550  : i64
    %564 = llvm.getelementptr %554[%563] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %565 = llvm.load %564 : !llvm.ptr<i32>
    %566 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %567 = llvm.mlir.constant(8 : index) : i64
    %568 = llvm.mul %553, %567  : i64
    %569 = llvm.mlir.constant(4 : index) : i64
    %570 = llvm.mul %540, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.mlir.constant(2 : index) : i64
    %573 = llvm.mul %545, %572  : i64
    %574 = llvm.add %571, %573  : i64
    %575 = llvm.add %574, %550  : i64
    %576 = llvm.getelementptr %566[%575] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %565, %576 : !llvm.ptr<i32>
    %577 = llvm.add %550, %549  : i64
    llvm.br ^bb79(%577 : i64)
  ^bb81:  // pred: ^bb79
    %578 = llvm.add %545, %544  : i64
    llvm.br ^bb77(%578 : i64)
  ^bb82:  // pred: ^bb77
    %579 = llvm.add %540, %539  : i64
    llvm.br ^bb75(%579 : i64)
  ^bb83:  // pred: ^bb75
    %580 = llvm.add %535, %534  : i64
    llvm.br ^bb73(%580 : i64)
  ^bb84:  // pred: ^bb73
    %581 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %582 = llvm.insertvalue %303, %581[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %583 = llvm.insertvalue %386, %582[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %583 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg3: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v6_0", "v3_0", "v1_0"], llvm.emit_c_interface, output_names = ["v2_0", "v5_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %12[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %21 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %22 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.extractvalue %12[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %24 = llvm.load %arg3 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %25 = llvm.extractvalue %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.extractvalue %24[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %28 = llvm.extractvalue %24[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.extractvalue %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.extractvalue %24[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.extractvalue %24[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.extractvalue %24[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.extractvalue %24[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.extractvalue %24[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.extractvalue %24[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %36 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %25, %26, %27, %28, %29, %30, %31, %32, %33, %34, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %36, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %44 = llvm.mlir.constant(1 : i64) : i64
    %45 = llvm.getelementptr %0[%44] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i8>>
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.mlir.constant(3 : i64) : i64
    %79 = llvm.getelementptr %55[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %80 = llvm.load %79 : !llvm.ptr<i64>
    %81 = llvm.insertvalue %80, %77[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %82 = llvm.getelementptr %56[%78] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.load %82 : !llvm.ptr<i64>
    %84 = llvm.insertvalue %83, %81[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %84, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %85 = llvm.mlir.constant(2 : i64) : i64
    %86 = llvm.getelementptr %0[%85] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %87 = llvm.load %86 : !llvm.ptr<ptr<i8>>
    %88 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %89 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %90 = llvm.call @omTensorGetDataPtr(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %92 = llvm.insertvalue %91, %89[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.insertvalue %91, %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.call @omTensorGetShape(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %97 = llvm.call @omTensorGetStrides(%87) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %96[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %100 = llvm.load %99 : !llvm.ptr<i64>
    %101 = llvm.insertvalue %100, %95[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.getelementptr %97[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %103 = llvm.load %102 : !llvm.ptr<i64>
    %104 = llvm.insertvalue %103, %101[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.getelementptr %96[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %107 = llvm.load %106 : !llvm.ptr<i64>
    %108 = llvm.insertvalue %107, %104[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %97[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.load %109 : !llvm.ptr<i64>
    %111 = llvm.insertvalue %110, %108[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.getelementptr %96[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.load %113 : !llvm.ptr<i64>
    %115 = llvm.insertvalue %114, %111[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %97[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.insertvalue %117, %115[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(3 : i64) : i64
    %120 = llvm.getelementptr %96[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %121 = llvm.load %120 : !llvm.ptr<i64>
    %122 = llvm.insertvalue %121, %118[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %97[%119] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %124 = llvm.load %123 : !llvm.ptr<i64>
    %125 = llvm.insertvalue %124, %122[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %125, %88 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47, %88) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %126 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %127 = llvm.extractvalue %126[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %128 = llvm.extractvalue %126[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %129 = llvm.mlir.constant(2 : i64) : i64
    %130 = llvm.mlir.constant(16 : i64) : i64
    %131 = llvm.call @malloc(%130) : (i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %133 = llvm.mlir.constant(4 : i64) : i64
    %134 = llvm.call @omTensorCreateUntyped(%133) : (i64) -> !llvm.ptr<i8>
    %135 = llvm.mlir.constant(1 : i64) : i64
    %136 = llvm.extractvalue %127[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.bitcast %136 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %138 = llvm.extractvalue %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.bitcast %138 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%134, %135, %137, %139) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %140 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%134, %140) : (!llvm.ptr<i8>, i64) -> ()
    %141 = llvm.call @omTensorGetShape(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %142 = llvm.call @omTensorGetStrides(%134) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %143 = llvm.mlir.constant(0 : i64) : i64
    %144 = llvm.extractvalue %127[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %141[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %127[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %147 = llvm.getelementptr %142[%143] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %146, %147 : !llvm.ptr<i64>
    %148 = llvm.mlir.constant(1 : i64) : i64
    %149 = llvm.extractvalue %127[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %150 = llvm.getelementptr %141[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %149, %150 : !llvm.ptr<i64>
    %151 = llvm.extractvalue %127[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.getelementptr %142[%148] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %151, %152 : !llvm.ptr<i64>
    %153 = llvm.mlir.constant(2 : i64) : i64
    %154 = llvm.extractvalue %127[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.getelementptr %141[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %154, %155 : !llvm.ptr<i64>
    %156 = llvm.extractvalue %127[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.getelementptr %142[%153] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %156, %157 : !llvm.ptr<i64>
    %158 = llvm.mlir.constant(3 : i64) : i64
    %159 = llvm.extractvalue %127[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.getelementptr %141[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %160 : !llvm.ptr<i64>
    %161 = llvm.extractvalue %127[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.getelementptr %142[%158] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %161, %162 : !llvm.ptr<i64>
    %163 = llvm.mlir.constant(0 : i64) : i64
    %164 = llvm.getelementptr %132[%163] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %134, %164 : !llvm.ptr<ptr<i8>>
    %165 = llvm.mlir.constant(4 : i64) : i64
    %166 = llvm.call @omTensorCreateUntyped(%165) : (i64) -> !llvm.ptr<i8>
    %167 = llvm.mlir.constant(1 : i64) : i64
    %168 = llvm.extractvalue %128[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %169 = llvm.bitcast %168 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %170 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %171 = llvm.bitcast %170 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%166, %167, %169, %171) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %172 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%166, %172) : (!llvm.ptr<i8>, i64) -> ()
    %173 = llvm.call @omTensorGetShape(%166) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %174 = llvm.call @omTensorGetStrides(%166) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %175 = llvm.mlir.constant(0 : i64) : i64
    %176 = llvm.extractvalue %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %177 = llvm.getelementptr %173[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %176, %177 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %128[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %179 = llvm.getelementptr %174[%175] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %178, %179 : !llvm.ptr<i64>
    %180 = llvm.mlir.constant(1 : i64) : i64
    %181 = llvm.extractvalue %128[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %182 = llvm.getelementptr %173[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %181, %182 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %128[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.getelementptr %174[%180] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %183, %184 : !llvm.ptr<i64>
    %185 = llvm.mlir.constant(2 : i64) : i64
    %186 = llvm.extractvalue %128[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %187 = llvm.getelementptr %173[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %186, %187 : !llvm.ptr<i64>
    %188 = llvm.extractvalue %128[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.getelementptr %174[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %188, %189 : !llvm.ptr<i64>
    %190 = llvm.mlir.constant(3 : i64) : i64
    %191 = llvm.extractvalue %128[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.getelementptr %173[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %191, %192 : !llvm.ptr<i64>
    %193 = llvm.extractvalue %128[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.getelementptr %174[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %193, %194 : !llvm.ptr<i64>
    %195 = llvm.mlir.constant(1 : i64) : i64
    %196 = llvm.getelementptr %132[%195] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %166, %196 : !llvm.ptr<ptr<i8>>
    %197 = llvm.call @omTensorListCreate(%132, %129, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %197 : !llvm.ptr<i8>
  }
  llvm.mlir.global internal constant @_entry_point_arrays() {addr_space = 0 : i32} : !llvm.array<2 x ptr<i8>> {
    %0 = llvm.mlir.undef : !llvm.array<2 x ptr<i8>>
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.insertvalue %3, %0[0] : !llvm.array<2 x ptr<i8>> 
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    %6 = llvm.insertvalue %5, %4[1] : !llvm.array<2 x ptr<i8>> 
    llvm.return %6 : !llvm.array<2 x ptr<i8>>
  }
  llvm.func @omQueryEntryPoints(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<ptr<i8>> {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg0, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %arg0[%2] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.constant(1 : i64) : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %5 = llvm.mlir.addressof @_entry_point_arrays : !llvm.ptr<array<2 x ptr<i8>>>
    %6 = llvm.bitcast %5 : !llvm.ptr<array<2 x ptr<i8>>> to !llvm.ptr<ptr<i8>>
    llvm.return %6 : !llvm.ptr<ptr<i8>>
  }
  llvm.func @omInputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<212 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<212 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
  llvm.func @omOutputSignature(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.addressof @_entry_point_0 : !llvm.ptr<array<15 x i8>>
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.getelementptr %1[%2, %2] : (!llvm.ptr<array<15 x i8>>, i64, i64) -> !llvm.ptr<i8>
    %4 = llvm.mlir.constant(15 : i64) : i64
    %5 = llvm.call @strncmp(%arg0, %3, %4) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
    %6 = llvm.icmp "eq" %5, %0 : i32
    llvm.cond_br %6, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<141 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<141 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

