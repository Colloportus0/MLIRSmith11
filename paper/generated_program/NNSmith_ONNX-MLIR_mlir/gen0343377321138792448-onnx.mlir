module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [2 , 2 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_4(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_2(dense<[2, 2, 1, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<1 x i32>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.mlir.constant(1 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<1 x array<1 x i32>>>
    %15 = llvm.bitcast %14 : !llvm.ptr<array<1 x array<1 x i32>>> to !llvm.ptr<i32>
    %16 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %17 = llvm.insertvalue %15, %16[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.insertvalue %15, %17[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.insertvalue %19, %18[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.mlir.constant(1 : index) : i64
    %22 = llvm.insertvalue %21, %20[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.mlir.constant(1 : index) : i64
    %24 = llvm.insertvalue %23, %22[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.mlir.constant(1 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %29 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<4 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(4 : index) : i64
    %37 = llvm.insertvalue %36, %35[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.constant(1 : index) : i64
    %39 = llvm.insertvalue %38, %37[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<1 x i64>>
    %41 = llvm.bitcast %40 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %42 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %43 = llvm.insertvalue %41, %42[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %44 = llvm.insertvalue %41, %43[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.mlir.constant(0 : index) : i64
    %46 = llvm.insertvalue %45, %44[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %47 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %48 = llvm.bitcast %47 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %49 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %50 = llvm.insertvalue %48, %49[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %51 = llvm.insertvalue %48, %50[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(0 : index) : i64
    %53 = llvm.insertvalue %52, %51[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(4 : index) : i64
    %55 = llvm.insertvalue %54, %53[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(1 : index) : i64
    %57 = llvm.insertvalue %56, %55[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(2 : index) : i64
    %59 = llvm.mlir.constant(2 : index) : i64
    %60 = llvm.mlir.constant(1 : index) : i64
    %61 = llvm.mlir.constant(1 : index) : i64
    %62 = llvm.mlir.constant(1 : index) : i64
    %63 = llvm.mlir.constant(4 : index) : i64
    %64 = llvm.mlir.null : !llvm.ptr<i32>
    %65 = llvm.getelementptr %64[%63] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<i32> to i64
    %67 = llvm.mlir.constant(16 : index) : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.call @malloc(%68) : (i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %71 = llvm.ptrtoint %70 : !llvm.ptr<i32> to i64
    %72 = llvm.mlir.constant(1 : index) : i64
    %73 = llvm.sub %67, %72  : i64
    %74 = llvm.add %71, %73  : i64
    %75 = llvm.urem %74, %67  : i64
    %76 = llvm.sub %74, %75  : i64
    %77 = llvm.inttoptr %76 : i64 to !llvm.ptr<i32>
    %78 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %79 = llvm.insertvalue %70, %78[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %77, %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.insertvalue %58, %82[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %84 = llvm.insertvalue %59, %83[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.insertvalue %60, %84[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %86 = llvm.insertvalue %61, %85[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.insertvalue %59, %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.insertvalue %60, %87[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.insertvalue %61, %88[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.insertvalue %62, %89[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(0 : index) : i64
    %92 = llvm.mlir.constant(2 : index) : i64
    %93 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%91 : i64)
  ^bb1(%94: i64):  // 2 preds: ^bb0, ^bb11
    %95 = llvm.icmp "slt" %94, %92 : i64
    llvm.cond_br %95, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %96 = llvm.mlir.constant(0 : index) : i64
    %97 = llvm.mlir.constant(2 : index) : i64
    %98 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%96 : i64)
  ^bb3(%99: i64):  // 2 preds: ^bb2, ^bb10
    %100 = llvm.icmp "slt" %99, %97 : i64
    llvm.cond_br %100, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %101 = llvm.mlir.constant(0 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%101 : i64)
  ^bb5(%104: i64):  // 2 preds: ^bb4, ^bb9
    %105 = llvm.icmp "slt" %104, %102 : i64
    llvm.cond_br %105, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %106 = llvm.mlir.constant(0 : index) : i64
    %107 = llvm.mlir.constant(1 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%106 : i64)
  ^bb7(%109: i64):  // 2 preds: ^bb6, ^bb8
    %110 = llvm.icmp "slt" %109, %107 : i64
    llvm.cond_br %110, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %111 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.mlir.constant(2 : index) : i64
    %113 = llvm.mul %94, %112  : i64
    %114 = llvm.add %113, %99  : i64
    %115 = llvm.add %114, %104  : i64
    %116 = llvm.add %115, %109  : i64
    %117 = llvm.getelementptr %111[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %118 = llvm.load %117 : !llvm.ptr<i32>
    %119 = llvm.extractvalue %90[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.mlir.constant(2 : index) : i64
    %121 = llvm.mul %94, %120  : i64
    %122 = llvm.add %121, %99  : i64
    %123 = llvm.add %122, %104  : i64
    %124 = llvm.add %123, %109  : i64
    %125 = llvm.getelementptr %119[%124] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %118, %125 : !llvm.ptr<i32>
    %126 = llvm.add %109, %108  : i64
    llvm.br ^bb7(%126 : i64)
  ^bb9:  // pred: ^bb7
    %127 = llvm.add %104, %103  : i64
    llvm.br ^bb5(%127 : i64)
  ^bb10:  // pred: ^bb5
    %128 = llvm.add %99, %98  : i64
    llvm.br ^bb3(%128 : i64)
  ^bb11:  // pred: ^bb3
    %129 = llvm.add %94, %93  : i64
    llvm.br ^bb1(%129 : i64)
  ^bb12:  // pred: ^bb1
    %130 = llvm.mlir.constant(2 : index) : i64
    %131 = llvm.mlir.constant(2 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    %134 = llvm.mlir.constant(1 : index) : i64
    %135 = llvm.mlir.constant(4 : index) : i64
    %136 = llvm.mlir.null : !llvm.ptr<i32>
    %137 = llvm.getelementptr %136[%135] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<i32> to i64
    %139 = llvm.mlir.constant(16 : index) : i64
    %140 = llvm.add %138, %139  : i64
    %141 = llvm.call @malloc(%140) : (i64) -> !llvm.ptr<i8>
    %142 = llvm.bitcast %141 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<i32> to i64
    %144 = llvm.mlir.constant(1 : index) : i64
    %145 = llvm.sub %139, %144  : i64
    %146 = llvm.add %143, %145  : i64
    %147 = llvm.urem %146, %139  : i64
    %148 = llvm.sub %146, %147  : i64
    %149 = llvm.inttoptr %148 : i64 to !llvm.ptr<i32>
    %150 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %151 = llvm.insertvalue %142, %150[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.insertvalue %149, %151[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %153 = llvm.mlir.constant(0 : index) : i64
    %154 = llvm.insertvalue %153, %152[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %155 = llvm.insertvalue %130, %154[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %156 = llvm.insertvalue %131, %155[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %157 = llvm.insertvalue %132, %156[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %158 = llvm.insertvalue %133, %157[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.insertvalue %131, %158[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.insertvalue %132, %159[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %161 = llvm.insertvalue %133, %160[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %162 = llvm.insertvalue %134, %161[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %163 = llvm.mlir.constant(0 : index) : i64
    %164 = llvm.mlir.constant(2 : index) : i64
    %165 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%163 : i64)
  ^bb13(%166: i64):  // 2 preds: ^bb12, ^bb23
    %167 = llvm.icmp "slt" %166, %164 : i64
    llvm.cond_br %167, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %168 = llvm.mlir.constant(0 : index) : i64
    %169 = llvm.mlir.constant(2 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%168 : i64)
  ^bb15(%171: i64):  // 2 preds: ^bb14, ^bb22
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %173 = llvm.mlir.constant(0 : index) : i64
    %174 = llvm.mlir.constant(1 : index) : i64
    %175 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%173 : i64)
  ^bb17(%176: i64):  // 2 preds: ^bb16, ^bb21
    %177 = llvm.icmp "slt" %176, %174 : i64
    llvm.cond_br %177, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %178 = llvm.mlir.constant(0 : index) : i64
    %179 = llvm.mlir.constant(1 : index) : i64
    %180 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%178 : i64)
  ^bb19(%181: i64):  // 2 preds: ^bb18, ^bb20
    %182 = llvm.icmp "slt" %181, %179 : i64
    llvm.cond_br %182, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %183 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %184 = llvm.mlir.constant(2 : index) : i64
    %185 = llvm.mul %166, %184  : i64
    %186 = llvm.add %185, %171  : i64
    %187 = llvm.add %186, %176  : i64
    %188 = llvm.add %187, %181  : i64
    %189 = llvm.getelementptr %183[%188] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %190 = llvm.load %189 : !llvm.ptr<i32>
    %191 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.add %176, %181  : i64
    %193 = llvm.getelementptr %191[%192] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %194 = llvm.load %193 : !llvm.ptr<i32>
    %195 = llvm.add %190, %194  : i32
    %196 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mul %166, %197  : i64
    %199 = llvm.add %198, %171  : i64
    %200 = llvm.add %199, %176  : i64
    %201 = llvm.add %200, %181  : i64
    %202 = llvm.getelementptr %196[%201] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %195, %202 : !llvm.ptr<i32>
    %203 = llvm.add %181, %180  : i64
    llvm.br ^bb19(%203 : i64)
  ^bb21:  // pred: ^bb19
    %204 = llvm.add %176, %175  : i64
    llvm.br ^bb17(%204 : i64)
  ^bb22:  // pred: ^bb17
    %205 = llvm.add %171, %170  : i64
    llvm.br ^bb15(%205 : i64)
  ^bb23:  // pred: ^bb15
    %206 = llvm.add %166, %165  : i64
    llvm.br ^bb13(%206 : i64)
  ^bb24:  // pred: ^bb13
    %207 = llvm.mlir.constant(2 : index) : i64
    %208 = llvm.mlir.constant(2 : index) : i64
    %209 = llvm.mlir.constant(1 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    %212 = llvm.mlir.constant(4 : index) : i64
    %213 = llvm.mlir.null : !llvm.ptr<i1>
    %214 = llvm.getelementptr %213[%212] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %215 = llvm.ptrtoint %214 : !llvm.ptr<i1> to i64
    %216 = llvm.mlir.constant(16 : index) : i64
    %217 = llvm.add %215, %216  : i64
    %218 = llvm.call @malloc(%217) : (i64) -> !llvm.ptr<i8>
    %219 = llvm.bitcast %218 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %220 = llvm.ptrtoint %219 : !llvm.ptr<i1> to i64
    %221 = llvm.mlir.constant(1 : index) : i64
    %222 = llvm.sub %216, %221  : i64
    %223 = llvm.add %220, %222  : i64
    %224 = llvm.urem %223, %216  : i64
    %225 = llvm.sub %223, %224  : i64
    %226 = llvm.inttoptr %225 : i64 to !llvm.ptr<i1>
    %227 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %228 = llvm.insertvalue %219, %227[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %229 = llvm.insertvalue %226, %228[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %230 = llvm.mlir.constant(0 : index) : i64
    %231 = llvm.insertvalue %230, %229[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %232 = llvm.insertvalue %207, %231[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %233 = llvm.insertvalue %208, %232[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %234 = llvm.insertvalue %209, %233[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %235 = llvm.insertvalue %210, %234[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %236 = llvm.insertvalue %208, %235[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %237 = llvm.insertvalue %209, %236[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %238 = llvm.insertvalue %210, %237[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %239 = llvm.insertvalue %211, %238[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %240 = llvm.mlir.constant(0 : index) : i64
    %241 = llvm.mlir.constant(2 : index) : i64
    %242 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%240 : i64)
  ^bb25(%243: i64):  // 2 preds: ^bb24, ^bb35
    %244 = llvm.icmp "slt" %243, %241 : i64
    llvm.cond_br %244, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %245 = llvm.mlir.constant(0 : index) : i64
    %246 = llvm.mlir.constant(2 : index) : i64
    %247 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%245 : i64)
  ^bb27(%248: i64):  // 2 preds: ^bb26, ^bb34
    %249 = llvm.icmp "slt" %248, %246 : i64
    llvm.cond_br %249, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.mlir.constant(1 : index) : i64
    %252 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%250 : i64)
  ^bb29(%253: i64):  // 2 preds: ^bb28, ^bb33
    %254 = llvm.icmp "slt" %253, %251 : i64
    llvm.cond_br %254, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %255 = llvm.mlir.constant(0 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    %257 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%255 : i64)
  ^bb31(%258: i64):  // 2 preds: ^bb30, ^bb32
    %259 = llvm.icmp "slt" %258, %256 : i64
    llvm.cond_br %259, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %260 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(2 : index) : i64
    %262 = llvm.mul %243, %261  : i64
    %263 = llvm.add %262, %248  : i64
    %264 = llvm.add %263, %253  : i64
    %265 = llvm.add %264, %258  : i64
    %266 = llvm.getelementptr %260[%265] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %267 = llvm.load %266 : !llvm.ptr<i32>
    %268 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %269 = llvm.mlir.constant(2 : index) : i64
    %270 = llvm.mul %243, %269  : i64
    %271 = llvm.add %270, %248  : i64
    %272 = llvm.add %271, %253  : i64
    %273 = llvm.add %272, %258  : i64
    %274 = llvm.getelementptr %268[%273] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %275 = llvm.load %274 : !llvm.ptr<i32>
    %276 = llvm.icmp "slt" %267, %275 : i32
    %277 = llvm.extractvalue %239[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %278 = llvm.mlir.constant(2 : index) : i64
    %279 = llvm.mul %243, %278  : i64
    %280 = llvm.add %279, %248  : i64
    %281 = llvm.add %280, %253  : i64
    %282 = llvm.add %281, %258  : i64
    %283 = llvm.getelementptr %277[%282] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %276, %283 : !llvm.ptr<i1>
    %284 = llvm.add %258, %257  : i64
    llvm.br ^bb31(%284 : i64)
  ^bb33:  // pred: ^bb31
    %285 = llvm.add %253, %252  : i64
    llvm.br ^bb29(%285 : i64)
  ^bb34:  // pred: ^bb29
    %286 = llvm.add %248, %247  : i64
    llvm.br ^bb27(%286 : i64)
  ^bb35:  // pred: ^bb27
    %287 = llvm.add %243, %242  : i64
    llvm.br ^bb25(%287 : i64)
  ^bb36:  // pred: ^bb25
    %288 = llvm.mlir.constant(4 : index) : i64
    %289 = llvm.mlir.constant(1 : index) : i64
    %290 = llvm.mlir.null : !llvm.ptr<i64>
    %291 = llvm.getelementptr %290[%288] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %292 = llvm.ptrtoint %291 : !llvm.ptr<i64> to i64
    %293 = llvm.mlir.constant(16 : index) : i64
    %294 = llvm.add %292, %293  : i64
    %295 = llvm.call @malloc(%294) : (i64) -> !llvm.ptr<i8>
    %296 = llvm.bitcast %295 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %297 = llvm.ptrtoint %296 : !llvm.ptr<i64> to i64
    %298 = llvm.mlir.constant(1 : index) : i64
    %299 = llvm.sub %293, %298  : i64
    %300 = llvm.add %297, %299  : i64
    %301 = llvm.urem %300, %293  : i64
    %302 = llvm.sub %300, %301  : i64
    %303 = llvm.inttoptr %302 : i64 to !llvm.ptr<i64>
    %304 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %305 = llvm.insertvalue %296, %304[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %306 = llvm.insertvalue %303, %305[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %307 = llvm.mlir.constant(0 : index) : i64
    %308 = llvm.insertvalue %307, %306[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %309 = llvm.insertvalue %288, %308[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %310 = llvm.insertvalue %289, %309[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.mlir.constant(0 : index) : i64
    %312 = llvm.mlir.constant(4 : index) : i64
    %313 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%311 : i64)
  ^bb37(%314: i64):  // 2 preds: ^bb36, ^bb38
    %315 = llvm.icmp "slt" %314, %312 : i64
    llvm.cond_br %315, ^bb38, ^bb39
  ^bb38:  // pred: ^bb37
    %316 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %317 = llvm.getelementptr %316[%314] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %12, %317 : !llvm.ptr<i64>
    %318 = llvm.add %314, %313  : i64
    llvm.br ^bb37(%318 : i64)
  ^bb39:  // pred: ^bb37
    %319 = llvm.mlir.constant(4 : index) : i64
    %320 = llvm.mlir.constant(1 : index) : i64
    %321 = llvm.mlir.null : !llvm.ptr<i64>
    %322 = llvm.getelementptr %321[%319] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %323 = llvm.ptrtoint %322 : !llvm.ptr<i64> to i64
    %324 = llvm.mlir.constant(16 : index) : i64
    %325 = llvm.add %323, %324  : i64
    %326 = llvm.call @malloc(%325) : (i64) -> !llvm.ptr<i8>
    %327 = llvm.bitcast %326 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %328 = llvm.ptrtoint %327 : !llvm.ptr<i64> to i64
    %329 = llvm.mlir.constant(1 : index) : i64
    %330 = llvm.sub %324, %329  : i64
    %331 = llvm.add %328, %330  : i64
    %332 = llvm.urem %331, %324  : i64
    %333 = llvm.sub %331, %332  : i64
    %334 = llvm.inttoptr %333 : i64 to !llvm.ptr<i64>
    %335 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %336 = llvm.insertvalue %327, %335[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %337 = llvm.insertvalue %334, %336[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %338 = llvm.mlir.constant(0 : index) : i64
    %339 = llvm.insertvalue %338, %337[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %340 = llvm.insertvalue %319, %339[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.insertvalue %320, %340[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %342 = llvm.mlir.constant(0 : index) : i64
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb40(%342 : i64)
  ^bb40(%345: i64):  // 2 preds: ^bb39, ^bb41
    %346 = llvm.icmp "slt" %345, %343 : i64
    llvm.cond_br %346, ^bb41, ^bb42
  ^bb41:  // pred: ^bb40
    %347 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %348 = llvm.getelementptr %347[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %349 = llvm.load %348 : !llvm.ptr<i64>
    %350 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %351 = llvm.load %350 : !llvm.ptr<i64>
    %352 = llvm.mul %349, %351  : i64
    %353 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %354 = llvm.getelementptr %353[%345] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %352, %354 : !llvm.ptr<i64>
    %355 = llvm.add %345, %344  : i64
    llvm.br ^bb40(%355 : i64)
  ^bb42:  // pred: ^bb40
    %356 = llvm.mlir.constant(4 : index) : i64
    %357 = llvm.mlir.constant(1 : index) : i64
    %358 = llvm.mlir.null : !llvm.ptr<i1>
    %359 = llvm.getelementptr %358[%356] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %360 = llvm.ptrtoint %359 : !llvm.ptr<i1> to i64
    %361 = llvm.mlir.constant(16 : index) : i64
    %362 = llvm.add %360, %361  : i64
    %363 = llvm.call @malloc(%362) : (i64) -> !llvm.ptr<i8>
    %364 = llvm.bitcast %363 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %365 = llvm.ptrtoint %364 : !llvm.ptr<i1> to i64
    %366 = llvm.mlir.constant(1 : index) : i64
    %367 = llvm.sub %361, %366  : i64
    %368 = llvm.add %365, %367  : i64
    %369 = llvm.urem %368, %361  : i64
    %370 = llvm.sub %368, %369  : i64
    %371 = llvm.inttoptr %370 : i64 to !llvm.ptr<i1>
    %372 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %373 = llvm.insertvalue %364, %372[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %374 = llvm.insertvalue %371, %373[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.mlir.constant(0 : index) : i64
    %376 = llvm.insertvalue %375, %374[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %377 = llvm.insertvalue %356, %376[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %378 = llvm.insertvalue %357, %377[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.mlir.constant(0 : index) : i64
    %380 = llvm.mlir.constant(4 : index) : i64
    %381 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%379 : i64)
  ^bb43(%382: i64):  // 2 preds: ^bb42, ^bb44
    %383 = llvm.icmp "slt" %382, %380 : i64
    llvm.cond_br %383, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %384 = llvm.extractvalue %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %385 = llvm.getelementptr %384[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %386 = llvm.load %385 : !llvm.ptr<i64>
    %387 = llvm.extractvalue %341[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %388 = llvm.getelementptr %387[%382] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %389 = llvm.load %388 : !llvm.ptr<i64>
    %390 = llvm.icmp "eq" %386, %389 : i64
    %391 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%382] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %390, %392 : !llvm.ptr<i1>
    %393 = llvm.add %382, %381  : i64
    llvm.br ^bb43(%393 : i64)
  ^bb45:  // pred: ^bb43
    %394 = llvm.mlir.constant(4 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.null : !llvm.ptr<i64>
    %397 = llvm.getelementptr %396[%394] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %398 = llvm.ptrtoint %397 : !llvm.ptr<i64> to i64
    %399 = llvm.mlir.constant(16 : index) : i64
    %400 = llvm.add %398, %399  : i64
    %401 = llvm.call @malloc(%400) : (i64) -> !llvm.ptr<i8>
    %402 = llvm.bitcast %401 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %403 = llvm.ptrtoint %402 : !llvm.ptr<i64> to i64
    %404 = llvm.mlir.constant(1 : index) : i64
    %405 = llvm.sub %399, %404  : i64
    %406 = llvm.add %403, %405  : i64
    %407 = llvm.urem %406, %399  : i64
    %408 = llvm.sub %406, %407  : i64
    %409 = llvm.inttoptr %408 : i64 to !llvm.ptr<i64>
    %410 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %411 = llvm.insertvalue %402, %410[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %412 = llvm.insertvalue %409, %411[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.mlir.constant(0 : index) : i64
    %414 = llvm.insertvalue %413, %412[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %415 = llvm.insertvalue %394, %414[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.insertvalue %395, %415[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %417 = llvm.mlir.constant(0 : index) : i64
    %418 = llvm.mlir.constant(4 : index) : i64
    %419 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%417 : i64)
  ^bb46(%420: i64):  // 2 preds: ^bb45, ^bb47
    %421 = llvm.icmp "slt" %420, %418 : i64
    llvm.cond_br %421, ^bb47, ^bb48
  ^bb47:  // pred: ^bb46
    %422 = llvm.extractvalue %378[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %423 = llvm.getelementptr %422[%420] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %424 = llvm.load %423 : !llvm.ptr<i1>
    %425 = llvm.extractvalue %310[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %426 = llvm.getelementptr %425[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %427 = llvm.load %426 : !llvm.ptr<i64>
    %428 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %429 = llvm.getelementptr %428[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %430 = llvm.load %429 : !llvm.ptr<i64>
    %431 = llvm.select %424, %427, %430 : i1, i64
    %432 = llvm.extractvalue %416[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %433 = llvm.getelementptr %432[%420] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %431, %433 : !llvm.ptr<i64>
    %434 = llvm.add %420, %419  : i64
    llvm.br ^bb46(%434 : i64)
  ^bb48:  // pred: ^bb46
    %435 = llvm.mlir.constant(2 : index) : i64
    %436 = llvm.mlir.constant(2 : index) : i64
    %437 = llvm.mlir.constant(1 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.mlir.constant(1 : index) : i64
    %440 = llvm.mlir.constant(4 : index) : i64
    %441 = llvm.mlir.null : !llvm.ptr<i32>
    %442 = llvm.getelementptr %441[%440] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %443 = llvm.ptrtoint %442 : !llvm.ptr<i32> to i64
    %444 = llvm.mlir.constant(16 : index) : i64
    %445 = llvm.add %443, %444  : i64
    %446 = llvm.call @malloc(%445) : (i64) -> !llvm.ptr<i8>
    %447 = llvm.bitcast %446 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %448 = llvm.ptrtoint %447 : !llvm.ptr<i32> to i64
    %449 = llvm.mlir.constant(1 : index) : i64
    %450 = llvm.sub %444, %449  : i64
    %451 = llvm.add %448, %450  : i64
    %452 = llvm.urem %451, %444  : i64
    %453 = llvm.sub %451, %452  : i64
    %454 = llvm.inttoptr %453 : i64 to !llvm.ptr<i32>
    %455 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %456 = llvm.insertvalue %447, %455[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.insertvalue %454, %456[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %458 = llvm.mlir.constant(0 : index) : i64
    %459 = llvm.insertvalue %458, %457[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %460 = llvm.insertvalue %435, %459[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %461 = llvm.insertvalue %436, %460[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %462 = llvm.insertvalue %437, %461[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %463 = llvm.insertvalue %438, %462[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %464 = llvm.insertvalue %436, %463[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.insertvalue %437, %464[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.insertvalue %438, %465[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %467 = llvm.insertvalue %439, %466[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mlir.constant(0 : index) : i64
    %469 = llvm.mlir.constant(2 : index) : i64
    %470 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%468 : i64)
  ^bb49(%471: i64):  // 2 preds: ^bb48, ^bb59
    %472 = llvm.icmp "slt" %471, %469 : i64
    llvm.cond_br %472, ^bb50, ^bb60
  ^bb50:  // pred: ^bb49
    %473 = llvm.mlir.constant(0 : index) : i64
    %474 = llvm.mlir.constant(2 : index) : i64
    %475 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%473 : i64)
  ^bb51(%476: i64):  // 2 preds: ^bb50, ^bb58
    %477 = llvm.icmp "slt" %476, %474 : i64
    llvm.cond_br %477, ^bb52, ^bb59
  ^bb52:  // pred: ^bb51
    %478 = llvm.mlir.constant(0 : index) : i64
    %479 = llvm.mlir.constant(1 : index) : i64
    %480 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%478 : i64)
  ^bb53(%481: i64):  // 2 preds: ^bb52, ^bb57
    %482 = llvm.icmp "slt" %481, %479 : i64
    llvm.cond_br %482, ^bb54, ^bb58
  ^bb54:  // pred: ^bb53
    %483 = llvm.mlir.constant(0 : index) : i64
    %484 = llvm.mlir.constant(1 : index) : i64
    %485 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%483 : i64)
  ^bb55(%486: i64):  // 2 preds: ^bb54, ^bb56
    %487 = llvm.icmp "slt" %486, %484 : i64
    llvm.cond_br %487, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %488 = llvm.extractvalue %162[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %489 = llvm.mlir.constant(2 : index) : i64
    %490 = llvm.mul %471, %489  : i64
    %491 = llvm.add %490, %476  : i64
    %492 = llvm.add %491, %13  : i64
    %493 = llvm.add %492, %13  : i64
    %494 = llvm.getelementptr %488[%493] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %495 = llvm.load %494 : !llvm.ptr<i32>
    %496 = llvm.extractvalue %467[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %497 = llvm.mlir.constant(2 : index) : i64
    %498 = llvm.mul %471, %497  : i64
    %499 = llvm.add %498, %476  : i64
    %500 = llvm.add %499, %481  : i64
    %501 = llvm.add %500, %486  : i64
    %502 = llvm.getelementptr %496[%501] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %495, %502 : !llvm.ptr<i32>
    %503 = llvm.add %486, %485  : i64
    llvm.br ^bb55(%503 : i64)
  ^bb57:  // pred: ^bb55
    %504 = llvm.add %481, %480  : i64
    llvm.br ^bb53(%504 : i64)
  ^bb58:  // pred: ^bb53
    %505 = llvm.add %476, %475  : i64
    llvm.br ^bb51(%505 : i64)
  ^bb59:  // pred: ^bb51
    %506 = llvm.add %471, %470  : i64
    llvm.br ^bb49(%506 : i64)
  ^bb60:  // pred: ^bb49
    %507 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %508 = llvm.insertvalue %90, %507[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %509 = llvm.insertvalue %239, %508[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %510 = llvm.insertvalue %467, %509[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %510 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v3_0"], llvm.emit_c_interface, output_names = ["v2_0", "v0_0", "v1_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
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
    %84 = llvm.mlir.constant(4 : i64) : i64
    %85 = llvm.call @omTensorCreateUntyped(%84) : (i64) -> !llvm.ptr<i8>
    %86 = llvm.mlir.constant(1 : i64) : i64
    %87 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %88 = llvm.bitcast %87 : !llvm.ptr<i1> to !llvm.ptr<i8>
    %89 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %90 = llvm.bitcast %89 : !llvm.ptr<i1> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%85, %86, %88, %90) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %91 = llvm.mlir.constant(9 : i64) : i64
    llvm.call @omTensorSetDataType(%85, %91) : (!llvm.ptr<i8>, i64) -> ()
    %92 = llvm.call @omTensorGetShape(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %93 = llvm.call @omTensorGetStrides(%85) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.mlir.constant(0 : i64) : i64
    %95 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %92[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %93[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(1 : i64) : i64
    %100 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %92[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %93[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(2 : i64) : i64
    %105 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %92[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %93[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(3 : i64) : i64
    %110 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.getelementptr %92[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %110, %111 : !llvm.ptr<i64>
    %112 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.getelementptr %93[%109] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %112, %113 : !llvm.ptr<i64>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.getelementptr %51[%114] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %85, %115 : !llvm.ptr<ptr<i8>>
    %116 = llvm.mlir.constant(4 : i64) : i64
    %117 = llvm.call @omTensorCreateUntyped(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.mlir.constant(1 : i64) : i64
    %119 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.bitcast %119 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %121 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %122 = llvm.bitcast %121 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%117, %118, %120, %122) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %123 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%117, %123) : (!llvm.ptr<i8>, i64) -> ()
    %124 = llvm.call @omTensorGetShape(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %125 = llvm.call @omTensorGetStrides(%117) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %126 = llvm.mlir.constant(0 : i64) : i64
    %127 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %124[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %125[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(1 : i64) : i64
    %132 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %124[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %125[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(2 : i64) : i64
    %137 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %124[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %125[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(3 : i64) : i64
    %142 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %143 = llvm.getelementptr %124[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %142, %143 : !llvm.ptr<i64>
    %144 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %145 = llvm.getelementptr %125[%141] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %144, %145 : !llvm.ptr<i64>
    %146 = llvm.mlir.constant(2 : i64) : i64
    %147 = llvm.getelementptr %51[%146] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %117, %147 : !llvm.ptr<ptr<i8>>
    %148 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %148 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<210 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<210 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

