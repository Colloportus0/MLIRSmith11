module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 2] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 2 , 2] , \22name\22 : \22v1_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 4 , 2] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_9(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_8(dense<[[[[3, 4], [7, 4]]]]> : tensor<1x1x2x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<2 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_7(dense<[[[[6, 4]]]]> : tensor<1x1x1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x array<1 x array<2 x i32>>>>
  llvm.mlir.global internal constant @constant_6(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 1, 2, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: !llvm.ptr<i32>, %arg6: !llvm.ptr<i32>, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: i64, %arg15: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v0_0"], llvm.emit_c_interface, output_names = ["v1_0", "v4_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.insertvalue %arg4, %4[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %7 = llvm.insertvalue %arg5, %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg6, %7[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg7, %8[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg8, %9[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg12, %10[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.insertvalue %arg9, %11[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.insertvalue %arg13, %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.insertvalue %arg10, %13[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.insertvalue %arg14, %14[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.insertvalue %arg11, %15[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.insertvalue %arg15, %16[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(1 : i64) : i64
    %20 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %21 = llvm.bitcast %20 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %22 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %23 = llvm.insertvalue %21, %22[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.insertvalue %21, %23[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.insertvalue %25, %24[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(4 : index) : i64
    %28 = llvm.insertvalue %27, %26[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.constant(1 : index) : i64
    %30 = llvm.insertvalue %29, %28[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x i64>>
    %32 = llvm.bitcast %31 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %33 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %34 = llvm.insertvalue %32, %33[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.insertvalue %32, %34[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.constant(0 : index) : i64
    %37 = llvm.insertvalue %36, %35[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %38 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<1 x array<1 x array<1 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.mlir.constant(2 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %49 = llvm.mlir.constant(1 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %51 = llvm.mlir.constant(2 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.mlir.constant(2 : index) : i64
    %56 = llvm.insertvalue %55, %54[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(2 : index) : i64
    %58 = llvm.insertvalue %57, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %59 = llvm.mlir.constant(1 : index) : i64
    %60 = llvm.insertvalue %59, %58[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x array<1 x array<2 x array<2 x i32>>>>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.mlir.constant(1 : index) : i64
    %69 = llvm.insertvalue %68, %67[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.mlir.constant(4 : index) : i64
    %71 = llvm.insertvalue %70, %69[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %72 = llvm.mlir.constant(1 : index) : i64
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
    %84 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<4 x i64>>
    %85 = llvm.bitcast %84 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %86 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %87 = llvm.insertvalue %85, %86[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.insertvalue %85, %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %89 = llvm.mlir.constant(0 : index) : i64
    %90 = llvm.insertvalue %89, %88[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %91 = llvm.mlir.constant(4 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %95 = llvm.mlir.constant(4 : index) : i64
    %96 = llvm.mlir.constant(1 : index) : i64
    %97 = llvm.mlir.null : !llvm.ptr<i64>
    %98 = llvm.getelementptr %97[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i64> to i64
    %100 = llvm.mlir.constant(16 : index) : i64
    %101 = llvm.add %99, %100  : i64
    %102 = llvm.call @malloc(%101) : (i64) -> !llvm.ptr<i8>
    %103 = llvm.bitcast %102 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i64> to i64
    %105 = llvm.mlir.constant(1 : index) : i64
    %106 = llvm.sub %100, %105  : i64
    %107 = llvm.add %104, %106  : i64
    %108 = llvm.urem %107, %100  : i64
    %109 = llvm.sub %107, %108  : i64
    %110 = llvm.inttoptr %109 : i64 to !llvm.ptr<i64>
    %111 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %112 = llvm.insertvalue %103, %111[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.insertvalue %110, %112[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %114 = llvm.mlir.constant(0 : index) : i64
    %115 = llvm.insertvalue %114, %113[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %116 = llvm.insertvalue %95, %115[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %117 = llvm.insertvalue %96, %116[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.mlir.constant(0 : index) : i64
    %119 = llvm.mlir.constant(4 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%118 : i64)
  ^bb1(%121: i64):  // 2 preds: ^bb0, ^bb2
    %122 = llvm.icmp "slt" %121, %119 : i64
    llvm.cond_br %122, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %123 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.getelementptr %123[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %19, %124 : !llvm.ptr<i64>
    %125 = llvm.add %121, %120  : i64
    llvm.br ^bb1(%125 : i64)
  ^bb3:  // pred: ^bb1
    %126 = llvm.mlir.constant(4 : index) : i64
    %127 = llvm.mlir.constant(1 : index) : i64
    %128 = llvm.mlir.null : !llvm.ptr<i64>
    %129 = llvm.getelementptr %128[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %130 = llvm.ptrtoint %129 : !llvm.ptr<i64> to i64
    %131 = llvm.mlir.constant(16 : index) : i64
    %132 = llvm.add %130, %131  : i64
    %133 = llvm.call @malloc(%132) : (i64) -> !llvm.ptr<i8>
    %134 = llvm.bitcast %133 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i64> to i64
    %136 = llvm.mlir.constant(1 : index) : i64
    %137 = llvm.sub %131, %136  : i64
    %138 = llvm.add %135, %137  : i64
    %139 = llvm.urem %138, %131  : i64
    %140 = llvm.sub %138, %139  : i64
    %141 = llvm.inttoptr %140 : i64 to !llvm.ptr<i64>
    %142 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %143 = llvm.insertvalue %134, %142[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.insertvalue %141, %143[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.mlir.constant(0 : index) : i64
    %146 = llvm.insertvalue %145, %144[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %126, %146[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %127, %147[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(4 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%149 : i64)
  ^bb4(%152: i64):  // 2 preds: ^bb3, ^bb5
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %154 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.getelementptr %154[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %156 = llvm.load %155 : !llvm.ptr<i64>
    %157 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %158 = llvm.load %157 : !llvm.ptr<i64>
    %159 = llvm.mul %156, %158  : i64
    %160 = llvm.extractvalue %148[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %161 = llvm.getelementptr %160[%152] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %159, %161 : !llvm.ptr<i64>
    %162 = llvm.add %152, %151  : i64
    llvm.br ^bb4(%162 : i64)
  ^bb6:  // pred: ^bb4
    %163 = llvm.mlir.constant(4 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.null : !llvm.ptr<i1>
    %166 = llvm.getelementptr %165[%163] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %167 = llvm.ptrtoint %166 : !llvm.ptr<i1> to i64
    %168 = llvm.mlir.constant(16 : index) : i64
    %169 = llvm.add %167, %168  : i64
    %170 = llvm.call @malloc(%169) : (i64) -> !llvm.ptr<i8>
    %171 = llvm.bitcast %170 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i1> to i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.sub %168, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.urem %175, %168  : i64
    %177 = llvm.sub %175, %176  : i64
    %178 = llvm.inttoptr %177 : i64 to !llvm.ptr<i1>
    %179 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %180 = llvm.insertvalue %171, %179[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %178, %180[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.insertvalue %182, %181[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %163, %183[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %164, %184[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(4 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%186 : i64)
  ^bb7(%189: i64):  // 2 preds: ^bb6, ^bb8
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %191 = llvm.extractvalue %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.getelementptr %191[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %193 = llvm.load %192 : !llvm.ptr<i64>
    %194 = llvm.extractvalue %148[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.getelementptr %194[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %196 = llvm.load %195 : !llvm.ptr<i64>
    %197 = llvm.icmp "eq" %193, %196 : i64
    %198 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %199 = llvm.getelementptr %198[%189] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %197, %199 : !llvm.ptr<i1>
    %200 = llvm.add %189, %188  : i64
    llvm.br ^bb7(%200 : i64)
  ^bb9:  // pred: ^bb7
    %201 = llvm.mlir.constant(4 : index) : i64
    %202 = llvm.mlir.constant(1 : index) : i64
    %203 = llvm.mlir.null : !llvm.ptr<i64>
    %204 = llvm.getelementptr %203[%201] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %205 = llvm.ptrtoint %204 : !llvm.ptr<i64> to i64
    %206 = llvm.mlir.constant(16 : index) : i64
    %207 = llvm.add %205, %206  : i64
    %208 = llvm.call @malloc(%207) : (i64) -> !llvm.ptr<i8>
    %209 = llvm.bitcast %208 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %210 = llvm.ptrtoint %209 : !llvm.ptr<i64> to i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.sub %206, %211  : i64
    %213 = llvm.add %210, %212  : i64
    %214 = llvm.urem %213, %206  : i64
    %215 = llvm.sub %213, %214  : i64
    %216 = llvm.inttoptr %215 : i64 to !llvm.ptr<i64>
    %217 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %218 = llvm.insertvalue %209, %217[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.insertvalue %216, %218[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.mlir.constant(0 : index) : i64
    %221 = llvm.insertvalue %220, %219[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.insertvalue %201, %221[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.insertvalue %202, %222[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.mlir.constant(0 : index) : i64
    %225 = llvm.mlir.constant(4 : index) : i64
    %226 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%224 : i64)
  ^bb10(%227: i64):  // 2 preds: ^bb9, ^bb11
    %228 = llvm.icmp "slt" %227, %225 : i64
    llvm.cond_br %228, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %229 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.getelementptr %229[%227] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %231 = llvm.load %230 : !llvm.ptr<i1>
    %232 = llvm.extractvalue %117[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.getelementptr %232[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %234 = llvm.load %233 : !llvm.ptr<i64>
    %235 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %236 = llvm.getelementptr %235[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %237 = llvm.load %236 : !llvm.ptr<i64>
    %238 = llvm.select %231, %234, %237 : i1, i64
    %239 = llvm.extractvalue %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %240 = llvm.getelementptr %239[%227] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %238, %240 : !llvm.ptr<i64>
    %241 = llvm.add %227, %226  : i64
    llvm.br ^bb10(%241 : i64)
  ^bb12:  // pred: ^bb10
    %242 = llvm.mlir.constant(1 : index) : i64
    %243 = llvm.mlir.constant(1 : index) : i64
    %244 = llvm.mlir.constant(2 : index) : i64
    %245 = llvm.mlir.constant(2 : index) : i64
    %246 = llvm.mlir.constant(1 : index) : i64
    %247 = llvm.mlir.constant(4 : index) : i64
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mlir.constant(4 : index) : i64
    %250 = llvm.mlir.null : !llvm.ptr<i32>
    %251 = llvm.getelementptr %250[%249] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %252 = llvm.ptrtoint %251 : !llvm.ptr<i32> to i64
    %253 = llvm.mlir.constant(16 : index) : i64
    %254 = llvm.add %252, %253  : i64
    %255 = llvm.call @malloc(%254) : (i64) -> !llvm.ptr<i8>
    %256 = llvm.bitcast %255 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %257 = llvm.ptrtoint %256 : !llvm.ptr<i32> to i64
    %258 = llvm.mlir.constant(1 : index) : i64
    %259 = llvm.sub %253, %258  : i64
    %260 = llvm.add %257, %259  : i64
    %261 = llvm.urem %260, %253  : i64
    %262 = llvm.sub %260, %261  : i64
    %263 = llvm.inttoptr %262 : i64 to !llvm.ptr<i32>
    %264 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %265 = llvm.insertvalue %256, %264[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %266 = llvm.insertvalue %263, %265[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %267 = llvm.mlir.constant(0 : index) : i64
    %268 = llvm.insertvalue %267, %266[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.insertvalue %242, %268[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %270 = llvm.insertvalue %243, %269[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %271 = llvm.insertvalue %244, %270[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %245, %271[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %248, %272[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %247, %273[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %245, %274[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %246, %275[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.mlir.constant(0 : index) : i64
    %278 = llvm.mlir.constant(1 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%277 : i64)
  ^bb13(%280: i64):  // 2 preds: ^bb12, ^bb23
    %281 = llvm.icmp "slt" %280, %278 : i64
    llvm.cond_br %281, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %282 = llvm.mlir.constant(0 : index) : i64
    %283 = llvm.mlir.constant(1 : index) : i64
    %284 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%282 : i64)
  ^bb15(%285: i64):  // 2 preds: ^bb14, ^bb22
    %286 = llvm.icmp "slt" %285, %283 : i64
    llvm.cond_br %286, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %287 = llvm.mlir.constant(0 : index) : i64
    %288 = llvm.mlir.constant(2 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%287 : i64)
  ^bb17(%290: i64):  // 2 preds: ^bb16, ^bb21
    %291 = llvm.icmp "slt" %290, %288 : i64
    llvm.cond_br %291, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(2 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%292 : i64)
  ^bb19(%295: i64):  // 2 preds: ^bb18, ^bb20
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %297 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %298 = llvm.mlir.constant(4 : index) : i64
    %299 = llvm.mul %18, %298  : i64
    %300 = llvm.mlir.constant(4 : index) : i64
    %301 = llvm.mul %18, %300  : i64
    %302 = llvm.add %299, %301  : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mul %290, %303  : i64
    %305 = llvm.add %302, %304  : i64
    %306 = llvm.add %305, %295  : i64
    %307 = llvm.getelementptr %297[%306] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %308 = llvm.load %307 : !llvm.ptr<i32>
    %309 = llvm.extractvalue %276[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %310 = llvm.mlir.constant(4 : index) : i64
    %311 = llvm.mul %280, %310  : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mul %285, %312  : i64
    %314 = llvm.add %311, %313  : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mul %290, %315  : i64
    %317 = llvm.add %314, %316  : i64
    %318 = llvm.add %317, %295  : i64
    %319 = llvm.getelementptr %309[%318] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %308, %319 : !llvm.ptr<i32>
    %320 = llvm.add %295, %294  : i64
    llvm.br ^bb19(%320 : i64)
  ^bb21:  // pred: ^bb19
    %321 = llvm.add %290, %289  : i64
    llvm.br ^bb17(%321 : i64)
  ^bb22:  // pred: ^bb17
    %322 = llvm.add %285, %284  : i64
    llvm.br ^bb15(%322 : i64)
  ^bb23:  // pred: ^bb15
    %323 = llvm.add %280, %279  : i64
    llvm.br ^bb13(%323 : i64)
  ^bb24:  // pred: ^bb13
    %324 = llvm.mlir.constant(1 : index) : i64
    %325 = llvm.mlir.constant(1 : index) : i64
    %326 = llvm.mlir.constant(2 : index) : i64
    %327 = llvm.mlir.constant(2 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.mlir.constant(4 : index) : i64
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mlir.constant(4 : index) : i64
    %332 = llvm.mlir.null : !llvm.ptr<i32>
    %333 = llvm.getelementptr %332[%331] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %334 = llvm.ptrtoint %333 : !llvm.ptr<i32> to i64
    %335 = llvm.mlir.constant(16 : index) : i64
    %336 = llvm.add %334, %335  : i64
    %337 = llvm.call @malloc(%336) : (i64) -> !llvm.ptr<i8>
    %338 = llvm.bitcast %337 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %339 = llvm.ptrtoint %338 : !llvm.ptr<i32> to i64
    %340 = llvm.mlir.constant(1 : index) : i64
    %341 = llvm.sub %335, %340  : i64
    %342 = llvm.add %339, %341  : i64
    %343 = llvm.urem %342, %335  : i64
    %344 = llvm.sub %342, %343  : i64
    %345 = llvm.inttoptr %344 : i64 to !llvm.ptr<i32>
    %346 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %347 = llvm.insertvalue %338, %346[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %345, %347[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.insertvalue %349, %348[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %351 = llvm.insertvalue %324, %350[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %352 = llvm.insertvalue %325, %351[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.insertvalue %326, %352[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %354 = llvm.insertvalue %327, %353[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.insertvalue %330, %354[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %356 = llvm.insertvalue %329, %355[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %357 = llvm.insertvalue %327, %356[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %358 = llvm.insertvalue %328, %357[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(0 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    %361 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%359 : i64)
  ^bb25(%362: i64):  // 2 preds: ^bb24, ^bb35
    %363 = llvm.icmp "slt" %362, %360 : i64
    llvm.cond_br %363, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%364 : i64)
  ^bb27(%367: i64):  // 2 preds: ^bb26, ^bb34
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %369 = llvm.mlir.constant(0 : index) : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%369 : i64)
  ^bb29(%372: i64):  // 2 preds: ^bb28, ^bb33
    %373 = llvm.icmp "slt" %372, %370 : i64
    llvm.cond_br %373, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %374 = llvm.mlir.constant(0 : index) : i64
    %375 = llvm.mlir.constant(2 : index) : i64
    %376 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%374 : i64)
  ^bb31(%377: i64):  // 2 preds: ^bb30, ^bb32
    %378 = llvm.icmp "slt" %377, %375 : i64
    llvm.cond_br %378, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %379 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.getelementptr %379[%18] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %381 = llvm.load %380 : !llvm.ptr<i32>
    %382 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %383 = llvm.mlir.constant(4 : index) : i64
    %384 = llvm.mul %362, %383  : i64
    %385 = llvm.mlir.constant(4 : index) : i64
    %386 = llvm.mul %367, %385  : i64
    %387 = llvm.add %384, %386  : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mul %372, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.add %390, %377  : i64
    %392 = llvm.getelementptr %382[%391] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %393 = llvm.load %392 : !llvm.ptr<i32>
    %394 = llvm.icmp "slt" %381, %393 : i32
    %395 = llvm.select %394, %381, %393 : i1, i32
    %396 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %397 = llvm.mlir.constant(4 : index) : i64
    %398 = llvm.mul %362, %397  : i64
    %399 = llvm.mlir.constant(4 : index) : i64
    %400 = llvm.mul %367, %399  : i64
    %401 = llvm.add %398, %400  : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mul %372, %402  : i64
    %404 = llvm.add %401, %403  : i64
    %405 = llvm.add %404, %377  : i64
    %406 = llvm.getelementptr %396[%405] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %395, %406 : !llvm.ptr<i32>
    %407 = llvm.add %377, %376  : i64
    llvm.br ^bb31(%407 : i64)
  ^bb33:  // pred: ^bb31
    %408 = llvm.add %372, %371  : i64
    llvm.br ^bb29(%408 : i64)
  ^bb34:  // pred: ^bb29
    %409 = llvm.add %367, %366  : i64
    llvm.br ^bb27(%409 : i64)
  ^bb35:  // pred: ^bb27
    %410 = llvm.add %362, %361  : i64
    llvm.br ^bb25(%410 : i64)
  ^bb36:  // pred: ^bb25
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.mlir.constant(1 : index) : i64
    %413 = llvm.mlir.constant(1 : index) : i64
    %414 = llvm.mlir.constant(2 : index) : i64
    %415 = llvm.mlir.constant(1 : index) : i64
    %416 = llvm.mlir.constant(2 : index) : i64
    %417 = llvm.mlir.constant(2 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.null : !llvm.ptr<i32>
    %420 = llvm.getelementptr %419[%418] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %421 = llvm.ptrtoint %420 : !llvm.ptr<i32> to i64
    %422 = llvm.mlir.constant(16 : index) : i64
    %423 = llvm.add %421, %422  : i64
    %424 = llvm.call @malloc(%423) : (i64) -> !llvm.ptr<i8>
    %425 = llvm.bitcast %424 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %426 = llvm.ptrtoint %425 : !llvm.ptr<i32> to i64
    %427 = llvm.mlir.constant(1 : index) : i64
    %428 = llvm.sub %422, %427  : i64
    %429 = llvm.add %426, %428  : i64
    %430 = llvm.urem %429, %422  : i64
    %431 = llvm.sub %429, %430  : i64
    %432 = llvm.inttoptr %431 : i64 to !llvm.ptr<i32>
    %433 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %434 = llvm.insertvalue %425, %433[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %435 = llvm.insertvalue %432, %434[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %436 = llvm.mlir.constant(0 : index) : i64
    %437 = llvm.insertvalue %436, %435[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.insertvalue %411, %437[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %439 = llvm.insertvalue %412, %438[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %440 = llvm.insertvalue %413, %439[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %441 = llvm.insertvalue %414, %440[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.insertvalue %417, %441[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %443 = llvm.insertvalue %416, %442[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %444 = llvm.insertvalue %414, %443[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %445 = llvm.insertvalue %415, %444[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%446 : i64)
  ^bb37(%449: i64):  // 2 preds: ^bb36, ^bb47
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %451 = llvm.mlir.constant(0 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    %453 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%451 : i64)
  ^bb39(%454: i64):  // 2 preds: ^bb38, ^bb46
    %455 = llvm.icmp "slt" %454, %452 : i64
    llvm.cond_br %455, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %456 = llvm.mlir.constant(0 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%456 : i64)
  ^bb41(%459: i64):  // 2 preds: ^bb40, ^bb45
    %460 = llvm.icmp "slt" %459, %457 : i64
    llvm.cond_br %460, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %461 = llvm.mlir.constant(0 : index) : i64
    %462 = llvm.mlir.constant(2 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%461 : i64)
  ^bb43(%464: i64):  // 2 preds: ^bb42, ^bb44
    %465 = llvm.icmp "slt" %464, %462 : i64
    llvm.cond_br %465, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %466 = llvm.extractvalue %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.mlir.constant(2 : index) : i64
    %468 = llvm.mul %449, %467  : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mul %454, %469  : i64
    %471 = llvm.add %468, %470  : i64
    %472 = llvm.mlir.constant(2 : index) : i64
    %473 = llvm.mul %459, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.add %474, %464  : i64
    %476 = llvm.getelementptr %466[%475] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %477 = llvm.load %476 : !llvm.ptr<i32>
    %478 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %479 = llvm.mlir.constant(2 : index) : i64
    %480 = llvm.mul %449, %479  : i64
    %481 = llvm.mlir.constant(2 : index) : i64
    %482 = llvm.mul %454, %481  : i64
    %483 = llvm.add %480, %482  : i64
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mul %459, %484  : i64
    %486 = llvm.add %483, %485  : i64
    %487 = llvm.add %486, %464  : i64
    %488 = llvm.getelementptr %478[%487] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %477, %488 : !llvm.ptr<i32>
    %489 = llvm.add %464, %463  : i64
    llvm.br ^bb43(%489 : i64)
  ^bb45:  // pred: ^bb43
    %490 = llvm.add %459, %458  : i64
    llvm.br ^bb41(%490 : i64)
  ^bb46:  // pred: ^bb41
    %491 = llvm.add %454, %453  : i64
    llvm.br ^bb39(%491 : i64)
  ^bb47:  // pred: ^bb39
    %492 = llvm.add %449, %448  : i64
    llvm.br ^bb37(%492 : i64)
  ^bb48:  // pred: ^bb37
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.constant(4 : index) : i64
    %496 = llvm.mlir.constant(2 : index) : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(8 : index) : i64
    %499 = llvm.mlir.constant(8 : index) : i64
    %500 = llvm.mlir.constant(8 : index) : i64
    %501 = llvm.mlir.null : !llvm.ptr<i32>
    %502 = llvm.getelementptr %501[%500] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %503 = llvm.ptrtoint %502 : !llvm.ptr<i32> to i64
    %504 = llvm.mlir.constant(16 : index) : i64
    %505 = llvm.add %503, %504  : i64
    %506 = llvm.call @malloc(%505) : (i64) -> !llvm.ptr<i8>
    %507 = llvm.bitcast %506 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %508 = llvm.ptrtoint %507 : !llvm.ptr<i32> to i64
    %509 = llvm.mlir.constant(1 : index) : i64
    %510 = llvm.sub %504, %509  : i64
    %511 = llvm.add %508, %510  : i64
    %512 = llvm.urem %511, %504  : i64
    %513 = llvm.sub %511, %512  : i64
    %514 = llvm.inttoptr %513 : i64 to !llvm.ptr<i32>
    %515 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %516 = llvm.insertvalue %507, %515[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %517 = llvm.insertvalue %514, %516[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %518 = llvm.mlir.constant(0 : index) : i64
    %519 = llvm.insertvalue %518, %517[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %520 = llvm.insertvalue %493, %519[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %521 = llvm.insertvalue %494, %520[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %522 = llvm.insertvalue %495, %521[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %523 = llvm.insertvalue %496, %522[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %524 = llvm.insertvalue %499, %523[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %525 = llvm.insertvalue %498, %524[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %496, %525[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.insertvalue %497, %526[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %528 = llvm.mlir.constant(0 : index) : i64
    %529 = llvm.mlir.constant(1 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%528 : i64)
  ^bb49(%531: i64):  // 2 preds: ^bb48, ^bb59
    %532 = llvm.icmp "slt" %531, %529 : i64
    llvm.cond_br %532, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %533 = llvm.mlir.constant(0 : index) : i64
    %534 = llvm.mlir.constant(1 : index) : i64
    %535 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%533 : i64)
  ^bb51(%536: i64):  // 2 preds: ^bb50, ^bb58
    %537 = llvm.icmp "slt" %536, %534 : i64
    llvm.cond_br %537, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %538 = llvm.mlir.constant(0 : index) : i64
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%538 : i64)
  ^bb53(%541: i64):  // 2 preds: ^bb52, ^bb57
    %542 = llvm.icmp "slt" %541, %539 : i64
    llvm.cond_br %542, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %543 = llvm.mlir.constant(0 : index) : i64
    %544 = llvm.mlir.constant(2 : index) : i64
    %545 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%543 : i64)
  ^bb55(%546: i64):  // 2 preds: ^bb54, ^bb56
    %547 = llvm.icmp "slt" %546, %544 : i64
    llvm.cond_br %547, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %548 = llvm.extractvalue %358[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %549 = llvm.mlir.constant(4 : index) : i64
    %550 = llvm.mul %531, %549  : i64
    %551 = llvm.mlir.constant(4 : index) : i64
    %552 = llvm.mul %536, %551  : i64
    %553 = llvm.add %550, %552  : i64
    %554 = llvm.mlir.constant(2 : index) : i64
    %555 = llvm.mul %541, %554  : i64
    %556 = llvm.add %553, %555  : i64
    %557 = llvm.add %556, %546  : i64
    %558 = llvm.getelementptr %548[%557] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %559 = llvm.load %558 : !llvm.ptr<i32>
    %560 = llvm.extractvalue %527[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %561 = llvm.mlir.constant(8 : index) : i64
    %562 = llvm.mul %531, %561  : i64
    %563 = llvm.mlir.constant(8 : index) : i64
    %564 = llvm.mul %536, %563  : i64
    %565 = llvm.add %562, %564  : i64
    %566 = llvm.mlir.constant(2 : index) : i64
    %567 = llvm.mul %541, %566  : i64
    %568 = llvm.add %565, %567  : i64
    %569 = llvm.add %568, %546  : i64
    %570 = llvm.getelementptr %560[%569] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %559, %570 : !llvm.ptr<i32>
    %571 = llvm.add %546, %545  : i64
    llvm.br ^bb55(%571 : i64)
  ^bb57:  // pred: ^bb55
    %572 = llvm.add %541, %540  : i64
    llvm.br ^bb53(%572 : i64)
  ^bb58:  // pred: ^bb53
    %573 = llvm.add %536, %535  : i64
    llvm.br ^bb51(%573 : i64)
  ^bb59:  // pred: ^bb51
    %574 = llvm.add %531, %530  : i64
    llvm.br ^bb49(%574 : i64)
  ^bb60:  // pred: ^bb49
    %575 = llvm.mlir.constant(0 : index) : i64
    %576 = llvm.mlir.constant(1 : index) : i64
    %577 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%575 : i64)
  ^bb61(%578: i64):  // 2 preds: ^bb60, ^bb71
    %579 = llvm.icmp "slt" %578, %576 : i64
    llvm.cond_br %579, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.mlir.constant(1 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%580 : i64)
  ^bb63(%583: i64):  // 2 preds: ^bb62, ^bb70
    %584 = llvm.icmp "slt" %583, %581 : i64
    llvm.cond_br %584, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %585 = llvm.mlir.constant(0 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    %587 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%585 : i64)
  ^bb65(%588: i64):  // 2 preds: ^bb64, ^bb69
    %589 = llvm.icmp "slt" %588, %586 : i64
    llvm.cond_br %589, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %590 = llvm.mlir.constant(0 : index) : i64
    %591 = llvm.mlir.constant(2 : index) : i64
    %592 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%590 : i64)
  ^bb67(%593: i64):  // 2 preds: ^bb66, ^bb68
    %594 = llvm.icmp "slt" %593, %591 : i64
    llvm.cond_br %594, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %595 = llvm.mlir.constant(2 : index) : i64
    %596 = llvm.add %588, %595  : i64
    %597 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.mlir.constant(2 : index) : i64
    %599 = llvm.mul %578, %598  : i64
    %600 = llvm.mlir.constant(2 : index) : i64
    %601 = llvm.mul %583, %600  : i64
    %602 = llvm.add %599, %601  : i64
    %603 = llvm.mlir.constant(2 : index) : i64
    %604 = llvm.mul %588, %603  : i64
    %605 = llvm.add %602, %604  : i64
    %606 = llvm.add %605, %593  : i64
    %607 = llvm.getelementptr %597[%606] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %608 = llvm.load %607 : !llvm.ptr<i32>
    %609 = llvm.extractvalue %527[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.mlir.constant(8 : index) : i64
    %611 = llvm.mul %578, %610  : i64
    %612 = llvm.mlir.constant(8 : index) : i64
    %613 = llvm.mul %583, %612  : i64
    %614 = llvm.add %611, %613  : i64
    %615 = llvm.mlir.constant(2 : index) : i64
    %616 = llvm.mul %596, %615  : i64
    %617 = llvm.add %614, %616  : i64
    %618 = llvm.add %617, %593  : i64
    %619 = llvm.getelementptr %609[%618] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %608, %619 : !llvm.ptr<i32>
    %620 = llvm.add %593, %592  : i64
    llvm.br ^bb67(%620 : i64)
  ^bb69:  // pred: ^bb67
    %621 = llvm.add %588, %587  : i64
    llvm.br ^bb65(%621 : i64)
  ^bb70:  // pred: ^bb65
    %622 = llvm.add %583, %582  : i64
    llvm.br ^bb63(%622 : i64)
  ^bb71:  // pred: ^bb63
    %623 = llvm.add %578, %577  : i64
    llvm.br ^bb61(%623 : i64)
  ^bb72:  // pred: ^bb61
    %624 = llvm.mlir.constant(0 : index) : i64
    %625 = llvm.mlir.constant(1 : index) : i64
    %626 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%624 : i64)
  ^bb73(%627: i64):  // 2 preds: ^bb72, ^bb83
    %628 = llvm.icmp "slt" %627, %625 : i64
    llvm.cond_br %628, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %629 = llvm.mlir.constant(0 : index) : i64
    %630 = llvm.mlir.constant(1 : index) : i64
    %631 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%629 : i64)
  ^bb75(%632: i64):  // 2 preds: ^bb74, ^bb82
    %633 = llvm.icmp "slt" %632, %630 : i64
    llvm.cond_br %633, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %634 = llvm.mlir.constant(0 : index) : i64
    %635 = llvm.mlir.constant(1 : index) : i64
    %636 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%634 : i64)
  ^bb77(%637: i64):  // 2 preds: ^bb76, ^bb81
    %638 = llvm.icmp "slt" %637, %635 : i64
    llvm.cond_br %638, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %639 = llvm.mlir.constant(0 : index) : i64
    %640 = llvm.mlir.constant(2 : index) : i64
    %641 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%639 : i64)
  ^bb79(%642: i64):  // 2 preds: ^bb78, ^bb80
    %643 = llvm.icmp "slt" %642, %640 : i64
    llvm.cond_br %643, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %644 = llvm.mlir.constant(3 : index) : i64
    %645 = llvm.add %637, %644  : i64
    %646 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mul %627, %647  : i64
    %649 = llvm.mlir.constant(2 : index) : i64
    %650 = llvm.mul %632, %649  : i64
    %651 = llvm.add %648, %650  : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mul %637, %652  : i64
    %654 = llvm.add %651, %653  : i64
    %655 = llvm.add %654, %642  : i64
    %656 = llvm.getelementptr %646[%655] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %657 = llvm.load %656 : !llvm.ptr<i32>
    %658 = llvm.extractvalue %527[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %659 = llvm.mlir.constant(8 : index) : i64
    %660 = llvm.mul %627, %659  : i64
    %661 = llvm.mlir.constant(8 : index) : i64
    %662 = llvm.mul %632, %661  : i64
    %663 = llvm.add %660, %662  : i64
    %664 = llvm.mlir.constant(2 : index) : i64
    %665 = llvm.mul %645, %664  : i64
    %666 = llvm.add %663, %665  : i64
    %667 = llvm.add %666, %642  : i64
    %668 = llvm.getelementptr %658[%667] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %657, %668 : !llvm.ptr<i32>
    %669 = llvm.add %642, %641  : i64
    llvm.br ^bb79(%669 : i64)
  ^bb81:  // pred: ^bb79
    %670 = llvm.add %637, %636  : i64
    llvm.br ^bb77(%670 : i64)
  ^bb82:  // pred: ^bb77
    %671 = llvm.add %632, %631  : i64
    llvm.br ^bb75(%671 : i64)
  ^bb83:  // pred: ^bb75
    %672 = llvm.add %627, %626  : i64
    llvm.br ^bb73(%672 : i64)
  ^bb84:  // pred: ^bb73
    %673 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %674 = llvm.insertvalue %276, %673[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %675 = llvm.insertvalue %527, %674[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %675 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0", "v0_0"], llvm.emit_c_interface, output_names = ["v1_0", "v4_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %5 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %6 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.extractvalue %6[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %6[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %6[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %6[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %6[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.extractvalue %6[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %13 = llvm.extractvalue %6[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.extractvalue %6[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %15 = llvm.extractvalue %6[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %16 = llvm.extractvalue %6[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %17 = llvm.extractvalue %6[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %18 = llvm.call @main_graph(%1, %2, %3, %4, %5, %7, %8, %9, %10, %11, %12, %13, %14, %15, %16, %17) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %18, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)> 
    llvm.store %22, %6 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %0[%23] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<i8>>
    %26 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %28 = llvm.call @omTensorGetDataPtr(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %29 = llvm.bitcast %28 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %30 = llvm.insertvalue %29, %27[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %31 = llvm.insertvalue %29, %30[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.call @omTensorGetShape(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %35 = llvm.call @omTensorGetStrides(%25) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %36 = llvm.mlir.constant(0 : i64) : i64
    %37 = llvm.getelementptr %34[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %38 = llvm.load %37 : !llvm.ptr<i64>
    %39 = llvm.insertvalue %38, %33[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %40 = llvm.getelementptr %35[%36] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %41 = llvm.load %40 : !llvm.ptr<i64>
    %42 = llvm.insertvalue %41, %39[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %43 = llvm.mlir.constant(1 : i64) : i64
    %44 = llvm.getelementptr %34[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %45 = llvm.load %44 : !llvm.ptr<i64>
    %46 = llvm.insertvalue %45, %42[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %47 = llvm.getelementptr %35[%43] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %48 = llvm.load %47 : !llvm.ptr<i64>
    %49 = llvm.insertvalue %48, %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %50 = llvm.mlir.constant(2 : i64) : i64
    %51 = llvm.getelementptr %34[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %52 = llvm.load %51 : !llvm.ptr<i64>
    %53 = llvm.insertvalue %52, %49[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %54 = llvm.getelementptr %35[%50] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %55 = llvm.load %54 : !llvm.ptr<i64>
    %56 = llvm.insertvalue %55, %53[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.mlir.constant(3 : i64) : i64
    %58 = llvm.getelementptr %34[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %56[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %61 = llvm.getelementptr %35[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %63, %26 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %26) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<1 x i64>, array<1 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %64 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %65 = llvm.extractvalue %64[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %66 = llvm.extractvalue %64[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %67 = llvm.mlir.constant(2 : i64) : i64
    %68 = llvm.mlir.constant(16 : i64) : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %71 = llvm.mlir.constant(4 : i64) : i64
    %72 = llvm.call @omTensorCreateUntyped(%71) : (i64) -> !llvm.ptr<i8>
    %73 = llvm.mlir.constant(1 : i64) : i64
    %74 = llvm.extractvalue %65[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.bitcast %74 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %76 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %77 = llvm.bitcast %76 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%72, %73, %75, %77) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %78 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%72, %78) : (!llvm.ptr<i8>, i64) -> ()
    %79 = llvm.call @omTensorGetShape(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %80 = llvm.call @omTensorGetStrides(%72) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.extractvalue %65[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.getelementptr %79[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %82, %83 : !llvm.ptr<i64>
    %84 = llvm.extractvalue %65[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.getelementptr %80[%81] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %84, %85 : !llvm.ptr<i64>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %65[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.getelementptr %79[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %87, %88 : !llvm.ptr<i64>
    %89 = llvm.extractvalue %65[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.getelementptr %80[%86] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %89, %90 : !llvm.ptr<i64>
    %91 = llvm.mlir.constant(2 : i64) : i64
    %92 = llvm.extractvalue %65[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %79[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.extractvalue %65[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.getelementptr %80[%91] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.mlir.constant(3 : i64) : i64
    %97 = llvm.extractvalue %65[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %79[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.extractvalue %65[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %100 = llvm.getelementptr %80[%96] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.mlir.constant(0 : i64) : i64
    %102 = llvm.getelementptr %70[%101] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %72, %102 : !llvm.ptr<ptr<i8>>
    %103 = llvm.mlir.constant(4 : i64) : i64
    %104 = llvm.call @omTensorCreateUntyped(%103) : (i64) -> !llvm.ptr<i8>
    %105 = llvm.mlir.constant(1 : i64) : i64
    %106 = llvm.extractvalue %66[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %107 = llvm.bitcast %106 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %108 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.bitcast %108 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%104, %105, %107, %109) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %110 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%104, %110) : (!llvm.ptr<i8>, i64) -> ()
    %111 = llvm.call @omTensorGetShape(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %112 = llvm.call @omTensorGetStrides(%104) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %113 = llvm.mlir.constant(0 : i64) : i64
    %114 = llvm.extractvalue %66[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.getelementptr %111[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %114, %115 : !llvm.ptr<i64>
    %116 = llvm.extractvalue %66[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.getelementptr %112[%113] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %116, %117 : !llvm.ptr<i64>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %66[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %111[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.extractvalue %66[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.getelementptr %112[%118] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %121, %122 : !llvm.ptr<i64>
    %123 = llvm.mlir.constant(2 : i64) : i64
    %124 = llvm.extractvalue %66[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %111[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.extractvalue %66[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.getelementptr %112[%123] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %126, %127 : !llvm.ptr<i64>
    %128 = llvm.mlir.constant(3 : i64) : i64
    %129 = llvm.extractvalue %66[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %111[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.extractvalue %66[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.getelementptr %112[%128] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %131, %132 : !llvm.ptr<i64>
    %133 = llvm.mlir.constant(1 : i64) : i64
    %134 = llvm.getelementptr %70[%133] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %104, %134 : !llvm.ptr<ptr<i8>>
    %135 = llvm.call @omTensorListCreate(%70, %67, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %135 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<130 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<130 x i8>> to !llvm.ptr<i8>
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

