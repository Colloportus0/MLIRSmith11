module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v9_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i64\22 , \22dims\22 : [1 , 2 , 5 , 2] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<[[[[4, 4]], [[5, 6]]]]> : tensor<1x2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_2(dense<[[[[6, 6]], [[5, 6]]]]> : tensor<1x2x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_1(dense<[[5, 6], [5, 5]]> : tensor<2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<2 x i32>>
  llvm.mlir.global internal constant @constant_0(dense<[[[[-4]], [[-5]]]]> : tensor<1x2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x array<1 x array<1 x i32>>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<i32>, %arg8: !llvm.ptr<i32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v9_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %9 = llvm.insertvalue %arg7, %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg9, %10[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg10, %11[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg14, %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg11, %13[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg15, %14[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg12, %15[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg16, %16[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.insertvalue %arg13, %17[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.insertvalue %arg17, %18[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.mlir.constant(0 : i32) : i32
    %22 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>>
    %23 = llvm.bitcast %22 : !llvm.ptr<array<1 x array<2 x array<1 x array<1 x i32>>>>> to !llvm.ptr<i32>
    %24 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %25 = llvm.insertvalue %23, %24[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %26 = llvm.insertvalue %23, %25[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.mlir.constant(0 : index) : i64
    %28 = llvm.insertvalue %27, %26[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.mlir.constant(2 : index) : i64
    %32 = llvm.insertvalue %31, %30[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %33 = llvm.mlir.constant(2 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(1 : index) : i64
    %38 = llvm.insertvalue %37, %36[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(1 : index) : i64
    %40 = llvm.insertvalue %39, %38[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<2 x i32>>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<2 x array<2 x i32>>> to !llvm.ptr<i32>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.mlir.constant(2 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.mlir.constant(2 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.mlir.constant(2 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %60 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x array<2 x array<1 x array<2 x i32>>>>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<1 x array<2 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %67 = llvm.mlir.constant(1 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.mlir.constant(4 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.mlir.constant(2 : index) : i64
    %72 = llvm.insertvalue %71, %70[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.mlir.constant(2 : index) : i64
    %74 = llvm.insertvalue %73, %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.mlir.constant(2 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.mlir.constant(2 : index) : i64
    %80 = llvm.insertvalue %79, %78[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(1 : index) : i64
    %82 = llvm.insertvalue %81, %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x array<2 x array<1 x array<2 x i32>>>>>
    %84 = llvm.bitcast %83 : !llvm.ptr<array<1 x array<2 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %85 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %86 = llvm.insertvalue %84, %85[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %84, %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.mlir.constant(0 : index) : i64
    %89 = llvm.insertvalue %88, %87[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.mlir.constant(1 : index) : i64
    %91 = llvm.insertvalue %90, %89[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %92 = llvm.mlir.constant(4 : index) : i64
    %93 = llvm.insertvalue %92, %91[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %94 = llvm.mlir.constant(2 : index) : i64
    %95 = llvm.insertvalue %94, %93[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.mlir.constant(2 : index) : i64
    %97 = llvm.insertvalue %96, %95[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.mlir.constant(2 : index) : i64
    %101 = llvm.insertvalue %100, %99[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %102 = llvm.mlir.constant(2 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.mlir.constant(2 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(4 : index) : i64
    %110 = llvm.mlir.null : !llvm.ptr<i32>
    %111 = llvm.getelementptr %110[%109] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<i32> to i64
    %113 = llvm.mlir.constant(16 : index) : i64
    %114 = llvm.add %112, %113  : i64
    %115 = llvm.call @malloc(%114) : (i64) -> !llvm.ptr<i8>
    %116 = llvm.bitcast %115 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<i32> to i64
    %118 = llvm.mlir.constant(1 : index) : i64
    %119 = llvm.sub %113, %118  : i64
    %120 = llvm.add %117, %119  : i64
    %121 = llvm.urem %120, %113  : i64
    %122 = llvm.sub %120, %121  : i64
    %123 = llvm.inttoptr %122 : i64 to !llvm.ptr<i32>
    %124 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %125 = llvm.insertvalue %116, %124[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %126 = llvm.insertvalue %123, %125[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.mlir.constant(0 : index) : i64
    %128 = llvm.insertvalue %127, %126[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %129 = llvm.insertvalue %106, %128[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %130 = llvm.insertvalue %107, %129[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %131 = llvm.insertvalue %107, %130[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %132 = llvm.insertvalue %108, %131[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.null : !llvm.ptr<i32>
    %135 = llvm.getelementptr %134[%133] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %136 = llvm.ptrtoint %135 : !llvm.ptr<i32> to i64
    %137 = llvm.alloca %136 x i32 : (i64) -> !llvm.ptr<i32>
    %138 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %139 = llvm.insertvalue %137, %138[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %140 = llvm.insertvalue %137, %139[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.insertvalue %141, %140[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %143 = llvm.mlir.constant(0 : index) : i64
    %144 = llvm.mlir.constant(2 : index) : i64
    %145 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%143 : i64)
  ^bb1(%146: i64):  // 2 preds: ^bb0, ^bb8
    %147 = llvm.icmp "slt" %146, %144 : i64
    llvm.cond_br %147, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %148 = llvm.mlir.constant(0 : index) : i64
    %149 = llvm.mlir.constant(2 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%148 : i64)
  ^bb3(%151: i64):  // 2 preds: ^bb2, ^bb7
    %152 = llvm.icmp "slt" %151, %149 : i64
    llvm.cond_br %152, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    %153 = llvm.extractvalue %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %21, %153 : !llvm.ptr<i32>
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%154 : i64)
  ^bb5(%157: i64):  // 2 preds: ^bb4, ^bb6
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %159 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.mlir.constant(2 : index) : i64
    %161 = llvm.mul %146, %160  : i64
    %162 = llvm.add %161, %157  : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %164 = llvm.load %163 : !llvm.ptr<i32>
    %165 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %157, %166  : i64
    %168 = llvm.add %167, %151  : i64
    %169 = llvm.getelementptr %165[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %170 = llvm.load %169 : !llvm.ptr<i32>
    %171 = llvm.extractvalue %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %172 = llvm.load %171 : !llvm.ptr<i32>
    %173 = llvm.mul %164, %170  : i32
    %174 = llvm.add %172, %173  : i32
    %175 = llvm.extractvalue %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    llvm.store %174, %175 : !llvm.ptr<i32>
    %176 = llvm.add %157, %156  : i64
    llvm.br ^bb5(%176 : i64)
  ^bb7:  // pred: ^bb5
    %177 = llvm.extractvalue %142[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %178 = llvm.load %177 : !llvm.ptr<i32>
    %179 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %146, %180  : i64
    %182 = llvm.add %181, %151  : i64
    %183 = llvm.getelementptr %179[%182] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %178, %183 : !llvm.ptr<i32>
    %184 = llvm.add %151, %150  : i64
    llvm.br ^bb3(%184 : i64)
  ^bb8:  // pred: ^bb3
    %185 = llvm.add %146, %145  : i64
    llvm.br ^bb1(%185 : i64)
  ^bb9:  // pred: ^bb1
    %186 = llvm.mlir.constant(2 : index) : i64
    %187 = llvm.mlir.constant(2 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    %189 = llvm.mlir.constant(4 : index) : i64
    %190 = llvm.mlir.null : !llvm.ptr<i32>
    %191 = llvm.getelementptr %190[%189] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %192 = llvm.ptrtoint %191 : !llvm.ptr<i32> to i64
    %193 = llvm.mlir.constant(16 : index) : i64
    %194 = llvm.add %192, %193  : i64
    %195 = llvm.call @malloc(%194) : (i64) -> !llvm.ptr<i8>
    %196 = llvm.bitcast %195 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %197 = llvm.ptrtoint %196 : !llvm.ptr<i32> to i64
    %198 = llvm.mlir.constant(1 : index) : i64
    %199 = llvm.sub %193, %198  : i64
    %200 = llvm.add %197, %199  : i64
    %201 = llvm.urem %200, %193  : i64
    %202 = llvm.sub %200, %201  : i64
    %203 = llvm.inttoptr %202 : i64 to !llvm.ptr<i32>
    %204 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %205 = llvm.insertvalue %196, %204[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %206 = llvm.insertvalue %203, %205[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %207 = llvm.mlir.constant(0 : index) : i64
    %208 = llvm.insertvalue %207, %206[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.insertvalue %186, %208[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.insertvalue %187, %209[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %211 = llvm.insertvalue %187, %210[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %212 = llvm.insertvalue %188, %211[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(2 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%213 : i64)
  ^bb10(%216: i64):  // 2 preds: ^bb9, ^bb14
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb11, ^bb15
  ^bb11:  // pred: ^bb10
    %218 = llvm.mlir.constant(0 : index) : i64
    %219 = llvm.mlir.constant(2 : index) : i64
    %220 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb12(%218 : i64)
  ^bb12(%221: i64):  // 2 preds: ^bb11, ^bb13
    %222 = llvm.icmp "slt" %221, %219 : i64
    llvm.cond_br %222, ^bb13, ^bb14
  ^bb13:  // pred: ^bb12
    %223 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %224 = llvm.mlir.constant(2 : index) : i64
    %225 = llvm.mul %216, %224  : i64
    %226 = llvm.add %225, %221  : i64
    %227 = llvm.getelementptr %223[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %228 = llvm.load %227 : !llvm.ptr<i32>
    %229 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %230 = llvm.mlir.constant(2 : index) : i64
    %231 = llvm.mul %216, %230  : i64
    %232 = llvm.add %231, %221  : i64
    %233 = llvm.getelementptr %229[%232] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %234 = llvm.load %233 : !llvm.ptr<i32>
    %235 = llvm.icmp "slt" %228, %234 : i32
    %236 = llvm.select %235, %228, %234 : i1, i32
    %237 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %238 = llvm.mlir.constant(2 : index) : i64
    %239 = llvm.mul %216, %238  : i64
    %240 = llvm.add %239, %221  : i64
    %241 = llvm.getelementptr %237[%240] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %236, %241 : !llvm.ptr<i32>
    %242 = llvm.add %221, %220  : i64
    llvm.br ^bb12(%242 : i64)
  ^bb14:  // pred: ^bb12
    %243 = llvm.add %216, %215  : i64
    llvm.br ^bb10(%243 : i64)
  ^bb15:  // pred: ^bb10
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mlir.constant(2 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(4 : index) : i64
    %250 = llvm.mlir.constant(8 : index) : i64
    %251 = llvm.mlir.constant(8 : index) : i64
    %252 = llvm.mlir.null : !llvm.ptr<i32>
    %253 = llvm.getelementptr %252[%251] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %254 = llvm.ptrtoint %253 : !llvm.ptr<i32> to i64
    %255 = llvm.mlir.constant(16 : index) : i64
    %256 = llvm.add %254, %255  : i64
    %257 = llvm.call @malloc(%256) : (i64) -> !llvm.ptr<i8>
    %258 = llvm.bitcast %257 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %259 = llvm.ptrtoint %258 : !llvm.ptr<i32> to i64
    %260 = llvm.mlir.constant(1 : index) : i64
    %261 = llvm.sub %255, %260  : i64
    %262 = llvm.add %259, %261  : i64
    %263 = llvm.urem %262, %255  : i64
    %264 = llvm.sub %262, %263  : i64
    %265 = llvm.inttoptr %264 : i64 to !llvm.ptr<i32>
    %266 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %267 = llvm.insertvalue %258, %266[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %268 = llvm.insertvalue %265, %267[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.mlir.constant(0 : index) : i64
    %270 = llvm.insertvalue %269, %268[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %244, %270[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %246, %272[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %247, %273[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %250, %274[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %249, %275[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %247, %276[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %248, %277[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%279 : i64)
  ^bb16(%282: i64):  // 2 preds: ^bb15, ^bb26
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb17, ^bb27
  ^bb17:  // pred: ^bb16
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(2 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb18(%284 : i64)
  ^bb18(%287: i64):  // 2 preds: ^bb17, ^bb25
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb19, ^bb26
  ^bb19:  // pred: ^bb18
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(2 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb20(%289 : i64)
  ^bb20(%292: i64):  // 2 preds: ^bb19, ^bb24
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb21, ^bb25
  ^bb21:  // pred: ^bb20
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(2 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%294 : i64)
  ^bb22(%297: i64):  // 2 preds: ^bb21, ^bb23
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %299 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mul %292, %300  : i64
    %302 = llvm.add %301, %297  : i64
    %303 = llvm.getelementptr %299[%302] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %304 = llvm.load %303 : !llvm.ptr<i32>
    %305 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.mlir.constant(2 : index) : i64
    %307 = llvm.mul %282, %306  : i64
    %308 = llvm.add %307, %287  : i64
    %309 = llvm.add %308, %20  : i64
    %310 = llvm.add %309, %20  : i64
    %311 = llvm.getelementptr %305[%310] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %312 = llvm.load %311 : !llvm.ptr<i32>
    %313 = llvm.add %304, %312  : i32
    %314 = llvm.extractvalue %278[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(8 : index) : i64
    %316 = llvm.mul %282, %315  : i64
    %317 = llvm.mlir.constant(4 : index) : i64
    %318 = llvm.mul %287, %317  : i64
    %319 = llvm.add %316, %318  : i64
    %320 = llvm.mlir.constant(2 : index) : i64
    %321 = llvm.mul %292, %320  : i64
    %322 = llvm.add %319, %321  : i64
    %323 = llvm.add %322, %297  : i64
    %324 = llvm.getelementptr %314[%323] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %313, %324 : !llvm.ptr<i32>
    %325 = llvm.add %297, %296  : i64
    llvm.br ^bb22(%325 : i64)
  ^bb24:  // pred: ^bb22
    %326 = llvm.add %292, %291  : i64
    llvm.br ^bb20(%326 : i64)
  ^bb25:  // pred: ^bb20
    %327 = llvm.add %287, %286  : i64
    llvm.br ^bb18(%327 : i64)
  ^bb26:  // pred: ^bb18
    %328 = llvm.add %282, %281  : i64
    llvm.br ^bb16(%328 : i64)
  ^bb27:  // pred: ^bb16
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.mlir.constant(2 : index) : i64
    %331 = llvm.mlir.constant(5 : index) : i64
    %332 = llvm.mlir.constant(2 : index) : i64
    %333 = llvm.mlir.constant(1 : index) : i64
    %334 = llvm.mlir.constant(10 : index) : i64
    %335 = llvm.mlir.constant(20 : index) : i64
    %336 = llvm.mlir.constant(20 : index) : i64
    %337 = llvm.mlir.null : !llvm.ptr<i32>
    %338 = llvm.getelementptr %337[%336] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i32> to i64
    %340 = llvm.mlir.constant(16 : index) : i64
    %341 = llvm.add %339, %340  : i64
    %342 = llvm.call @malloc(%341) : (i64) -> !llvm.ptr<i8>
    %343 = llvm.bitcast %342 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %344 = llvm.ptrtoint %343 : !llvm.ptr<i32> to i64
    %345 = llvm.mlir.constant(1 : index) : i64
    %346 = llvm.sub %340, %345  : i64
    %347 = llvm.add %344, %346  : i64
    %348 = llvm.urem %347, %340  : i64
    %349 = llvm.sub %347, %348  : i64
    %350 = llvm.inttoptr %349 : i64 to !llvm.ptr<i32>
    %351 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %352 = llvm.insertvalue %343, %351[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %350, %352[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.mlir.constant(0 : index) : i64
    %355 = llvm.insertvalue %354, %353[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %330, %356[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %331, %357[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.insertvalue %332, %358[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %360 = llvm.insertvalue %335, %359[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %361 = llvm.insertvalue %334, %360[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %362 = llvm.insertvalue %332, %361[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %363 = llvm.insertvalue %333, %362[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%364 : i64)
  ^bb28(%367: i64):  // 2 preds: ^bb27, ^bb38
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb29, ^bb39
  ^bb29:  // pred: ^bb28
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb30(%369 : i64)
  ^bb30(%372: i64):  // 2 preds: ^bb29, ^bb37
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb31, ^bb38
  ^bb31:  // pred: ^bb30
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(1 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb32(%374 : i64)
  ^bb32(%377: i64):  // 2 preds: ^bb31, ^bb36
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb33, ^bb37
  ^bb33:  // pred: ^bb32
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(2 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%379 : i64)
  ^bb34(%382: i64):  // 2 preds: ^bb33, ^bb35
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %384 = llvm.extractvalue %19[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mul %367, %385  : i64
    %387 = llvm.mlir.constant(2 : index) : i64
    %388 = llvm.mul %372, %387  : i64
    %389 = llvm.add %386, %388  : i64
    %390 = llvm.mlir.constant(2 : index) : i64
    %391 = llvm.mul %377, %390  : i64
    %392 = llvm.add %389, %391  : i64
    %393 = llvm.add %392, %382  : i64
    %394 = llvm.getelementptr %384[%393] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %395 = llvm.load %394 : !llvm.ptr<i32>
    %396 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mlir.constant(20 : index) : i64
    %398 = llvm.mul %367, %397  : i64
    %399 = llvm.mlir.constant(10 : index) : i64
    %400 = llvm.mul %372, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mul %377, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.add %404, %382  : i64
    %406 = llvm.getelementptr %396[%405] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %395, %406 : !llvm.ptr<i32>
    %407 = llvm.add %382, %381  : i64
    llvm.br ^bb34(%407 : i64)
  ^bb36:  // pred: ^bb34
    %408 = llvm.add %377, %376  : i64
    llvm.br ^bb32(%408 : i64)
  ^bb37:  // pred: ^bb32
    %409 = llvm.add %372, %371  : i64
    llvm.br ^bb30(%409 : i64)
  ^bb38:  // pred: ^bb30
    %410 = llvm.add %367, %366  : i64
    llvm.br ^bb28(%410 : i64)
  ^bb39:  // pred: ^bb28
    %411 = llvm.mlir.constant(0 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%411 : i64)
  ^bb40(%414: i64):  // 2 preds: ^bb39, ^bb50
    %415 = llvm.icmp "slt" %414, %412 : i64
    llvm.cond_br %415, ^bb41, ^bb51
  ^bb41:  // pred: ^bb40
    %416 = llvm.mlir.constant(0 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb42(%416 : i64)
  ^bb42(%419: i64):  // 2 preds: ^bb41, ^bb49
    %420 = llvm.icmp "slt" %419, %417 : i64
    llvm.cond_br %420, ^bb43, ^bb50
  ^bb43:  // pred: ^bb42
    %421 = llvm.mlir.constant(0 : index) : i64
    %422 = llvm.mlir.constant(2 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb44(%421 : i64)
  ^bb44(%424: i64):  // 2 preds: ^bb43, ^bb48
    %425 = llvm.icmp "slt" %424, %422 : i64
    llvm.cond_br %425, ^bb45, ^bb49
  ^bb45:  // pred: ^bb44
    %426 = llvm.mlir.constant(0 : index) : i64
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%426 : i64)
  ^bb46(%429: i64):  // 2 preds: ^bb45, ^bb47
    %430 = llvm.icmp "slt" %429, %427 : i64
    llvm.cond_br %430, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %431 = llvm.mlir.constant(1 : index) : i64
    %432 = llvm.add %424, %431  : i64
    %433 = llvm.extractvalue %278[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %434 = llvm.mlir.constant(8 : index) : i64
    %435 = llvm.mul %414, %434  : i64
    %436 = llvm.mlir.constant(4 : index) : i64
    %437 = llvm.mul %419, %436  : i64
    %438 = llvm.add %435, %437  : i64
    %439 = llvm.mlir.constant(2 : index) : i64
    %440 = llvm.mul %424, %439  : i64
    %441 = llvm.add %438, %440  : i64
    %442 = llvm.add %441, %429  : i64
    %443 = llvm.getelementptr %433[%442] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %444 = llvm.load %443 : !llvm.ptr<i32>
    %445 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(20 : index) : i64
    %447 = llvm.mul %414, %446  : i64
    %448 = llvm.mlir.constant(10 : index) : i64
    %449 = llvm.mul %419, %448  : i64
    %450 = llvm.add %447, %449  : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mul %432, %451  : i64
    %453 = llvm.add %450, %452  : i64
    %454 = llvm.add %453, %429  : i64
    %455 = llvm.getelementptr %445[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %444, %455 : !llvm.ptr<i32>
    %456 = llvm.add %429, %428  : i64
    llvm.br ^bb46(%456 : i64)
  ^bb48:  // pred: ^bb46
    %457 = llvm.add %424, %423  : i64
    llvm.br ^bb44(%457 : i64)
  ^bb49:  // pred: ^bb44
    %458 = llvm.add %419, %418  : i64
    llvm.br ^bb42(%458 : i64)
  ^bb50:  // pred: ^bb42
    %459 = llvm.add %414, %413  : i64
    llvm.br ^bb40(%459 : i64)
  ^bb51:  // pred: ^bb40
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    %462 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%460 : i64)
  ^bb52(%463: i64):  // 2 preds: ^bb51, ^bb62
    %464 = llvm.icmp "slt" %463, %461 : i64
    llvm.cond_br %464, ^bb53, ^bb63
  ^bb53:  // pred: ^bb52
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.mlir.constant(2 : index) : i64
    %467 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb54(%465 : i64)
  ^bb54(%468: i64):  // 2 preds: ^bb53, ^bb61
    %469 = llvm.icmp "slt" %468, %466 : i64
    llvm.cond_br %469, ^bb55, ^bb62
  ^bb55:  // pred: ^bb54
    %470 = llvm.mlir.constant(0 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb56(%470 : i64)
  ^bb56(%473: i64):  // 2 preds: ^bb55, ^bb60
    %474 = llvm.icmp "slt" %473, %471 : i64
    llvm.cond_br %474, ^bb57, ^bb61
  ^bb57:  // pred: ^bb56
    %475 = llvm.mlir.constant(0 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%475 : i64)
  ^bb58(%478: i64):  // 2 preds: ^bb57, ^bb59
    %479 = llvm.icmp "slt" %478, %476 : i64
    llvm.cond_br %479, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %480 = llvm.mlir.constant(3 : index) : i64
    %481 = llvm.add %473, %480  : i64
    %482 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %483 = llvm.mlir.constant(4 : index) : i64
    %484 = llvm.mul %463, %483  : i64
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mul %468, %485  : i64
    %487 = llvm.add %484, %486  : i64
    %488 = llvm.mlir.constant(2 : index) : i64
    %489 = llvm.mul %473, %488  : i64
    %490 = llvm.add %487, %489  : i64
    %491 = llvm.add %490, %478  : i64
    %492 = llvm.getelementptr %482[%491] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %493 = llvm.load %492 : !llvm.ptr<i32>
    %494 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.mlir.constant(20 : index) : i64
    %496 = llvm.mul %463, %495  : i64
    %497 = llvm.mlir.constant(10 : index) : i64
    %498 = llvm.mul %468, %497  : i64
    %499 = llvm.add %496, %498  : i64
    %500 = llvm.mlir.constant(2 : index) : i64
    %501 = llvm.mul %481, %500  : i64
    %502 = llvm.add %499, %501  : i64
    %503 = llvm.add %502, %478  : i64
    %504 = llvm.getelementptr %494[%503] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %493, %504 : !llvm.ptr<i32>
    %505 = llvm.add %478, %477  : i64
    llvm.br ^bb58(%505 : i64)
  ^bb60:  // pred: ^bb58
    %506 = llvm.add %473, %472  : i64
    llvm.br ^bb56(%506 : i64)
  ^bb61:  // pred: ^bb56
    %507 = llvm.add %468, %467  : i64
    llvm.br ^bb54(%507 : i64)
  ^bb62:  // pred: ^bb54
    %508 = llvm.add %463, %462  : i64
    llvm.br ^bb52(%508 : i64)
  ^bb63:  // pred: ^bb52
    %509 = llvm.mlir.constant(0 : index) : i64
    %510 = llvm.mlir.constant(1 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%509 : i64)
  ^bb64(%512: i64):  // 2 preds: ^bb63, ^bb74
    %513 = llvm.icmp "slt" %512, %510 : i64
    llvm.cond_br %513, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(2 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%514 : i64)
  ^bb66(%517: i64):  // 2 preds: ^bb65, ^bb73
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %519 = llvm.mlir.constant(0 : index) : i64
    %520 = llvm.mlir.constant(1 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%519 : i64)
  ^bb68(%522: i64):  // 2 preds: ^bb67, ^bb72
    %523 = llvm.icmp "slt" %522, %520 : i64
    llvm.cond_br %523, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %524 = llvm.mlir.constant(0 : index) : i64
    %525 = llvm.mlir.constant(2 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%524 : i64)
  ^bb70(%527: i64):  // 2 preds: ^bb69, ^bb71
    %528 = llvm.icmp "slt" %527, %525 : i64
    llvm.cond_br %528, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %529 = llvm.mlir.constant(4 : index) : i64
    %530 = llvm.add %522, %529  : i64
    %531 = llvm.extractvalue %82[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.mlir.constant(4 : index) : i64
    %533 = llvm.mul %512, %532  : i64
    %534 = llvm.mlir.constant(2 : index) : i64
    %535 = llvm.mul %517, %534  : i64
    %536 = llvm.add %533, %535  : i64
    %537 = llvm.mlir.constant(2 : index) : i64
    %538 = llvm.mul %522, %537  : i64
    %539 = llvm.add %536, %538  : i64
    %540 = llvm.add %539, %527  : i64
    %541 = llvm.getelementptr %531[%540] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %542 = llvm.load %541 : !llvm.ptr<i32>
    %543 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.mlir.constant(20 : index) : i64
    %545 = llvm.mul %512, %544  : i64
    %546 = llvm.mlir.constant(10 : index) : i64
    %547 = llvm.mul %517, %546  : i64
    %548 = llvm.add %545, %547  : i64
    %549 = llvm.mlir.constant(2 : index) : i64
    %550 = llvm.mul %530, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.add %551, %527  : i64
    %553 = llvm.getelementptr %543[%552] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %542, %553 : !llvm.ptr<i32>
    %554 = llvm.add %527, %526  : i64
    llvm.br ^bb70(%554 : i64)
  ^bb72:  // pred: ^bb70
    %555 = llvm.add %522, %521  : i64
    llvm.br ^bb68(%555 : i64)
  ^bb73:  // pred: ^bb68
    %556 = llvm.add %517, %516  : i64
    llvm.br ^bb66(%556 : i64)
  ^bb74:  // pred: ^bb66
    %557 = llvm.add %512, %511  : i64
    llvm.br ^bb64(%557 : i64)
  ^bb75:  // pred: ^bb64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.mlir.constant(2 : index) : i64
    %560 = llvm.mlir.constant(5 : index) : i64
    %561 = llvm.mlir.constant(2 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.constant(10 : index) : i64
    %564 = llvm.mlir.constant(20 : index) : i64
    %565 = llvm.mlir.constant(20 : index) : i64
    %566 = llvm.mlir.null : !llvm.ptr<i64>
    %567 = llvm.getelementptr %566[%565] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %568 = llvm.ptrtoint %567 : !llvm.ptr<i64> to i64
    %569 = llvm.mlir.constant(16 : index) : i64
    %570 = llvm.add %568, %569  : i64
    %571 = llvm.call @malloc(%570) : (i64) -> !llvm.ptr<i8>
    %572 = llvm.bitcast %571 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %573 = llvm.ptrtoint %572 : !llvm.ptr<i64> to i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.sub %569, %574  : i64
    %576 = llvm.add %573, %575  : i64
    %577 = llvm.urem %576, %569  : i64
    %578 = llvm.sub %576, %577  : i64
    %579 = llvm.inttoptr %578 : i64 to !llvm.ptr<i64>
    %580 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>
    %581 = llvm.insertvalue %572, %580[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %582 = llvm.insertvalue %579, %581[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %583 = llvm.mlir.constant(0 : index) : i64
    %584 = llvm.insertvalue %583, %582[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %585 = llvm.insertvalue %558, %584[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %586 = llvm.insertvalue %559, %585[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %587 = llvm.insertvalue %560, %586[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %588 = llvm.insertvalue %561, %587[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %589 = llvm.insertvalue %564, %588[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %590 = llvm.insertvalue %563, %589[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %561, %590[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.insertvalue %562, %591[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %593 = llvm.mlir.constant(0 : index) : i64
    %594 = llvm.mlir.constant(1 : index) : i64
    %595 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb76(%593 : i64)
  ^bb76(%596: i64):  // 2 preds: ^bb75, ^bb86
    %597 = llvm.icmp "slt" %596, %594 : i64
    llvm.cond_br %597, ^bb77, ^bb87
  ^bb77:  // pred: ^bb76
    %598 = llvm.mlir.constant(0 : index) : i64
    %599 = llvm.mlir.constant(2 : index) : i64
    %600 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb78(%598 : i64)
  ^bb78(%601: i64):  // 2 preds: ^bb77, ^bb85
    %602 = llvm.icmp "slt" %601, %599 : i64
    llvm.cond_br %602, ^bb79, ^bb86
  ^bb79:  // pred: ^bb78
    %603 = llvm.mlir.constant(0 : index) : i64
    %604 = llvm.mlir.constant(5 : index) : i64
    %605 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb80(%603 : i64)
  ^bb80(%606: i64):  // 2 preds: ^bb79, ^bb84
    %607 = llvm.icmp "slt" %606, %604 : i64
    llvm.cond_br %607, ^bb81, ^bb85
  ^bb81:  // pred: ^bb80
    %608 = llvm.mlir.constant(0 : index) : i64
    %609 = llvm.mlir.constant(2 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%608 : i64)
  ^bb82(%611: i64):  // 2 preds: ^bb81, ^bb83
    %612 = llvm.icmp "slt" %611, %609 : i64
    llvm.cond_br %612, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %613 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %614 = llvm.mlir.constant(20 : index) : i64
    %615 = llvm.mul %596, %614  : i64
    %616 = llvm.mlir.constant(10 : index) : i64
    %617 = llvm.mul %601, %616  : i64
    %618 = llvm.add %615, %617  : i64
    %619 = llvm.mlir.constant(2 : index) : i64
    %620 = llvm.mul %606, %619  : i64
    %621 = llvm.add %618, %620  : i64
    %622 = llvm.add %621, %611  : i64
    %623 = llvm.getelementptr %613[%622] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %624 = llvm.load %623 : !llvm.ptr<i32>
    %625 = llvm.sext %624 : i32 to i64
    %626 = llvm.extractvalue %592[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %627 = llvm.mlir.constant(20 : index) : i64
    %628 = llvm.mul %596, %627  : i64
    %629 = llvm.mlir.constant(10 : index) : i64
    %630 = llvm.mul %601, %629  : i64
    %631 = llvm.add %628, %630  : i64
    %632 = llvm.mlir.constant(2 : index) : i64
    %633 = llvm.mul %606, %632  : i64
    %634 = llvm.add %631, %633  : i64
    %635 = llvm.add %634, %611  : i64
    %636 = llvm.getelementptr %626[%635] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %625, %636 : !llvm.ptr<i64>
    %637 = llvm.add %611, %610  : i64
    llvm.br ^bb82(%637 : i64)
  ^bb84:  // pred: ^bb82
    %638 = llvm.add %606, %605  : i64
    llvm.br ^bb80(%638 : i64)
  ^bb85:  // pred: ^bb80
    %639 = llvm.add %601, %600  : i64
    llvm.br ^bb78(%639 : i64)
  ^bb86:  // pred: ^bb78
    %640 = llvm.add %596, %595  : i64
    llvm.br ^bb76(%640 : i64)
  ^bb87:  // pred: ^bb76
    %641 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    %642 = llvm.insertvalue %132, %641[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %643 = llvm.insertvalue %592, %642[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %643 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v9_0", "v2_0"], llvm.emit_c_interface, output_names = ["v0_0", "v1_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %8[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %8[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.extractvalue %8[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %19 = llvm.extractvalue %8[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %20, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.store %29, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.getelementptr %0[%30] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<i8>>
    %33 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %35 = llvm.call @omTensorGetDataPtr(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %36 = llvm.bitcast %35 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %37 = llvm.insertvalue %36, %34[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %38 = llvm.insertvalue %36, %37[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %39 = llvm.mlir.constant(0 : i64) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.call @omTensorGetShape(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %42 = llvm.call @omTensorGetStrides(%32) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %43 = llvm.mlir.constant(0 : i64) : i64
    %44 = llvm.getelementptr %41[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %40[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %42[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(1 : i64) : i64
    %51 = llvm.getelementptr %41[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %42[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : i64) : i64
    %58 = llvm.getelementptr %41[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %42[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.mlir.constant(3 : i64) : i64
    %65 = llvm.getelementptr %41[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %42[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %70, %33 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %33) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %71 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %72 = llvm.extractvalue %71[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %73 = llvm.extractvalue %71[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %74 = llvm.mlir.constant(2 : i64) : i64
    %75 = llvm.mlir.constant(16 : i64) : i64
    %76 = llvm.call @malloc(%75) : (i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %78 = llvm.mlir.constant(2 : i64) : i64
    %79 = llvm.call @omTensorCreateUntyped(%78) : (i64) -> !llvm.ptr<i8>
    %80 = llvm.mlir.constant(1 : i64) : i64
    %81 = llvm.extractvalue %72[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.bitcast %81 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %83 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.bitcast %83 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%79, %80, %82, %84) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %85 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%79, %85) : (!llvm.ptr<i8>, i64) -> ()
    %86 = llvm.call @omTensorGetShape(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %87 = llvm.call @omTensorGetStrides(%79) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.mlir.constant(0 : i64) : i64
    %89 = llvm.extractvalue %72[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.getelementptr %86[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.extractvalue %72[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.getelementptr %87[%88] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %91, %92 : !llvm.ptr<i64>
    %93 = llvm.mlir.constant(1 : i64) : i64
    %94 = llvm.extractvalue %72[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.getelementptr %86[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %72[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.getelementptr %87[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(0 : i64) : i64
    %99 = llvm.getelementptr %77[%98] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %79, %99 : !llvm.ptr<ptr<i8>>
    %100 = llvm.mlir.constant(4 : i64) : i64
    %101 = llvm.call @omTensorCreateUntyped(%100) : (i64) -> !llvm.ptr<i8>
    %102 = llvm.mlir.constant(1 : i64) : i64
    %103 = llvm.extractvalue %73[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.bitcast %103 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %105 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.bitcast %105 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%101, %102, %104, %106) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %107 = llvm.mlir.constant(7 : i64) : i64
    llvm.call @omTensorSetDataType(%101, %107) : (!llvm.ptr<i8>, i64) -> ()
    %108 = llvm.call @omTensorGetShape(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %109 = llvm.call @omTensorGetStrides(%101) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %110 = llvm.mlir.constant(0 : i64) : i64
    %111 = llvm.extractvalue %73[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.getelementptr %108[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %111, %112 : !llvm.ptr<i64>
    %113 = llvm.extractvalue %73[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %109[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.mlir.constant(1 : i64) : i64
    %116 = llvm.extractvalue %73[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %108[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.extractvalue %73[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %109[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.mlir.constant(2 : i64) : i64
    %121 = llvm.extractvalue %73[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %108[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.extractvalue %73[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %109[%120] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.mlir.constant(3 : i64) : i64
    %126 = llvm.extractvalue %73[3, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %108[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.extractvalue %73[4, 3] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %109[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.mlir.constant(1 : i64) : i64
    %131 = llvm.getelementptr %77[%130] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %101, %131 : !llvm.ptr<ptr<i8>>
    %132 = llvm.call @omTensorListCreate(%77, %74, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %132 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<134 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<134 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<133 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<133 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

