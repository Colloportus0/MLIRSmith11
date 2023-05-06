module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_7(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_0(dense<-1> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0"]} {
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
    %24 = llvm.mlir.constant(3 : index) : i64
    %25 = llvm.mlir.constant(2 : index) : i64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(1 : i64) : i64
    %28 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x i32>>
    %29 = llvm.bitcast %28 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %30 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %31 = llvm.insertvalue %29, %30[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %32 = llvm.insertvalue %29, %31[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %33 = llvm.mlir.constant(0 : index) : i64
    %34 = llvm.insertvalue %33, %32[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %35 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<1 x i32>>
    %36 = llvm.bitcast %35 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %37 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %38 = llvm.insertvalue %36, %37[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %39 = llvm.insertvalue %36, %38[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %40 = llvm.mlir.constant(0 : index) : i64
    %41 = llvm.insertvalue %40, %39[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %42 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %43 = llvm.bitcast %42 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %44 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %45 = llvm.insertvalue %43, %44[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.insertvalue %43, %45[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.mlir.constant(0 : index) : i64
    %48 = llvm.insertvalue %47, %46[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(4 : index) : i64
    %50 = llvm.insertvalue %49, %48[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(1 : index) : i64
    %52 = llvm.insertvalue %51, %50[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %54 = llvm.bitcast %53 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %55 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %56 = llvm.insertvalue %54, %55[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %57 = llvm.insertvalue %54, %56[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.mlir.constant(0 : index) : i64
    %59 = llvm.insertvalue %58, %57[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %60 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.constant(4 : index) : i64
    %68 = llvm.insertvalue %67, %66[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.mlir.constant(1 : index) : i64
    %70 = llvm.insertvalue %69, %68[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %72 = llvm.bitcast %71 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %73 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %74 = llvm.insertvalue %72, %73[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.insertvalue %72, %74[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(0 : index) : i64
    %77 = llvm.insertvalue %76, %75[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.mlir.constant(4 : index) : i64
    %79 = llvm.insertvalue %78, %77[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.insertvalue %80, %79[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x i64>>
    %83 = llvm.bitcast %82 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %84 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %85 = llvm.insertvalue %83, %84[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %86 = llvm.insertvalue %83, %85[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %87 = llvm.mlir.constant(0 : index) : i64
    %88 = llvm.insertvalue %87, %86[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %89 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<4 x i64>>
    %90 = llvm.bitcast %89 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %91 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %92 = llvm.insertvalue %90, %91[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %93 = llvm.insertvalue %90, %92[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %94 = llvm.mlir.constant(0 : index) : i64
    %95 = llvm.insertvalue %94, %93[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %96 = llvm.mlir.constant(4 : index) : i64
    %97 = llvm.insertvalue %96, %95[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(1 : index) : i64
    %99 = llvm.insertvalue %98, %97[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(4 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.null : !llvm.ptr<i64>
    %103 = llvm.getelementptr %102[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i64> to i64
    %105 = llvm.mlir.constant(16 : index) : i64
    %106 = llvm.add %104, %105  : i64
    %107 = llvm.call @malloc(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.bitcast %107 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i64> to i64
    %110 = llvm.mlir.constant(1 : index) : i64
    %111 = llvm.sub %105, %110  : i64
    %112 = llvm.add %109, %111  : i64
    %113 = llvm.urem %112, %105  : i64
    %114 = llvm.sub %112, %113  : i64
    %115 = llvm.inttoptr %114 : i64 to !llvm.ptr<i64>
    %116 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %117 = llvm.insertvalue %108, %116[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %118 = llvm.insertvalue %115, %117[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.insertvalue %119, %118[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %121 = llvm.insertvalue %100, %120[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %122 = llvm.insertvalue %101, %121[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %123 = llvm.mlir.constant(0 : index) : i64
    %124 = llvm.mlir.constant(4 : index) : i64
    %125 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%123 : i64)
  ^bb1(%126: i64):  // 2 preds: ^bb0, ^bb2
    %127 = llvm.icmp "slt" %126, %124 : i64
    llvm.cond_br %127, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %128 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.getelementptr %128[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %27, %129 : !llvm.ptr<i64>
    %130 = llvm.add %126, %125  : i64
    llvm.br ^bb1(%130 : i64)
  ^bb3:  // pred: ^bb1
    %131 = llvm.mlir.constant(4 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.null : !llvm.ptr<i64>
    %134 = llvm.getelementptr %133[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %135 = llvm.ptrtoint %134 : !llvm.ptr<i64> to i64
    %136 = llvm.mlir.constant(16 : index) : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.call @malloc(%137) : (i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %140 = llvm.ptrtoint %139 : !llvm.ptr<i64> to i64
    %141 = llvm.mlir.constant(1 : index) : i64
    %142 = llvm.sub %136, %141  : i64
    %143 = llvm.add %140, %142  : i64
    %144 = llvm.urem %143, %136  : i64
    %145 = llvm.sub %143, %144  : i64
    %146 = llvm.inttoptr %145 : i64 to !llvm.ptr<i64>
    %147 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %148 = llvm.insertvalue %139, %147[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.insertvalue %146, %148[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.mlir.constant(0 : index) : i64
    %151 = llvm.insertvalue %150, %149[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %152 = llvm.insertvalue %131, %151[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %153 = llvm.insertvalue %132, %152[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(4 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%154 : i64)
  ^bb4(%157: i64):  // 2 preds: ^bb3, ^bb5
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %159 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.getelementptr %159[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %161 = llvm.load %160 : !llvm.ptr<i64>
    %162 = llvm.extractvalue %88[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %163 = llvm.load %162 : !llvm.ptr<i64>
    %164 = llvm.mul %161, %163  : i64
    %165 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%157] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %164, %166 : !llvm.ptr<i64>
    %167 = llvm.add %157, %156  : i64
    llvm.br ^bb4(%167 : i64)
  ^bb6:  // pred: ^bb4
    %168 = llvm.mlir.constant(4 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.null : !llvm.ptr<i1>
    %171 = llvm.getelementptr %170[%168] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i1> to i64
    %173 = llvm.mlir.constant(16 : index) : i64
    %174 = llvm.add %172, %173  : i64
    %175 = llvm.call @malloc(%174) : (i64) -> !llvm.ptr<i8>
    %176 = llvm.bitcast %175 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<i1> to i64
    %178 = llvm.mlir.constant(1 : index) : i64
    %179 = llvm.sub %173, %178  : i64
    %180 = llvm.add %177, %179  : i64
    %181 = llvm.urem %180, %173  : i64
    %182 = llvm.sub %180, %181  : i64
    %183 = llvm.inttoptr %182 : i64 to !llvm.ptr<i1>
    %184 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %185 = llvm.insertvalue %176, %184[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.insertvalue %183, %185[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %187 = llvm.mlir.constant(0 : index) : i64
    %188 = llvm.insertvalue %187, %186[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %189 = llvm.insertvalue %168, %188[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %190 = llvm.insertvalue %169, %189[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %191 = llvm.mlir.constant(0 : index) : i64
    %192 = llvm.mlir.constant(4 : index) : i64
    %193 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%191 : i64)
  ^bb7(%194: i64):  // 2 preds: ^bb6, ^bb8
    %195 = llvm.icmp "slt" %194, %192 : i64
    llvm.cond_br %195, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %196 = llvm.extractvalue %81[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.getelementptr %196[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %198 = llvm.load %197 : !llvm.ptr<i64>
    %199 = llvm.extractvalue %153[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %200 = llvm.getelementptr %199[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %201 = llvm.load %200 : !llvm.ptr<i64>
    %202 = llvm.icmp "eq" %198, %201 : i64
    %203 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.getelementptr %203[%194] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %202, %204 : !llvm.ptr<i1>
    %205 = llvm.add %194, %193  : i64
    llvm.br ^bb7(%205 : i64)
  ^bb9:  // pred: ^bb7
    %206 = llvm.mlir.constant(4 : index) : i64
    %207 = llvm.mlir.constant(1 : index) : i64
    %208 = llvm.mlir.null : !llvm.ptr<i64>
    %209 = llvm.getelementptr %208[%206] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %210 = llvm.ptrtoint %209 : !llvm.ptr<i64> to i64
    %211 = llvm.mlir.constant(16 : index) : i64
    %212 = llvm.add %210, %211  : i64
    %213 = llvm.call @malloc(%212) : (i64) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i64> to i64
    %216 = llvm.mlir.constant(1 : index) : i64
    %217 = llvm.sub %211, %216  : i64
    %218 = llvm.add %215, %217  : i64
    %219 = llvm.urem %218, %211  : i64
    %220 = llvm.sub %218, %219  : i64
    %221 = llvm.inttoptr %220 : i64 to !llvm.ptr<i64>
    %222 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %223 = llvm.insertvalue %214, %222[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.insertvalue %221, %223[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.mlir.constant(0 : index) : i64
    %226 = llvm.insertvalue %225, %224[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %227 = llvm.insertvalue %206, %226[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %228 = llvm.insertvalue %207, %227[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.mlir.constant(0 : index) : i64
    %230 = llvm.mlir.constant(4 : index) : i64
    %231 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%229 : i64)
  ^bb10(%232: i64):  // 2 preds: ^bb9, ^bb11
    %233 = llvm.icmp "slt" %232, %230 : i64
    llvm.cond_br %233, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %234 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.getelementptr %234[%232] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %236 = llvm.load %235 : !llvm.ptr<i1>
    %237 = llvm.extractvalue %122[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %238 = llvm.getelementptr %237[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %239 = llvm.load %238 : !llvm.ptr<i64>
    %240 = llvm.extractvalue %99[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %242 = llvm.load %241 : !llvm.ptr<i64>
    %243 = llvm.select %236, %239, %242 : i1, i64
    %244 = llvm.extractvalue %228[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %245 = llvm.getelementptr %244[%232] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %243, %245 : !llvm.ptr<i64>
    %246 = llvm.add %232, %231  : i64
    llvm.br ^bb10(%246 : i64)
  ^bb12:  // pred: ^bb10
    %247 = llvm.mlir.constant(1 : index) : i64
    %248 = llvm.mlir.constant(1 : index) : i64
    %249 = llvm.mlir.constant(1 : index) : i64
    %250 = llvm.mlir.constant(1 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.null : !llvm.ptr<i32>
    %253 = llvm.getelementptr %252[%247] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
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
    %271 = llvm.insertvalue %247, %270[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %272 = llvm.insertvalue %248, %271[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %273 = llvm.insertvalue %249, %272[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %274 = llvm.insertvalue %250, %273[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %275 = llvm.insertvalue %248, %274[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %276 = llvm.insertvalue %249, %275[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %277 = llvm.insertvalue %250, %276[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.insertvalue %251, %277[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.mlir.constant(0 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    %281 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%279 : i64)
  ^bb13(%282: i64):  // 2 preds: ^bb12, ^bb23
    %283 = llvm.icmp "slt" %282, %280 : i64
    llvm.cond_br %283, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %284 = llvm.mlir.constant(0 : index) : i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%284 : i64)
  ^bb15(%287: i64):  // 2 preds: ^bb14, ^bb22
    %288 = llvm.icmp "slt" %287, %285 : i64
    llvm.cond_br %288, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(1 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%289 : i64)
  ^bb17(%292: i64):  // 2 preds: ^bb16, ^bb21
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%294 : i64)
  ^bb19(%297: i64):  // 2 preds: ^bb18, ^bb20
    %298 = llvm.icmp "slt" %297, %295 : i64
    llvm.cond_br %298, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %299 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %300 = llvm.add %26, %26  : i64
    %301 = llvm.add %300, %26  : i64
    %302 = llvm.add %301, %26  : i64
    %303 = llvm.getelementptr %299[%302] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %304 = llvm.load %303 : !llvm.ptr<i32>
    %305 = llvm.extractvalue %278[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %306 = llvm.add %282, %287  : i64
    %307 = llvm.add %306, %292  : i64
    %308 = llvm.add %307, %297  : i64
    %309 = llvm.getelementptr %305[%308] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %304, %309 : !llvm.ptr<i32>
    %310 = llvm.add %297, %296  : i64
    llvm.br ^bb19(%310 : i64)
  ^bb21:  // pred: ^bb19
    %311 = llvm.add %292, %291  : i64
    llvm.br ^bb17(%311 : i64)
  ^bb22:  // pred: ^bb17
    %312 = llvm.add %287, %286  : i64
    llvm.br ^bb15(%312 : i64)
  ^bb23:  // pred: ^bb15
    %313 = llvm.add %282, %281  : i64
    llvm.br ^bb13(%313 : i64)
  ^bb24:  // pred: ^bb13
    %314 = llvm.mlir.constant(1 : index) : i64
    %315 = llvm.mlir.constant(2 : index) : i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.mlir.constant(1 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mlir.constant(2 : index) : i64
    %320 = llvm.mlir.null : !llvm.ptr<i32>
    %321 = llvm.getelementptr %320[%319] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %322 = llvm.ptrtoint %321 : !llvm.ptr<i32> to i64
    %323 = llvm.mlir.constant(16 : index) : i64
    %324 = llvm.add %322, %323  : i64
    %325 = llvm.call @malloc(%324) : (i64) -> !llvm.ptr<i8>
    %326 = llvm.bitcast %325 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %327 = llvm.ptrtoint %326 : !llvm.ptr<i32> to i64
    %328 = llvm.mlir.constant(1 : index) : i64
    %329 = llvm.sub %323, %328  : i64
    %330 = llvm.add %327, %329  : i64
    %331 = llvm.urem %330, %323  : i64
    %332 = llvm.sub %330, %331  : i64
    %333 = llvm.inttoptr %332 : i64 to !llvm.ptr<i32>
    %334 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %335 = llvm.insertvalue %326, %334[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %336 = llvm.insertvalue %333, %335[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.insertvalue %337, %336[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.insertvalue %314, %338[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %340 = llvm.insertvalue %315, %339[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %316, %340[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %317, %341[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %315, %342[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %316, %343[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %317, %344[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %318, %345[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%347 : i64)
  ^bb25(%350: i64):  // 2 preds: ^bb24, ^bb35
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%352 : i64)
  ^bb27(%355: i64):  // 2 preds: ^bb26, ^bb34
    %356 = llvm.icmp "slt" %355, %353 : i64
    llvm.cond_br %356, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %357 = llvm.mlir.constant(0 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    %359 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%357 : i64)
  ^bb29(%360: i64):  // 2 preds: ^bb28, ^bb33
    %361 = llvm.icmp "slt" %360, %358 : i64
    llvm.cond_br %361, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.mlir.constant(1 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%362 : i64)
  ^bb31(%365: i64):  // 2 preds: ^bb30, ^bb32
    %366 = llvm.icmp "slt" %365, %363 : i64
    llvm.cond_br %366, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %367 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.add %350, %355  : i64
    %369 = llvm.add %368, %360  : i64
    %370 = llvm.add %369, %365  : i64
    %371 = llvm.getelementptr %367[%370] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %372 = llvm.load %371 : !llvm.ptr<i32>
    %373 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %374 = llvm.mlir.constant(2 : index) : i64
    %375 = llvm.mul %350, %374  : i64
    %376 = llvm.add %375, %355  : i64
    %377 = llvm.add %376, %360  : i64
    %378 = llvm.add %377, %365  : i64
    %379 = llvm.getelementptr %373[%378] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %372, %379 : !llvm.ptr<i32>
    %380 = llvm.add %365, %364  : i64
    llvm.br ^bb31(%380 : i64)
  ^bb33:  // pred: ^bb31
    %381 = llvm.add %360, %359  : i64
    llvm.br ^bb29(%381 : i64)
  ^bb34:  // pred: ^bb29
    %382 = llvm.add %355, %354  : i64
    llvm.br ^bb27(%382 : i64)
  ^bb35:  // pred: ^bb27
    %383 = llvm.add %350, %349  : i64
    llvm.br ^bb25(%383 : i64)
  ^bb36:  // pred: ^bb25
    %384 = llvm.mlir.constant(0 : index) : i64
    %385 = llvm.mlir.constant(1 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%384 : i64)
  ^bb37(%387: i64):  // 2 preds: ^bb36, ^bb47
    %388 = llvm.icmp "slt" %387, %385 : i64
    llvm.cond_br %388, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %389 = llvm.mlir.constant(0 : index) : i64
    %390 = llvm.mlir.constant(1 : index) : i64
    %391 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%389 : i64)
  ^bb39(%392: i64):  // 2 preds: ^bb38, ^bb46
    %393 = llvm.icmp "slt" %392, %390 : i64
    llvm.cond_br %393, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %394 = llvm.mlir.constant(0 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%394 : i64)
  ^bb41(%397: i64):  // 2 preds: ^bb40, ^bb45
    %398 = llvm.icmp "slt" %397, %395 : i64
    llvm.cond_br %398, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %399 = llvm.mlir.constant(0 : index) : i64
    %400 = llvm.mlir.constant(1 : index) : i64
    %401 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%399 : i64)
  ^bb43(%402: i64):  // 2 preds: ^bb42, ^bb44
    %403 = llvm.icmp "slt" %402, %400 : i64
    llvm.cond_br %403, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.add %392, %404  : i64
    %406 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.add %387, %392  : i64
    %408 = llvm.add %407, %397  : i64
    %409 = llvm.add %408, %402  : i64
    %410 = llvm.getelementptr %406[%409] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %411 = llvm.load %410 : !llvm.ptr<i32>
    %412 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.mlir.constant(2 : index) : i64
    %414 = llvm.mul %387, %413  : i64
    %415 = llvm.add %414, %405  : i64
    %416 = llvm.add %415, %397  : i64
    %417 = llvm.add %416, %402  : i64
    %418 = llvm.getelementptr %412[%417] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %411, %418 : !llvm.ptr<i32>
    %419 = llvm.add %402, %401  : i64
    llvm.br ^bb43(%419 : i64)
  ^bb45:  // pred: ^bb43
    %420 = llvm.add %397, %396  : i64
    llvm.br ^bb41(%420 : i64)
  ^bb46:  // pred: ^bb41
    %421 = llvm.add %392, %391  : i64
    llvm.br ^bb39(%421 : i64)
  ^bb47:  // pred: ^bb39
    %422 = llvm.add %387, %386  : i64
    llvm.br ^bb37(%422 : i64)
  ^bb48:  // pred: ^bb37
    %423 = llvm.mlir.constant(4 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.null : !llvm.ptr<i64>
    %426 = llvm.getelementptr %425[%423] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %427 = llvm.ptrtoint %426 : !llvm.ptr<i64> to i64
    %428 = llvm.mlir.constant(16 : index) : i64
    %429 = llvm.add %427, %428  : i64
    %430 = llvm.call @malloc(%429) : (i64) -> !llvm.ptr<i8>
    %431 = llvm.bitcast %430 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<i64> to i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.sub %428, %433  : i64
    %435 = llvm.add %432, %434  : i64
    %436 = llvm.urem %435, %428  : i64
    %437 = llvm.sub %435, %436  : i64
    %438 = llvm.inttoptr %437 : i64 to !llvm.ptr<i64>
    %439 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %440 = llvm.insertvalue %431, %439[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %441 = llvm.insertvalue %438, %440[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %442 = llvm.mlir.constant(0 : index) : i64
    %443 = llvm.insertvalue %442, %441[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.insertvalue %423, %443[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %445 = llvm.insertvalue %424, %444[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(4 : index) : i64
    %448 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%446 : i64)
  ^bb49(%449: i64):  // 2 preds: ^bb48, ^bb50
    %450 = llvm.icmp "slt" %449, %447 : i64
    llvm.cond_br %450, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %451 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %452 = llvm.getelementptr %451[%449] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %27, %452 : !llvm.ptr<i64>
    %453 = llvm.add %449, %448  : i64
    llvm.br ^bb49(%453 : i64)
  ^bb51:  // pred: ^bb49
    %454 = llvm.mlir.constant(4 : index) : i64
    %455 = llvm.mlir.constant(1 : index) : i64
    %456 = llvm.mlir.null : !llvm.ptr<i64>
    %457 = llvm.getelementptr %456[%454] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %458 = llvm.ptrtoint %457 : !llvm.ptr<i64> to i64
    %459 = llvm.mlir.constant(16 : index) : i64
    %460 = llvm.add %458, %459  : i64
    %461 = llvm.call @malloc(%460) : (i64) -> !llvm.ptr<i8>
    %462 = llvm.bitcast %461 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %463 = llvm.ptrtoint %462 : !llvm.ptr<i64> to i64
    %464 = llvm.mlir.constant(1 : index) : i64
    %465 = llvm.sub %459, %464  : i64
    %466 = llvm.add %463, %465  : i64
    %467 = llvm.urem %466, %459  : i64
    %468 = llvm.sub %466, %467  : i64
    %469 = llvm.inttoptr %468 : i64 to !llvm.ptr<i64>
    %470 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %471 = llvm.insertvalue %462, %470[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %472 = llvm.insertvalue %469, %471[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.insertvalue %473, %472[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.insertvalue %454, %474[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %476 = llvm.insertvalue %455, %475[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %477 = llvm.mlir.constant(0 : index) : i64
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%477 : i64)
  ^bb52(%480: i64):  // 2 preds: ^bb51, ^bb53
    %481 = llvm.icmp "slt" %480, %478 : i64
    llvm.cond_br %481, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %482 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.getelementptr %482[%480] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %484 = llvm.load %483 : !llvm.ptr<i64>
    %485 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %486 = llvm.load %485 : !llvm.ptr<i64>
    %487 = llvm.mul %484, %486  : i64
    %488 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %489 = llvm.getelementptr %488[%480] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %487, %489 : !llvm.ptr<i64>
    %490 = llvm.add %480, %479  : i64
    llvm.br ^bb52(%490 : i64)
  ^bb54:  // pred: ^bb52
    %491 = llvm.mlir.constant(4 : index) : i64
    %492 = llvm.mlir.constant(1 : index) : i64
    %493 = llvm.mlir.null : !llvm.ptr<i1>
    %494 = llvm.getelementptr %493[%491] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %495 = llvm.ptrtoint %494 : !llvm.ptr<i1> to i64
    %496 = llvm.mlir.constant(16 : index) : i64
    %497 = llvm.add %495, %496  : i64
    %498 = llvm.call @malloc(%497) : (i64) -> !llvm.ptr<i8>
    %499 = llvm.bitcast %498 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %500 = llvm.ptrtoint %499 : !llvm.ptr<i1> to i64
    %501 = llvm.mlir.constant(1 : index) : i64
    %502 = llvm.sub %496, %501  : i64
    %503 = llvm.add %500, %502  : i64
    %504 = llvm.urem %503, %496  : i64
    %505 = llvm.sub %503, %504  : i64
    %506 = llvm.inttoptr %505 : i64 to !llvm.ptr<i1>
    %507 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %508 = llvm.insertvalue %499, %507[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %509 = llvm.insertvalue %506, %508[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.insertvalue %510, %509[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.insertvalue %491, %511[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.insertvalue %492, %512[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.mlir.constant(0 : index) : i64
    %515 = llvm.mlir.constant(4 : index) : i64
    %516 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%514 : i64)
  ^bb55(%517: i64):  // 2 preds: ^bb54, ^bb56
    %518 = llvm.icmp "slt" %517, %515 : i64
    llvm.cond_br %518, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %519 = llvm.extractvalue %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %520 = llvm.getelementptr %519[%517] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %521 = llvm.load %520 : !llvm.ptr<i64>
    %522 = llvm.extractvalue %476[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%517] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %524 = llvm.load %523 : !llvm.ptr<i64>
    %525 = llvm.icmp "eq" %521, %524 : i64
    %526 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %527 = llvm.getelementptr %526[%517] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %525, %527 : !llvm.ptr<i1>
    %528 = llvm.add %517, %516  : i64
    llvm.br ^bb55(%528 : i64)
  ^bb57:  // pred: ^bb55
    %529 = llvm.mlir.constant(4 : index) : i64
    %530 = llvm.mlir.constant(1 : index) : i64
    %531 = llvm.mlir.null : !llvm.ptr<i64>
    %532 = llvm.getelementptr %531[%529] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %533 = llvm.ptrtoint %532 : !llvm.ptr<i64> to i64
    %534 = llvm.mlir.constant(16 : index) : i64
    %535 = llvm.add %533, %534  : i64
    %536 = llvm.call @malloc(%535) : (i64) -> !llvm.ptr<i8>
    %537 = llvm.bitcast %536 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %538 = llvm.ptrtoint %537 : !llvm.ptr<i64> to i64
    %539 = llvm.mlir.constant(1 : index) : i64
    %540 = llvm.sub %534, %539  : i64
    %541 = llvm.add %538, %540  : i64
    %542 = llvm.urem %541, %534  : i64
    %543 = llvm.sub %541, %542  : i64
    %544 = llvm.inttoptr %543 : i64 to !llvm.ptr<i64>
    %545 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %546 = llvm.insertvalue %537, %545[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %547 = llvm.insertvalue %544, %546[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %548 = llvm.mlir.constant(0 : index) : i64
    %549 = llvm.insertvalue %548, %547[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %550 = llvm.insertvalue %529, %549[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %551 = llvm.insertvalue %530, %550[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.mlir.constant(4 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%552 : i64)
  ^bb58(%555: i64):  // 2 preds: ^bb57, ^bb59
    %556 = llvm.icmp "slt" %555, %553 : i64
    llvm.cond_br %556, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %557 = llvm.extractvalue %513[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %558 = llvm.getelementptr %557[%555] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %559 = llvm.load %558 : !llvm.ptr<i1>
    %560 = llvm.extractvalue %445[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %561 = llvm.getelementptr %560[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %562 = llvm.load %561 : !llvm.ptr<i64>
    %563 = llvm.extractvalue %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %564 = llvm.getelementptr %563[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %565 = llvm.load %564 : !llvm.ptr<i64>
    %566 = llvm.select %559, %562, %565 : i1, i64
    %567 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %568 = llvm.getelementptr %567[%555] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %566, %568 : !llvm.ptr<i64>
    %569 = llvm.add %555, %554  : i64
    llvm.br ^bb58(%569 : i64)
  ^bb60:  // pred: ^bb58
    %570 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %571 = llvm.getelementptr %570[%26] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %572 = llvm.load %571 : !llvm.ptr<i64>
    %573 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %574 = llvm.getelementptr %573[%25] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %575 = llvm.load %574 : !llvm.ptr<i64>
    %576 = llvm.extractvalue %551[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.getelementptr %576[%24] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %578 = llvm.load %577 : !llvm.ptr<i64>
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mlir.constant(1 : index) : i64
    %581 = llvm.mul %578, %575  : i64
    %582 = llvm.mul %581, %579  : i64
    %583 = llvm.mul %582, %572  : i64
    %584 = llvm.mlir.null : !llvm.ptr<i32>
    %585 = llvm.getelementptr %584[%583] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %586 = llvm.ptrtoint %585 : !llvm.ptr<i32> to i64
    %587 = llvm.mlir.constant(16 : index) : i64
    %588 = llvm.add %586, %587  : i64
    %589 = llvm.call @malloc(%588) : (i64) -> !llvm.ptr<i8>
    %590 = llvm.bitcast %589 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %591 = llvm.ptrtoint %590 : !llvm.ptr<i32> to i64
    %592 = llvm.mlir.constant(1 : index) : i64
    %593 = llvm.sub %587, %592  : i64
    %594 = llvm.add %591, %593  : i64
    %595 = llvm.urem %594, %587  : i64
    %596 = llvm.sub %594, %595  : i64
    %597 = llvm.inttoptr %596 : i64 to !llvm.ptr<i32>
    %598 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %599 = llvm.insertvalue %590, %598[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.insertvalue %597, %599[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.mlir.constant(0 : index) : i64
    %602 = llvm.insertvalue %601, %600[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %603 = llvm.insertvalue %572, %602[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %604 = llvm.insertvalue %579, %603[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %605 = llvm.insertvalue %575, %604[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %606 = llvm.insertvalue %578, %605[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %607 = llvm.insertvalue %582, %606[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %608 = llvm.insertvalue %581, %607[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.insertvalue %578, %608[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %610 = llvm.insertvalue %580, %609[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%611 : i64)
  ^bb61(%613: i64):  // 2 preds: ^bb60, ^bb71
    %614 = llvm.icmp "slt" %613, %572 : i64
    llvm.cond_br %614, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(2 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%615 : i64)
  ^bb63(%618: i64):  // 2 preds: ^bb62, ^bb70
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %620 = llvm.mlir.constant(0 : index) : i64
    %621 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%620 : i64)
  ^bb65(%622: i64):  // 2 preds: ^bb64, ^bb69
    %623 = llvm.icmp "slt" %622, %575 : i64
    llvm.cond_br %623, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %624 = llvm.mlir.constant(0 : index) : i64
    %625 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%624 : i64)
  ^bb67(%626: i64):  // 2 preds: ^bb66, ^bb68
    %627 = llvm.icmp "slt" %626, %578 : i64
    llvm.cond_br %627, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %628 = llvm.extractvalue %346[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %629 = llvm.mlir.constant(2 : index) : i64
    %630 = llvm.mul %26, %629  : i64
    %631 = llvm.add %630, %618  : i64
    %632 = llvm.add %631, %26  : i64
    %633 = llvm.add %632, %26  : i64
    %634 = llvm.getelementptr %628[%633] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %635 = llvm.load %634 : !llvm.ptr<i32>
    %636 = llvm.extractvalue %610[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.extractvalue %610[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.mul %613, %637  : i64
    %639 = llvm.extractvalue %610[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.mul %618, %639  : i64
    %641 = llvm.add %638, %640  : i64
    %642 = llvm.extractvalue %610[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %643 = llvm.mul %622, %642  : i64
    %644 = llvm.add %641, %643  : i64
    %645 = llvm.add %644, %626  : i64
    %646 = llvm.getelementptr %636[%645] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %635, %646 : !llvm.ptr<i32>
    %647 = llvm.add %626, %625  : i64
    llvm.br ^bb67(%647 : i64)
  ^bb69:  // pred: ^bb67
    %648 = llvm.add %622, %621  : i64
    llvm.br ^bb65(%648 : i64)
  ^bb70:  // pred: ^bb65
    %649 = llvm.add %618, %617  : i64
    llvm.br ^bb63(%649 : i64)
  ^bb71:  // pred: ^bb63
    %650 = llvm.add %613, %612  : i64
    llvm.br ^bb61(%650 : i64)
  ^bb72:  // pred: ^bb61
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.constant(2 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    %654 = llvm.mlir.constant(1 : index) : i64
    %655 = llvm.mlir.constant(1 : index) : i64
    %656 = llvm.mlir.constant(2 : index) : i64
    %657 = llvm.mlir.null : !llvm.ptr<i32>
    %658 = llvm.getelementptr %657[%656] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %659 = llvm.ptrtoint %658 : !llvm.ptr<i32> to i64
    %660 = llvm.mlir.constant(16 : index) : i64
    %661 = llvm.add %659, %660  : i64
    %662 = llvm.call @malloc(%661) : (i64) -> !llvm.ptr<i8>
    %663 = llvm.bitcast %662 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %664 = llvm.ptrtoint %663 : !llvm.ptr<i32> to i64
    %665 = llvm.mlir.constant(1 : index) : i64
    %666 = llvm.sub %660, %665  : i64
    %667 = llvm.add %664, %666  : i64
    %668 = llvm.urem %667, %660  : i64
    %669 = llvm.sub %667, %668  : i64
    %670 = llvm.inttoptr %669 : i64 to !llvm.ptr<i32>
    %671 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %672 = llvm.insertvalue %663, %671[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.insertvalue %670, %672[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.mlir.constant(0 : index) : i64
    %675 = llvm.insertvalue %674, %673[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.insertvalue %651, %675[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %677 = llvm.insertvalue %652, %676[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %678 = llvm.insertvalue %653, %677[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %679 = llvm.insertvalue %654, %678[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %680 = llvm.insertvalue %652, %679[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %681 = llvm.insertvalue %653, %680[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.insertvalue %654, %681[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %683 = llvm.insertvalue %655, %682[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %684 = llvm.mlir.constant(0 : index) : i64
    %685 = llvm.mlir.constant(1 : index) : i64
    %686 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%684 : i64)
  ^bb73(%687: i64):  // 2 preds: ^bb72, ^bb83
    %688 = llvm.icmp "slt" %687, %685 : i64
    llvm.cond_br %688, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %689 = llvm.mlir.constant(0 : index) : i64
    %690 = llvm.mlir.constant(2 : index) : i64
    %691 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%689 : i64)
  ^bb75(%692: i64):  // 2 preds: ^bb74, ^bb82
    %693 = llvm.icmp "slt" %692, %690 : i64
    llvm.cond_br %693, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %694 = llvm.mlir.constant(0 : index) : i64
    %695 = llvm.mlir.constant(1 : index) : i64
    %696 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%694 : i64)
  ^bb77(%697: i64):  // 2 preds: ^bb76, ^bb81
    %698 = llvm.icmp "slt" %697, %695 : i64
    llvm.cond_br %698, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %699 = llvm.mlir.constant(0 : index) : i64
    %700 = llvm.mlir.constant(1 : index) : i64
    %701 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%699 : i64)
  ^bb79(%702: i64):  // 2 preds: ^bb78, ^bb80
    %703 = llvm.icmp "slt" %702, %700 : i64
    llvm.cond_br %703, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %704 = llvm.extractvalue %610[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %705 = llvm.extractvalue %610[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %706 = llvm.mul %687, %705  : i64
    %707 = llvm.extractvalue %610[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %708 = llvm.mul %692, %707  : i64
    %709 = llvm.add %706, %708  : i64
    %710 = llvm.extractvalue %610[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %711 = llvm.mul %697, %710  : i64
    %712 = llvm.add %709, %711  : i64
    %713 = llvm.add %712, %702  : i64
    %714 = llvm.getelementptr %704[%713] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %715 = llvm.load %714 : !llvm.ptr<i32>
    %716 = llvm.extractvalue %34[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %717 = llvm.load %716 : !llvm.ptr<i32>
    %718 = llvm.icmp "slt" %715, %717 : i32
    %719 = llvm.select %718, %717, %715 : i1, i32
    %720 = llvm.extractvalue %41[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %721 = llvm.load %720 : !llvm.ptr<i32>
    %722 = llvm.icmp "slt" %719, %721 : i32
    %723 = llvm.select %722, %719, %721 : i1, i32
    %724 = llvm.extractvalue %683[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %725 = llvm.mlir.constant(2 : index) : i64
    %726 = llvm.mul %687, %725  : i64
    %727 = llvm.add %726, %692  : i64
    %728 = llvm.add %727, %697  : i64
    %729 = llvm.add %728, %702  : i64
    %730 = llvm.getelementptr %724[%729] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %723, %730 : !llvm.ptr<i32>
    %731 = llvm.add %702, %701  : i64
    llvm.br ^bb79(%731 : i64)
  ^bb81:  // pred: ^bb79
    %732 = llvm.add %697, %696  : i64
    llvm.br ^bb77(%732 : i64)
  ^bb82:  // pred: ^bb77
    %733 = llvm.add %692, %691  : i64
    llvm.br ^bb75(%733 : i64)
  ^bb83:  // pred: ^bb75
    %734 = llvm.add %687, %686  : i64
    llvm.br ^bb73(%734 : i64)
  ^bb84:  // pred: ^bb73
    %735 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %736 = llvm.insertvalue %278, %735[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %737 = llvm.insertvalue %683, %736[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %737 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0", "v3_0"], llvm.emit_c_interface, output_names = ["v6_0", "v2_0"]} {
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
    %24 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %24, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %85 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %86 = llvm.extractvalue %85[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %87 = llvm.extractvalue %85[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %88 = llvm.mlir.constant(2 : i64) : i64
    %89 = llvm.mlir.constant(16 : i64) : i64
    %90 = llvm.call @malloc(%89) : (i64) -> !llvm.ptr<i8>
    %91 = llvm.bitcast %90 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %92 = llvm.mlir.constant(4 : i64) : i64
    %93 = llvm.call @omTensorCreateUntyped(%92) : (i64) -> !llvm.ptr<i8>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %86[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.bitcast %95 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %97 = llvm.extractvalue %86[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.bitcast %97 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%93, %94, %96, %98) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %99 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%93, %99) : (!llvm.ptr<i8>, i64) -> ()
    %100 = llvm.call @omTensorGetShape(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %101 = llvm.call @omTensorGetStrides(%93) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %102 = llvm.mlir.constant(0 : i64) : i64
    %103 = llvm.extractvalue %86[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %104 = llvm.getelementptr %100[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.extractvalue %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %101[%102] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.mlir.constant(1 : i64) : i64
    %108 = llvm.extractvalue %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.getelementptr %100[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.extractvalue %86[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %101[%107] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.mlir.constant(2 : i64) : i64
    %113 = llvm.extractvalue %86[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.getelementptr %100[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %113, %114 : !llvm.ptr<i64>
    %115 = llvm.extractvalue %86[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.getelementptr %101[%112] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %115, %116 : !llvm.ptr<i64>
    %117 = llvm.mlir.constant(3 : i64) : i64
    %118 = llvm.extractvalue %86[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.getelementptr %100[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %118, %119 : !llvm.ptr<i64>
    %120 = llvm.extractvalue %86[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.getelementptr %101[%117] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %120, %121 : !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.getelementptr %91[%122] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %93, %123 : !llvm.ptr<ptr<i8>>
    %124 = llvm.mlir.constant(4 : i64) : i64
    %125 = llvm.call @omTensorCreateUntyped(%124) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %87[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.bitcast %127 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %129 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.bitcast %129 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%125, %126, %128, %130) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %131 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%125, %131) : (!llvm.ptr<i8>, i64) -> ()
    %132 = llvm.call @omTensorGetShape(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %133 = llvm.call @omTensorGetStrides(%125) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %134 = llvm.mlir.constant(0 : i64) : i64
    %135 = llvm.extractvalue %87[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %132[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.extractvalue %87[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %133[%134] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.mlir.constant(1 : i64) : i64
    %140 = llvm.extractvalue %87[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %132[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.extractvalue %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %133[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.mlir.constant(2 : i64) : i64
    %145 = llvm.extractvalue %87[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %146 = llvm.getelementptr %132[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %145, %146 : !llvm.ptr<i64>
    %147 = llvm.extractvalue %87[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %148 = llvm.getelementptr %133[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %147, %148 : !llvm.ptr<i64>
    %149 = llvm.mlir.constant(3 : i64) : i64
    %150 = llvm.extractvalue %87[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.getelementptr %132[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %150, %151 : !llvm.ptr<i64>
    %152 = llvm.extractvalue %87[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.getelementptr %133[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %152, %153 : !llvm.ptr<i64>
    %154 = llvm.mlir.constant(1 : i64) : i64
    %155 = llvm.getelementptr %91[%154] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %125, %155 : !llvm.ptr<ptr<i8>>
    %156 = llvm.call @omTensorListCreate(%91, %88, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %156 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<142 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<142 x i8>> to !llvm.ptr<i8>
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

