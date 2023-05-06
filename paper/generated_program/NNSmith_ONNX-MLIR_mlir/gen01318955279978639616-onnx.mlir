module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f64\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A ,    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v5_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_3(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<1> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v5_0"]} {
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
    %12 = llvm.mlir.constant(3 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(0 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %19 = llvm.bitcast %18 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %20 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %21 = llvm.insertvalue %19, %20[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %22 = llvm.insertvalue %19, %21[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.insertvalue %23, %22[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %25 = llvm.mlir.constant(4 : index) : i64
    %26 = llvm.insertvalue %25, %24[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.insertvalue %27, %26[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %29 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %30 = llvm.bitcast %29 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %31 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %32 = llvm.insertvalue %30, %31[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %33 = llvm.insertvalue %30, %32[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %34 = llvm.mlir.constant(0 : index) : i64
    %35 = llvm.insertvalue %34, %33[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %36 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %37 = llvm.bitcast %36 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %38 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %39 = llvm.insertvalue %37, %38[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %40 = llvm.insertvalue %37, %39[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %41 = llvm.mlir.constant(0 : index) : i64
    %42 = llvm.insertvalue %41, %40[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %43 = llvm.mlir.constant(4 : index) : i64
    %44 = llvm.insertvalue %43, %42[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
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
    %58 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %59 = llvm.bitcast %58 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %60 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %61 = llvm.insertvalue %59, %60[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %62 = llvm.insertvalue %59, %61[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %63 = llvm.mlir.constant(0 : index) : i64
    %64 = llvm.insertvalue %63, %62[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %65 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %66 = llvm.bitcast %65 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %67 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %68 = llvm.insertvalue %66, %67[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %69 = llvm.insertvalue %66, %68[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %70 = llvm.mlir.constant(0 : index) : i64
    %71 = llvm.insertvalue %70, %69[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(4 : index) : i64
    %73 = llvm.insertvalue %72, %71[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(1 : index) : i64
    %75 = llvm.insertvalue %74, %73[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %77 = llvm.extractvalue %11[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %78 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.insertvalue %77, %76[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %80 = llvm.insertvalue %78, %79[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %81 = llvm.mlir.constant(0 : index) : i64
    %82 = llvm.insertvalue %81, %80[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %87 = llvm.mlir.constant(1 : index) : i64
    %88 = llvm.insertvalue %87, %86[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.insertvalue %89, %88[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.mlir.constant(1 : index) : i64
    %94 = llvm.insertvalue %93, %92[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %95 = llvm.mlir.constant(1 : index) : i64
    %96 = llvm.insertvalue %95, %94[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %97 = llvm.mlir.constant(1 : index) : i64
    %98 = llvm.insertvalue %97, %96[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %99 = llvm.mlir.constant(1 : index) : i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.mlir.constant(1 : index) : i64
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.mlir.constant(1 : index) : i64
    %104 = llvm.mlir.null : !llvm.ptr<f64>
    %105 = llvm.getelementptr %104[%99] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %106 = llvm.ptrtoint %105 : !llvm.ptr<f64> to i64
    %107 = llvm.mlir.constant(16 : index) : i64
    %108 = llvm.add %106, %107  : i64
    %109 = llvm.call @malloc(%108) : (i64) -> !llvm.ptr<i8>
    %110 = llvm.bitcast %109 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %111 = llvm.ptrtoint %110 : !llvm.ptr<f64> to i64
    %112 = llvm.mlir.constant(1 : index) : i64
    %113 = llvm.sub %107, %112  : i64
    %114 = llvm.add %111, %113  : i64
    %115 = llvm.urem %114, %107  : i64
    %116 = llvm.sub %114, %115  : i64
    %117 = llvm.inttoptr %116 : i64 to !llvm.ptr<f64>
    %118 = llvm.mlir.undef : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>
    %119 = llvm.insertvalue %110, %118[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %120 = llvm.insertvalue %117, %119[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %121 = llvm.mlir.constant(0 : index) : i64
    %122 = llvm.insertvalue %121, %120[2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.insertvalue %99, %122[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.insertvalue %100, %123[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.insertvalue %101, %124[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.insertvalue %102, %125[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %127 = llvm.insertvalue %100, %126[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %101, %127[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.insertvalue %102, %128[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.insertvalue %103, %129[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.mlir.constant(0 : index) : i64
    %132 = llvm.mlir.constant(1 : index) : i64
    %133 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%131 : i64)
  ^bb1(%134: i64):  // 2 preds: ^bb0, ^bb11
    %135 = llvm.icmp "slt" %134, %132 : i64
    llvm.cond_br %135, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %136 = llvm.mlir.constant(0 : index) : i64
    %137 = llvm.mlir.constant(1 : index) : i64
    %138 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%136 : i64)
  ^bb3(%139: i64):  // 2 preds: ^bb2, ^bb10
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %141 = llvm.mlir.constant(0 : index) : i64
    %142 = llvm.mlir.constant(1 : index) : i64
    %143 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%141 : i64)
  ^bb5(%144: i64):  // 2 preds: ^bb4, ^bb9
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %146 = llvm.mlir.constant(0 : index) : i64
    %147 = llvm.mlir.constant(1 : index) : i64
    %148 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%146 : i64)
  ^bb7(%149: i64):  // 2 preds: ^bb6, ^bb8
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %151 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %152 = llvm.add %134, %139  : i64
    %153 = llvm.add %152, %144  : i64
    %154 = llvm.add %153, %149  : i64
    %155 = llvm.getelementptr %151[%154] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %156 = llvm.load %155 : !llvm.ptr<i32>
    %157 = llvm.sitofp %156 : i32 to f64
    %158 = llvm.extractvalue %130[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %159 = llvm.add %134, %139  : i64
    %160 = llvm.add %159, %144  : i64
    %161 = llvm.add %160, %149  : i64
    %162 = llvm.getelementptr %158[%161] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %157, %162 : !llvm.ptr<f64>
    %163 = llvm.add %149, %148  : i64
    llvm.br ^bb7(%163 : i64)
  ^bb9:  // pred: ^bb7
    %164 = llvm.add %144, %143  : i64
    llvm.br ^bb5(%164 : i64)
  ^bb10:  // pred: ^bb5
    %165 = llvm.add %139, %138  : i64
    llvm.br ^bb3(%165 : i64)
  ^bb11:  // pred: ^bb3
    %166 = llvm.add %134, %133  : i64
    llvm.br ^bb1(%166 : i64)
  ^bb12:  // pred: ^bb1
    %167 = llvm.mlir.constant(1 : index) : i64
    %168 = llvm.mlir.constant(1 : index) : i64
    %169 = llvm.mlir.constant(1 : index) : i64
    %170 = llvm.mlir.constant(1 : index) : i64
    %171 = llvm.mlir.constant(1 : index) : i64
    %172 = llvm.mlir.null : !llvm.ptr<i1>
    %173 = llvm.getelementptr %172[%167] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %174 = llvm.ptrtoint %173 : !llvm.ptr<i1> to i64
    %175 = llvm.mlir.constant(16 : index) : i64
    %176 = llvm.add %174, %175  : i64
    %177 = llvm.call @malloc(%176) : (i64) -> !llvm.ptr<i8>
    %178 = llvm.bitcast %177 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %179 = llvm.ptrtoint %178 : !llvm.ptr<i1> to i64
    %180 = llvm.mlir.constant(1 : index) : i64
    %181 = llvm.sub %175, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.urem %182, %175  : i64
    %184 = llvm.sub %182, %183  : i64
    %185 = llvm.inttoptr %184 : i64 to !llvm.ptr<i1>
    %186 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %187 = llvm.insertvalue %178, %186[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %188 = llvm.insertvalue %185, %187[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %189 = llvm.mlir.constant(0 : index) : i64
    %190 = llvm.insertvalue %189, %188[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %191 = llvm.insertvalue %167, %190[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %192 = llvm.insertvalue %168, %191[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %193 = llvm.insertvalue %169, %192[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %194 = llvm.insertvalue %170, %193[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %195 = llvm.insertvalue %168, %194[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %196 = llvm.insertvalue %169, %195[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %197 = llvm.insertvalue %170, %196[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %198 = llvm.insertvalue %171, %197[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %199 = llvm.mlir.constant(0 : index) : i64
    %200 = llvm.mlir.constant(1 : index) : i64
    %201 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%199 : i64)
  ^bb13(%202: i64):  // 2 preds: ^bb12, ^bb23
    %203 = llvm.icmp "slt" %202, %200 : i64
    llvm.cond_br %203, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %204 = llvm.mlir.constant(0 : index) : i64
    %205 = llvm.mlir.constant(1 : index) : i64
    %206 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%204 : i64)
  ^bb15(%207: i64):  // 2 preds: ^bb14, ^bb22
    %208 = llvm.icmp "slt" %207, %205 : i64
    llvm.cond_br %208, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %209 = llvm.mlir.constant(0 : index) : i64
    %210 = llvm.mlir.constant(1 : index) : i64
    %211 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%209 : i64)
  ^bb17(%212: i64):  // 2 preds: ^bb16, ^bb21
    %213 = llvm.icmp "slt" %212, %210 : i64
    llvm.cond_br %213, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %214 = llvm.mlir.constant(0 : index) : i64
    %215 = llvm.mlir.constant(1 : index) : i64
    %216 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%214 : i64)
  ^bb19(%217: i64):  // 2 preds: ^bb18, ^bb20
    %218 = llvm.icmp "slt" %217, %215 : i64
    llvm.cond_br %218, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %219 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.add %202, %207  : i64
    %221 = llvm.add %220, %212  : i64
    %222 = llvm.add %221, %217  : i64
    %223 = llvm.getelementptr %219[%222] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %224 = llvm.load %223 : !llvm.ptr<i32>
    %225 = llvm.icmp "ne" %224, %15 : i32
    %226 = llvm.extractvalue %198[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.add %202, %207  : i64
    %228 = llvm.add %227, %212  : i64
    %229 = llvm.add %228, %217  : i64
    %230 = llvm.getelementptr %226[%229] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %225, %230 : !llvm.ptr<i1>
    %231 = llvm.add %217, %216  : i64
    llvm.br ^bb19(%231 : i64)
  ^bb21:  // pred: ^bb19
    %232 = llvm.add %212, %211  : i64
    llvm.br ^bb17(%232 : i64)
  ^bb22:  // pred: ^bb17
    %233 = llvm.add %207, %206  : i64
    llvm.br ^bb15(%233 : i64)
  ^bb23:  // pred: ^bb15
    %234 = llvm.add %202, %201  : i64
    llvm.br ^bb13(%234 : i64)
  ^bb24:  // pred: ^bb13
    %235 = llvm.mlir.constant(4 : index) : i64
    %236 = llvm.mlir.constant(1 : index) : i64
    %237 = llvm.mlir.null : !llvm.ptr<i64>
    %238 = llvm.getelementptr %237[%235] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %239 = llvm.ptrtoint %238 : !llvm.ptr<i64> to i64
    %240 = llvm.mlir.constant(16 : index) : i64
    %241 = llvm.add %239, %240  : i64
    %242 = llvm.call @malloc(%241) : (i64) -> !llvm.ptr<i8>
    %243 = llvm.bitcast %242 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %244 = llvm.ptrtoint %243 : !llvm.ptr<i64> to i64
    %245 = llvm.mlir.constant(1 : index) : i64
    %246 = llvm.sub %240, %245  : i64
    %247 = llvm.add %244, %246  : i64
    %248 = llvm.urem %247, %240  : i64
    %249 = llvm.sub %247, %248  : i64
    %250 = llvm.inttoptr %249 : i64 to !llvm.ptr<i64>
    %251 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %252 = llvm.insertvalue %243, %251[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.insertvalue %250, %252[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.insertvalue %254, %253[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %256 = llvm.insertvalue %235, %255[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %257 = llvm.insertvalue %236, %256[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %258 = llvm.mlir.constant(0 : index) : i64
    %259 = llvm.mlir.constant(4 : index) : i64
    %260 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%258 : i64)
  ^bb25(%261: i64):  // 2 preds: ^bb24, ^bb26
    %262 = llvm.icmp "slt" %261, %259 : i64
    llvm.cond_br %262, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %263 = llvm.extractvalue %257[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %264 = llvm.getelementptr %263[%261] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %264 : !llvm.ptr<i64>
    %265 = llvm.add %261, %260  : i64
    llvm.br ^bb25(%265 : i64)
  ^bb27:  // pred: ^bb25
    %266 = llvm.mlir.constant(4 : index) : i64
    %267 = llvm.mlir.constant(1 : index) : i64
    %268 = llvm.mlir.null : !llvm.ptr<i64>
    %269 = llvm.getelementptr %268[%266] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %270 = llvm.ptrtoint %269 : !llvm.ptr<i64> to i64
    %271 = llvm.mlir.constant(16 : index) : i64
    %272 = llvm.add %270, %271  : i64
    %273 = llvm.call @malloc(%272) : (i64) -> !llvm.ptr<i8>
    %274 = llvm.bitcast %273 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %275 = llvm.ptrtoint %274 : !llvm.ptr<i64> to i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.sub %271, %276  : i64
    %278 = llvm.add %275, %277  : i64
    %279 = llvm.urem %278, %271  : i64
    %280 = llvm.sub %278, %279  : i64
    %281 = llvm.inttoptr %280 : i64 to !llvm.ptr<i64>
    %282 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %283 = llvm.insertvalue %274, %282[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %284 = llvm.insertvalue %281, %283[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %285 = llvm.mlir.constant(0 : index) : i64
    %286 = llvm.insertvalue %285, %284[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %266, %286[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.insertvalue %267, %287[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %289 = llvm.mlir.constant(0 : index) : i64
    %290 = llvm.mlir.constant(4 : index) : i64
    %291 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%289 : i64)
  ^bb28(%292: i64):  // 2 preds: ^bb27, ^bb29
    %293 = llvm.icmp "slt" %292, %290 : i64
    llvm.cond_br %293, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %294 = llvm.extractvalue %257[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %295 = llvm.getelementptr %294[%292] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %296 = llvm.load %295 : !llvm.ptr<i64>
    %297 = llvm.extractvalue %64[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %298 = llvm.load %297 : !llvm.ptr<i64>
    %299 = llvm.mul %296, %298  : i64
    %300 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.getelementptr %300[%292] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %299, %301 : !llvm.ptr<i64>
    %302 = llvm.add %292, %291  : i64
    llvm.br ^bb28(%302 : i64)
  ^bb30:  // pred: ^bb28
    %303 = llvm.mlir.constant(4 : index) : i64
    %304 = llvm.mlir.constant(1 : index) : i64
    %305 = llvm.mlir.null : !llvm.ptr<i1>
    %306 = llvm.getelementptr %305[%303] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %307 = llvm.ptrtoint %306 : !llvm.ptr<i1> to i64
    %308 = llvm.mlir.constant(16 : index) : i64
    %309 = llvm.add %307, %308  : i64
    %310 = llvm.call @malloc(%309) : (i64) -> !llvm.ptr<i8>
    %311 = llvm.bitcast %310 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %312 = llvm.ptrtoint %311 : !llvm.ptr<i1> to i64
    %313 = llvm.mlir.constant(1 : index) : i64
    %314 = llvm.sub %308, %313  : i64
    %315 = llvm.add %312, %314  : i64
    %316 = llvm.urem %315, %308  : i64
    %317 = llvm.sub %315, %316  : i64
    %318 = llvm.inttoptr %317 : i64 to !llvm.ptr<i1>
    %319 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %320 = llvm.insertvalue %311, %319[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %321 = llvm.insertvalue %318, %320[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %322 = llvm.mlir.constant(0 : index) : i64
    %323 = llvm.insertvalue %322, %321[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %303, %323[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.insertvalue %304, %324[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %326 = llvm.mlir.constant(0 : index) : i64
    %327 = llvm.mlir.constant(4 : index) : i64
    %328 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%326 : i64)
  ^bb31(%329: i64):  // 2 preds: ^bb30, ^bb32
    %330 = llvm.icmp "slt" %329, %327 : i64
    llvm.cond_br %330, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %331 = llvm.extractvalue %57[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %332 = llvm.getelementptr %331[%329] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %333 = llvm.load %332 : !llvm.ptr<i64>
    %334 = llvm.extractvalue %288[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.getelementptr %334[%329] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %336 = llvm.load %335 : !llvm.ptr<i64>
    %337 = llvm.icmp "eq" %333, %336 : i64
    %338 = llvm.extractvalue %325[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %339 = llvm.getelementptr %338[%329] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %337, %339 : !llvm.ptr<i1>
    %340 = llvm.add %329, %328  : i64
    llvm.br ^bb31(%340 : i64)
  ^bb33:  // pred: ^bb31
    %341 = llvm.mlir.constant(4 : index) : i64
    %342 = llvm.mlir.constant(1 : index) : i64
    %343 = llvm.mlir.null : !llvm.ptr<i64>
    %344 = llvm.getelementptr %343[%341] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %345 = llvm.ptrtoint %344 : !llvm.ptr<i64> to i64
    %346 = llvm.mlir.constant(16 : index) : i64
    %347 = llvm.add %345, %346  : i64
    %348 = llvm.call @malloc(%347) : (i64) -> !llvm.ptr<i8>
    %349 = llvm.bitcast %348 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %350 = llvm.ptrtoint %349 : !llvm.ptr<i64> to i64
    %351 = llvm.mlir.constant(1 : index) : i64
    %352 = llvm.sub %346, %351  : i64
    %353 = llvm.add %350, %352  : i64
    %354 = llvm.urem %353, %346  : i64
    %355 = llvm.sub %353, %354  : i64
    %356 = llvm.inttoptr %355 : i64 to !llvm.ptr<i64>
    %357 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %358 = llvm.insertvalue %349, %357[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %359 = llvm.insertvalue %356, %358[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %360 = llvm.mlir.constant(0 : index) : i64
    %361 = llvm.insertvalue %360, %359[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.insertvalue %341, %361[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %363 = llvm.insertvalue %342, %362[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.mlir.constant(0 : index) : i64
    %365 = llvm.mlir.constant(4 : index) : i64
    %366 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%364 : i64)
  ^bb34(%367: i64):  // 2 preds: ^bb33, ^bb35
    %368 = llvm.icmp "slt" %367, %365 : i64
    llvm.cond_br %368, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %369 = llvm.extractvalue %325[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %370 = llvm.getelementptr %369[%367] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %371 = llvm.load %370 : !llvm.ptr<i1>
    %372 = llvm.extractvalue %257[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %373 = llvm.getelementptr %372[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %374 = llvm.load %373 : !llvm.ptr<i64>
    %375 = llvm.extractvalue %75[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %376 = llvm.getelementptr %375[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %377 = llvm.load %376 : !llvm.ptr<i64>
    %378 = llvm.select %371, %374, %377 : i1, i64
    %379 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %380 = llvm.getelementptr %379[%367] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %378, %380 : !llvm.ptr<i64>
    %381 = llvm.add %367, %366  : i64
    llvm.br ^bb34(%381 : i64)
  ^bb36:  // pred: ^bb34
    %382 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %383 = llvm.getelementptr %382[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %384 = llvm.load %383 : !llvm.ptr<i64>
    %385 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %386 = llvm.getelementptr %385[%17] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %387 = llvm.load %386 : !llvm.ptr<i64>
    %388 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %389 = llvm.getelementptr %388[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %390 = llvm.load %389 : !llvm.ptr<i64>
    %391 = llvm.extractvalue %363[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %392 = llvm.getelementptr %391[%12] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %393 = llvm.load %392 : !llvm.ptr<i64>
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mul %393, %390  : i64
    %396 = llvm.mul %395, %387  : i64
    %397 = llvm.mul %396, %384  : i64
    %398 = llvm.mlir.null : !llvm.ptr<i32>
    %399 = llvm.getelementptr %398[%397] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %400 = llvm.ptrtoint %399 : !llvm.ptr<i32> to i64
    %401 = llvm.mlir.constant(16 : index) : i64
    %402 = llvm.add %400, %401  : i64
    %403 = llvm.call @malloc(%402) : (i64) -> !llvm.ptr<i8>
    %404 = llvm.bitcast %403 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %405 = llvm.ptrtoint %404 : !llvm.ptr<i32> to i64
    %406 = llvm.mlir.constant(1 : index) : i64
    %407 = llvm.sub %401, %406  : i64
    %408 = llvm.add %405, %407  : i64
    %409 = llvm.urem %408, %401  : i64
    %410 = llvm.sub %408, %409  : i64
    %411 = llvm.inttoptr %410 : i64 to !llvm.ptr<i32>
    %412 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %413 = llvm.insertvalue %404, %412[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %414 = llvm.insertvalue %411, %413[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %415 = llvm.mlir.constant(0 : index) : i64
    %416 = llvm.insertvalue %415, %414[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %417 = llvm.insertvalue %384, %416[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %418 = llvm.insertvalue %387, %417[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %419 = llvm.insertvalue %390, %418[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %420 = llvm.insertvalue %393, %419[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %421 = llvm.insertvalue %396, %420[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %422 = llvm.insertvalue %395, %421[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %423 = llvm.insertvalue %393, %422[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %424 = llvm.insertvalue %394, %423[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %425 = llvm.mlir.constant(0 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%425 : i64)
  ^bb37(%427: i64):  // 2 preds: ^bb36, ^bb47
    %428 = llvm.icmp "slt" %427, %384 : i64
    llvm.cond_br %428, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %429 = llvm.mlir.constant(0 : index) : i64
    %430 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%429 : i64)
  ^bb39(%431: i64):  // 2 preds: ^bb38, ^bb46
    %432 = llvm.icmp "slt" %431, %387 : i64
    llvm.cond_br %432, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %433 = llvm.mlir.constant(0 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%433 : i64)
  ^bb41(%435: i64):  // 2 preds: ^bb40, ^bb45
    %436 = llvm.icmp "slt" %435, %390 : i64
    llvm.cond_br %436, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %437 = llvm.mlir.constant(0 : index) : i64
    %438 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%437 : i64)
  ^bb43(%439: i64):  // 2 preds: ^bb42, ^bb44
    %440 = llvm.icmp "slt" %439, %393 : i64
    llvm.cond_br %440, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %441 = llvm.extractvalue %98[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %442 = llvm.add %16, %16  : i64
    %443 = llvm.add %442, %16  : i64
    %444 = llvm.add %443, %16  : i64
    %445 = llvm.getelementptr %441[%444] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %446 = llvm.load %445 : !llvm.ptr<i32>
    %447 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %448 = llvm.extractvalue %424[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.mul %427, %448  : i64
    %450 = llvm.extractvalue %424[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.mul %431, %450  : i64
    %452 = llvm.add %449, %451  : i64
    %453 = llvm.extractvalue %424[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.mul %435, %453  : i64
    %455 = llvm.add %452, %454  : i64
    %456 = llvm.add %455, %439  : i64
    %457 = llvm.getelementptr %447[%456] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %446, %457 : !llvm.ptr<i32>
    %458 = llvm.add %439, %438  : i64
    llvm.br ^bb43(%458 : i64)
  ^bb45:  // pred: ^bb43
    %459 = llvm.add %435, %434  : i64
    llvm.br ^bb41(%459 : i64)
  ^bb46:  // pred: ^bb41
    %460 = llvm.add %431, %430  : i64
    llvm.br ^bb39(%460 : i64)
  ^bb47:  // pred: ^bb39
    %461 = llvm.add %427, %426  : i64
    llvm.br ^bb37(%461 : i64)
  ^bb48:  // pred: ^bb37
    %462 = llvm.mlir.constant(4 : index) : i64
    %463 = llvm.mlir.constant(1 : index) : i64
    %464 = llvm.mlir.null : !llvm.ptr<i64>
    %465 = llvm.getelementptr %464[%462] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %466 = llvm.ptrtoint %465 : !llvm.ptr<i64> to i64
    %467 = llvm.mlir.constant(16 : index) : i64
    %468 = llvm.add %466, %467  : i64
    %469 = llvm.call @malloc(%468) : (i64) -> !llvm.ptr<i8>
    %470 = llvm.bitcast %469 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %471 = llvm.ptrtoint %470 : !llvm.ptr<i64> to i64
    %472 = llvm.mlir.constant(1 : index) : i64
    %473 = llvm.sub %467, %472  : i64
    %474 = llvm.add %471, %473  : i64
    %475 = llvm.urem %474, %467  : i64
    %476 = llvm.sub %474, %475  : i64
    %477 = llvm.inttoptr %476 : i64 to !llvm.ptr<i64>
    %478 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %479 = llvm.insertvalue %470, %478[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %480 = llvm.insertvalue %477, %479[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %481 = llvm.mlir.constant(0 : index) : i64
    %482 = llvm.insertvalue %481, %480[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %483 = llvm.insertvalue %462, %482[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %484 = llvm.insertvalue %463, %483[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %485 = llvm.mlir.constant(0 : index) : i64
    %486 = llvm.mlir.constant(4 : index) : i64
    %487 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%485 : i64)
  ^bb49(%488: i64):  // 2 preds: ^bb48, ^bb50
    %489 = llvm.icmp "slt" %488, %486 : i64
    llvm.cond_br %489, ^bb50, ^bb51
  ^bb50:  // pred: ^bb49
    %490 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %491 = llvm.getelementptr %490[%488] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %14, %491 : !llvm.ptr<i64>
    %492 = llvm.add %488, %487  : i64
    llvm.br ^bb49(%492 : i64)
  ^bb51:  // pred: ^bb49
    %493 = llvm.mlir.constant(4 : index) : i64
    %494 = llvm.mlir.constant(1 : index) : i64
    %495 = llvm.mlir.null : !llvm.ptr<i64>
    %496 = llvm.getelementptr %495[%493] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %497 = llvm.ptrtoint %496 : !llvm.ptr<i64> to i64
    %498 = llvm.mlir.constant(16 : index) : i64
    %499 = llvm.add %497, %498  : i64
    %500 = llvm.call @malloc(%499) : (i64) -> !llvm.ptr<i8>
    %501 = llvm.bitcast %500 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %502 = llvm.ptrtoint %501 : !llvm.ptr<i64> to i64
    %503 = llvm.mlir.constant(1 : index) : i64
    %504 = llvm.sub %498, %503  : i64
    %505 = llvm.add %502, %504  : i64
    %506 = llvm.urem %505, %498  : i64
    %507 = llvm.sub %505, %506  : i64
    %508 = llvm.inttoptr %507 : i64 to !llvm.ptr<i64>
    %509 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %510 = llvm.insertvalue %501, %509[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %511 = llvm.insertvalue %508, %510[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %512 = llvm.mlir.constant(0 : index) : i64
    %513 = llvm.insertvalue %512, %511[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %514 = llvm.insertvalue %493, %513[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %515 = llvm.insertvalue %494, %514[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %516 = llvm.mlir.constant(0 : index) : i64
    %517 = llvm.mlir.constant(4 : index) : i64
    %518 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%516 : i64)
  ^bb52(%519: i64):  // 2 preds: ^bb51, ^bb53
    %520 = llvm.icmp "slt" %519, %517 : i64
    llvm.cond_br %520, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %521 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %522 = llvm.getelementptr %521[%519] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %523 = llvm.load %522 : !llvm.ptr<i64>
    %524 = llvm.extractvalue %35[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %525 = llvm.load %524 : !llvm.ptr<i64>
    %526 = llvm.mul %523, %525  : i64
    %527 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %528 = llvm.getelementptr %527[%519] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %526, %528 : !llvm.ptr<i64>
    %529 = llvm.add %519, %518  : i64
    llvm.br ^bb52(%529 : i64)
  ^bb54:  // pred: ^bb52
    %530 = llvm.mlir.constant(4 : index) : i64
    %531 = llvm.mlir.constant(1 : index) : i64
    %532 = llvm.mlir.null : !llvm.ptr<i1>
    %533 = llvm.getelementptr %532[%530] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %534 = llvm.ptrtoint %533 : !llvm.ptr<i1> to i64
    %535 = llvm.mlir.constant(16 : index) : i64
    %536 = llvm.add %534, %535  : i64
    %537 = llvm.call @malloc(%536) : (i64) -> !llvm.ptr<i8>
    %538 = llvm.bitcast %537 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %539 = llvm.ptrtoint %538 : !llvm.ptr<i1> to i64
    %540 = llvm.mlir.constant(1 : index) : i64
    %541 = llvm.sub %535, %540  : i64
    %542 = llvm.add %539, %541  : i64
    %543 = llvm.urem %542, %535  : i64
    %544 = llvm.sub %542, %543  : i64
    %545 = llvm.inttoptr %544 : i64 to !llvm.ptr<i1>
    %546 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %547 = llvm.insertvalue %538, %546[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %548 = llvm.insertvalue %545, %547[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %549 = llvm.mlir.constant(0 : index) : i64
    %550 = llvm.insertvalue %549, %548[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %551 = llvm.insertvalue %530, %550[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %552 = llvm.insertvalue %531, %551[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %553 = llvm.mlir.constant(0 : index) : i64
    %554 = llvm.mlir.constant(4 : index) : i64
    %555 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%553 : i64)
  ^bb55(%556: i64):  // 2 preds: ^bb54, ^bb56
    %557 = llvm.icmp "slt" %556, %554 : i64
    llvm.cond_br %557, ^bb56, ^bb57
  ^bb56:  // pred: ^bb55
    %558 = llvm.extractvalue %28[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %559 = llvm.getelementptr %558[%556] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %560 = llvm.load %559 : !llvm.ptr<i64>
    %561 = llvm.extractvalue %515[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %562 = llvm.getelementptr %561[%556] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %563 = llvm.load %562 : !llvm.ptr<i64>
    %564 = llvm.icmp "eq" %560, %563 : i64
    %565 = llvm.extractvalue %552[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %566 = llvm.getelementptr %565[%556] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %564, %566 : !llvm.ptr<i1>
    %567 = llvm.add %556, %555  : i64
    llvm.br ^bb55(%567 : i64)
  ^bb57:  // pred: ^bb55
    %568 = llvm.mlir.constant(4 : index) : i64
    %569 = llvm.mlir.constant(1 : index) : i64
    %570 = llvm.mlir.null : !llvm.ptr<i64>
    %571 = llvm.getelementptr %570[%568] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %572 = llvm.ptrtoint %571 : !llvm.ptr<i64> to i64
    %573 = llvm.mlir.constant(16 : index) : i64
    %574 = llvm.add %572, %573  : i64
    %575 = llvm.call @malloc(%574) : (i64) -> !llvm.ptr<i8>
    %576 = llvm.bitcast %575 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %577 = llvm.ptrtoint %576 : !llvm.ptr<i64> to i64
    %578 = llvm.mlir.constant(1 : index) : i64
    %579 = llvm.sub %573, %578  : i64
    %580 = llvm.add %577, %579  : i64
    %581 = llvm.urem %580, %573  : i64
    %582 = llvm.sub %580, %581  : i64
    %583 = llvm.inttoptr %582 : i64 to !llvm.ptr<i64>
    %584 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %585 = llvm.insertvalue %576, %584[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %586 = llvm.insertvalue %583, %585[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %587 = llvm.mlir.constant(0 : index) : i64
    %588 = llvm.insertvalue %587, %586[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %589 = llvm.insertvalue %568, %588[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %590 = llvm.insertvalue %569, %589[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %591 = llvm.mlir.constant(0 : index) : i64
    %592 = llvm.mlir.constant(4 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%591 : i64)
  ^bb58(%594: i64):  // 2 preds: ^bb57, ^bb59
    %595 = llvm.icmp "slt" %594, %592 : i64
    llvm.cond_br %595, ^bb59, ^bb60
  ^bb59:  // pred: ^bb58
    %596 = llvm.extractvalue %552[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %597 = llvm.getelementptr %596[%594] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %598 = llvm.load %597 : !llvm.ptr<i1>
    %599 = llvm.extractvalue %484[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %600 = llvm.getelementptr %599[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %601 = llvm.load %600 : !llvm.ptr<i64>
    %602 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %603 = llvm.getelementptr %602[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %604 = llvm.load %603 : !llvm.ptr<i64>
    %605 = llvm.select %598, %601, %604 : i1, i64
    %606 = llvm.extractvalue %590[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %607 = llvm.getelementptr %606[%594] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %605, %607 : !llvm.ptr<i64>
    %608 = llvm.add %594, %593  : i64
    llvm.br ^bb58(%608 : i64)
  ^bb60:  // pred: ^bb58
    %609 = llvm.mlir.constant(1 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(1 : index) : i64
    %614 = llvm.mlir.null : !llvm.ptr<i32>
    %615 = llvm.getelementptr %614[%609] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %616 = llvm.ptrtoint %615 : !llvm.ptr<i32> to i64
    %617 = llvm.mlir.constant(16 : index) : i64
    %618 = llvm.add %616, %617  : i64
    %619 = llvm.call @malloc(%618) : (i64) -> !llvm.ptr<i8>
    %620 = llvm.bitcast %619 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %621 = llvm.ptrtoint %620 : !llvm.ptr<i32> to i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.sub %617, %622  : i64
    %624 = llvm.add %621, %623  : i64
    %625 = llvm.urem %624, %617  : i64
    %626 = llvm.sub %624, %625  : i64
    %627 = llvm.inttoptr %626 : i64 to !llvm.ptr<i32>
    %628 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %629 = llvm.insertvalue %620, %628[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %627, %629[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.mlir.constant(0 : index) : i64
    %632 = llvm.insertvalue %631, %630[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.insertvalue %609, %632[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.insertvalue %610, %633[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.insertvalue %611, %634[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.insertvalue %612, %635[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.insertvalue %610, %636[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.insertvalue %611, %637[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.insertvalue %612, %638[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.insertvalue %613, %639[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.icmp "sgt" %384, %17 : i64
    %642 = llvm.icmp "sgt" %387, %17 : i64
    %643 = llvm.icmp "sgt" %390, %17 : i64
    %644 = llvm.icmp "sgt" %393, %17 : i64
    %645 = llvm.mlir.constant(0 : index) : i64
    %646 = llvm.mlir.constant(1 : index) : i64
    %647 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb61(%645 : i64)
  ^bb61(%648: i64):  // 2 preds: ^bb60, ^bb71
    %649 = llvm.icmp "slt" %648, %646 : i64
    llvm.cond_br %649, ^bb62, ^bb72
  ^bb62:  // pred: ^bb61
    %650 = llvm.mlir.constant(0 : index) : i64
    %651 = llvm.mlir.constant(1 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb63(%650 : i64)
  ^bb63(%653: i64):  // 2 preds: ^bb62, ^bb70
    %654 = llvm.icmp "slt" %653, %651 : i64
    llvm.cond_br %654, ^bb64, ^bb71
  ^bb64:  // pred: ^bb63
    %655 = llvm.mlir.constant(0 : index) : i64
    %656 = llvm.mlir.constant(1 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb65(%655 : i64)
  ^bb65(%658: i64):  // 2 preds: ^bb64, ^bb69
    %659 = llvm.icmp "slt" %658, %656 : i64
    llvm.cond_br %659, ^bb66, ^bb70
  ^bb66:  // pred: ^bb65
    %660 = llvm.mlir.constant(0 : index) : i64
    %661 = llvm.mlir.constant(1 : index) : i64
    %662 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%660 : i64)
  ^bb67(%663: i64):  // 2 preds: ^bb66, ^bb68
    %664 = llvm.icmp "slt" %663, %661 : i64
    llvm.cond_br %664, ^bb68, ^bb69
  ^bb68:  // pred: ^bb67
    %665 = llvm.select %641, %648, %16 : i1, i64
    %666 = llvm.select %642, %653, %16 : i1, i64
    %667 = llvm.select %643, %658, %16 : i1, i64
    %668 = llvm.select %644, %663, %16 : i1, i64
    %669 = llvm.extractvalue %424[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %670 = llvm.extractvalue %424[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %671 = llvm.mul %665, %670  : i64
    %672 = llvm.extractvalue %424[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %673 = llvm.mul %666, %672  : i64
    %674 = llvm.add %671, %673  : i64
    %675 = llvm.extractvalue %424[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %676 = llvm.mul %667, %675  : i64
    %677 = llvm.add %674, %676  : i64
    %678 = llvm.add %677, %668  : i64
    %679 = llvm.getelementptr %669[%678] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %680 = llvm.load %679 : !llvm.ptr<i32>
    %681 = llvm.extractvalue %640[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %682 = llvm.add %648, %653  : i64
    %683 = llvm.add %682, %658  : i64
    %684 = llvm.add %683, %663  : i64
    %685 = llvm.getelementptr %681[%684] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %680, %685 : !llvm.ptr<i32>
    %686 = llvm.add %663, %662  : i64
    llvm.br ^bb67(%686 : i64)
  ^bb69:  // pred: ^bb67
    %687 = llvm.add %658, %657  : i64
    llvm.br ^bb65(%687 : i64)
  ^bb70:  // pred: ^bb65
    %688 = llvm.add %653, %652  : i64
    llvm.br ^bb63(%688 : i64)
  ^bb71:  // pred: ^bb63
    %689 = llvm.add %648, %647  : i64
    llvm.br ^bb61(%689 : i64)
  ^bb72:  // pred: ^bb61
    %690 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %691 = llvm.insertvalue %130, %690[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %692 = llvm.insertvalue %198, %691[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %693 = llvm.insertvalue %640, %692[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %693 : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v1_0"], llvm.emit_c_interface, output_names = ["v4_0", "v3_0", "v5_0"]} {
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
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(4 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(1 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<f64> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<f64> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(11 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(3 : i64) : i64
    %78 = llvm.extractvalue %45[3, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
    %79 = llvm.getelementptr %60[%77] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %78, %79 : !llvm.ptr<i64>
    %80 = llvm.extractvalue %45[4, 3] : !llvm.struct<(ptr<f64>, ptr<f64>, i64, array<4 x i64>, array<4 x i64>)> 
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

