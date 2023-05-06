module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_9(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_8(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_7(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0"]} {
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
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(-1 : i64) : i64
    %14 = llvm.mlir.constant(3 : index) : i64
    %15 = llvm.mlir.constant(2 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(1 : i64) : i64
    %19 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %20 = llvm.bitcast %19 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %21 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %22 = llvm.insertvalue %20, %21[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.insertvalue %20, %22[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %24 = llvm.mlir.constant(0 : index) : i64
    %25 = llvm.insertvalue %24, %23[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %26 = llvm.mlir.constant(4 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %30 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %31 = llvm.bitcast %30 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %32 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %33 = llvm.insertvalue %31, %32[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.insertvalue %31, %33[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %35 = llvm.mlir.constant(0 : index) : i64
    %36 = llvm.insertvalue %35, %34[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %37 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %38 = llvm.bitcast %37 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %39 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %40 = llvm.insertvalue %38, %39[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.insertvalue %38, %40[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %42 = llvm.mlir.constant(0 : index) : i64
    %43 = llvm.insertvalue %42, %41[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %44 = llvm.mlir.constant(4 : index) : i64
    %45 = llvm.insertvalue %44, %43[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %46 = llvm.mlir.constant(1 : index) : i64
    %47 = llvm.insertvalue %46, %45[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %49 = llvm.bitcast %48 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %50 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %51 = llvm.insertvalue %49, %50[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.insertvalue %49, %51[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.mlir.constant(0 : index) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %55 = llvm.mlir.constant(4 : index) : i64
    %56 = llvm.insertvalue %55, %54[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %57 = llvm.mlir.constant(1 : index) : i64
    %58 = llvm.insertvalue %57, %56[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %59 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %60 = llvm.bitcast %59 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %61 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %62 = llvm.insertvalue %60, %61[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %63 = llvm.insertvalue %60, %62[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %64 = llvm.mlir.constant(0 : index) : i64
    %65 = llvm.insertvalue %64, %63[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %66 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %67 = llvm.bitcast %66 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %68 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %69 = llvm.insertvalue %67, %68[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.insertvalue %67, %69[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.mlir.constant(0 : index) : i64
    %72 = llvm.insertvalue %71, %70[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(4 : index) : i64
    %74 = llvm.insertvalue %73, %72[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(1 : index) : i64
    %76 = llvm.insertvalue %75, %74[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<4 x i64>>
    %78 = llvm.bitcast %77 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %79 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %80 = llvm.insertvalue %78, %79[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.insertvalue %78, %80[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %82 = llvm.mlir.constant(0 : index) : i64
    %83 = llvm.insertvalue %82, %81[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %84 = llvm.mlir.constant(4 : index) : i64
    %85 = llvm.insertvalue %84, %83[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %86 = llvm.mlir.constant(1 : index) : i64
    %87 = llvm.insertvalue %86, %85[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %88 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x i64>>
    %89 = llvm.bitcast %88 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %91 = llvm.insertvalue %89, %90[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %92 = llvm.insertvalue %89, %91[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %93 = llvm.mlir.constant(0 : index) : i64
    %94 = llvm.insertvalue %93, %92[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %95 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<4 x i64>>
    %96 = llvm.bitcast %95 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %97 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %98 = llvm.insertvalue %96, %97[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %99 = llvm.insertvalue %96, %98[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(0 : index) : i64
    %101 = llvm.insertvalue %100, %99[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(4 : index) : i64
    %103 = llvm.insertvalue %102, %101[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.insertvalue %104, %103[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %106 = llvm.mlir.constant(4 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.null : !llvm.ptr<i64>
    %109 = llvm.getelementptr %108[%106] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %110 = llvm.ptrtoint %109 : !llvm.ptr<i64> to i64
    %111 = llvm.mlir.constant(16 : index) : i64
    %112 = llvm.add %110, %111  : i64
    %113 = llvm.call @malloc(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.bitcast %113 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %115 = llvm.ptrtoint %114 : !llvm.ptr<i64> to i64
    %116 = llvm.mlir.constant(1 : index) : i64
    %117 = llvm.sub %111, %116  : i64
    %118 = llvm.add %115, %117  : i64
    %119 = llvm.urem %118, %111  : i64
    %120 = llvm.sub %118, %119  : i64
    %121 = llvm.inttoptr %120 : i64 to !llvm.ptr<i64>
    %122 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %123 = llvm.insertvalue %114, %122[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %124 = llvm.insertvalue %121, %123[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %125 = llvm.mlir.constant(0 : index) : i64
    %126 = llvm.insertvalue %125, %124[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %127 = llvm.insertvalue %106, %126[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %107, %127[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.mlir.constant(4 : index) : i64
    %131 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%129 : i64)
  ^bb1(%132: i64):  // 2 preds: ^bb0, ^bb2
    %133 = llvm.icmp "slt" %132, %130 : i64
    llvm.cond_br %133, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %134 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %135 = llvm.getelementptr %134[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %18, %135 : !llvm.ptr<i64>
    %136 = llvm.add %132, %131  : i64
    llvm.br ^bb1(%136 : i64)
  ^bb3:  // pred: ^bb1
    %137 = llvm.mlir.constant(4 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    %139 = llvm.mlir.null : !llvm.ptr<i64>
    %140 = llvm.getelementptr %139[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %141 = llvm.ptrtoint %140 : !llvm.ptr<i64> to i64
    %142 = llvm.mlir.constant(16 : index) : i64
    %143 = llvm.add %141, %142  : i64
    %144 = llvm.call @malloc(%143) : (i64) -> !llvm.ptr<i8>
    %145 = llvm.bitcast %144 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<i64> to i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.sub %142, %147  : i64
    %149 = llvm.add %146, %148  : i64
    %150 = llvm.urem %149, %142  : i64
    %151 = llvm.sub %149, %150  : i64
    %152 = llvm.inttoptr %151 : i64 to !llvm.ptr<i64>
    %153 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %154 = llvm.insertvalue %145, %153[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %155 = llvm.insertvalue %152, %154[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %156 = llvm.mlir.constant(0 : index) : i64
    %157 = llvm.insertvalue %156, %155[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %158 = llvm.insertvalue %137, %157[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %159 = llvm.insertvalue %138, %158[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %160 = llvm.mlir.constant(0 : index) : i64
    %161 = llvm.mlir.constant(4 : index) : i64
    %162 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%160 : i64)
  ^bb4(%163: i64):  // 2 preds: ^bb3, ^bb5
    %164 = llvm.icmp "slt" %163, %161 : i64
    llvm.cond_br %164, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %165 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.getelementptr %165[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %167 = llvm.load %166 : !llvm.ptr<i64>
    %168 = llvm.extractvalue %94[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %169 = llvm.load %168 : !llvm.ptr<i64>
    %170 = llvm.mul %167, %169  : i64
    %171 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %172 = llvm.getelementptr %171[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %170, %172 : !llvm.ptr<i64>
    %173 = llvm.add %163, %162  : i64
    llvm.br ^bb4(%173 : i64)
  ^bb6:  // pred: ^bb4
    %174 = llvm.mlir.constant(4 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    %176 = llvm.mlir.null : !llvm.ptr<i1>
    %177 = llvm.getelementptr %176[%174] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %178 = llvm.ptrtoint %177 : !llvm.ptr<i1> to i64
    %179 = llvm.mlir.constant(16 : index) : i64
    %180 = llvm.add %178, %179  : i64
    %181 = llvm.call @malloc(%180) : (i64) -> !llvm.ptr<i8>
    %182 = llvm.bitcast %181 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<i1> to i64
    %184 = llvm.mlir.constant(1 : index) : i64
    %185 = llvm.sub %179, %184  : i64
    %186 = llvm.add %183, %185  : i64
    %187 = llvm.urem %186, %179  : i64
    %188 = llvm.sub %186, %187  : i64
    %189 = llvm.inttoptr %188 : i64 to !llvm.ptr<i1>
    %190 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %191 = llvm.insertvalue %182, %190[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.insertvalue %189, %191[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %193 = llvm.mlir.constant(0 : index) : i64
    %194 = llvm.insertvalue %193, %192[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %195 = llvm.insertvalue %174, %194[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %196 = llvm.insertvalue %175, %195[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %197 = llvm.mlir.constant(0 : index) : i64
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%197 : i64)
  ^bb7(%200: i64):  // 2 preds: ^bb6, ^bb8
    %201 = llvm.icmp "slt" %200, %198 : i64
    llvm.cond_br %201, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %202 = llvm.extractvalue %87[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.getelementptr %202[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %204 = llvm.load %203 : !llvm.ptr<i64>
    %205 = llvm.extractvalue %159[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.getelementptr %205[%200] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %207 = llvm.load %206 : !llvm.ptr<i64>
    %208 = llvm.icmp "eq" %204, %207 : i64
    %209 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %210 = llvm.getelementptr %209[%200] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %208, %210 : !llvm.ptr<i1>
    %211 = llvm.add %200, %199  : i64
    llvm.br ^bb7(%211 : i64)
  ^bb9:  // pred: ^bb7
    %212 = llvm.mlir.constant(4 : index) : i64
    %213 = llvm.mlir.constant(1 : index) : i64
    %214 = llvm.mlir.null : !llvm.ptr<i64>
    %215 = llvm.getelementptr %214[%212] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %216 = llvm.ptrtoint %215 : !llvm.ptr<i64> to i64
    %217 = llvm.mlir.constant(16 : index) : i64
    %218 = llvm.add %216, %217  : i64
    %219 = llvm.call @malloc(%218) : (i64) -> !llvm.ptr<i8>
    %220 = llvm.bitcast %219 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %221 = llvm.ptrtoint %220 : !llvm.ptr<i64> to i64
    %222 = llvm.mlir.constant(1 : index) : i64
    %223 = llvm.sub %217, %222  : i64
    %224 = llvm.add %221, %223  : i64
    %225 = llvm.urem %224, %217  : i64
    %226 = llvm.sub %224, %225  : i64
    %227 = llvm.inttoptr %226 : i64 to !llvm.ptr<i64>
    %228 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %229 = llvm.insertvalue %220, %228[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %230 = llvm.insertvalue %227, %229[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %231 = llvm.mlir.constant(0 : index) : i64
    %232 = llvm.insertvalue %231, %230[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %233 = llvm.insertvalue %212, %232[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %234 = llvm.insertvalue %213, %233[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %235 = llvm.mlir.constant(0 : index) : i64
    %236 = llvm.mlir.constant(4 : index) : i64
    %237 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%235 : i64)
  ^bb10(%238: i64):  // 2 preds: ^bb9, ^bb11
    %239 = llvm.icmp "slt" %238, %236 : i64
    llvm.cond_br %239, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %240 = llvm.extractvalue %196[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %241 = llvm.getelementptr %240[%238] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %242 = llvm.load %241 : !llvm.ptr<i1>
    %243 = llvm.extractvalue %128[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %244 = llvm.getelementptr %243[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %245 = llvm.load %244 : !llvm.ptr<i64>
    %246 = llvm.extractvalue %105[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %247 = llvm.getelementptr %246[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %248 = llvm.load %247 : !llvm.ptr<i64>
    %249 = llvm.select %242, %245, %248 : i1, i64
    %250 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %251 = llvm.getelementptr %250[%238] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %249, %251 : !llvm.ptr<i64>
    %252 = llvm.add %238, %237  : i64
    llvm.br ^bb10(%252 : i64)
  ^bb12:  // pred: ^bb10
    %253 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.getelementptr %253[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %255 = llvm.load %254 : !llvm.ptr<i64>
    %256 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.getelementptr %256[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %258 = llvm.load %257 : !llvm.ptr<i64>
    %259 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.getelementptr %259[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %261 = llvm.load %260 : !llvm.ptr<i64>
    %262 = llvm.extractvalue %234[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %264 = llvm.load %263 : !llvm.ptr<i64>
    %265 = llvm.mlir.constant(1 : index) : i64
    %266 = llvm.mul %264, %261  : i64
    %267 = llvm.mul %266, %258  : i64
    %268 = llvm.mul %267, %255  : i64
    %269 = llvm.mlir.null : !llvm.ptr<i32>
    %270 = llvm.getelementptr %269[%268] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %271 = llvm.ptrtoint %270 : !llvm.ptr<i32> to i64
    %272 = llvm.mlir.constant(16 : index) : i64
    %273 = llvm.add %271, %272  : i64
    %274 = llvm.call @malloc(%273) : (i64) -> !llvm.ptr<i8>
    %275 = llvm.bitcast %274 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %276 = llvm.ptrtoint %275 : !llvm.ptr<i32> to i64
    %277 = llvm.mlir.constant(1 : index) : i64
    %278 = llvm.sub %272, %277  : i64
    %279 = llvm.add %276, %278  : i64
    %280 = llvm.urem %279, %272  : i64
    %281 = llvm.sub %279, %280  : i64
    %282 = llvm.inttoptr %281 : i64 to !llvm.ptr<i32>
    %283 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %284 = llvm.insertvalue %275, %283[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.insertvalue %282, %284[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %286 = llvm.mlir.constant(0 : index) : i64
    %287 = llvm.insertvalue %286, %285[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %288 = llvm.insertvalue %255, %287[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %289 = llvm.insertvalue %258, %288[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %290 = llvm.insertvalue %261, %289[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %291 = llvm.insertvalue %264, %290[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %292 = llvm.insertvalue %267, %291[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %293 = llvm.insertvalue %266, %292[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %294 = llvm.insertvalue %264, %293[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %295 = llvm.insertvalue %265, %294[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %296 = llvm.mlir.constant(0 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%296 : i64)
  ^bb13(%298: i64):  // 2 preds: ^bb12, ^bb23
    %299 = llvm.icmp "slt" %298, %255 : i64
    llvm.cond_br %299, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %300 = llvm.mlir.constant(0 : index) : i64
    %301 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%300 : i64)
  ^bb15(%302: i64):  // 2 preds: ^bb14, ^bb22
    %303 = llvm.icmp "slt" %302, %258 : i64
    llvm.cond_br %303, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %304 = llvm.mlir.constant(0 : index) : i64
    %305 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%304 : i64)
  ^bb17(%306: i64):  // 2 preds: ^bb16, ^bb21
    %307 = llvm.icmp "slt" %306, %261 : i64
    llvm.cond_br %307, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %308 = llvm.mlir.constant(0 : index) : i64
    %309 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%308 : i64)
  ^bb19(%310: i64):  // 2 preds: ^bb18, ^bb20
    %311 = llvm.icmp "slt" %310, %264 : i64
    llvm.cond_br %311, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %312 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %313 = llvm.add %17, %17  : i64
    %314 = llvm.add %313, %17  : i64
    %315 = llvm.add %314, %17  : i64
    %316 = llvm.getelementptr %312[%315] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %317 = llvm.load %316 : !llvm.ptr<i32>
    %318 = llvm.extractvalue %295[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.extractvalue %295[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.mul %298, %319  : i64
    %321 = llvm.extractvalue %295[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.mul %302, %321  : i64
    %323 = llvm.add %320, %322  : i64
    %324 = llvm.extractvalue %295[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.mul %306, %324  : i64
    %326 = llvm.add %323, %325  : i64
    %327 = llvm.add %326, %310  : i64
    %328 = llvm.getelementptr %318[%327] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %317, %328 : !llvm.ptr<i32>
    %329 = llvm.add %310, %309  : i64
    llvm.br ^bb19(%329 : i64)
  ^bb21:  // pred: ^bb19
    %330 = llvm.add %306, %305  : i64
    llvm.br ^bb17(%330 : i64)
  ^bb22:  // pred: ^bb17
    %331 = llvm.add %302, %301  : i64
    llvm.br ^bb15(%331 : i64)
  ^bb23:  // pred: ^bb15
    %332 = llvm.add %298, %297  : i64
    llvm.br ^bb13(%332 : i64)
  ^bb24:  // pred: ^bb13
    %333 = llvm.mlir.constant(4 : index) : i64
    %334 = llvm.mlir.constant(1 : index) : i64
    %335 = llvm.mlir.null : !llvm.ptr<i64>
    %336 = llvm.getelementptr %335[%333] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %337 = llvm.ptrtoint %336 : !llvm.ptr<i64> to i64
    %338 = llvm.mlir.constant(16 : index) : i64
    %339 = llvm.add %337, %338  : i64
    %340 = llvm.call @malloc(%339) : (i64) -> !llvm.ptr<i8>
    %341 = llvm.bitcast %340 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %342 = llvm.ptrtoint %341 : !llvm.ptr<i64> to i64
    %343 = llvm.mlir.constant(1 : index) : i64
    %344 = llvm.sub %338, %343  : i64
    %345 = llvm.add %342, %344  : i64
    %346 = llvm.urem %345, %338  : i64
    %347 = llvm.sub %345, %346  : i64
    %348 = llvm.inttoptr %347 : i64 to !llvm.ptr<i64>
    %349 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %350 = llvm.insertvalue %341, %349[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %351 = llvm.insertvalue %348, %350[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %352 = llvm.mlir.constant(0 : index) : i64
    %353 = llvm.insertvalue %352, %351[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.insertvalue %333, %353[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %355 = llvm.insertvalue %334, %354[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %356 = llvm.mlir.constant(0 : index) : i64
    %357 = llvm.mlir.constant(4 : index) : i64
    %358 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%356 : i64)
  ^bb25(%359: i64):  // 2 preds: ^bb24, ^bb26
    %360 = llvm.icmp "slt" %359, %357 : i64
    llvm.cond_br %360, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %361 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.getelementptr %361[%359] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %18, %362 : !llvm.ptr<i64>
    %363 = llvm.add %359, %358  : i64
    llvm.br ^bb25(%363 : i64)
  ^bb27:  // pred: ^bb25
    %364 = llvm.mlir.constant(4 : index) : i64
    %365 = llvm.mlir.constant(1 : index) : i64
    %366 = llvm.mlir.null : !llvm.ptr<i64>
    %367 = llvm.getelementptr %366[%364] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %368 = llvm.ptrtoint %367 : !llvm.ptr<i64> to i64
    %369 = llvm.mlir.constant(16 : index) : i64
    %370 = llvm.add %368, %369  : i64
    %371 = llvm.call @malloc(%370) : (i64) -> !llvm.ptr<i8>
    %372 = llvm.bitcast %371 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %373 = llvm.ptrtoint %372 : !llvm.ptr<i64> to i64
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.sub %369, %374  : i64
    %376 = llvm.add %373, %375  : i64
    %377 = llvm.urem %376, %369  : i64
    %378 = llvm.sub %376, %377  : i64
    %379 = llvm.inttoptr %378 : i64 to !llvm.ptr<i64>
    %380 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %381 = llvm.insertvalue %372, %380[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %382 = llvm.insertvalue %379, %381[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.mlir.constant(0 : index) : i64
    %384 = llvm.insertvalue %383, %382[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.insertvalue %364, %384[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.insertvalue %365, %385[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %387 = llvm.mlir.constant(0 : index) : i64
    %388 = llvm.mlir.constant(4 : index) : i64
    %389 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%387 : i64)
  ^bb28(%390: i64):  // 2 preds: ^bb27, ^bb29
    %391 = llvm.icmp "slt" %390, %388 : i64
    llvm.cond_br %391, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %392 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %393 = llvm.getelementptr %392[%390] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %394 = llvm.load %393 : !llvm.ptr<i64>
    %395 = llvm.extractvalue %65[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %396 = llvm.load %395 : !llvm.ptr<i64>
    %397 = llvm.mul %394, %396  : i64
    %398 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.getelementptr %398[%390] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %397, %399 : !llvm.ptr<i64>
    %400 = llvm.add %390, %389  : i64
    llvm.br ^bb28(%400 : i64)
  ^bb30:  // pred: ^bb28
    %401 = llvm.mlir.constant(4 : index) : i64
    %402 = llvm.mlir.constant(1 : index) : i64
    %403 = llvm.mlir.null : !llvm.ptr<i1>
    %404 = llvm.getelementptr %403[%401] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %405 = llvm.ptrtoint %404 : !llvm.ptr<i1> to i64
    %406 = llvm.mlir.constant(16 : index) : i64
    %407 = llvm.add %405, %406  : i64
    %408 = llvm.call @malloc(%407) : (i64) -> !llvm.ptr<i8>
    %409 = llvm.bitcast %408 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %410 = llvm.ptrtoint %409 : !llvm.ptr<i1> to i64
    %411 = llvm.mlir.constant(1 : index) : i64
    %412 = llvm.sub %406, %411  : i64
    %413 = llvm.add %410, %412  : i64
    %414 = llvm.urem %413, %406  : i64
    %415 = llvm.sub %413, %414  : i64
    %416 = llvm.inttoptr %415 : i64 to !llvm.ptr<i1>
    %417 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %418 = llvm.insertvalue %409, %417[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %419 = llvm.insertvalue %416, %418[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.mlir.constant(0 : index) : i64
    %421 = llvm.insertvalue %420, %419[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %422 = llvm.insertvalue %401, %421[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.insertvalue %402, %422[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %424 = llvm.mlir.constant(0 : index) : i64
    %425 = llvm.mlir.constant(4 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%424 : i64)
  ^bb31(%427: i64):  // 2 preds: ^bb30, ^bb32
    %428 = llvm.icmp "slt" %427, %425 : i64
    llvm.cond_br %428, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %429 = llvm.extractvalue %58[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.getelementptr %429[%427] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %431 = llvm.load %430 : !llvm.ptr<i64>
    %432 = llvm.extractvalue %386[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.getelementptr %432[%427] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %434 = llvm.load %433 : !llvm.ptr<i64>
    %435 = llvm.icmp "eq" %431, %434 : i64
    %436 = llvm.extractvalue %423[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %437 = llvm.getelementptr %436[%427] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %435, %437 : !llvm.ptr<i1>
    %438 = llvm.add %427, %426  : i64
    llvm.br ^bb31(%438 : i64)
  ^bb33:  // pred: ^bb31
    %439 = llvm.mlir.constant(4 : index) : i64
    %440 = llvm.mlir.constant(1 : index) : i64
    %441 = llvm.mlir.null : !llvm.ptr<i64>
    %442 = llvm.getelementptr %441[%439] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %443 = llvm.ptrtoint %442 : !llvm.ptr<i64> to i64
    %444 = llvm.mlir.constant(16 : index) : i64
    %445 = llvm.add %443, %444  : i64
    %446 = llvm.call @malloc(%445) : (i64) -> !llvm.ptr<i8>
    %447 = llvm.bitcast %446 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %448 = llvm.ptrtoint %447 : !llvm.ptr<i64> to i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.sub %444, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.urem %451, %444  : i64
    %453 = llvm.sub %451, %452  : i64
    %454 = llvm.inttoptr %453 : i64 to !llvm.ptr<i64>
    %455 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %456 = llvm.insertvalue %447, %455[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %457 = llvm.insertvalue %454, %456[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.insertvalue %458, %457[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %460 = llvm.insertvalue %439, %459[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %461 = llvm.insertvalue %440, %460[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(4 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%462 : i64)
  ^bb34(%465: i64):  // 2 preds: ^bb33, ^bb35
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %467 = llvm.extractvalue %423[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.getelementptr %467[%465] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %469 = llvm.load %468 : !llvm.ptr<i1>
    %470 = llvm.extractvalue %355[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %471 = llvm.getelementptr %470[%465] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %472 = llvm.load %471 : !llvm.ptr<i64>
    %473 = llvm.extractvalue %76[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %474 = llvm.getelementptr %473[%465] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %475 = llvm.load %474 : !llvm.ptr<i64>
    %476 = llvm.select %469, %472, %475 : i1, i64
    %477 = llvm.extractvalue %461[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.getelementptr %477[%465] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %476, %478 : !llvm.ptr<i64>
    %479 = llvm.add %465, %464  : i64
    llvm.br ^bb34(%479 : i64)
  ^bb36:  // pred: ^bb34
    %480 = llvm.mlir.constant(1 : index) : i64
    %481 = llvm.mlir.constant(1 : index) : i64
    %482 = llvm.mlir.constant(1 : index) : i64
    %483 = llvm.mlir.constant(1 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.null : !llvm.ptr<i32>
    %486 = llvm.getelementptr %485[%480] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %487 = llvm.ptrtoint %486 : !llvm.ptr<i32> to i64
    %488 = llvm.mlir.constant(16 : index) : i64
    %489 = llvm.add %487, %488  : i64
    %490 = llvm.call @malloc(%489) : (i64) -> !llvm.ptr<i8>
    %491 = llvm.bitcast %490 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %492 = llvm.ptrtoint %491 : !llvm.ptr<i32> to i64
    %493 = llvm.mlir.constant(1 : index) : i64
    %494 = llvm.sub %488, %493  : i64
    %495 = llvm.add %492, %494  : i64
    %496 = llvm.urem %495, %488  : i64
    %497 = llvm.sub %495, %496  : i64
    %498 = llvm.inttoptr %497 : i64 to !llvm.ptr<i32>
    %499 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %500 = llvm.insertvalue %491, %499[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %501 = llvm.insertvalue %498, %500[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %502 = llvm.mlir.constant(0 : index) : i64
    %503 = llvm.insertvalue %502, %501[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %504 = llvm.insertvalue %480, %503[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %505 = llvm.insertvalue %481, %504[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %506 = llvm.insertvalue %482, %505[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %507 = llvm.insertvalue %483, %506[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %508 = llvm.insertvalue %481, %507[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %509 = llvm.insertvalue %482, %508[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %510 = llvm.insertvalue %483, %509[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %511 = llvm.insertvalue %484, %510[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %512 = llvm.icmp "sgt" %255, %16 : i64
    %513 = llvm.icmp "sgt" %258, %16 : i64
    %514 = llvm.icmp "sgt" %261, %16 : i64
    %515 = llvm.icmp "sgt" %264, %16 : i64
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%516 : i64)
  ^bb37(%519: i64):  // 2 preds: ^bb36, ^bb47
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %521 = llvm.mlir.constant(0 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    %523 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%521 : i64)
  ^bb39(%524: i64):  // 2 preds: ^bb38, ^bb46
    %525 = llvm.icmp "slt" %524, %522 : i64
    llvm.cond_br %525, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %526 = llvm.mlir.constant(0 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%526 : i64)
  ^bb41(%529: i64):  // 2 preds: ^bb40, ^bb45
    %530 = llvm.icmp "slt" %529, %527 : i64
    llvm.cond_br %530, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %531 = llvm.mlir.constant(0 : index) : i64
    %532 = llvm.mlir.constant(1 : index) : i64
    %533 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%531 : i64)
  ^bb43(%534: i64):  // 2 preds: ^bb42, ^bb44
    %535 = llvm.icmp "slt" %534, %532 : i64
    llvm.cond_br %535, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %536 = llvm.select %512, %519, %17 : i1, i64
    %537 = llvm.select %513, %524, %17 : i1, i64
    %538 = llvm.select %514, %529, %17 : i1, i64
    %539 = llvm.select %515, %534, %17 : i1, i64
    %540 = llvm.extractvalue %295[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %541 = llvm.extractvalue %295[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %542 = llvm.mul %536, %541  : i64
    %543 = llvm.extractvalue %295[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %544 = llvm.mul %537, %543  : i64
    %545 = llvm.add %542, %544  : i64
    %546 = llvm.extractvalue %295[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %547 = llvm.mul %538, %546  : i64
    %548 = llvm.add %545, %547  : i64
    %549 = llvm.add %548, %539  : i64
    %550 = llvm.getelementptr %540[%549] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %551 = llvm.load %550 : !llvm.ptr<i32>
    %552 = llvm.extractvalue %511[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %553 = llvm.add %519, %524  : i64
    %554 = llvm.add %553, %529  : i64
    %555 = llvm.add %554, %534  : i64
    %556 = llvm.getelementptr %552[%555] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %551, %556 : !llvm.ptr<i32>
    %557 = llvm.add %534, %533  : i64
    llvm.br ^bb43(%557 : i64)
  ^bb45:  // pred: ^bb43
    %558 = llvm.add %529, %528  : i64
    llvm.br ^bb41(%558 : i64)
  ^bb46:  // pred: ^bb41
    %559 = llvm.add %524, %523  : i64
    llvm.br ^bb39(%559 : i64)
  ^bb47:  // pred: ^bb39
    %560 = llvm.add %519, %518  : i64
    llvm.br ^bb37(%560 : i64)
  ^bb48:  // pred: ^bb37
    %561 = llvm.mlir.constant(4 : index) : i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.mlir.null : !llvm.ptr<i64>
    %564 = llvm.getelementptr %563[%561] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %565 = llvm.ptrtoint %564 : !llvm.ptr<i64> to i64
    %566 = llvm.mlir.constant(16 : index) : i64
    %567 = llvm.add %565, %566  : i64
    %568 = llvm.call @malloc(%567) : (i64) -> !llvm.ptr<i8>
    %569 = llvm.bitcast %568 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %570 = llvm.ptrtoint %569 : !llvm.ptr<i64> to i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.sub %566, %571  : i64
    %573 = llvm.add %570, %572  : i64
    %574 = llvm.urem %573, %566  : i64
    %575 = llvm.sub %573, %574  : i64
    %576 = llvm.inttoptr %575 : i64 to !llvm.ptr<i64>
    %577 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %578 = llvm.insertvalue %569, %577[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %579 = llvm.insertvalue %576, %578[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %580 = llvm.mlir.constant(0 : index) : i64
    %581 = llvm.insertvalue %580, %579[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %582 = llvm.insertvalue %561, %581[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %583 = llvm.insertvalue %562, %582[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %584 = llvm.mlir.constant(0 : index) : i64
    %585 = llvm.mlir.constant(4 : index) : i64
    %586 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%584 : i64)
  ^bb49(%587: i64):  // 2 preds: ^bb48, ^bb50
    %588 = llvm.icmp "slt" %587, %585 : i64
    llvm.cond_br %588, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %589 = llvm.extractvalue %583[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %590 = llvm.getelementptr %589[%587] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %18, %590 : !llvm.ptr<i64>
    %591 = llvm.add %587, %586  : i64
    llvm.br ^bb49(%591 : i64)
  ^bb51:  // pred: ^bb49
    %592 = llvm.mlir.constant(4 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    %594 = llvm.mlir.null : !llvm.ptr<i64>
    %595 = llvm.getelementptr %594[%592] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %596 = llvm.ptrtoint %595 : !llvm.ptr<i64> to i64
    %597 = llvm.mlir.constant(16 : index) : i64
    %598 = llvm.add %596, %597  : i64
    %599 = llvm.call @malloc(%598) : (i64) -> !llvm.ptr<i8>
    %600 = llvm.bitcast %599 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %601 = llvm.ptrtoint %600 : !llvm.ptr<i64> to i64
    %602 = llvm.mlir.constant(1 : index) : i64
    %603 = llvm.sub %597, %602  : i64
    %604 = llvm.add %601, %603  : i64
    %605 = llvm.urem %604, %597  : i64
    %606 = llvm.sub %604, %605  : i64
    %607 = llvm.inttoptr %606 : i64 to !llvm.ptr<i64>
    %608 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %609 = llvm.insertvalue %600, %608[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %610 = llvm.insertvalue %607, %609[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %611 = llvm.mlir.constant(0 : index) : i64
    %612 = llvm.insertvalue %611, %610[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %613 = llvm.insertvalue %592, %612[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %614 = llvm.insertvalue %593, %613[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %615 = llvm.mlir.constant(0 : index) : i64
    %616 = llvm.mlir.constant(4 : index) : i64
    %617 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%615 : i64)
  ^bb52(%618: i64):  // 2 preds: ^bb51, ^bb53
    %619 = llvm.icmp "slt" %618, %616 : i64
    llvm.cond_br %619, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %620 = llvm.extractvalue %583[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %621 = llvm.getelementptr %620[%618] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %622 = llvm.load %621 : !llvm.ptr<i64>
    %623 = llvm.extractvalue %36[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %624 = llvm.load %623 : !llvm.ptr<i64>
    %625 = llvm.mul %622, %624  : i64
    %626 = llvm.extractvalue %614[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %627 = llvm.getelementptr %626[%618] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %625, %627 : !llvm.ptr<i64>
    %628 = llvm.add %618, %617  : i64
    llvm.br ^bb52(%628 : i64)
  ^bb54:  // pred: ^bb52
    %629 = llvm.mlir.constant(4 : index) : i64
    %630 = llvm.mlir.constant(1 : index) : i64
    %631 = llvm.mlir.null : !llvm.ptr<i1>
    %632 = llvm.getelementptr %631[%629] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %633 = llvm.ptrtoint %632 : !llvm.ptr<i1> to i64
    %634 = llvm.mlir.constant(16 : index) : i64
    %635 = llvm.add %633, %634  : i64
    %636 = llvm.call @malloc(%635) : (i64) -> !llvm.ptr<i8>
    %637 = llvm.bitcast %636 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %638 = llvm.ptrtoint %637 : !llvm.ptr<i1> to i64
    %639 = llvm.mlir.constant(1 : index) : i64
    %640 = llvm.sub %634, %639  : i64
    %641 = llvm.add %638, %640  : i64
    %642 = llvm.urem %641, %634  : i64
    %643 = llvm.sub %641, %642  : i64
    %644 = llvm.inttoptr %643 : i64 to !llvm.ptr<i1>
    %645 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %646 = llvm.insertvalue %637, %645[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %647 = llvm.insertvalue %644, %646[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %648 = llvm.mlir.constant(0 : index) : i64
    %649 = llvm.insertvalue %648, %647[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %650 = llvm.insertvalue %629, %649[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %651 = llvm.insertvalue %630, %650[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %652 = llvm.mlir.constant(0 : index) : i64
    %653 = llvm.mlir.constant(4 : index) : i64
    %654 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%652 : i64)
  ^bb55(%655: i64):  // 2 preds: ^bb54, ^bb56
    %656 = llvm.icmp "slt" %655, %653 : i64
    llvm.cond_br %656, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %657 = llvm.extractvalue %29[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %658 = llvm.getelementptr %657[%655] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %659 = llvm.load %658 : !llvm.ptr<i64>
    %660 = llvm.extractvalue %614[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %661 = llvm.getelementptr %660[%655] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %662 = llvm.load %661 : !llvm.ptr<i64>
    %663 = llvm.icmp "eq" %659, %662 : i64
    %664 = llvm.extractvalue %651[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %665 = llvm.getelementptr %664[%655] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %663, %665 : !llvm.ptr<i1>
    %666 = llvm.add %655, %654  : i64
    llvm.br ^bb55(%666 : i64)
  ^bb57:  // pred: ^bb55
    %667 = llvm.mlir.constant(4 : index) : i64
    %668 = llvm.mlir.constant(1 : index) : i64
    %669 = llvm.mlir.null : !llvm.ptr<i64>
    %670 = llvm.getelementptr %669[%667] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %671 = llvm.ptrtoint %670 : !llvm.ptr<i64> to i64
    %672 = llvm.mlir.constant(16 : index) : i64
    %673 = llvm.add %671, %672  : i64
    %674 = llvm.call @malloc(%673) : (i64) -> !llvm.ptr<i8>
    %675 = llvm.bitcast %674 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %676 = llvm.ptrtoint %675 : !llvm.ptr<i64> to i64
    %677 = llvm.mlir.constant(1 : index) : i64
    %678 = llvm.sub %672, %677  : i64
    %679 = llvm.add %676, %678  : i64
    %680 = llvm.urem %679, %672  : i64
    %681 = llvm.sub %679, %680  : i64
    %682 = llvm.inttoptr %681 : i64 to !llvm.ptr<i64>
    %683 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %684 = llvm.insertvalue %675, %683[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %685 = llvm.insertvalue %682, %684[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.insertvalue %686, %685[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %688 = llvm.insertvalue %667, %687[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %689 = llvm.insertvalue %668, %688[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %690 = llvm.mlir.constant(0 : index) : i64
    %691 = llvm.mlir.constant(4 : index) : i64
    %692 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%690 : i64)
  ^bb58(%693: i64):  // 2 preds: ^bb57, ^bb59
    %694 = llvm.icmp "slt" %693, %691 : i64
    llvm.cond_br %694, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %695 = llvm.extractvalue %651[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %696 = llvm.getelementptr %695[%693] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %697 = llvm.load %696 : !llvm.ptr<i1>
    %698 = llvm.extractvalue %583[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %699 = llvm.getelementptr %698[%693] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %700 = llvm.load %699 : !llvm.ptr<i64>
    %701 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %702 = llvm.getelementptr %701[%693] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %703 = llvm.load %702 : !llvm.ptr<i64>
    %704 = llvm.select %697, %700, %703 : i1, i64
    %705 = llvm.extractvalue %689[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %706 = llvm.getelementptr %705[%693] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %704, %706 : !llvm.ptr<i64>
    %707 = llvm.add %693, %692  : i64
    llvm.br ^bb58(%707 : i64)
  ^bb60:  // pred: ^bb58
    %708 = llvm.extractvalue %689[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %709 = llvm.getelementptr %708[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %710 = llvm.load %709 : !llvm.ptr<i64>
    %711 = llvm.extractvalue %689[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %712 = llvm.getelementptr %711[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %713 = llvm.load %712 : !llvm.ptr<i64>
    %714 = llvm.extractvalue %689[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %715 = llvm.getelementptr %714[%15] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %716 = llvm.load %715 : !llvm.ptr<i64>
    %717 = llvm.extractvalue %689[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %718 = llvm.getelementptr %717[%14] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %719 = llvm.load %718 : !llvm.ptr<i64>
    %720 = llvm.mlir.constant(1 : index) : i64
    %721 = llvm.mul %719, %716  : i64
    %722 = llvm.mul %721, %713  : i64
    %723 = llvm.mul %722, %710  : i64
    %724 = llvm.mlir.null : !llvm.ptr<i32>
    %725 = llvm.getelementptr %724[%723] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %726 = llvm.ptrtoint %725 : !llvm.ptr<i32> to i64
    %727 = llvm.mlir.constant(16 : index) : i64
    %728 = llvm.add %726, %727  : i64
    %729 = llvm.call @malloc(%728) : (i64) -> !llvm.ptr<i8>
    %730 = llvm.bitcast %729 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %731 = llvm.ptrtoint %730 : !llvm.ptr<i32> to i64
    %732 = llvm.mlir.constant(1 : index) : i64
    %733 = llvm.sub %727, %732  : i64
    %734 = llvm.add %731, %733  : i64
    %735 = llvm.urem %734, %727  : i64
    %736 = llvm.sub %734, %735  : i64
    %737 = llvm.inttoptr %736 : i64 to !llvm.ptr<i32>
    %738 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %739 = llvm.insertvalue %730, %738[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %740 = llvm.insertvalue %737, %739[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %741 = llvm.mlir.constant(0 : index) : i64
    %742 = llvm.insertvalue %741, %740[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %743 = llvm.insertvalue %710, %742[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %744 = llvm.insertvalue %713, %743[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %745 = llvm.insertvalue %716, %744[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %746 = llvm.insertvalue %719, %745[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %747 = llvm.insertvalue %722, %746[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %748 = llvm.insertvalue %721, %747[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %749 = llvm.insertvalue %719, %748[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %750 = llvm.insertvalue %720, %749[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %751 = llvm.mlir.constant(0 : index) : i64
    %752 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%751 : i64)
  ^bb61(%753: i64):  // 2 preds: ^bb60, ^bb71
    %754 = llvm.icmp "slt" %753, %710 : i64
    llvm.cond_br %754, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %755 = llvm.mlir.constant(0 : index) : i64
    %756 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%755 : i64)
  ^bb63(%757: i64):  // 2 preds: ^bb62, ^bb70
    %758 = llvm.icmp "slt" %757, %713 : i64
    llvm.cond_br %758, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %759 = llvm.mlir.constant(0 : index) : i64
    %760 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%759 : i64)
  ^bb65(%761: i64):  // 2 preds: ^bb64, ^bb69
    %762 = llvm.icmp "slt" %761, %716 : i64
    llvm.cond_br %762, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %763 = llvm.mlir.constant(0 : index) : i64
    %764 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%763 : i64)
  ^bb67(%765: i64):  // 2 preds: ^bb66, ^bb68
    %766 = llvm.icmp "slt" %765, %719 : i64
    llvm.cond_br %766, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %767 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %768 = llvm.add %17, %17  : i64
    %769 = llvm.add %768, %17  : i64
    %770 = llvm.add %769, %17  : i64
    %771 = llvm.getelementptr %767[%770] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %772 = llvm.load %771 : !llvm.ptr<i32>
    %773 = llvm.extractvalue %750[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %774 = llvm.extractvalue %750[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %775 = llvm.mul %753, %774  : i64
    %776 = llvm.extractvalue %750[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %777 = llvm.mul %757, %776  : i64
    %778 = llvm.add %775, %777  : i64
    %779 = llvm.extractvalue %750[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %780 = llvm.mul %761, %779  : i64
    %781 = llvm.add %778, %780  : i64
    %782 = llvm.add %781, %765  : i64
    %783 = llvm.getelementptr %773[%782] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %772, %783 : !llvm.ptr<i32>
    %784 = llvm.add %765, %764  : i64
    llvm.br ^bb67(%784 : i64)
  ^bb69:  // pred: ^bb67
    %785 = llvm.add %761, %760  : i64
    llvm.br ^bb65(%785 : i64)
  ^bb70:  // pred: ^bb65
    %786 = llvm.add %757, %756  : i64
    llvm.br ^bb63(%786 : i64)
  ^bb71:  // pred: ^bb63
    %787 = llvm.add %753, %752  : i64
    llvm.br ^bb61(%787 : i64)
  ^bb72:  // pred: ^bb61
    %788 = llvm.mlir.constant(1 : index) : i64
    %789 = llvm.mul %719, %716  : i64
    %790 = llvm.mul %789, %710  : i64
    %791 = llvm.mlir.null : !llvm.ptr<i64>
    %792 = llvm.getelementptr %791[%790] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %793 = llvm.ptrtoint %792 : !llvm.ptr<i64> to i64
    %794 = llvm.mlir.constant(16 : index) : i64
    %795 = llvm.add %793, %794  : i64
    %796 = llvm.call @malloc(%795) : (i64) -> !llvm.ptr<i8>
    %797 = llvm.bitcast %796 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %798 = llvm.ptrtoint %797 : !llvm.ptr<i64> to i64
    %799 = llvm.mlir.constant(1 : index) : i64
    %800 = llvm.sub %794, %799  : i64
    %801 = llvm.add %798, %800  : i64
    %802 = llvm.urem %801, %794  : i64
    %803 = llvm.sub %801, %802  : i64
    %804 = llvm.inttoptr %803 : i64 to !llvm.ptr<i64>
    %805 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)>
    %806 = llvm.insertvalue %797, %805[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %807 = llvm.insertvalue %804, %806[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %808 = llvm.mlir.constant(0 : index) : i64
    %809 = llvm.insertvalue %808, %807[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %810 = llvm.insertvalue %710, %809[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %811 = llvm.insertvalue %716, %810[3, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %812 = llvm.insertvalue %719, %811[3, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %813 = llvm.insertvalue %789, %812[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %814 = llvm.insertvalue %719, %813[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %815 = llvm.insertvalue %788, %814[4, 2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %816 = llvm.mlir.constant(0 : index) : i64
    %817 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%816 : i64)
  ^bb73(%818: i64):  // 2 preds: ^bb72, ^bb80
    %819 = llvm.icmp "slt" %818, %710 : i64
    llvm.cond_br %819, ^bb74, ^bb81
  ^bb74:  // pred: ^bb73
    %820 = llvm.mlir.constant(0 : index) : i64
    %821 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb75(%820 : i64)
  ^bb75(%822: i64):  // 2 preds: ^bb74, ^bb79
    %823 = llvm.icmp "slt" %822, %716 : i64
    llvm.cond_br %823, ^bb76, ^bb80
  ^bb76:  // pred: ^bb75
    %824 = llvm.mlir.constant(0 : index) : i64
    %825 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb77(%824 : i64)
  ^bb77(%826: i64):  // 2 preds: ^bb76, ^bb78
    %827 = llvm.icmp "slt" %826, %719 : i64
    llvm.cond_br %827, ^bb78, ^bb79
  ^bb78:  // pred: ^bb77
    %828 = llvm.extractvalue %815[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %829 = llvm.extractvalue %815[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %830 = llvm.mul %818, %829  : i64
    %831 = llvm.extractvalue %815[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %832 = llvm.mul %822, %831  : i64
    %833 = llvm.add %830, %832  : i64
    %834 = llvm.add %833, %826  : i64
    %835 = llvm.getelementptr %828[%834] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %835 : !llvm.ptr<i64>
    %836 = llvm.add %826, %825  : i64
    llvm.br ^bb77(%836 : i64)
  ^bb79:  // pred: ^bb77
    %837 = llvm.add %822, %821  : i64
    llvm.br ^bb75(%837 : i64)
  ^bb80:  // pred: ^bb75
    %838 = llvm.add %818, %817  : i64
    llvm.br ^bb73(%838 : i64)
  ^bb81:  // pred: ^bb73
    %839 = llvm.mlir.constant(0 : index) : i64
    %840 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%839 : i64)
  ^bb82(%841: i64):  // 2 preds: ^bb81, ^bb92
    %842 = llvm.icmp "slt" %841, %710 : i64
    llvm.cond_br %842, ^bb83, ^bb93
  ^bb83:  // pred: ^bb82
    %843 = llvm.mlir.constant(0 : index) : i64
    %844 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb84(%843 : i64)
  ^bb84(%845: i64):  // 2 preds: ^bb83, ^bb91
    %846 = llvm.icmp "slt" %845, %713 : i64
    llvm.cond_br %846, ^bb85, ^bb92
  ^bb85:  // pred: ^bb84
    %847 = llvm.mlir.constant(0 : index) : i64
    %848 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb86(%847 : i64)
  ^bb86(%849: i64):  // 2 preds: ^bb85, ^bb90
    %850 = llvm.icmp "slt" %849, %716 : i64
    llvm.cond_br %850, ^bb87, ^bb91
  ^bb87:  // pred: ^bb86
    %851 = llvm.mlir.constant(0 : index) : i64
    %852 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%851 : i64)
  ^bb88(%853: i64):  // 2 preds: ^bb87, ^bb89
    %854 = llvm.icmp "slt" %853, %719 : i64
    llvm.cond_br %854, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %855 = llvm.extractvalue %750[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %856 = llvm.extractvalue %750[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %857 = llvm.mul %841, %856  : i64
    %858 = llvm.extractvalue %750[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %859 = llvm.mul %845, %858  : i64
    %860 = llvm.add %857, %859  : i64
    %861 = llvm.extractvalue %750[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %862 = llvm.mul %849, %861  : i64
    %863 = llvm.add %860, %862  : i64
    %864 = llvm.add %863, %853  : i64
    %865 = llvm.getelementptr %855[%864] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %866 = llvm.load %865 : !llvm.ptr<i32>
    %867 = llvm.extractvalue %815[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %868 = llvm.extractvalue %815[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %869 = llvm.mul %841, %868  : i64
    %870 = llvm.extractvalue %815[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %871 = llvm.mul %849, %870  : i64
    %872 = llvm.add %869, %871  : i64
    %873 = llvm.add %872, %853  : i64
    %874 = llvm.getelementptr %867[%873] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %875 = llvm.load %874 : !llvm.ptr<i64>
    %876 = llvm.icmp "slt" %875, %12 : i64
    %877 = llvm.select %876, %12, %875 : i1, i64
    %878 = llvm.extractvalue %750[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %879 = llvm.extractvalue %750[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %880 = llvm.mul %841, %879  : i64
    %881 = llvm.extractvalue %750[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %882 = llvm.mul %877, %881  : i64
    %883 = llvm.add %880, %882  : i64
    %884 = llvm.extractvalue %750[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %885 = llvm.mul %849, %884  : i64
    %886 = llvm.add %883, %885  : i64
    %887 = llvm.add %886, %853  : i64
    %888 = llvm.getelementptr %878[%887] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %889 = llvm.load %888 : !llvm.ptr<i32>
    %890 = llvm.icmp "sgt" %866, %889 : i32
    %891 = llvm.select %890, %845, %877 : i1, i64
    %892 = llvm.extractvalue %815[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %893 = llvm.extractvalue %815[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %894 = llvm.mul %841, %893  : i64
    %895 = llvm.extractvalue %815[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %896 = llvm.mul %849, %895  : i64
    %897 = llvm.add %894, %896  : i64
    %898 = llvm.add %897, %853  : i64
    %899 = llvm.getelementptr %892[%898] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %891, %899 : !llvm.ptr<i64>
    %900 = llvm.add %853, %852  : i64
    llvm.br ^bb88(%900 : i64)
  ^bb90:  // pred: ^bb88
    %901 = llvm.add %849, %848  : i64
    llvm.br ^bb86(%901 : i64)
  ^bb91:  // pred: ^bb86
    %902 = llvm.add %845, %844  : i64
    llvm.br ^bb84(%902 : i64)
  ^bb92:  // pred: ^bb84
    %903 = llvm.add %841, %840  : i64
    llvm.br ^bb82(%903 : i64)
  ^bb93:  // pred: ^bb82
    %904 = llvm.mlir.constant(1 : index) : i64
    %905 = llvm.mlir.constant(1 : index) : i64
    %906 = llvm.mlir.constant(1 : index) : i64
    %907 = llvm.mlir.constant(1 : index) : i64
    %908 = llvm.mlir.null : !llvm.ptr<i1>
    %909 = llvm.getelementptr %908[%904] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %910 = llvm.ptrtoint %909 : !llvm.ptr<i1> to i64
    %911 = llvm.mlir.constant(16 : index) : i64
    %912 = llvm.add %910, %911  : i64
    %913 = llvm.call @malloc(%912) : (i64) -> !llvm.ptr<i8>
    %914 = llvm.bitcast %913 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %915 = llvm.ptrtoint %914 : !llvm.ptr<i1> to i64
    %916 = llvm.mlir.constant(1 : index) : i64
    %917 = llvm.sub %911, %916  : i64
    %918 = llvm.add %915, %917  : i64
    %919 = llvm.urem %918, %911  : i64
    %920 = llvm.sub %918, %919  : i64
    %921 = llvm.inttoptr %920 : i64 to !llvm.ptr<i1>
    %922 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>
    %923 = llvm.insertvalue %914, %922[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %924 = llvm.insertvalue %921, %923[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %925 = llvm.mlir.constant(0 : index) : i64
    %926 = llvm.insertvalue %925, %924[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %927 = llvm.insertvalue %904, %926[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %928 = llvm.insertvalue %905, %927[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %929 = llvm.insertvalue %906, %928[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %930 = llvm.insertvalue %905, %929[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %931 = llvm.insertvalue %906, %930[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %932 = llvm.insertvalue %907, %931[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %933 = llvm.icmp "sgt" %710, %16 : i64
    %934 = llvm.icmp "sgt" %716, %16 : i64
    %935 = llvm.icmp "sgt" %719, %16 : i64
    %936 = llvm.icmp "sgt" %710, %16 : i64
    %937 = llvm.icmp "sgt" %716, %16 : i64
    %938 = llvm.icmp "sgt" %719, %16 : i64
    %939 = llvm.mlir.constant(0 : index) : i64
    %940 = llvm.mlir.constant(1 : index) : i64
    %941 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb94(%939 : i64)
  ^bb94(%942: i64):  // 2 preds: ^bb93, ^bb101
    %943 = llvm.icmp "slt" %942, %940 : i64
    llvm.cond_br %943, ^bb95, ^bb102
  ^bb95:  // pred: ^bb94
    %944 = llvm.mlir.constant(0 : index) : i64
    %945 = llvm.mlir.constant(1 : index) : i64
    %946 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb96(%944 : i64)
  ^bb96(%947: i64):  // 2 preds: ^bb95, ^bb100
    %948 = llvm.icmp "slt" %947, %945 : i64
    llvm.cond_br %948, ^bb97, ^bb101
  ^bb97:  // pred: ^bb96
    %949 = llvm.mlir.constant(0 : index) : i64
    %950 = llvm.mlir.constant(1 : index) : i64
    %951 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb98(%949 : i64)
  ^bb98(%952: i64):  // 2 preds: ^bb97, ^bb99
    %953 = llvm.icmp "slt" %952, %950 : i64
    llvm.cond_br %953, ^bb99, ^bb100
  ^bb99:  // pred: ^bb98
    %954 = llvm.select %933, %942, %17 : i1, i64
    %955 = llvm.select %934, %947, %17 : i1, i64
    %956 = llvm.select %935, %952, %17 : i1, i64
    %957 = llvm.extractvalue %815[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %958 = llvm.extractvalue %815[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %959 = llvm.mul %954, %958  : i64
    %960 = llvm.extractvalue %815[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %961 = llvm.mul %955, %960  : i64
    %962 = llvm.add %959, %961  : i64
    %963 = llvm.add %962, %956  : i64
    %964 = llvm.getelementptr %957[%963] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %965 = llvm.load %964 : !llvm.ptr<i64>
    %966 = llvm.select %936, %942, %17 : i1, i64
    %967 = llvm.select %937, %947, %17 : i1, i64
    %968 = llvm.select %938, %952, %17 : i1, i64
    %969 = llvm.extractvalue %815[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %970 = llvm.extractvalue %815[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %971 = llvm.mul %966, %970  : i64
    %972 = llvm.extractvalue %815[4, 1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<3 x i64>, array<3 x i64>)> 
    %973 = llvm.mul %967, %972  : i64
    %974 = llvm.add %971, %973  : i64
    %975 = llvm.add %974, %968  : i64
    %976 = llvm.getelementptr %969[%975] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %977 = llvm.load %976 : !llvm.ptr<i64>
    %978 = llvm.icmp "sgt" %965, %977 : i64
    %979 = llvm.extractvalue %932[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %980 = llvm.add %942, %947  : i64
    %981 = llvm.add %980, %952  : i64
    %982 = llvm.getelementptr %979[%981] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %978, %982 : !llvm.ptr<i1>
    %983 = llvm.add %952, %951  : i64
    llvm.br ^bb98(%983 : i64)
  ^bb100:  // pred: ^bb98
    %984 = llvm.add %947, %946  : i64
    llvm.br ^bb96(%984 : i64)
  ^bb101:  // pred: ^bb96
    %985 = llvm.add %942, %941  : i64
    llvm.br ^bb94(%985 : i64)
  ^bb102:  // pred: ^bb94
    %986 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    %987 = llvm.insertvalue %511, %986[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %988 = llvm.insertvalue %932, %987[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    llvm.return %988 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v0_0"], llvm.emit_c_interface, output_names = ["v4_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)>)> 
    %47 = llvm.mlir.constant(2 : i64) : i64
    %48 = llvm.mlir.constant(16 : i64) : i64
    %49 = llvm.call @malloc(%48) : (i64) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %51 = llvm.mlir.constant(4 : i64) : i64
    %52 = llvm.call @omTensorCreateUntyped(%51) : (i64) -> !llvm.ptr<i8>
    %53 = llvm.mlir.constant(1 : i64) : i64
    %54 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %55 = llvm.bitcast %54 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %56 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %57 = llvm.bitcast %56 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%52, %53, %55, %57) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %58 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%52, %58) : (!llvm.ptr<i8>, i64) -> ()
    %59 = llvm.call @omTensorGetShape(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %60 = llvm.call @omTensorGetStrides(%52) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.mlir.constant(0 : i64) : i64
    %62 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %63 = llvm.getelementptr %59[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %62, %63 : !llvm.ptr<i64>
    %64 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %65 = llvm.getelementptr %60[%61] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %64, %65 : !llvm.ptr<i64>
    %66 = llvm.mlir.constant(1 : i64) : i64
    %67 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %68 = llvm.getelementptr %59[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %67, %68 : !llvm.ptr<i64>
    %69 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %70 = llvm.getelementptr %60[%66] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %69, %70 : !llvm.ptr<i64>
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %73 = llvm.getelementptr %59[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %72, %73 : !llvm.ptr<i64>
    %74 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %75 = llvm.getelementptr %60[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %74, %75 : !llvm.ptr<i64>
    %76 = llvm.mlir.constant(3 : i64) : i64
    %77 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.getelementptr %59[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %77, %78 : !llvm.ptr<i64>
    %79 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.getelementptr %60[%76] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %79, %80 : !llvm.ptr<i64>
    %81 = llvm.mlir.constant(0 : i64) : i64
    %82 = llvm.getelementptr %50[%81] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %52, %82 : !llvm.ptr<ptr<i8>>
    %83 = llvm.mlir.constant(3 : i64) : i64
    %84 = llvm.call @omTensorCreateUntyped(%83) : (i64) -> !llvm.ptr<i8>
    %85 = llvm.mlir.constant(1 : i64) : i64
    %86 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %87 = llvm.bitcast %86 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %88 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%84, %85, %87, %89) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %90 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%84, %90) : (!llvm.ptr<i8>, i64) -> ()
    %91 = llvm.call @omTensorGetShape(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %92 = llvm.call @omTensorGetStrides(%84) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.mlir.constant(0 : i64) : i64
    %94 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %95 = llvm.getelementptr %91[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %94, %95 : !llvm.ptr<i64>
    %96 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %92[%93] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.mlir.constant(1 : i64) : i64
    %99 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %100 = llvm.getelementptr %91[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %99, %100 : !llvm.ptr<i64>
    %101 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %92[%98] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.mlir.constant(2 : i64) : i64
    %104 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %105 = llvm.getelementptr %91[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %104, %105 : !llvm.ptr<i64>
    %106 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %92[%103] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.getelementptr %50[%108] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %84, %109 : !llvm.ptr<ptr<i8>>
    %110 = llvm.call @omTensorListCreate(%50, %47, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %110 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<72 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<72 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<136 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<136 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

