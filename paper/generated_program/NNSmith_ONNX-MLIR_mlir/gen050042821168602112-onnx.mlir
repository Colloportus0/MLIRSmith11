module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_8(dense<6> : tensor<i32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i32>
  llvm.mlir.global internal constant @constant_7(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_6(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<1> : tensor<2xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v4_0"]} {
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
    %12 = llvm.mlir.constant(0 : index) : i64
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<2 x i64>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %21 = llvm.mlir.constant(2 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %26 = llvm.bitcast %25 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %27 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %28 = llvm.insertvalue %26, %27[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %29 = llvm.insertvalue %26, %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %30 = llvm.mlir.constant(0 : index) : i64
    %31 = llvm.insertvalue %30, %29[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %32 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<2 x i64>>
    %33 = llvm.bitcast %32 : !llvm.ptr<array<2 x i64>> to !llvm.ptr<i64>
    %34 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %35 = llvm.insertvalue %33, %34[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.insertvalue %33, %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %37 = llvm.mlir.constant(0 : index) : i64
    %38 = llvm.insertvalue %37, %36[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %39 = llvm.mlir.constant(2 : index) : i64
    %40 = llvm.insertvalue %39, %38[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(1 : index) : i64
    %42 = llvm.insertvalue %41, %40[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %44 = llvm.bitcast %43 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %46 = llvm.insertvalue %44, %45[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %48 = llvm.mlir.constant(0 : index) : i64
    %49 = llvm.insertvalue %48, %47[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(4 : index) : i64
    %51 = llvm.insertvalue %50, %49[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(1 : index) : i64
    %53 = llvm.insertvalue %52, %51[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x i64>>
    %55 = llvm.bitcast %54 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %56 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %57 = llvm.insertvalue %55, %56[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %58 = llvm.insertvalue %55, %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %59 = llvm.mlir.constant(0 : index) : i64
    %60 = llvm.insertvalue %59, %58[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %61 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<1 x i32>>
    %62 = llvm.bitcast %61 : !llvm.ptr<array<1 x i32>> to !llvm.ptr<i32>
    %63 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64)>
    %64 = llvm.insertvalue %62, %63[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %65 = llvm.insertvalue %62, %64[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %66 = llvm.mlir.constant(0 : index) : i64
    %67 = llvm.insertvalue %66, %65[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %68 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<4 x i64>>
    %69 = llvm.bitcast %68 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %70 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %71 = llvm.insertvalue %69, %70[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.insertvalue %69, %71[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %73 = llvm.mlir.constant(0 : index) : i64
    %74 = llvm.insertvalue %73, %72[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %75 = llvm.mlir.constant(4 : index) : i64
    %76 = llvm.insertvalue %75, %74[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %77 = llvm.mlir.constant(1 : index) : i64
    %78 = llvm.insertvalue %77, %76[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(4 : index) : i64
    %80 = llvm.mlir.constant(1 : index) : i64
    %81 = llvm.mlir.null : !llvm.ptr<i64>
    %82 = llvm.getelementptr %81[%79] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i64> to i64
    %84 = llvm.mlir.constant(16 : index) : i64
    %85 = llvm.add %83, %84  : i64
    %86 = llvm.call @malloc(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.bitcast %86 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %88 = llvm.ptrtoint %87 : !llvm.ptr<i64> to i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.sub %84, %89  : i64
    %91 = llvm.add %88, %90  : i64
    %92 = llvm.urem %91, %84  : i64
    %93 = llvm.sub %91, %92  : i64
    %94 = llvm.inttoptr %93 : i64 to !llvm.ptr<i64>
    %95 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %96 = llvm.insertvalue %87, %95[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.insertvalue %79, %99[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %101 = llvm.insertvalue %80, %100[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(0 : index) : i64
    %103 = llvm.mlir.constant(4 : index) : i64
    %104 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%102 : i64)
  ^bb1(%105: i64):  // 2 preds: ^bb0, ^bb2
    %106 = llvm.icmp "slt" %105, %103 : i64
    llvm.cond_br %106, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %107 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %108 = llvm.getelementptr %107[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %108 : !llvm.ptr<i64>
    %109 = llvm.add %105, %104  : i64
    llvm.br ^bb1(%109 : i64)
  ^bb3:  // pred: ^bb1
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mlir.constant(1 : index) : i64
    %112 = llvm.mlir.null : !llvm.ptr<i64>
    %113 = llvm.getelementptr %112[%110] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %114 = llvm.ptrtoint %113 : !llvm.ptr<i64> to i64
    %115 = llvm.mlir.constant(16 : index) : i64
    %116 = llvm.add %114, %115  : i64
    %117 = llvm.call @malloc(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %119 = llvm.ptrtoint %118 : !llvm.ptr<i64> to i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.sub %115, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.urem %122, %115  : i64
    %124 = llvm.sub %122, %123  : i64
    %125 = llvm.inttoptr %124 : i64 to !llvm.ptr<i64>
    %126 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %127 = llvm.insertvalue %118, %126[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %131 = llvm.insertvalue %110, %130[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %132 = llvm.insertvalue %111, %131[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %133 = llvm.mlir.constant(0 : index) : i64
    %134 = llvm.mlir.constant(4 : index) : i64
    %135 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb4(%133 : i64)
  ^bb4(%136: i64):  // 2 preds: ^bb3, ^bb5
    %137 = llvm.icmp "slt" %136, %134 : i64
    llvm.cond_br %137, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %138 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %139 = llvm.getelementptr %138[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %140 = llvm.load %139 : !llvm.ptr<i64>
    %141 = llvm.extractvalue %60[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %142 = llvm.load %141 : !llvm.ptr<i64>
    %143 = llvm.mul %140, %142  : i64
    %144 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.getelementptr %144[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %143, %145 : !llvm.ptr<i64>
    %146 = llvm.add %136, %135  : i64
    llvm.br ^bb4(%146 : i64)
  ^bb6:  // pred: ^bb4
    %147 = llvm.mlir.constant(4 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    %149 = llvm.mlir.null : !llvm.ptr<i1>
    %150 = llvm.getelementptr %149[%147] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<i1> to i64
    %152 = llvm.mlir.constant(16 : index) : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.call @malloc(%153) : (i64) -> !llvm.ptr<i8>
    %155 = llvm.bitcast %154 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %156 = llvm.ptrtoint %155 : !llvm.ptr<i1> to i64
    %157 = llvm.mlir.constant(1 : index) : i64
    %158 = llvm.sub %152, %157  : i64
    %159 = llvm.add %156, %158  : i64
    %160 = llvm.urem %159, %152  : i64
    %161 = llvm.sub %159, %160  : i64
    %162 = llvm.inttoptr %161 : i64 to !llvm.ptr<i1>
    %163 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %164 = llvm.insertvalue %155, %163[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %165 = llvm.insertvalue %162, %164[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %166 = llvm.mlir.constant(0 : index) : i64
    %167 = llvm.insertvalue %166, %165[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %168 = llvm.insertvalue %147, %167[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %169 = llvm.insertvalue %148, %168[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %170 = llvm.mlir.constant(0 : index) : i64
    %171 = llvm.mlir.constant(4 : index) : i64
    %172 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%170 : i64)
  ^bb7(%173: i64):  // 2 preds: ^bb6, ^bb8
    %174 = llvm.icmp "slt" %173, %171 : i64
    llvm.cond_br %174, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %175 = llvm.extractvalue %53[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.getelementptr %175[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.load %176 : !llvm.ptr<i64>
    %178 = llvm.extractvalue %132[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %179 = llvm.getelementptr %178[%173] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %180 = llvm.load %179 : !llvm.ptr<i64>
    %181 = llvm.icmp "eq" %177, %180 : i64
    %182 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %183 = llvm.getelementptr %182[%173] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %181, %183 : !llvm.ptr<i1>
    %184 = llvm.add %173, %172  : i64
    llvm.br ^bb7(%184 : i64)
  ^bb9:  // pred: ^bb7
    %185 = llvm.mlir.constant(4 : index) : i64
    %186 = llvm.mlir.constant(1 : index) : i64
    %187 = llvm.mlir.null : !llvm.ptr<i64>
    %188 = llvm.getelementptr %187[%185] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %189 = llvm.ptrtoint %188 : !llvm.ptr<i64> to i64
    %190 = llvm.mlir.constant(16 : index) : i64
    %191 = llvm.add %189, %190  : i64
    %192 = llvm.call @malloc(%191) : (i64) -> !llvm.ptr<i8>
    %193 = llvm.bitcast %192 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %194 = llvm.ptrtoint %193 : !llvm.ptr<i64> to i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.sub %190, %195  : i64
    %197 = llvm.add %194, %196  : i64
    %198 = llvm.urem %197, %190  : i64
    %199 = llvm.sub %197, %198  : i64
    %200 = llvm.inttoptr %199 : i64 to !llvm.ptr<i64>
    %201 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %202 = llvm.insertvalue %193, %201[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %203 = llvm.insertvalue %200, %202[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.insertvalue %204, %203[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %206 = llvm.insertvalue %185, %205[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %207 = llvm.insertvalue %186, %206[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %208 = llvm.mlir.constant(0 : index) : i64
    %209 = llvm.mlir.constant(4 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb10(%208 : i64)
  ^bb10(%211: i64):  // 2 preds: ^bb9, ^bb11
    %212 = llvm.icmp "slt" %211, %209 : i64
    llvm.cond_br %212, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %213 = llvm.extractvalue %169[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %214 = llvm.getelementptr %213[%211] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %215 = llvm.load %214 : !llvm.ptr<i1>
    %216 = llvm.extractvalue %101[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.getelementptr %216[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %218 = llvm.load %217 : !llvm.ptr<i64>
    %219 = llvm.extractvalue %78[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %220 = llvm.getelementptr %219[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %221 = llvm.load %220 : !llvm.ptr<i64>
    %222 = llvm.select %215, %218, %221 : i1, i64
    %223 = llvm.extractvalue %207[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %224 = llvm.getelementptr %223[%211] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %222, %224 : !llvm.ptr<i64>
    %225 = llvm.add %211, %210  : i64
    llvm.br ^bb10(%225 : i64)
  ^bb12:  // pred: ^bb10
    %226 = llvm.mlir.constant(1 : index) : i64
    %227 = llvm.mlir.constant(1 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    %230 = llvm.mlir.constant(1 : index) : i64
    %231 = llvm.mlir.null : !llvm.ptr<i32>
    %232 = llvm.getelementptr %231[%226] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %233 = llvm.ptrtoint %232 : !llvm.ptr<i32> to i64
    %234 = llvm.mlir.constant(16 : index) : i64
    %235 = llvm.add %233, %234  : i64
    %236 = llvm.call @malloc(%235) : (i64) -> !llvm.ptr<i8>
    %237 = llvm.bitcast %236 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %238 = llvm.ptrtoint %237 : !llvm.ptr<i32> to i64
    %239 = llvm.mlir.constant(1 : index) : i64
    %240 = llvm.sub %234, %239  : i64
    %241 = llvm.add %238, %240  : i64
    %242 = llvm.urem %241, %234  : i64
    %243 = llvm.sub %241, %242  : i64
    %244 = llvm.inttoptr %243 : i64 to !llvm.ptr<i32>
    %245 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %246 = llvm.insertvalue %237, %245[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %247 = llvm.insertvalue %244, %246[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(0 : index) : i64
    %249 = llvm.insertvalue %248, %247[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %250 = llvm.insertvalue %226, %249[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %251 = llvm.insertvalue %227, %250[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %252 = llvm.insertvalue %228, %251[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %253 = llvm.insertvalue %229, %252[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %254 = llvm.insertvalue %227, %253[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %255 = llvm.insertvalue %228, %254[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %256 = llvm.insertvalue %229, %255[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %257 = llvm.insertvalue %230, %256[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(1 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%258 : i64)
  ^bb13(%261: i64):  // 2 preds: ^bb12, ^bb23
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %263 = llvm.mlir.constant(0 : index) : i64
    %264 = llvm.mlir.constant(1 : index) : i64
    %265 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%263 : i64)
  ^bb15(%266: i64):  // 2 preds: ^bb14, ^bb22
    %267 = llvm.icmp "slt" %266, %264 : i64
    llvm.cond_br %267, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %268 = llvm.mlir.constant(0 : index) : i64
    %269 = llvm.mlir.constant(1 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%268 : i64)
  ^bb17(%271: i64):  // 2 preds: ^bb16, ^bb21
    %272 = llvm.icmp "slt" %271, %269 : i64
    llvm.cond_br %272, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %273 = llvm.mlir.constant(0 : index) : i64
    %274 = llvm.mlir.constant(1 : index) : i64
    %275 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%273 : i64)
  ^bb19(%276: i64):  // 2 preds: ^bb18, ^bb20
    %277 = llvm.icmp "slt" %276, %274 : i64
    llvm.cond_br %277, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %278 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %279 = llvm.add %12, %12  : i64
    %280 = llvm.add %279, %12  : i64
    %281 = llvm.add %280, %12  : i64
    %282 = llvm.getelementptr %278[%281] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %283 = llvm.load %282 : !llvm.ptr<i32>
    %284 = llvm.extractvalue %257[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %285 = llvm.add %261, %266  : i64
    %286 = llvm.add %285, %271  : i64
    %287 = llvm.add %286, %276  : i64
    %288 = llvm.getelementptr %284[%287] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %283, %288 : !llvm.ptr<i32>
    %289 = llvm.add %276, %275  : i64
    llvm.br ^bb19(%289 : i64)
  ^bb21:  // pred: ^bb19
    %290 = llvm.add %271, %270  : i64
    llvm.br ^bb17(%290 : i64)
  ^bb22:  // pred: ^bb17
    %291 = llvm.add %266, %265  : i64
    llvm.br ^bb15(%291 : i64)
  ^bb23:  // pred: ^bb15
    %292 = llvm.add %261, %260  : i64
    llvm.br ^bb13(%292 : i64)
  ^bb24:  // pred: ^bb13
    %293 = llvm.mlir.constant(1 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    %295 = llvm.mlir.constant(1 : index) : i64
    %296 = llvm.mlir.constant(1 : index) : i64
    %297 = llvm.mlir.constant(1 : index) : i64
    %298 = llvm.mlir.null : !llvm.ptr<i32>
    %299 = llvm.getelementptr %298[%293] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %300 = llvm.ptrtoint %299 : !llvm.ptr<i32> to i64
    %301 = llvm.mlir.constant(16 : index) : i64
    %302 = llvm.add %300, %301  : i64
    %303 = llvm.call @malloc(%302) : (i64) -> !llvm.ptr<i8>
    %304 = llvm.bitcast %303 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %305 = llvm.ptrtoint %304 : !llvm.ptr<i32> to i64
    %306 = llvm.mlir.constant(1 : index) : i64
    %307 = llvm.sub %301, %306  : i64
    %308 = llvm.add %305, %307  : i64
    %309 = llvm.urem %308, %301  : i64
    %310 = llvm.sub %308, %309  : i64
    %311 = llvm.inttoptr %310 : i64 to !llvm.ptr<i32>
    %312 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %313 = llvm.insertvalue %304, %312[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %314 = llvm.insertvalue %311, %313[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %315 = llvm.mlir.constant(0 : index) : i64
    %316 = llvm.insertvalue %315, %314[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %317 = llvm.insertvalue %293, %316[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %318 = llvm.insertvalue %294, %317[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %319 = llvm.insertvalue %295, %318[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %320 = llvm.insertvalue %296, %319[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %321 = llvm.insertvalue %294, %320[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %322 = llvm.insertvalue %295, %321[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %323 = llvm.insertvalue %296, %322[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %324 = llvm.insertvalue %297, %323[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.mlir.constant(1 : index) : i64
    %327 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%325 : i64)
  ^bb25(%328: i64):  // 2 preds: ^bb24, ^bb35
    %329 = llvm.icmp "slt" %328, %326 : i64
    llvm.cond_br %329, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %330 = llvm.mlir.constant(0 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    %332 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%330 : i64)
  ^bb27(%333: i64):  // 2 preds: ^bb26, ^bb34
    %334 = llvm.icmp "slt" %333, %331 : i64
    llvm.cond_br %334, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %335 = llvm.mlir.constant(0 : index) : i64
    %336 = llvm.mlir.constant(1 : index) : i64
    %337 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%335 : i64)
  ^bb29(%338: i64):  // 2 preds: ^bb28, ^bb33
    %339 = llvm.icmp "slt" %338, %336 : i64
    llvm.cond_br %339, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %340 = llvm.mlir.constant(0 : index) : i64
    %341 = llvm.mlir.constant(1 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%340 : i64)
  ^bb31(%343: i64):  // 2 preds: ^bb30, ^bb32
    %344 = llvm.icmp "slt" %343, %341 : i64
    llvm.cond_br %344, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %345 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.add %328, %333  : i64
    %347 = llvm.add %346, %338  : i64
    %348 = llvm.add %347, %343  : i64
    %349 = llvm.getelementptr %345[%348] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %350 = llvm.load %349 : !llvm.ptr<i32>
    %351 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %352 = llvm.load %351 : !llvm.ptr<i32>
    %353 = llvm.mul %350, %352  : i32
    %354 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %355 = llvm.add %328, %333  : i64
    %356 = llvm.add %355, %338  : i64
    %357 = llvm.add %356, %343  : i64
    %358 = llvm.getelementptr %354[%357] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %353, %358 : !llvm.ptr<i32>
    %359 = llvm.add %343, %342  : i64
    llvm.br ^bb31(%359 : i64)
  ^bb33:  // pred: ^bb31
    %360 = llvm.add %338, %337  : i64
    llvm.br ^bb29(%360 : i64)
  ^bb34:  // pred: ^bb29
    %361 = llvm.add %333, %332  : i64
    llvm.br ^bb27(%361 : i64)
  ^bb35:  // pred: ^bb27
    %362 = llvm.add %328, %327  : i64
    llvm.br ^bb25(%362 : i64)
  ^bb36:  // pred: ^bb25
    %363 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %364 = llvm.extractvalue %324[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %365 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %366 = llvm.insertvalue %364, %363[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %367 = llvm.insertvalue %365, %366[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %368 = llvm.mlir.constant(0 : index) : i64
    %369 = llvm.insertvalue %368, %367[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %370 = llvm.mlir.constant(1 : index) : i64
    %371 = llvm.insertvalue %370, %369[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %372 = llvm.mlir.constant(1 : index) : i64
    %373 = llvm.insertvalue %372, %371[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %374 = llvm.mlir.constant(1 : index) : i64
    %375 = llvm.insertvalue %374, %373[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %376 = llvm.mlir.constant(1 : index) : i64
    %377 = llvm.insertvalue %376, %375[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %378 = llvm.mlir.constant(2 : index) : i64
    %379 = llvm.mlir.constant(1 : index) : i64
    %380 = llvm.mlir.null : !llvm.ptr<i64>
    %381 = llvm.getelementptr %380[%378] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %382 = llvm.ptrtoint %381 : !llvm.ptr<i64> to i64
    %383 = llvm.mlir.constant(16 : index) : i64
    %384 = llvm.add %382, %383  : i64
    %385 = llvm.call @malloc(%384) : (i64) -> !llvm.ptr<i8>
    %386 = llvm.bitcast %385 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %387 = llvm.ptrtoint %386 : !llvm.ptr<i64> to i64
    %388 = llvm.mlir.constant(1 : index) : i64
    %389 = llvm.sub %383, %388  : i64
    %390 = llvm.add %387, %389  : i64
    %391 = llvm.urem %390, %383  : i64
    %392 = llvm.sub %390, %391  : i64
    %393 = llvm.inttoptr %392 : i64 to !llvm.ptr<i64>
    %394 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %395 = llvm.insertvalue %386, %394[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %396 = llvm.insertvalue %393, %395[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %397 = llvm.mlir.constant(0 : index) : i64
    %398 = llvm.insertvalue %397, %396[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.insertvalue %378, %398[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.insertvalue %379, %399[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %401 = llvm.mlir.constant(0 : index) : i64
    %402 = llvm.mlir.constant(2 : index) : i64
    %403 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%401 : i64)
  ^bb37(%404: i64):  // 2 preds: ^bb36, ^bb38
    %405 = llvm.icmp "slt" %404, %402 : i64
    llvm.cond_br %405, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %406 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %407 = llvm.getelementptr %406[%404] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %407 : !llvm.ptr<i64>
    %408 = llvm.add %404, %403  : i64
    llvm.br ^bb37(%408 : i64)
  ^bb39:  // pred: ^bb37
    %409 = llvm.mlir.constant(2 : index) : i64
    %410 = llvm.mlir.constant(1 : index) : i64
    %411 = llvm.mlir.null : !llvm.ptr<i64>
    %412 = llvm.getelementptr %411[%409] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %413 = llvm.ptrtoint %412 : !llvm.ptr<i64> to i64
    %414 = llvm.mlir.constant(16 : index) : i64
    %415 = llvm.add %413, %414  : i64
    %416 = llvm.call @malloc(%415) : (i64) -> !llvm.ptr<i8>
    %417 = llvm.bitcast %416 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %418 = llvm.ptrtoint %417 : !llvm.ptr<i64> to i64
    %419 = llvm.mlir.constant(1 : index) : i64
    %420 = llvm.sub %414, %419  : i64
    %421 = llvm.add %418, %420  : i64
    %422 = llvm.urem %421, %414  : i64
    %423 = llvm.sub %421, %422  : i64
    %424 = llvm.inttoptr %423 : i64 to !llvm.ptr<i64>
    %425 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %426 = llvm.insertvalue %417, %425[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %427 = llvm.insertvalue %424, %426[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %428 = llvm.mlir.constant(0 : index) : i64
    %429 = llvm.insertvalue %428, %427[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %430 = llvm.insertvalue %409, %429[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %431 = llvm.insertvalue %410, %430[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(2 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%432 : i64)
  ^bb40(%435: i64):  // 2 preds: ^bb39, ^bb41
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %437 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %438 = llvm.getelementptr %437[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %439 = llvm.load %438 : !llvm.ptr<i64>
    %440 = llvm.extractvalue %31[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %441 = llvm.load %440 : !llvm.ptr<i64>
    %442 = llvm.mul %439, %441  : i64
    %443 = llvm.extractvalue %431[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %444 = llvm.getelementptr %443[%435] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %442, %444 : !llvm.ptr<i64>
    %445 = llvm.add %435, %434  : i64
    llvm.br ^bb40(%445 : i64)
  ^bb42:  // pred: ^bb40
    %446 = llvm.mlir.constant(2 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    %448 = llvm.mlir.null : !llvm.ptr<i1>
    %449 = llvm.getelementptr %448[%446] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %450 = llvm.ptrtoint %449 : !llvm.ptr<i1> to i64
    %451 = llvm.mlir.constant(16 : index) : i64
    %452 = llvm.add %450, %451  : i64
    %453 = llvm.call @malloc(%452) : (i64) -> !llvm.ptr<i8>
    %454 = llvm.bitcast %453 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %455 = llvm.ptrtoint %454 : !llvm.ptr<i1> to i64
    %456 = llvm.mlir.constant(1 : index) : i64
    %457 = llvm.sub %451, %456  : i64
    %458 = llvm.add %455, %457  : i64
    %459 = llvm.urem %458, %451  : i64
    %460 = llvm.sub %458, %459  : i64
    %461 = llvm.inttoptr %460 : i64 to !llvm.ptr<i1>
    %462 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %463 = llvm.insertvalue %454, %462[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %464 = llvm.insertvalue %461, %463[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %465 = llvm.mlir.constant(0 : index) : i64
    %466 = llvm.insertvalue %465, %464[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %467 = llvm.insertvalue %446, %466[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %468 = llvm.insertvalue %447, %467[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %469 = llvm.mlir.constant(0 : index) : i64
    %470 = llvm.mlir.constant(2 : index) : i64
    %471 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%469 : i64)
  ^bb43(%472: i64):  // 2 preds: ^bb42, ^bb44
    %473 = llvm.icmp "slt" %472, %470 : i64
    llvm.cond_br %473, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %474 = llvm.extractvalue %24[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %475 = llvm.getelementptr %474[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %476 = llvm.load %475 : !llvm.ptr<i64>
    %477 = llvm.extractvalue %431[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %478 = llvm.getelementptr %477[%472] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %479 = llvm.load %478 : !llvm.ptr<i64>
    %480 = llvm.icmp "eq" %476, %479 : i64
    %481 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %482 = llvm.getelementptr %481[%472] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %480, %482 : !llvm.ptr<i1>
    %483 = llvm.add %472, %471  : i64
    llvm.br ^bb43(%483 : i64)
  ^bb45:  // pred: ^bb43
    %484 = llvm.mlir.constant(2 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    %486 = llvm.mlir.null : !llvm.ptr<i64>
    %487 = llvm.getelementptr %486[%484] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %488 = llvm.ptrtoint %487 : !llvm.ptr<i64> to i64
    %489 = llvm.mlir.constant(16 : index) : i64
    %490 = llvm.add %488, %489  : i64
    %491 = llvm.call @malloc(%490) : (i64) -> !llvm.ptr<i8>
    %492 = llvm.bitcast %491 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %493 = llvm.ptrtoint %492 : !llvm.ptr<i64> to i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.sub %489, %494  : i64
    %496 = llvm.add %493, %495  : i64
    %497 = llvm.urem %496, %489  : i64
    %498 = llvm.sub %496, %497  : i64
    %499 = llvm.inttoptr %498 : i64 to !llvm.ptr<i64>
    %500 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %501 = llvm.insertvalue %492, %500[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %502 = llvm.insertvalue %499, %501[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %503 = llvm.mlir.constant(0 : index) : i64
    %504 = llvm.insertvalue %503, %502[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %505 = llvm.insertvalue %484, %504[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %506 = llvm.insertvalue %485, %505[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %507 = llvm.mlir.constant(0 : index) : i64
    %508 = llvm.mlir.constant(2 : index) : i64
    %509 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%507 : i64)
  ^bb46(%510: i64):  // 2 preds: ^bb45, ^bb47
    %511 = llvm.icmp "slt" %510, %508 : i64
    llvm.cond_br %511, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %512 = llvm.extractvalue %468[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %513 = llvm.getelementptr %512[%510] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %514 = llvm.load %513 : !llvm.ptr<i1>
    %515 = llvm.extractvalue %400[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.getelementptr %515[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %517 = llvm.load %516 : !llvm.ptr<i64>
    %518 = llvm.extractvalue %42[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %519 = llvm.getelementptr %518[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %520 = llvm.load %519 : !llvm.ptr<i64>
    %521 = llvm.select %514, %517, %520 : i1, i64
    %522 = llvm.extractvalue %506[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %523 = llvm.getelementptr %522[%510] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %521, %523 : !llvm.ptr<i64>
    %524 = llvm.add %510, %509  : i64
    llvm.br ^bb46(%524 : i64)
  ^bb48:  // pred: ^bb46
    %525 = llvm.mlir.constant(1 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    %528 = llvm.mlir.null : !llvm.ptr<i32>
    %529 = llvm.getelementptr %528[%525] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %530 = llvm.ptrtoint %529 : !llvm.ptr<i32> to i64
    %531 = llvm.mlir.constant(16 : index) : i64
    %532 = llvm.add %530, %531  : i64
    %533 = llvm.call @malloc(%532) : (i64) -> !llvm.ptr<i8>
    %534 = llvm.bitcast %533 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %535 = llvm.ptrtoint %534 : !llvm.ptr<i32> to i64
    %536 = llvm.mlir.constant(1 : index) : i64
    %537 = llvm.sub %531, %536  : i64
    %538 = llvm.add %535, %537  : i64
    %539 = llvm.urem %538, %531  : i64
    %540 = llvm.sub %538, %539  : i64
    %541 = llvm.inttoptr %540 : i64 to !llvm.ptr<i32>
    %542 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %543 = llvm.insertvalue %534, %542[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %544 = llvm.insertvalue %541, %543[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.insertvalue %545, %544[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %547 = llvm.insertvalue %525, %546[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %548 = llvm.insertvalue %526, %547[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %549 = llvm.insertvalue %526, %548[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %550 = llvm.insertvalue %527, %549[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %551 = llvm.mlir.constant(0 : index) : i64
    %552 = llvm.mlir.constant(1 : index) : i64
    %553 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%551 : i64)
  ^bb49(%554: i64):  // 2 preds: ^bb48, ^bb53
    %555 = llvm.icmp "slt" %554, %552 : i64
    llvm.cond_br %555, ^bb50, ^bb54
  ^bb50:  // pred: ^bb49
    %556 = llvm.mlir.constant(0 : index) : i64
    %557 = llvm.mlir.constant(1 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%556 : i64)
  ^bb51(%559: i64):  // 2 preds: ^bb50, ^bb52
    %560 = llvm.icmp "slt" %559, %557 : i64
    llvm.cond_br %560, ^bb52, ^bb53
  ^bb52:  // pred: ^bb51
    %561 = llvm.extractvalue %377[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %562 = llvm.add %12, %12  : i64
    %563 = llvm.getelementptr %561[%562] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %564 = llvm.load %563 : !llvm.ptr<i32>
    %565 = llvm.extractvalue %550[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %566 = llvm.add %554, %559  : i64
    %567 = llvm.getelementptr %565[%566] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %564, %567 : !llvm.ptr<i32>
    %568 = llvm.add %559, %558  : i64
    llvm.br ^bb51(%568 : i64)
  ^bb53:  // pred: ^bb51
    %569 = llvm.add %554, %553  : i64
    llvm.br ^bb49(%569 : i64)
  ^bb54:  // pred: ^bb49
    %570 = llvm.mlir.constant(1 : index) : i64
    %571 = llvm.mlir.constant(1 : index) : i64
    %572 = llvm.mlir.constant(1 : index) : i64
    %573 = llvm.mlir.constant(1 : index) : i64
    %574 = llvm.mlir.constant(1 : index) : i64
    %575 = llvm.mlir.null : !llvm.ptr<i1>
    %576 = llvm.getelementptr %575[%570] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %577 = llvm.ptrtoint %576 : !llvm.ptr<i1> to i64
    %578 = llvm.mlir.constant(16 : index) : i64
    %579 = llvm.add %577, %578  : i64
    %580 = llvm.call @malloc(%579) : (i64) -> !llvm.ptr<i8>
    %581 = llvm.bitcast %580 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %582 = llvm.ptrtoint %581 : !llvm.ptr<i1> to i64
    %583 = llvm.mlir.constant(1 : index) : i64
    %584 = llvm.sub %578, %583  : i64
    %585 = llvm.add %582, %584  : i64
    %586 = llvm.urem %585, %578  : i64
    %587 = llvm.sub %585, %586  : i64
    %588 = llvm.inttoptr %587 : i64 to !llvm.ptr<i1>
    %589 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %590 = llvm.insertvalue %581, %589[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %591 = llvm.insertvalue %588, %590[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %592 = llvm.mlir.constant(0 : index) : i64
    %593 = llvm.insertvalue %592, %591[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %594 = llvm.insertvalue %570, %593[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %595 = llvm.insertvalue %571, %594[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %596 = llvm.insertvalue %572, %595[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %597 = llvm.insertvalue %573, %596[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.insertvalue %571, %597[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %599 = llvm.insertvalue %572, %598[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %600 = llvm.insertvalue %573, %599[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %601 = llvm.insertvalue %574, %600[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %602 = llvm.mlir.constant(0 : index) : i64
    %603 = llvm.mlir.constant(1 : index) : i64
    %604 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%602 : i64)
  ^bb55(%605: i64):  // 2 preds: ^bb54, ^bb65
    %606 = llvm.icmp "slt" %605, %603 : i64
    llvm.cond_br %606, ^bb56, ^bb66
  ^bb56:  // pred: ^bb55
    %607 = llvm.mlir.constant(0 : index) : i64
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%607 : i64)
  ^bb57(%610: i64):  // 2 preds: ^bb56, ^bb64
    %611 = llvm.icmp "slt" %610, %608 : i64
    llvm.cond_br %611, ^bb58, ^bb65
  ^bb58:  // pred: ^bb57
    %612 = llvm.mlir.constant(0 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb59(%612 : i64)
  ^bb59(%615: i64):  // 2 preds: ^bb58, ^bb63
    %616 = llvm.icmp "slt" %615, %613 : i64
    llvm.cond_br %616, ^bb60, ^bb64
  ^bb60:  // pred: ^bb59
    %617 = llvm.mlir.constant(0 : index) : i64
    %618 = llvm.mlir.constant(1 : index) : i64
    %619 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%617 : i64)
  ^bb61(%620: i64):  // 2 preds: ^bb60, ^bb62
    %621 = llvm.icmp "slt" %620, %618 : i64
    llvm.cond_br %621, ^bb62, ^bb63
  ^bb62:  // pred: ^bb61
    %622 = llvm.extractvalue %67[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64)> 
    %623 = llvm.load %622 : !llvm.ptr<i32>
    %624 = llvm.extractvalue %324[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %625 = llvm.add %605, %610  : i64
    %626 = llvm.add %625, %615  : i64
    %627 = llvm.add %626, %620  : i64
    %628 = llvm.getelementptr %624[%627] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %629 = llvm.load %628 : !llvm.ptr<i32>
    %630 = llvm.icmp "sgt" %623, %629 : i32
    %631 = llvm.extractvalue %601[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %632 = llvm.add %605, %610  : i64
    %633 = llvm.add %632, %615  : i64
    %634 = llvm.add %633, %620  : i64
    %635 = llvm.getelementptr %631[%634] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %630, %635 : !llvm.ptr<i1>
    %636 = llvm.add %620, %619  : i64
    llvm.br ^bb61(%636 : i64)
  ^bb63:  // pred: ^bb61
    %637 = llvm.add %615, %614  : i64
    llvm.br ^bb59(%637 : i64)
  ^bb64:  // pred: ^bb59
    %638 = llvm.add %610, %609  : i64
    llvm.br ^bb57(%638 : i64)
  ^bb65:  // pred: ^bb57
    %639 = llvm.add %605, %604  : i64
    llvm.br ^bb55(%639 : i64)
  ^bb66:  // pred: ^bb55
    %640 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    %641 = llvm.insertvalue %257, %640[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %642 = llvm.insertvalue %550, %641[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %643 = llvm.insertvalue %601, %642[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %643 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v0_0", "v6_0", "v4_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.getelementptr %61[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %80, %81 : !llvm.ptr<i64>
    %82 = llvm.mlir.constant(0 : i64) : i64
    %83 = llvm.getelementptr %51[%82] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %83 : !llvm.ptr<ptr<i8>>
    %84 = llvm.mlir.constant(2 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(1 : i64) : i64
    %105 = llvm.getelementptr %51[%104] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %105 : !llvm.ptr<ptr<i8>>
    %106 = llvm.mlir.constant(4 : i64) : i64
    %107 = llvm.call @omTensorCreateUntyped(%106) : (i64) -> !llvm.ptr<i8>
    %108 = llvm.mlir.constant(1 : i64) : i64
    %109 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %110 = llvm.bitcast %109 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %111 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.bitcast %111 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%107, %108, %110, %112) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %113 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%107, %113) : (!llvm.ptr<i8>, i64) -> ()
    %114 = llvm.call @omTensorGetShape(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %115 = llvm.call @omTensorGetStrides(%107) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %116 = llvm.mlir.constant(0 : i64) : i64
    %117 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.getelementptr %114[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %117, %118 : !llvm.ptr<i64>
    %119 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.getelementptr %115[%116] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %119, %120 : !llvm.ptr<i64>
    %121 = llvm.mlir.constant(1 : i64) : i64
    %122 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %114[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %115[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(2 : i64) : i64
    %127 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %114[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %115[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(3 : i64) : i64
    %132 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %114[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %115[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.getelementptr %51[%136] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %107, %137 : !llvm.ptr<ptr<i8>>
    %138 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %138 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<202 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<202 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

