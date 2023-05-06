module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[2, 1, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64, %arg21: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0"]} {
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
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.mlir.constant(1 : i64) : i64
    %26 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %27 = llvm.bitcast %26 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %28 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %29 = llvm.insertvalue %27, %28[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.insertvalue %27, %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.insertvalue %31, %30[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.mlir.constant(4 : index) : i64
    %34 = llvm.insertvalue %33, %32[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %35 = llvm.mlir.constant(1 : index) : i64
    %36 = llvm.insertvalue %35, %34[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %45 = llvm.bitcast %44 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %46 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %47 = llvm.insertvalue %45, %46[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.insertvalue %45, %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.mlir.constant(0 : index) : i64
    %50 = llvm.insertvalue %49, %48[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.mlir.constant(4 : index) : i64
    %52 = llvm.insertvalue %51, %50[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(1 : index) : i64
    %54 = llvm.insertvalue %53, %52[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %56 = llvm.bitcast %55 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %57 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %58 = llvm.insertvalue %56, %57[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.insertvalue %56, %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.constant(0 : index) : i64
    %61 = llvm.insertvalue %60, %59[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %62 = llvm.mlir.constant(4 : index) : i64
    %63 = llvm.insertvalue %62, %61[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %64 = llvm.mlir.constant(1 : index) : i64
    %65 = llvm.insertvalue %64, %63[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %66 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %67 = llvm.bitcast %66 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %69 = llvm.insertvalue %67, %68[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %73 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %74 = llvm.bitcast %73 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %75 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %76 = llvm.insertvalue %74, %75[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.insertvalue %74, %76[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.mlir.constant(0 : index) : i64
    %79 = llvm.insertvalue %78, %77[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %80 = llvm.mlir.constant(4 : index) : i64
    %81 = llvm.insertvalue %80, %79[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(1 : index) : i64
    %83 = llvm.insertvalue %82, %81[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.null : !llvm.ptr<i64>
    %87 = llvm.getelementptr %86[%84] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i64> to i64
    %89 = llvm.mlir.constant(16 : index) : i64
    %90 = llvm.add %88, %89  : i64
    %91 = llvm.call @malloc(%90) : (i64) -> !llvm.ptr<i8>
    %92 = llvm.bitcast %91 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %93 = llvm.ptrtoint %92 : !llvm.ptr<i64> to i64
    %94 = llvm.mlir.constant(1 : index) : i64
    %95 = llvm.sub %89, %94  : i64
    %96 = llvm.add %93, %95  : i64
    %97 = llvm.urem %96, %89  : i64
    %98 = llvm.sub %96, %97  : i64
    %99 = llvm.inttoptr %98 : i64 to !llvm.ptr<i64>
    %100 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %101 = llvm.insertvalue %92, %100[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.insertvalue %99, %101[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %103 = llvm.mlir.constant(0 : index) : i64
    %104 = llvm.insertvalue %103, %102[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %105 = llvm.insertvalue %84, %104[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.insertvalue %85, %105[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %107 = llvm.mlir.constant(0 : index) : i64
    %108 = llvm.mlir.constant(4 : index) : i64
    %109 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%107 : i64)
  ^bb1(%110: i64):  // 2 preds: ^bb0, ^bb2
    %111 = llvm.icmp "slt" %110, %108 : i64
    llvm.cond_br %111, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %112 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %113 = llvm.getelementptr %112[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %113 : !llvm.ptr<i64>
    %114 = llvm.add %110, %109  : i64
    llvm.br ^bb1(%114 : i64)
  ^bb3:  // pred: ^bb1
    %115 = llvm.mlir.constant(4 : index) : i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.mlir.null : !llvm.ptr<i64>
    %118 = llvm.getelementptr %117[%115] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %119 = llvm.ptrtoint %118 : !llvm.ptr<i64> to i64
    %120 = llvm.mlir.constant(16 : index) : i64
    %121 = llvm.add %119, %120  : i64
    %122 = llvm.call @malloc(%121) : (i64) -> !llvm.ptr<i8>
    %123 = llvm.bitcast %122 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %124 = llvm.ptrtoint %123 : !llvm.ptr<i64> to i64
    %125 = llvm.mlir.constant(1 : index) : i64
    %126 = llvm.sub %120, %125  : i64
    %127 = llvm.add %124, %126  : i64
    %128 = llvm.urem %127, %120  : i64
    %129 = llvm.sub %127, %128  : i64
    %130 = llvm.inttoptr %129 : i64 to !llvm.ptr<i64>
    %131 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %132 = llvm.insertvalue %123, %131[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.insertvalue %130, %132[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %134 = llvm.mlir.constant(0 : index) : i64
    %135 = llvm.insertvalue %134, %133[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %136 = llvm.insertvalue %115, %135[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %137 = llvm.insertvalue %116, %136[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %138 = llvm.mlir.constant(0 : index) : i64
    %139 = llvm.mlir.constant(4 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%138 : i64)
  ^bb4(%141: i64):  // 2 preds: ^bb3, ^bb5
    %142 = llvm.icmp "slt" %141, %139 : i64
    llvm.cond_br %142, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %143 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %144 = llvm.getelementptr %143[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %145 = llvm.load %144 : !llvm.ptr<i64>
    %146 = llvm.extractvalue %72[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %147 = llvm.load %146 : !llvm.ptr<i64>
    %148 = llvm.mul %145, %147  : i64
    %149 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %150 = llvm.getelementptr %149[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %148, %150 : !llvm.ptr<i64>
    %151 = llvm.add %141, %140  : i64
    llvm.br ^bb4(%151 : i64)
  ^bb6:  // pred: ^bb4
    %152 = llvm.mlir.constant(4 : index) : i64
    %153 = llvm.mlir.constant(1 : index) : i64
    %154 = llvm.mlir.null : !llvm.ptr<i1>
    %155 = llvm.getelementptr %154[%152] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i1> to i64
    %157 = llvm.mlir.constant(16 : index) : i64
    %158 = llvm.add %156, %157  : i64
    %159 = llvm.call @malloc(%158) : (i64) -> !llvm.ptr<i8>
    %160 = llvm.bitcast %159 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %161 = llvm.ptrtoint %160 : !llvm.ptr<i1> to i64
    %162 = llvm.mlir.constant(1 : index) : i64
    %163 = llvm.sub %157, %162  : i64
    %164 = llvm.add %161, %163  : i64
    %165 = llvm.urem %164, %157  : i64
    %166 = llvm.sub %164, %165  : i64
    %167 = llvm.inttoptr %166 : i64 to !llvm.ptr<i1>
    %168 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %169 = llvm.insertvalue %160, %168[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.insertvalue %167, %169[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %171 = llvm.mlir.constant(0 : index) : i64
    %172 = llvm.insertvalue %171, %170[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %152, %172[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %153, %173[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.mlir.constant(0 : index) : i64
    %176 = llvm.mlir.constant(4 : index) : i64
    %177 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%175 : i64)
  ^bb7(%178: i64):  // 2 preds: ^bb6, ^bb8
    %179 = llvm.icmp "slt" %178, %176 : i64
    llvm.cond_br %179, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %180 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.getelementptr %180[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %181 : !llvm.ptr<i64>
    %183 = llvm.extractvalue %137[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.getelementptr %183[%178] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %185 = llvm.load %184 : !llvm.ptr<i64>
    %186 = llvm.icmp "eq" %182, %185 : i64
    %187 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %188 = llvm.getelementptr %187[%178] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %186, %188 : !llvm.ptr<i1>
    %189 = llvm.add %178, %177  : i64
    llvm.br ^bb7(%189 : i64)
  ^bb9:  // pred: ^bb7
    %190 = llvm.mlir.constant(4 : index) : i64
    %191 = llvm.mlir.constant(1 : index) : i64
    %192 = llvm.mlir.null : !llvm.ptr<i64>
    %193 = llvm.getelementptr %192[%190] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i64> to i64
    %195 = llvm.mlir.constant(16 : index) : i64
    %196 = llvm.add %194, %195  : i64
    %197 = llvm.call @malloc(%196) : (i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<i64> to i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.sub %195, %200  : i64
    %202 = llvm.add %199, %201  : i64
    %203 = llvm.urem %202, %195  : i64
    %204 = llvm.sub %202, %203  : i64
    %205 = llvm.inttoptr %204 : i64 to !llvm.ptr<i64>
    %206 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %207 = llvm.insertvalue %198, %206[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.insertvalue %205, %207[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.insertvalue %209, %208[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %211 = llvm.insertvalue %190, %210[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %191, %211[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.mlir.constant(4 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%213 : i64)
  ^bb10(%216: i64):  // 2 preds: ^bb9, ^bb11
    %217 = llvm.icmp "slt" %216, %214 : i64
    llvm.cond_br %217, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %218 = llvm.extractvalue %174[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %219 = llvm.getelementptr %218[%216] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %220 = llvm.load %219 : !llvm.ptr<i1>
    %221 = llvm.extractvalue %106[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %222 = llvm.getelementptr %221[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %223 = llvm.load %222 : !llvm.ptr<i64>
    %224 = llvm.extractvalue %83[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %225 = llvm.getelementptr %224[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %226 = llvm.load %225 : !llvm.ptr<i64>
    %227 = llvm.select %220, %223, %226 : i1, i64
    %228 = llvm.extractvalue %212[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %228[%216] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %227, %229 : !llvm.ptr<i64>
    %230 = llvm.add %216, %215  : i64
    llvm.br ^bb10(%230 : i64)
  ^bb12:  // pred: ^bb10
    %231 = llvm.mlir.constant(1 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.constant(1 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    %235 = llvm.mlir.constant(1 : index) : i64
    %236 = llvm.mlir.null : !llvm.ptr<i32>
    %237 = llvm.getelementptr %236[%231] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i32> to i64
    %239 = llvm.mlir.constant(16 : index) : i64
    %240 = llvm.add %238, %239  : i64
    %241 = llvm.call @malloc(%240) : (i64) -> !llvm.ptr<i8>
    %242 = llvm.bitcast %241 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %243 = llvm.ptrtoint %242 : !llvm.ptr<i32> to i64
    %244 = llvm.mlir.constant(1 : index) : i64
    %245 = llvm.sub %239, %244  : i64
    %246 = llvm.add %243, %245  : i64
    %247 = llvm.urem %246, %239  : i64
    %248 = llvm.sub %246, %247  : i64
    %249 = llvm.inttoptr %248 : i64 to !llvm.ptr<i32>
    %250 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %251 = llvm.insertvalue %242, %250[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %249, %251[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.mlir.constant(0 : index) : i64
    %254 = llvm.insertvalue %253, %252[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %231, %254[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %232, %255[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %233, %256[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.insertvalue %234, %257[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %259 = llvm.insertvalue %232, %258[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %260 = llvm.insertvalue %233, %259[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.insertvalue %234, %260[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %262 = llvm.insertvalue %235, %261[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%263 : i64)
  ^bb13(%266: i64):  // 2 preds: ^bb12, ^bb23
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%268 : i64)
  ^bb15(%271: i64):  // 2 preds: ^bb14, ^bb22
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%273 : i64)
  ^bb17(%276: i64):  // 2 preds: ^bb16, ^bb21
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %278 = llvm.mlir.constant(0 : index) : i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%278 : i64)
  ^bb19(%281: i64):  // 2 preds: ^bb18, ^bb20
    %282 = llvm.icmp "slt" %281, %279 : i64
    llvm.cond_br %282, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %283 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %284 = llvm.add %24, %24  : i64
    %285 = llvm.add %284, %24  : i64
    %286 = llvm.add %285, %24  : i64
    %287 = llvm.getelementptr %283[%286] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %288 = llvm.load %287 : !llvm.ptr<i32>
    %289 = llvm.extractvalue %262[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.add %266, %271  : i64
    %291 = llvm.add %290, %276  : i64
    %292 = llvm.add %291, %281  : i64
    %293 = llvm.getelementptr %289[%292] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %288, %293 : !llvm.ptr<i32>
    %294 = llvm.add %281, %280  : i64
    llvm.br ^bb19(%294 : i64)
  ^bb21:  // pred: ^bb19
    %295 = llvm.add %276, %275  : i64
    llvm.br ^bb17(%295 : i64)
  ^bb22:  // pred: ^bb17
    %296 = llvm.add %271, %270  : i64
    llvm.br ^bb15(%296 : i64)
  ^bb23:  // pred: ^bb15
    %297 = llvm.add %266, %265  : i64
    llvm.br ^bb13(%297 : i64)
  ^bb24:  // pred: ^bb13
    %298 = llvm.mlir.constant(2 : index) : i64
    %299 = llvm.mlir.constant(1 : index) : i64
    %300 = llvm.mlir.constant(2 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    %302 = llvm.mlir.constant(1 : index) : i64
    %303 = llvm.mlir.constant(2 : index) : i64
    %304 = llvm.mlir.constant(4 : index) : i64
    %305 = llvm.mlir.null : !llvm.ptr<i32>
    %306 = llvm.getelementptr %305[%304] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i32> to i64
    %308 = llvm.mlir.constant(16 : index) : i64
    %309 = llvm.add %307, %308  : i64
    %310 = llvm.call @malloc(%309) : (i64) -> !llvm.ptr<i8>
    %311 = llvm.bitcast %310 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i32> to i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.sub %308, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.urem %315, %308  : i64
    %317 = llvm.sub %315, %316  : i64
    %318 = llvm.inttoptr %317 : i64 to !llvm.ptr<i32>
    %319 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %320 = llvm.insertvalue %311, %319[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %318, %320[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.insertvalue %322, %321[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %298, %323[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.insertvalue %299, %324[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %326 = llvm.insertvalue %300, %325[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %327 = llvm.insertvalue %301, %326[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %328 = llvm.insertvalue %303, %327[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %329 = llvm.insertvalue %300, %328[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %330 = llvm.insertvalue %301, %329[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %331 = llvm.insertvalue %302, %330[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %332 = llvm.mlir.constant(0 : index) : i64
    %333 = llvm.mlir.constant(2 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%332 : i64)
  ^bb25(%335: i64):  // 2 preds: ^bb24, ^bb35
    %336 = llvm.icmp "slt" %335, %333 : i64
    llvm.cond_br %336, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %337 = llvm.mlir.constant(0 : index) : i64
    %338 = llvm.mlir.constant(1 : index) : i64
    %339 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%337 : i64)
  ^bb27(%340: i64):  // 2 preds: ^bb26, ^bb34
    %341 = llvm.icmp "slt" %340, %338 : i64
    llvm.cond_br %341, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(2 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%342 : i64)
  ^bb29(%345: i64):  // 2 preds: ^bb28, ^bb33
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %347 = llvm.mlir.constant(0 : index) : i64
    %348 = llvm.mlir.constant(1 : index) : i64
    %349 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%347 : i64)
  ^bb31(%350: i64):  // 2 preds: ^bb30, ^bb32
    %351 = llvm.icmp "slt" %350, %348 : i64
    llvm.cond_br %351, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %352 = llvm.extractvalue %23[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %353 = llvm.add %24, %340  : i64
    %354 = llvm.add %353, %24  : i64
    %355 = llvm.add %354, %350  : i64
    %356 = llvm.getelementptr %352[%355] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %357 = llvm.load %356 : !llvm.ptr<i32>
    %358 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mul %335, %359  : i64
    %361 = llvm.mlir.constant(2 : index) : i64
    %362 = llvm.mul %340, %361  : i64
    %363 = llvm.add %360, %362  : i64
    %364 = llvm.add %363, %345  : i64
    %365 = llvm.add %364, %350  : i64
    %366 = llvm.getelementptr %358[%365] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %367 = llvm.load %366 : !llvm.ptr<i32>
    %368 = llvm.icmp "slt" %357, %367 : i32
    %369 = llvm.select %368, %357, %367 : i1, i32
    %370 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %371 = llvm.mlir.constant(2 : index) : i64
    %372 = llvm.mul %335, %371  : i64
    %373 = llvm.mlir.constant(2 : index) : i64
    %374 = llvm.mul %340, %373  : i64
    %375 = llvm.add %372, %374  : i64
    %376 = llvm.add %375, %345  : i64
    %377 = llvm.add %376, %350  : i64
    %378 = llvm.getelementptr %370[%377] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %369, %378 : !llvm.ptr<i32>
    %379 = llvm.add %350, %349  : i64
    llvm.br ^bb31(%379 : i64)
  ^bb33:  // pred: ^bb31
    %380 = llvm.add %345, %344  : i64
    llvm.br ^bb29(%380 : i64)
  ^bb34:  // pred: ^bb29
    %381 = llvm.add %340, %339  : i64
    llvm.br ^bb27(%381 : i64)
  ^bb35:  // pred: ^bb27
    %382 = llvm.add %335, %334  : i64
    llvm.br ^bb25(%382 : i64)
  ^bb36:  // pred: ^bb25
    %383 = llvm.mlir.constant(2 : index) : i64
    %384 = llvm.mlir.constant(1 : index) : i64
    %385 = llvm.mlir.constant(2 : index) : i64
    %386 = llvm.mlir.constant(1 : index) : i64
    %387 = llvm.mlir.constant(1 : index) : i64
    %388 = llvm.mlir.constant(2 : index) : i64
    %389 = llvm.mlir.constant(4 : index) : i64
    %390 = llvm.mlir.null : !llvm.ptr<i32>
    %391 = llvm.getelementptr %390[%389] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %392 = llvm.ptrtoint %391 : !llvm.ptr<i32> to i64
    %393 = llvm.mlir.constant(16 : index) : i64
    %394 = llvm.add %392, %393  : i64
    %395 = llvm.call @malloc(%394) : (i64) -> !llvm.ptr<i8>
    %396 = llvm.bitcast %395 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %397 = llvm.ptrtoint %396 : !llvm.ptr<i32> to i64
    %398 = llvm.mlir.constant(1 : index) : i64
    %399 = llvm.sub %393, %398  : i64
    %400 = llvm.add %397, %399  : i64
    %401 = llvm.urem %400, %393  : i64
    %402 = llvm.sub %400, %401  : i64
    %403 = llvm.inttoptr %402 : i64 to !llvm.ptr<i32>
    %404 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %405 = llvm.insertvalue %396, %404[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %406 = llvm.insertvalue %403, %405[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %407 = llvm.mlir.constant(0 : index) : i64
    %408 = llvm.insertvalue %407, %406[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %409 = llvm.insertvalue %383, %408[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %410 = llvm.insertvalue %384, %409[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %411 = llvm.insertvalue %385, %410[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %412 = llvm.insertvalue %386, %411[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %413 = llvm.insertvalue %388, %412[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %385, %413[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.insertvalue %386, %414[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %416 = llvm.insertvalue %387, %415[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(2 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%417 : i64)
  ^bb37(%420: i64):  // 2 preds: ^bb36, ^bb47
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(1 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%422 : i64)
  ^bb39(%425: i64):  // 2 preds: ^bb38, ^bb46
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%427 : i64)
  ^bb41(%430: i64):  // 2 preds: ^bb40, ^bb45
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%432 : i64)
  ^bb43(%435: i64):  // 2 preds: ^bb42, ^bb44
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %437 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mul %420, %438  : i64
    %440 = llvm.mlir.constant(2 : index) : i64
    %441 = llvm.mul %425, %440  : i64
    %442 = llvm.add %439, %441  : i64
    %443 = llvm.add %442, %430  : i64
    %444 = llvm.add %443, %435  : i64
    %445 = llvm.getelementptr %437[%444] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %446 = llvm.load %445 : !llvm.ptr<i32>
    %447 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.mlir.constant(2 : index) : i64
    %449 = llvm.mul %420, %448  : i64
    %450 = llvm.mlir.constant(2 : index) : i64
    %451 = llvm.mul %425, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.add %452, %430  : i64
    %454 = llvm.add %453, %435  : i64
    %455 = llvm.getelementptr %447[%454] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %456 = llvm.load %455 : !llvm.ptr<i32>
    %457 = llvm.mul %446, %456  : i32
    %458 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %459 = llvm.mlir.constant(2 : index) : i64
    %460 = llvm.mul %420, %459  : i64
    %461 = llvm.mlir.constant(2 : index) : i64
    %462 = llvm.mul %425, %461  : i64
    %463 = llvm.add %460, %462  : i64
    %464 = llvm.add %463, %430  : i64
    %465 = llvm.add %464, %435  : i64
    %466 = llvm.getelementptr %458[%465] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %457, %466 : !llvm.ptr<i32>
    %467 = llvm.add %435, %434  : i64
    llvm.br ^bb43(%467 : i64)
  ^bb45:  // pred: ^bb43
    %468 = llvm.add %430, %429  : i64
    llvm.br ^bb41(%468 : i64)
  ^bb46:  // pred: ^bb41
    %469 = llvm.add %425, %424  : i64
    llvm.br ^bb39(%469 : i64)
  ^bb47:  // pred: ^bb39
    %470 = llvm.add %420, %419  : i64
    llvm.br ^bb37(%470 : i64)
  ^bb48:  // pred: ^bb37
    %471 = llvm.mlir.constant(2 : index) : i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    %476 = llvm.mlir.constant(2 : index) : i64
    %477 = llvm.mlir.constant(4 : index) : i64
    %478 = llvm.mlir.null : !llvm.ptr<i32>
    %479 = llvm.getelementptr %478[%477] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %480 = llvm.ptrtoint %479 : !llvm.ptr<i32> to i64
    %481 = llvm.mlir.constant(16 : index) : i64
    %482 = llvm.add %480, %481  : i64
    %483 = llvm.call @malloc(%482) : (i64) -> !llvm.ptr<i8>
    %484 = llvm.bitcast %483 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %485 = llvm.ptrtoint %484 : !llvm.ptr<i32> to i64
    %486 = llvm.mlir.constant(1 : index) : i64
    %487 = llvm.sub %481, %486  : i64
    %488 = llvm.add %485, %487  : i64
    %489 = llvm.urem %488, %481  : i64
    %490 = llvm.sub %488, %489  : i64
    %491 = llvm.inttoptr %490 : i64 to !llvm.ptr<i32>
    %492 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %493 = llvm.insertvalue %484, %492[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %494 = llvm.insertvalue %491, %493[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %495 = llvm.mlir.constant(0 : index) : i64
    %496 = llvm.insertvalue %495, %494[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.insertvalue %471, %496[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %498 = llvm.insertvalue %472, %497[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %499 = llvm.insertvalue %473, %498[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %500 = llvm.insertvalue %474, %499[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %476, %500[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.insertvalue %473, %501[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %503 = llvm.insertvalue %474, %502[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %475, %503[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.mlir.constant(0 : index) : i64
    %506 = llvm.mlir.constant(2 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%505 : i64)
  ^bb49(%508: i64):  // 2 preds: ^bb48, ^bb59
    %509 = llvm.icmp "slt" %508, %506 : i64
    llvm.cond_br %509, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %510 = llvm.mlir.constant(0 : index) : i64
    %511 = llvm.mlir.constant(1 : index) : i64
    %512 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%510 : i64)
  ^bb51(%513: i64):  // 2 preds: ^bb50, ^bb58
    %514 = llvm.icmp "slt" %513, %511 : i64
    llvm.cond_br %514, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%515 : i64)
  ^bb53(%518: i64):  // 2 preds: ^bb52, ^bb57
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(1 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%520 : i64)
  ^bb55(%523: i64):  // 2 preds: ^bb54, ^bb56
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %525 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.mlir.constant(2 : index) : i64
    %527 = llvm.mul %508, %526  : i64
    %528 = llvm.mlir.constant(2 : index) : i64
    %529 = llvm.mul %513, %528  : i64
    %530 = llvm.add %527, %529  : i64
    %531 = llvm.add %530, %518  : i64
    %532 = llvm.add %531, %523  : i64
    %533 = llvm.getelementptr %525[%532] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %534 = llvm.load %533 : !llvm.ptr<i32>
    %535 = llvm.extractvalue %331[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.mlir.constant(2 : index) : i64
    %537 = llvm.mul %508, %536  : i64
    %538 = llvm.mlir.constant(2 : index) : i64
    %539 = llvm.mul %513, %538  : i64
    %540 = llvm.add %537, %539  : i64
    %541 = llvm.add %540, %518  : i64
    %542 = llvm.add %541, %523  : i64
    %543 = llvm.getelementptr %535[%542] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %544 = llvm.load %543 : !llvm.ptr<i32>
    %545 = llvm.add %534, %544  : i32
    %546 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.mlir.constant(2 : index) : i64
    %548 = llvm.mul %508, %547  : i64
    %549 = llvm.mlir.constant(2 : index) : i64
    %550 = llvm.mul %513, %549  : i64
    %551 = llvm.add %548, %550  : i64
    %552 = llvm.add %551, %518  : i64
    %553 = llvm.add %552, %523  : i64
    %554 = llvm.getelementptr %546[%553] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %545, %554 : !llvm.ptr<i32>
    %555 = llvm.add %523, %522  : i64
    llvm.br ^bb55(%555 : i64)
  ^bb57:  // pred: ^bb55
    %556 = llvm.add %518, %517  : i64
    llvm.br ^bb53(%556 : i64)
  ^bb58:  // pred: ^bb53
    %557 = llvm.add %513, %512  : i64
    llvm.br ^bb51(%557 : i64)
  ^bb59:  // pred: ^bb51
    %558 = llvm.add %508, %507  : i64
    llvm.br ^bb49(%558 : i64)
  ^bb60:  // pred: ^bb49
    %559 = llvm.mlir.constant(4 : index) : i64
    %560 = llvm.mlir.constant(1 : index) : i64
    %561 = llvm.mlir.null : !llvm.ptr<i64>
    %562 = llvm.getelementptr %561[%559] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %563 = llvm.ptrtoint %562 : !llvm.ptr<i64> to i64
    %564 = llvm.mlir.constant(16 : index) : i64
    %565 = llvm.add %563, %564  : i64
    %566 = llvm.call @malloc(%565) : (i64) -> !llvm.ptr<i8>
    %567 = llvm.bitcast %566 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %568 = llvm.ptrtoint %567 : !llvm.ptr<i64> to i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.sub %564, %569  : i64
    %571 = llvm.add %568, %570  : i64
    %572 = llvm.urem %571, %564  : i64
    %573 = llvm.sub %571, %572  : i64
    %574 = llvm.inttoptr %573 : i64 to !llvm.ptr<i64>
    %575 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %576 = llvm.insertvalue %567, %575[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %577 = llvm.insertvalue %574, %576[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %578 = llvm.mlir.constant(0 : index) : i64
    %579 = llvm.insertvalue %578, %577[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %580 = llvm.insertvalue %559, %579[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %581 = llvm.insertvalue %560, %580[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %582 = llvm.mlir.constant(0 : index) : i64
    %583 = llvm.mlir.constant(4 : index) : i64
    %584 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%582 : i64)
  ^bb61(%585: i64):  // 2 preds: ^bb60, ^bb62
    %586 = llvm.icmp "slt" %585, %583 : i64
    llvm.cond_br %586, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %587 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %588 = llvm.getelementptr %587[%585] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %588 : !llvm.ptr<i64>
    %589 = llvm.add %585, %584  : i64
    llvm.br ^bb61(%589 : i64)
  ^bb63:  // pred: ^bb61
    %590 = llvm.mlir.constant(4 : index) : i64
    %591 = llvm.mlir.constant(1 : index) : i64
    %592 = llvm.mlir.null : !llvm.ptr<i64>
    %593 = llvm.getelementptr %592[%590] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %594 = llvm.ptrtoint %593 : !llvm.ptr<i64> to i64
    %595 = llvm.mlir.constant(16 : index) : i64
    %596 = llvm.add %594, %595  : i64
    %597 = llvm.call @malloc(%596) : (i64) -> !llvm.ptr<i8>
    %598 = llvm.bitcast %597 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %599 = llvm.ptrtoint %598 : !llvm.ptr<i64> to i64
    %600 = llvm.mlir.constant(1 : index) : i64
    %601 = llvm.sub %595, %600  : i64
    %602 = llvm.add %599, %601  : i64
    %603 = llvm.urem %602, %595  : i64
    %604 = llvm.sub %602, %603  : i64
    %605 = llvm.inttoptr %604 : i64 to !llvm.ptr<i64>
    %606 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %607 = llvm.insertvalue %598, %606[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %608 = llvm.insertvalue %605, %607[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %609 = llvm.mlir.constant(0 : index) : i64
    %610 = llvm.insertvalue %609, %608[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.insertvalue %590, %610[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %612 = llvm.insertvalue %591, %611[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %613 = llvm.mlir.constant(0 : index) : i64
    %614 = llvm.mlir.constant(4 : index) : i64
    %615 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%613 : i64)
  ^bb64(%616: i64):  // 2 preds: ^bb63, ^bb65
    %617 = llvm.icmp "slt" %616, %614 : i64
    llvm.cond_br %617, ^bb65, ^bb66
  ^bb65:  // pred: ^bb64
    %618 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %619 = llvm.getelementptr %618[%616] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %620 = llvm.load %619 : !llvm.ptr<i64>
    %621 = llvm.extractvalue %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %622 = llvm.load %621 : !llvm.ptr<i64>
    %623 = llvm.mul %620, %622  : i64
    %624 = llvm.extractvalue %612[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %625 = llvm.getelementptr %624[%616] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %623, %625 : !llvm.ptr<i64>
    %626 = llvm.add %616, %615  : i64
    llvm.br ^bb64(%626 : i64)
  ^bb66:  // pred: ^bb64
    %627 = llvm.mlir.constant(4 : index) : i64
    %628 = llvm.mlir.constant(1 : index) : i64
    %629 = llvm.mlir.null : !llvm.ptr<i1>
    %630 = llvm.getelementptr %629[%627] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %631 = llvm.ptrtoint %630 : !llvm.ptr<i1> to i64
    %632 = llvm.mlir.constant(16 : index) : i64
    %633 = llvm.add %631, %632  : i64
    %634 = llvm.call @malloc(%633) : (i64) -> !llvm.ptr<i8>
    %635 = llvm.bitcast %634 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %636 = llvm.ptrtoint %635 : !llvm.ptr<i1> to i64
    %637 = llvm.mlir.constant(1 : index) : i64
    %638 = llvm.sub %632, %637  : i64
    %639 = llvm.add %636, %638  : i64
    %640 = llvm.urem %639, %632  : i64
    %641 = llvm.sub %639, %640  : i64
    %642 = llvm.inttoptr %641 : i64 to !llvm.ptr<i1>
    %643 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %644 = llvm.insertvalue %635, %643[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %645 = llvm.insertvalue %642, %644[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.insertvalue %646, %645[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %648 = llvm.insertvalue %627, %647[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %649 = llvm.insertvalue %628, %648[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(4 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%650 : i64)
  ^bb67(%653: i64):  // 2 preds: ^bb66, ^bb68
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %655 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %656 = llvm.getelementptr %655[%653] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %657 = llvm.load %656 : !llvm.ptr<i64>
    %658 = llvm.extractvalue %612[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %659 = llvm.getelementptr %658[%653] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %660 = llvm.load %659 : !llvm.ptr<i64>
    %661 = llvm.icmp "eq" %657, %660 : i64
    %662 = llvm.extractvalue %649[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %663 = llvm.getelementptr %662[%653] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %661, %663 : !llvm.ptr<i1>
    %664 = llvm.add %653, %652  : i64
    llvm.br ^bb67(%664 : i64)
  ^bb69:  // pred: ^bb67
    %665 = llvm.mlir.constant(4 : index) : i64
    %666 = llvm.mlir.constant(1 : index) : i64
    %667 = llvm.mlir.null : !llvm.ptr<i64>
    %668 = llvm.getelementptr %667[%665] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %669 = llvm.ptrtoint %668 : !llvm.ptr<i64> to i64
    %670 = llvm.mlir.constant(16 : index) : i64
    %671 = llvm.add %669, %670  : i64
    %672 = llvm.call @malloc(%671) : (i64) -> !llvm.ptr<i8>
    %673 = llvm.bitcast %672 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %674 = llvm.ptrtoint %673 : !llvm.ptr<i64> to i64
    %675 = llvm.mlir.constant(1 : index) : i64
    %676 = llvm.sub %670, %675  : i64
    %677 = llvm.add %674, %676  : i64
    %678 = llvm.urem %677, %670  : i64
    %679 = llvm.sub %677, %678  : i64
    %680 = llvm.inttoptr %679 : i64 to !llvm.ptr<i64>
    %681 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %682 = llvm.insertvalue %673, %681[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %683 = llvm.insertvalue %680, %682[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %684 = llvm.mlir.constant(0 : index) : i64
    %685 = llvm.insertvalue %684, %683[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %686 = llvm.insertvalue %665, %685[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %687 = llvm.insertvalue %666, %686[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %688 = llvm.mlir.constant(0 : index) : i64
    %689 = llvm.mlir.constant(4 : index) : i64
    %690 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%688 : i64)
  ^bb70(%691: i64):  // 2 preds: ^bb69, ^bb71
    %692 = llvm.icmp "slt" %691, %689 : i64
    llvm.cond_br %692, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %693 = llvm.extractvalue %649[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %694 = llvm.getelementptr %693[%691] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %695 = llvm.load %694 : !llvm.ptr<i1>
    %696 = llvm.extractvalue %581[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %697 = llvm.getelementptr %696[%691] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %698 = llvm.load %697 : !llvm.ptr<i64>
    %699 = llvm.extractvalue %54[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %700 = llvm.getelementptr %699[%691] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %701 = llvm.load %700 : !llvm.ptr<i64>
    %702 = llvm.select %695, %698, %701 : i1, i64
    %703 = llvm.extractvalue %687[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %704 = llvm.getelementptr %703[%691] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %702, %704 : !llvm.ptr<i64>
    %705 = llvm.add %691, %690  : i64
    llvm.br ^bb70(%705 : i64)
  ^bb72:  // pred: ^bb70
    %706 = llvm.mlir.constant(2 : index) : i64
    %707 = llvm.mlir.constant(1 : index) : i64
    %708 = llvm.mlir.constant(2 : index) : i64
    %709 = llvm.mlir.constant(1 : index) : i64
    %710 = llvm.mlir.constant(1 : index) : i64
    %711 = llvm.mlir.constant(2 : index) : i64
    %712 = llvm.mlir.constant(4 : index) : i64
    %713 = llvm.mlir.null : !llvm.ptr<i32>
    %714 = llvm.getelementptr %713[%712] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %715 = llvm.ptrtoint %714 : !llvm.ptr<i32> to i64
    %716 = llvm.mlir.constant(16 : index) : i64
    %717 = llvm.add %715, %716  : i64
    %718 = llvm.call @malloc(%717) : (i64) -> !llvm.ptr<i8>
    %719 = llvm.bitcast %718 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %720 = llvm.ptrtoint %719 : !llvm.ptr<i32> to i64
    %721 = llvm.mlir.constant(1 : index) : i64
    %722 = llvm.sub %716, %721  : i64
    %723 = llvm.add %720, %722  : i64
    %724 = llvm.urem %723, %716  : i64
    %725 = llvm.sub %723, %724  : i64
    %726 = llvm.inttoptr %725 : i64 to !llvm.ptr<i32>
    %727 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %728 = llvm.insertvalue %719, %727[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %729 = llvm.insertvalue %726, %728[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %730 = llvm.mlir.constant(0 : index) : i64
    %731 = llvm.insertvalue %730, %729[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %732 = llvm.insertvalue %706, %731[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %733 = llvm.insertvalue %707, %732[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %734 = llvm.insertvalue %708, %733[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %735 = llvm.insertvalue %709, %734[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %736 = llvm.insertvalue %711, %735[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %737 = llvm.insertvalue %708, %736[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %738 = llvm.insertvalue %709, %737[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %739 = llvm.insertvalue %710, %738[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.mlir.constant(0 : index) : i64
    %741 = llvm.mlir.constant(2 : index) : i64
    %742 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%740 : i64)
  ^bb73(%743: i64):  // 2 preds: ^bb72, ^bb83
    %744 = llvm.icmp "slt" %743, %741 : i64
    llvm.cond_br %744, ^bb74, ^bb84
  ^bb74:  // pred: ^bb73
    %745 = llvm.mlir.constant(0 : index) : i64
    %746 = llvm.mlir.constant(1 : index) : i64
    %747 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%745 : i64)
  ^bb75(%748: i64):  // 2 preds: ^bb74, ^bb82
    %749 = llvm.icmp "slt" %748, %746 : i64
    llvm.cond_br %749, ^bb76, ^bb83
  ^bb76:  // pred: ^bb75
    %750 = llvm.mlir.constant(0 : index) : i64
    %751 = llvm.mlir.constant(2 : index) : i64
    %752 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%750 : i64)
  ^bb77(%753: i64):  // 2 preds: ^bb76, ^bb81
    %754 = llvm.icmp "slt" %753, %751 : i64
    llvm.cond_br %754, ^bb78, ^bb82
  ^bb78:  // pred: ^bb77
    %755 = llvm.mlir.constant(0 : index) : i64
    %756 = llvm.mlir.constant(1 : index) : i64
    %757 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%755 : i64)
  ^bb79(%758: i64):  // 2 preds: ^bb78, ^bb80
    %759 = llvm.icmp "slt" %758, %756 : i64
    llvm.cond_br %759, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %760 = llvm.extractvalue %504[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %761 = llvm.mlir.constant(2 : index) : i64
    %762 = llvm.mul %743, %761  : i64
    %763 = llvm.mlir.constant(2 : index) : i64
    %764 = llvm.mul %24, %763  : i64
    %765 = llvm.add %762, %764  : i64
    %766 = llvm.add %765, %753  : i64
    %767 = llvm.add %766, %24  : i64
    %768 = llvm.getelementptr %760[%767] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %769 = llvm.load %768 : !llvm.ptr<i32>
    %770 = llvm.extractvalue %739[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %771 = llvm.mlir.constant(2 : index) : i64
    %772 = llvm.mul %743, %771  : i64
    %773 = llvm.mlir.constant(2 : index) : i64
    %774 = llvm.mul %748, %773  : i64
    %775 = llvm.add %772, %774  : i64
    %776 = llvm.add %775, %753  : i64
    %777 = llvm.add %776, %758  : i64
    %778 = llvm.getelementptr %770[%777] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %769, %778 : !llvm.ptr<i32>
    %779 = llvm.add %758, %757  : i64
    llvm.br ^bb79(%779 : i64)
  ^bb81:  // pred: ^bb79
    %780 = llvm.add %753, %752  : i64
    llvm.br ^bb77(%780 : i64)
  ^bb82:  // pred: ^bb77
    %781 = llvm.add %748, %747  : i64
    llvm.br ^bb75(%781 : i64)
  ^bb83:  // pred: ^bb75
    %782 = llvm.add %743, %742  : i64
    llvm.br ^bb73(%782 : i64)
  ^bb84:  // pred: ^bb73
    %783 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %784 = llvm.insertvalue %262, %783[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %785 = llvm.insertvalue %739, %784[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %785 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0", "v3_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0"]} {
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

