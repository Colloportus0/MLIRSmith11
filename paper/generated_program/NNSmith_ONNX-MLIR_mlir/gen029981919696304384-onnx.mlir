module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22f32\22 , \22dims\22 : [2 , 2 , 1] , \22name\22 : \22v6_0\22 }\0A ,    { \22type\22 : \22i32\22 , \22dims\22 : [1 , 2 , 2 , 1] , \22name\22 : \22v1_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_6(dense<[1, 2, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_5(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_4(dense<[1, 2, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_2(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[1, 2, 2, 1]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.func @main_graph(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64, %arg11: !llvm.ptr<i32>, %arg12: !llvm.ptr<i32>, %arg13: i64, %arg14: i64, %arg15: i64, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %12 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %13 = llvm.insertvalue %arg11, %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.insertvalue %arg12, %13[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.insertvalue %arg13, %14[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.insertvalue %arg14, %15[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.insertvalue %arg17, %16[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.insertvalue %arg15, %17[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %arg18, %18[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.insertvalue %arg16, %19[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.insertvalue %arg19, %20[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %23 = llvm.mlir.constant(3 : index) : i64
    %24 = llvm.mlir.constant(4 : index) : i64
    %25 = llvm.mlir.constant(1 : i64) : i64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<4 x i64>>
    %28 = llvm.bitcast %27 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %29 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %30 = llvm.insertvalue %28, %29[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %31 = llvm.insertvalue %28, %30[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %32 = llvm.mlir.constant(0 : index) : i64
    %33 = llvm.insertvalue %32, %31[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %34 = llvm.mlir.constant(4 : index) : i64
    %35 = llvm.insertvalue %34, %33[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %36 = llvm.mlir.constant(1 : index) : i64
    %37 = llvm.insertvalue %36, %35[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %38 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<1 x i64>>
    %39 = llvm.bitcast %38 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %40 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %41 = llvm.insertvalue %39, %40[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %42 = llvm.insertvalue %39, %41[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %43 = llvm.mlir.constant(0 : index) : i64
    %44 = llvm.insertvalue %43, %42[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %45 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %46 = llvm.bitcast %45 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %47 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %48 = llvm.insertvalue %46, %47[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %49 = llvm.insertvalue %46, %48[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %50 = llvm.mlir.constant(0 : index) : i64
    %51 = llvm.insertvalue %50, %49[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %52 = llvm.mlir.constant(4 : index) : i64
    %53 = llvm.insertvalue %52, %51[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(1 : index) : i64
    %55 = llvm.insertvalue %54, %53[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<4 x i64>>
    %57 = llvm.bitcast %56 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %58 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %59 = llvm.insertvalue %57, %58[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.insertvalue %57, %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %61 = llvm.mlir.constant(0 : index) : i64
    %62 = llvm.insertvalue %61, %60[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %63 = llvm.mlir.constant(4 : index) : i64
    %64 = llvm.insertvalue %63, %62[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %65 = llvm.mlir.constant(1 : index) : i64
    %66 = llvm.insertvalue %65, %64[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %67 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<1 x i64>>
    %68 = llvm.bitcast %67 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %69 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %70 = llvm.insertvalue %68, %69[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %71 = llvm.insertvalue %68, %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.insertvalue %72, %71[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %74 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<4 x i64>>
    %75 = llvm.bitcast %74 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %76 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %77 = llvm.insertvalue %75, %76[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.insertvalue %75, %77[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %79 = llvm.mlir.constant(0 : index) : i64
    %80 = llvm.insertvalue %79, %78[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %81 = llvm.mlir.constant(4 : index) : i64
    %82 = llvm.insertvalue %81, %80[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %83 = llvm.mlir.constant(1 : index) : i64
    %84 = llvm.insertvalue %83, %82[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.mlir.constant(2 : index) : i64
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.mlir.constant(1 : index) : i64
    %89 = llvm.mlir.constant(1 : index) : i64
    %90 = llvm.mlir.constant(4 : index) : i64
    %91 = llvm.mlir.constant(4 : index) : i64
    %92 = llvm.mlir.null : !llvm.ptr<f32>
    %93 = llvm.getelementptr %92[%91] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<f32> to i64
    %95 = llvm.mlir.constant(16 : index) : i64
    %96 = llvm.add %94, %95  : i64
    %97 = llvm.call @malloc(%96) : (i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<f32> to i64
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.sub %95, %100  : i64
    %102 = llvm.add %99, %101  : i64
    %103 = llvm.urem %102, %95  : i64
    %104 = llvm.sub %102, %103  : i64
    %105 = llvm.inttoptr %104 : i64 to !llvm.ptr<f32>
    %106 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %107 = llvm.insertvalue %98, %106[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.insertvalue %105, %107[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %109 = llvm.mlir.constant(0 : index) : i64
    %110 = llvm.insertvalue %109, %108[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %111 = llvm.insertvalue %85, %110[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %112 = llvm.insertvalue %86, %111[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %113 = llvm.insertvalue %87, %112[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %114 = llvm.insertvalue %88, %113[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.insertvalue %90, %114[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.insertvalue %87, %115[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.insertvalue %88, %116[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.insertvalue %89, %117[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %119 = llvm.mlir.constant(0 : index) : i64
    %120 = llvm.mlir.constant(1 : index) : i64
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
    %135 = llvm.mlir.constant(1 : index) : i64
    %136 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%134 : i64)
  ^bb7(%137: i64):  // 2 preds: ^bb6, ^bb8
    %138 = llvm.icmp "slt" %137, %135 : i64
    llvm.cond_br %138, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %139 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.mlir.constant(4 : index) : i64
    %141 = llvm.mul %122, %140  : i64
    %142 = llvm.mlir.constant(2 : index) : i64
    %143 = llvm.mul %127, %142  : i64
    %144 = llvm.add %141, %143  : i64
    %145 = llvm.add %144, %132  : i64
    %146 = llvm.add %145, %137  : i64
    %147 = llvm.getelementptr %139[%146] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.sitofp %148 : i32 to f32
    %150 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %151 = llvm.mlir.constant(4 : index) : i64
    %152 = llvm.mul %122, %151  : i64
    %153 = llvm.mlir.constant(2 : index) : i64
    %154 = llvm.mul %127, %153  : i64
    %155 = llvm.add %152, %154  : i64
    %156 = llvm.add %155, %132  : i64
    %157 = llvm.add %156, %137  : i64
    %158 = llvm.getelementptr %150[%157] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %149, %158 : !llvm.ptr<f32>
    %159 = llvm.add %137, %136  : i64
    llvm.br ^bb7(%159 : i64)
  ^bb9:  // pred: ^bb7
    %160 = llvm.add %132, %131  : i64
    llvm.br ^bb5(%160 : i64)
  ^bb10:  // pred: ^bb5
    %161 = llvm.add %127, %126  : i64
    llvm.br ^bb3(%161 : i64)
  ^bb11:  // pred: ^bb3
    %162 = llvm.add %122, %121  : i64
    llvm.br ^bb1(%162 : i64)
  ^bb12:  // pred: ^bb1
    %163 = llvm.mlir.constant(4 : index) : i64
    %164 = llvm.mlir.constant(1 : index) : i64
    %165 = llvm.mlir.null : !llvm.ptr<i64>
    %166 = llvm.getelementptr %165[%163] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %167 = llvm.ptrtoint %166 : !llvm.ptr<i64> to i64
    %168 = llvm.mlir.constant(16 : index) : i64
    %169 = llvm.add %167, %168  : i64
    %170 = llvm.call @malloc(%169) : (i64) -> !llvm.ptr<i8>
    %171 = llvm.bitcast %170 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %172 = llvm.ptrtoint %171 : !llvm.ptr<i64> to i64
    %173 = llvm.mlir.constant(1 : index) : i64
    %174 = llvm.sub %168, %173  : i64
    %175 = llvm.add %172, %174  : i64
    %176 = llvm.urem %175, %168  : i64
    %177 = llvm.sub %175, %176  : i64
    %178 = llvm.inttoptr %177 : i64 to !llvm.ptr<i64>
    %179 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %180 = llvm.insertvalue %171, %179[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %181 = llvm.insertvalue %178, %180[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %182 = llvm.mlir.constant(0 : index) : i64
    %183 = llvm.insertvalue %182, %181[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %184 = llvm.insertvalue %163, %183[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %185 = llvm.insertvalue %164, %184[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %186 = llvm.mlir.constant(0 : index) : i64
    %187 = llvm.mlir.constant(4 : index) : i64
    %188 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%186 : i64)
  ^bb13(%189: i64):  // 2 preds: ^bb12, ^bb14
    %190 = llvm.icmp "slt" %189, %187 : i64
    llvm.cond_br %190, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %191 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %192 = llvm.getelementptr %191[%189] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %192 : !llvm.ptr<i64>
    %193 = llvm.add %189, %188  : i64
    llvm.br ^bb13(%193 : i64)
  ^bb15:  // pred: ^bb13
    %194 = llvm.mlir.constant(4 : index) : i64
    %195 = llvm.mlir.constant(1 : index) : i64
    %196 = llvm.mlir.null : !llvm.ptr<i64>
    %197 = llvm.getelementptr %196[%194] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %198 = llvm.ptrtoint %197 : !llvm.ptr<i64> to i64
    %199 = llvm.mlir.constant(16 : index) : i64
    %200 = llvm.add %198, %199  : i64
    %201 = llvm.call @malloc(%200) : (i64) -> !llvm.ptr<i8>
    %202 = llvm.bitcast %201 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %203 = llvm.ptrtoint %202 : !llvm.ptr<i64> to i64
    %204 = llvm.mlir.constant(1 : index) : i64
    %205 = llvm.sub %199, %204  : i64
    %206 = llvm.add %203, %205  : i64
    %207 = llvm.urem %206, %199  : i64
    %208 = llvm.sub %206, %207  : i64
    %209 = llvm.inttoptr %208 : i64 to !llvm.ptr<i64>
    %210 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %211 = llvm.insertvalue %202, %210[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %212 = llvm.insertvalue %209, %211[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %213 = llvm.mlir.constant(0 : index) : i64
    %214 = llvm.insertvalue %213, %212[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %215 = llvm.insertvalue %194, %214[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %216 = llvm.insertvalue %195, %215[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.mlir.constant(4 : index) : i64
    %219 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb16(%217 : i64)
  ^bb16(%220: i64):  // 2 preds: ^bb15, ^bb17
    %221 = llvm.icmp "slt" %220, %218 : i64
    llvm.cond_br %221, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %222 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %223 = llvm.getelementptr %222[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %224 = llvm.load %223 : !llvm.ptr<i64>
    %225 = llvm.extractvalue %73[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %226 = llvm.load %225 : !llvm.ptr<i64>
    %227 = llvm.mul %224, %226  : i64
    %228 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %229 = llvm.getelementptr %228[%220] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %227, %229 : !llvm.ptr<i64>
    %230 = llvm.add %220, %219  : i64
    llvm.br ^bb16(%230 : i64)
  ^bb18:  // pred: ^bb16
    %231 = llvm.mlir.constant(4 : index) : i64
    %232 = llvm.mlir.constant(1 : index) : i64
    %233 = llvm.mlir.null : !llvm.ptr<i1>
    %234 = llvm.getelementptr %233[%231] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %235 = llvm.ptrtoint %234 : !llvm.ptr<i1> to i64
    %236 = llvm.mlir.constant(16 : index) : i64
    %237 = llvm.add %235, %236  : i64
    %238 = llvm.call @malloc(%237) : (i64) -> !llvm.ptr<i8>
    %239 = llvm.bitcast %238 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %240 = llvm.ptrtoint %239 : !llvm.ptr<i1> to i64
    %241 = llvm.mlir.constant(1 : index) : i64
    %242 = llvm.sub %236, %241  : i64
    %243 = llvm.add %240, %242  : i64
    %244 = llvm.urem %243, %236  : i64
    %245 = llvm.sub %243, %244  : i64
    %246 = llvm.inttoptr %245 : i64 to !llvm.ptr<i1>
    %247 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %248 = llvm.insertvalue %239, %247[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %249 = llvm.insertvalue %246, %248[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %250 = llvm.mlir.constant(0 : index) : i64
    %251 = llvm.insertvalue %250, %249[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %252 = llvm.insertvalue %231, %251[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %253 = llvm.insertvalue %232, %252[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %254 = llvm.mlir.constant(0 : index) : i64
    %255 = llvm.mlir.constant(4 : index) : i64
    %256 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%254 : i64)
  ^bb19(%257: i64):  // 2 preds: ^bb18, ^bb20
    %258 = llvm.icmp "slt" %257, %255 : i64
    llvm.cond_br %258, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %259 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %260 = llvm.getelementptr %259[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %261 = llvm.load %260 : !llvm.ptr<i64>
    %262 = llvm.extractvalue %216[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %263 = llvm.getelementptr %262[%257] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %264 = llvm.load %263 : !llvm.ptr<i64>
    %265 = llvm.icmp "eq" %261, %264 : i64
    %266 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %267 = llvm.getelementptr %266[%257] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %265, %267 : !llvm.ptr<i1>
    %268 = llvm.add %257, %256  : i64
    llvm.br ^bb19(%268 : i64)
  ^bb21:  // pred: ^bb19
    %269 = llvm.mlir.constant(4 : index) : i64
    %270 = llvm.mlir.constant(1 : index) : i64
    %271 = llvm.mlir.null : !llvm.ptr<i64>
    %272 = llvm.getelementptr %271[%269] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %273 = llvm.ptrtoint %272 : !llvm.ptr<i64> to i64
    %274 = llvm.mlir.constant(16 : index) : i64
    %275 = llvm.add %273, %274  : i64
    %276 = llvm.call @malloc(%275) : (i64) -> !llvm.ptr<i8>
    %277 = llvm.bitcast %276 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %278 = llvm.ptrtoint %277 : !llvm.ptr<i64> to i64
    %279 = llvm.mlir.constant(1 : index) : i64
    %280 = llvm.sub %274, %279  : i64
    %281 = llvm.add %278, %280  : i64
    %282 = llvm.urem %281, %274  : i64
    %283 = llvm.sub %281, %282  : i64
    %284 = llvm.inttoptr %283 : i64 to !llvm.ptr<i64>
    %285 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %286 = llvm.insertvalue %277, %285[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %287 = llvm.insertvalue %284, %286[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %288 = llvm.mlir.constant(0 : index) : i64
    %289 = llvm.insertvalue %288, %287[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %290 = llvm.insertvalue %269, %289[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %291 = llvm.insertvalue %270, %290[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %292 = llvm.mlir.constant(0 : index) : i64
    %293 = llvm.mlir.constant(4 : index) : i64
    %294 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb22(%292 : i64)
  ^bb22(%295: i64):  // 2 preds: ^bb21, ^bb23
    %296 = llvm.icmp "slt" %295, %293 : i64
    llvm.cond_br %296, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %297 = llvm.extractvalue %253[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.getelementptr %297[%295] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %299 = llvm.load %298 : !llvm.ptr<i1>
    %300 = llvm.extractvalue %185[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %301 = llvm.getelementptr %300[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %302 = llvm.load %301 : !llvm.ptr<i64>
    %303 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.getelementptr %303[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %305 = llvm.load %304 : !llvm.ptr<i64>
    %306 = llvm.select %299, %302, %305 : i1, i64
    %307 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %308 = llvm.getelementptr %307[%295] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %306, %308 : !llvm.ptr<i64>
    %309 = llvm.add %295, %294  : i64
    llvm.br ^bb22(%309 : i64)
  ^bb24:  // pred: ^bb22
    %310 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %311 = llvm.getelementptr %310[%26] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %312 = llvm.load %311 : !llvm.ptr<i64>
    %313 = llvm.extractvalue %291[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %314 = llvm.getelementptr %313[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %315 = llvm.load %314 : !llvm.ptr<i64>
    %316 = llvm.mlir.constant(2 : index) : i64
    %317 = llvm.mlir.constant(2 : index) : i64
    %318 = llvm.mlir.constant(1 : index) : i64
    %319 = llvm.mul %315, %317  : i64
    %320 = llvm.mul %319, %316  : i64
    %321 = llvm.mul %320, %312  : i64
    %322 = llvm.mlir.null : !llvm.ptr<f32>
    %323 = llvm.getelementptr %322[%321] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %324 = llvm.ptrtoint %323 : !llvm.ptr<f32> to i64
    %325 = llvm.mlir.constant(16 : index) : i64
    %326 = llvm.add %324, %325  : i64
    %327 = llvm.call @malloc(%326) : (i64) -> !llvm.ptr<i8>
    %328 = llvm.bitcast %327 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %329 = llvm.ptrtoint %328 : !llvm.ptr<f32> to i64
    %330 = llvm.mlir.constant(1 : index) : i64
    %331 = llvm.sub %325, %330  : i64
    %332 = llvm.add %329, %331  : i64
    %333 = llvm.urem %332, %325  : i64
    %334 = llvm.sub %332, %333  : i64
    %335 = llvm.inttoptr %334 : i64 to !llvm.ptr<f32>
    %336 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %337 = llvm.insertvalue %328, %336[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %338 = llvm.insertvalue %335, %337[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %339 = llvm.mlir.constant(0 : index) : i64
    %340 = llvm.insertvalue %339, %338[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %341 = llvm.insertvalue %312, %340[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %342 = llvm.insertvalue %316, %341[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %343 = llvm.insertvalue %317, %342[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %344 = llvm.insertvalue %315, %343[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %345 = llvm.insertvalue %320, %344[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %346 = llvm.insertvalue %319, %345[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %347 = llvm.insertvalue %315, %346[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %348 = llvm.insertvalue %318, %347[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %349 = llvm.mlir.constant(0 : index) : i64
    %350 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%349 : i64)
  ^bb25(%351: i64):  // 2 preds: ^bb24, ^bb35
    %352 = llvm.icmp "slt" %351, %312 : i64
    llvm.cond_br %352, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %353 = llvm.mlir.constant(0 : index) : i64
    %354 = llvm.mlir.constant(2 : index) : i64
    %355 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb27(%353 : i64)
  ^bb27(%356: i64):  // 2 preds: ^bb26, ^bb34
    %357 = llvm.icmp "slt" %356, %354 : i64
    llvm.cond_br %357, ^bb28, ^bb35
  ^bb28:  // pred: ^bb27
    %358 = llvm.mlir.constant(0 : index) : i64
    %359 = llvm.mlir.constant(2 : index) : i64
    %360 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb29(%358 : i64)
  ^bb29(%361: i64):  // 2 preds: ^bb28, ^bb33
    %362 = llvm.icmp "slt" %361, %359 : i64
    llvm.cond_br %362, ^bb30, ^bb34
  ^bb30:  // pred: ^bb29
    %363 = llvm.mlir.constant(0 : index) : i64
    %364 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%363 : i64)
  ^bb31(%365: i64):  // 2 preds: ^bb30, ^bb32
    %366 = llvm.icmp "slt" %365, %315 : i64
    llvm.cond_br %366, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %367 = llvm.extractvalue %118[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %368 = llvm.mlir.constant(4 : index) : i64
    %369 = llvm.mul %26, %368  : i64
    %370 = llvm.mlir.constant(2 : index) : i64
    %371 = llvm.mul %356, %370  : i64
    %372 = llvm.add %369, %371  : i64
    %373 = llvm.add %372, %361  : i64
    %374 = llvm.add %373, %26  : i64
    %375 = llvm.getelementptr %367[%374] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %376 = llvm.load %375 : !llvm.ptr<f32>
    %377 = llvm.extractvalue %348[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %378 = llvm.extractvalue %348[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %379 = llvm.mul %351, %378  : i64
    %380 = llvm.extractvalue %348[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %381 = llvm.mul %356, %380  : i64
    %382 = llvm.add %379, %381  : i64
    %383 = llvm.extractvalue %348[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %384 = llvm.mul %361, %383  : i64
    %385 = llvm.add %382, %384  : i64
    %386 = llvm.add %385, %365  : i64
    %387 = llvm.getelementptr %377[%386] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %376, %387 : !llvm.ptr<f32>
    %388 = llvm.add %365, %364  : i64
    llvm.br ^bb31(%388 : i64)
  ^bb33:  // pred: ^bb31
    %389 = llvm.add %361, %360  : i64
    llvm.br ^bb29(%389 : i64)
  ^bb34:  // pred: ^bb29
    %390 = llvm.add %356, %355  : i64
    llvm.br ^bb27(%390 : i64)
  ^bb35:  // pred: ^bb27
    %391 = llvm.add %351, %350  : i64
    llvm.br ^bb25(%391 : i64)
  ^bb36:  // pred: ^bb25
    %392 = llvm.mlir.constant(2 : index) : i64
    %393 = llvm.mlir.constant(2 : index) : i64
    %394 = llvm.mlir.constant(1 : index) : i64
    %395 = llvm.mlir.constant(1 : index) : i64
    %396 = llvm.mlir.constant(4 : index) : i64
    %397 = llvm.mlir.null : !llvm.ptr<f32>
    %398 = llvm.getelementptr %397[%396] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %399 = llvm.ptrtoint %398 : !llvm.ptr<f32> to i64
    %400 = llvm.mlir.constant(16 : index) : i64
    %401 = llvm.add %399, %400  : i64
    %402 = llvm.call @malloc(%401) : (i64) -> !llvm.ptr<i8>
    %403 = llvm.bitcast %402 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %404 = llvm.ptrtoint %403 : !llvm.ptr<f32> to i64
    %405 = llvm.mlir.constant(1 : index) : i64
    %406 = llvm.sub %400, %405  : i64
    %407 = llvm.add %404, %406  : i64
    %408 = llvm.urem %407, %400  : i64
    %409 = llvm.sub %407, %408  : i64
    %410 = llvm.inttoptr %409 : i64 to !llvm.ptr<f32>
    %411 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>
    %412 = llvm.insertvalue %403, %411[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %413 = llvm.insertvalue %410, %412[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %414 = llvm.mlir.constant(0 : index) : i64
    %415 = llvm.insertvalue %414, %413[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %416 = llvm.insertvalue %392, %415[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %417 = llvm.insertvalue %393, %416[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %418 = llvm.insertvalue %394, %417[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %419 = llvm.insertvalue %393, %418[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %420 = llvm.insertvalue %394, %419[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %421 = llvm.insertvalue %395, %420[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %422 = llvm.mlir.constant(0 : index) : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%422 : i64)
  ^bb37(%425: i64):  // 2 preds: ^bb36, ^bb44
    %426 = llvm.icmp "slt" %425, %423 : i64
    llvm.cond_br %426, ^bb38, ^bb45
  ^bb38:  // pred: ^bb37
    %427 = llvm.mlir.constant(0 : index) : i64
    %428 = llvm.mlir.constant(2 : index) : i64
    %429 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%427 : i64)
  ^bb39(%430: i64):  // 2 preds: ^bb38, ^bb43
    %431 = llvm.icmp "slt" %430, %428 : i64
    llvm.cond_br %431, ^bb40, ^bb44
  ^bb40:  // pred: ^bb39
    %432 = llvm.mlir.constant(0 : index) : i64
    %433 = llvm.mlir.constant(1 : index) : i64
    %434 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%432 : i64)
  ^bb41(%435: i64):  // 2 preds: ^bb40, ^bb42
    %436 = llvm.icmp "slt" %435, %433 : i64
    llvm.cond_br %436, ^bb42, ^bb43
  ^bb42:  // pred: ^bb41
    %437 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %438 = llvm.mlir.constant(2 : index) : i64
    %439 = llvm.mul %425, %438  : i64
    %440 = llvm.add %439, %430  : i64
    %441 = llvm.add %440, %435  : i64
    %442 = llvm.getelementptr %437[%441] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %22, %442 : !llvm.ptr<f32>
    %443 = llvm.add %435, %434  : i64
    llvm.br ^bb41(%443 : i64)
  ^bb43:  // pred: ^bb41
    %444 = llvm.add %430, %429  : i64
    llvm.br ^bb39(%444 : i64)
  ^bb44:  // pred: ^bb39
    %445 = llvm.add %425, %424  : i64
    llvm.br ^bb37(%445 : i64)
  ^bb45:  // pred: ^bb37
    %446 = llvm.mlir.constant(0 : index) : i64
    %447 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb46(%446 : i64)
  ^bb46(%448: i64):  // 2 preds: ^bb45, ^bb56
    %449 = llvm.icmp "slt" %448, %312 : i64
    llvm.cond_br %449, ^bb47, ^bb57
  ^bb47:  // pred: ^bb46
    %450 = llvm.mlir.constant(0 : index) : i64
    %451 = llvm.mlir.constant(2 : index) : i64
    %452 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb48(%450 : i64)
  ^bb48(%453: i64):  // 2 preds: ^bb47, ^bb55
    %454 = llvm.icmp "slt" %453, %451 : i64
    llvm.cond_br %454, ^bb49, ^bb56
  ^bb49:  // pred: ^bb48
    %455 = llvm.mlir.constant(0 : index) : i64
    %456 = llvm.mlir.constant(2 : index) : i64
    %457 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb50(%455 : i64)
  ^bb50(%458: i64):  // 2 preds: ^bb49, ^bb54
    %459 = llvm.icmp "slt" %458, %456 : i64
    llvm.cond_br %459, ^bb51, ^bb55
  ^bb51:  // pred: ^bb50
    %460 = llvm.mlir.constant(0 : index) : i64
    %461 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb52(%460 : i64)
  ^bb52(%462: i64):  // 2 preds: ^bb51, ^bb53
    %463 = llvm.icmp "slt" %462, %315 : i64
    llvm.cond_br %463, ^bb53, ^bb54
  ^bb53:  // pred: ^bb52
    %464 = llvm.extractvalue %348[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %465 = llvm.extractvalue %348[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %466 = llvm.mul %448, %465  : i64
    %467 = llvm.extractvalue %348[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %468 = llvm.mul %453, %467  : i64
    %469 = llvm.add %466, %468  : i64
    %470 = llvm.extractvalue %348[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %471 = llvm.mul %458, %470  : i64
    %472 = llvm.add %469, %471  : i64
    %473 = llvm.add %472, %462  : i64
    %474 = llvm.getelementptr %464[%473] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %475 = llvm.load %474 : !llvm.ptr<f32>
    %476 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %477 = llvm.mlir.constant(2 : index) : i64
    %478 = llvm.mul %453, %477  : i64
    %479 = llvm.add %478, %458  : i64
    %480 = llvm.add %479, %462  : i64
    %481 = llvm.getelementptr %476[%480] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %482 = llvm.load %481 : !llvm.ptr<f32>
    %483 = llvm.fadd %482, %475  : f32
    %484 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %485 = llvm.mlir.constant(2 : index) : i64
    %486 = llvm.mul %453, %485  : i64
    %487 = llvm.add %486, %458  : i64
    %488 = llvm.add %487, %462  : i64
    %489 = llvm.getelementptr %484[%488] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %483, %489 : !llvm.ptr<f32>
    %490 = llvm.add %462, %461  : i64
    llvm.br ^bb52(%490 : i64)
  ^bb54:  // pred: ^bb52
    %491 = llvm.add %458, %457  : i64
    llvm.br ^bb50(%491 : i64)
  ^bb55:  // pred: ^bb50
    %492 = llvm.add %453, %452  : i64
    llvm.br ^bb48(%492 : i64)
  ^bb56:  // pred: ^bb48
    %493 = llvm.add %448, %447  : i64
    llvm.br ^bb46(%493 : i64)
  ^bb57:  // pred: ^bb46
    %494 = llvm.mlir.constant(4 : index) : i64
    %495 = llvm.mul %312, %494  : i64
    %496 = llvm.mul %495, %315  : i64
    %497 = llvm.mlir.constant(1 : index) : i64
    %498 = llvm.mlir.constant(0 : index) : i64
    %499 = llvm.mlir.constant(-1 : index) : i64
    %500 = llvm.mlir.constant(false) : i1
    %501 = llvm.select %500, %497, %499 : i1, i64
    %502 = llvm.sub %501, %496  : i64
    %503 = llvm.sdiv %502, %24  : i64
    %504 = llvm.sub %499, %503  : i64
    %505 = llvm.sdiv %496, %24  : i64
    %506 = llvm.icmp "slt" %496, %498 : i64
    %507 = llvm.icmp "sgt" %496, %498 : i64
    %508 = llvm.mlir.constant(false) : i1
    %509 = llvm.mlir.constant(true) : i1
    %510 = llvm.and %506, %509  : i1
    %511 = llvm.and %507, %508  : i1
    %512 = llvm.or %510, %511  : i1
    %513 = llvm.select %512, %504, %505 : i1, i64
    %514 = llvm.uitofp %513 : i64 to f32
    %515 = llvm.mlir.constant(0 : index) : i64
    %516 = llvm.mlir.constant(2 : index) : i64
    %517 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb58(%515 : i64)
  ^bb58(%518: i64):  // 2 preds: ^bb57, ^bb65
    %519 = llvm.icmp "slt" %518, %516 : i64
    llvm.cond_br %519, ^bb59, ^bb66
  ^bb59:  // pred: ^bb58
    %520 = llvm.mlir.constant(0 : index) : i64
    %521 = llvm.mlir.constant(2 : index) : i64
    %522 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb60(%520 : i64)
  ^bb60(%523: i64):  // 2 preds: ^bb59, ^bb64
    %524 = llvm.icmp "slt" %523, %521 : i64
    llvm.cond_br %524, ^bb61, ^bb65
  ^bb61:  // pred: ^bb60
    %525 = llvm.mlir.constant(0 : index) : i64
    %526 = llvm.mlir.constant(1 : index) : i64
    %527 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb62(%525 : i64)
  ^bb62(%528: i64):  // 2 preds: ^bb61, ^bb63
    %529 = llvm.icmp "slt" %528, %526 : i64
    llvm.cond_br %529, ^bb63, ^bb64
  ^bb63:  // pred: ^bb62
    %530 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %531 = llvm.mlir.constant(2 : index) : i64
    %532 = llvm.mul %518, %531  : i64
    %533 = llvm.add %532, %523  : i64
    %534 = llvm.add %533, %528  : i64
    %535 = llvm.getelementptr %530[%534] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %536 = llvm.load %535 : !llvm.ptr<f32>
    %537 = llvm.fdiv %536, %514  : f32
    %538 = llvm.extractvalue %421[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %539 = llvm.mlir.constant(2 : index) : i64
    %540 = llvm.mul %518, %539  : i64
    %541 = llvm.add %540, %523  : i64
    %542 = llvm.add %541, %528  : i64
    %543 = llvm.getelementptr %538[%542] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %537, %543 : !llvm.ptr<f32>
    %544 = llvm.add %528, %527  : i64
    llvm.br ^bb62(%544 : i64)
  ^bb64:  // pred: ^bb62
    %545 = llvm.add %523, %522  : i64
    llvm.br ^bb60(%545 : i64)
  ^bb65:  // pred: ^bb60
    %546 = llvm.add %518, %517  : i64
    llvm.br ^bb58(%546 : i64)
  ^bb66:  // pred: ^bb58
    %547 = llvm.mlir.constant(1 : index) : i64
    %548 = llvm.mlir.constant(2 : index) : i64
    %549 = llvm.mlir.constant(2 : index) : i64
    %550 = llvm.mlir.constant(1 : index) : i64
    %551 = llvm.mlir.constant(1 : index) : i64
    %552 = llvm.mlir.constant(4 : index) : i64
    %553 = llvm.mlir.constant(4 : index) : i64
    %554 = llvm.mlir.null : !llvm.ptr<i32>
    %555 = llvm.getelementptr %554[%553] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %556 = llvm.ptrtoint %555 : !llvm.ptr<i32> to i64
    %557 = llvm.mlir.constant(16 : index) : i64
    %558 = llvm.add %556, %557  : i64
    %559 = llvm.call @malloc(%558) : (i64) -> !llvm.ptr<i8>
    %560 = llvm.bitcast %559 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %561 = llvm.ptrtoint %560 : !llvm.ptr<i32> to i64
    %562 = llvm.mlir.constant(1 : index) : i64
    %563 = llvm.sub %557, %562  : i64
    %564 = llvm.add %561, %563  : i64
    %565 = llvm.urem %564, %557  : i64
    %566 = llvm.sub %564, %565  : i64
    %567 = llvm.inttoptr %566 : i64 to !llvm.ptr<i32>
    %568 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %569 = llvm.insertvalue %560, %568[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %570 = llvm.insertvalue %567, %569[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %571 = llvm.mlir.constant(0 : index) : i64
    %572 = llvm.insertvalue %571, %570[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %573 = llvm.insertvalue %547, %572[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.insertvalue %548, %573[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %575 = llvm.insertvalue %549, %574[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %576 = llvm.insertvalue %550, %575[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %577 = llvm.insertvalue %552, %576[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %578 = llvm.insertvalue %549, %577[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %579 = llvm.insertvalue %550, %578[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %580 = llvm.insertvalue %551, %579[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %581 = llvm.mlir.constant(0 : index) : i64
    %582 = llvm.mlir.constant(1 : index) : i64
    %583 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb67(%581 : i64)
  ^bb67(%584: i64):  // 2 preds: ^bb66, ^bb77
    %585 = llvm.icmp "slt" %584, %582 : i64
    llvm.cond_br %585, ^bb68, ^bb78
  ^bb68:  // pred: ^bb67
    %586 = llvm.mlir.constant(0 : index) : i64
    %587 = llvm.mlir.constant(2 : index) : i64
    %588 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb69(%586 : i64)
  ^bb69(%589: i64):  // 2 preds: ^bb68, ^bb76
    %590 = llvm.icmp "slt" %589, %587 : i64
    llvm.cond_br %590, ^bb70, ^bb77
  ^bb70:  // pred: ^bb69
    %591 = llvm.mlir.constant(0 : index) : i64
    %592 = llvm.mlir.constant(2 : index) : i64
    %593 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb71(%591 : i64)
  ^bb71(%594: i64):  // 2 preds: ^bb70, ^bb75
    %595 = llvm.icmp "slt" %594, %592 : i64
    llvm.cond_br %595, ^bb72, ^bb76
  ^bb72:  // pred: ^bb71
    %596 = llvm.mlir.constant(0 : index) : i64
    %597 = llvm.mlir.constant(1 : index) : i64
    %598 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb73(%596 : i64)
  ^bb73(%599: i64):  // 2 preds: ^bb72, ^bb74
    %600 = llvm.icmp "slt" %599, %597 : i64
    llvm.cond_br %600, ^bb74, ^bb75
  ^bb74:  // pred: ^bb73
    %601 = llvm.extractvalue %21[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %602 = llvm.mlir.constant(2 : index) : i64
    %603 = llvm.mul %26, %602  : i64
    %604 = llvm.add %603, %594  : i64
    %605 = llvm.add %604, %599  : i64
    %606 = llvm.getelementptr %601[%605] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %607 = llvm.load %606 : !llvm.ptr<i32>
    %608 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %609 = llvm.mlir.constant(4 : index) : i64
    %610 = llvm.mul %584, %609  : i64
    %611 = llvm.mlir.constant(2 : index) : i64
    %612 = llvm.mul %589, %611  : i64
    %613 = llvm.add %610, %612  : i64
    %614 = llvm.add %613, %594  : i64
    %615 = llvm.add %614, %599  : i64
    %616 = llvm.getelementptr %608[%615] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %617 = llvm.load %616 : !llvm.ptr<i32>
    %618 = llvm.mul %607, %617  : i32
    %619 = llvm.extractvalue %580[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %620 = llvm.mlir.constant(4 : index) : i64
    %621 = llvm.mul %584, %620  : i64
    %622 = llvm.mlir.constant(2 : index) : i64
    %623 = llvm.mul %589, %622  : i64
    %624 = llvm.add %621, %623  : i64
    %625 = llvm.add %624, %594  : i64
    %626 = llvm.add %625, %599  : i64
    %627 = llvm.getelementptr %619[%626] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %618, %627 : !llvm.ptr<i32>
    %628 = llvm.add %599, %598  : i64
    llvm.br ^bb73(%628 : i64)
  ^bb75:  // pred: ^bb73
    %629 = llvm.add %594, %593  : i64
    llvm.br ^bb71(%629 : i64)
  ^bb76:  // pred: ^bb71
    %630 = llvm.add %589, %588  : i64
    llvm.br ^bb69(%630 : i64)
  ^bb77:  // pred: ^bb69
    %631 = llvm.add %584, %583  : i64
    llvm.br ^bb67(%631 : i64)
  ^bb78:  // pred: ^bb67
    %632 = llvm.mlir.constant(4 : index) : i64
    %633 = llvm.mlir.constant(1 : index) : i64
    %634 = llvm.mlir.null : !llvm.ptr<i64>
    %635 = llvm.getelementptr %634[%632] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %636 = llvm.ptrtoint %635 : !llvm.ptr<i64> to i64
    %637 = llvm.mlir.constant(16 : index) : i64
    %638 = llvm.add %636, %637  : i64
    %639 = llvm.call @malloc(%638) : (i64) -> !llvm.ptr<i8>
    %640 = llvm.bitcast %639 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %641 = llvm.ptrtoint %640 : !llvm.ptr<i64> to i64
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.sub %637, %642  : i64
    %644 = llvm.add %641, %643  : i64
    %645 = llvm.urem %644, %637  : i64
    %646 = llvm.sub %644, %645  : i64
    %647 = llvm.inttoptr %646 : i64 to !llvm.ptr<i64>
    %648 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %649 = llvm.insertvalue %640, %648[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %650 = llvm.insertvalue %647, %649[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.insertvalue %651, %650[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %653 = llvm.insertvalue %632, %652[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %654 = llvm.insertvalue %633, %653[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %655 = llvm.mlir.constant(0 : index) : i64
    %656 = llvm.mlir.constant(4 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb79(%655 : i64)
  ^bb79(%658: i64):  // 2 preds: ^bb78, ^bb80
    %659 = llvm.icmp "slt" %658, %656 : i64
    llvm.cond_br %659, ^bb80, ^bb81
  ^bb80:  // pred: ^bb79
    %660 = llvm.extractvalue %654[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %661 = llvm.getelementptr %660[%658] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %25, %661 : !llvm.ptr<i64>
    %662 = llvm.add %658, %657  : i64
    llvm.br ^bb79(%662 : i64)
  ^bb81:  // pred: ^bb79
    %663 = llvm.mlir.constant(4 : index) : i64
    %664 = llvm.mlir.constant(1 : index) : i64
    %665 = llvm.mlir.null : !llvm.ptr<i64>
    %666 = llvm.getelementptr %665[%663] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %667 = llvm.ptrtoint %666 : !llvm.ptr<i64> to i64
    %668 = llvm.mlir.constant(16 : index) : i64
    %669 = llvm.add %667, %668  : i64
    %670 = llvm.call @malloc(%669) : (i64) -> !llvm.ptr<i8>
    %671 = llvm.bitcast %670 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %672 = llvm.ptrtoint %671 : !llvm.ptr<i64> to i64
    %673 = llvm.mlir.constant(1 : index) : i64
    %674 = llvm.sub %668, %673  : i64
    %675 = llvm.add %672, %674  : i64
    %676 = llvm.urem %675, %668  : i64
    %677 = llvm.sub %675, %676  : i64
    %678 = llvm.inttoptr %677 : i64 to !llvm.ptr<i64>
    %679 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %680 = llvm.insertvalue %671, %679[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %681 = llvm.insertvalue %678, %680[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %682 = llvm.mlir.constant(0 : index) : i64
    %683 = llvm.insertvalue %682, %681[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %684 = llvm.insertvalue %663, %683[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %685 = llvm.insertvalue %664, %684[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %686 = llvm.mlir.constant(0 : index) : i64
    %687 = llvm.mlir.constant(4 : index) : i64
    %688 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb82(%686 : i64)
  ^bb82(%689: i64):  // 2 preds: ^bb81, ^bb83
    %690 = llvm.icmp "slt" %689, %687 : i64
    llvm.cond_br %690, ^bb83, ^bb84
  ^bb83:  // pred: ^bb82
    %691 = llvm.extractvalue %654[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %692 = llvm.getelementptr %691[%689] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %693 = llvm.load %692 : !llvm.ptr<i64>
    %694 = llvm.extractvalue %44[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %695 = llvm.load %694 : !llvm.ptr<i64>
    %696 = llvm.mul %693, %695  : i64
    %697 = llvm.extractvalue %685[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %698 = llvm.getelementptr %697[%689] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %696, %698 : !llvm.ptr<i64>
    %699 = llvm.add %689, %688  : i64
    llvm.br ^bb82(%699 : i64)
  ^bb84:  // pred: ^bb82
    %700 = llvm.mlir.constant(4 : index) : i64
    %701 = llvm.mlir.constant(1 : index) : i64
    %702 = llvm.mlir.null : !llvm.ptr<i1>
    %703 = llvm.getelementptr %702[%700] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %704 = llvm.ptrtoint %703 : !llvm.ptr<i1> to i64
    %705 = llvm.mlir.constant(16 : index) : i64
    %706 = llvm.add %704, %705  : i64
    %707 = llvm.call @malloc(%706) : (i64) -> !llvm.ptr<i8>
    %708 = llvm.bitcast %707 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %709 = llvm.ptrtoint %708 : !llvm.ptr<i1> to i64
    %710 = llvm.mlir.constant(1 : index) : i64
    %711 = llvm.sub %705, %710  : i64
    %712 = llvm.add %709, %711  : i64
    %713 = llvm.urem %712, %705  : i64
    %714 = llvm.sub %712, %713  : i64
    %715 = llvm.inttoptr %714 : i64 to !llvm.ptr<i1>
    %716 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %717 = llvm.insertvalue %708, %716[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %718 = llvm.insertvalue %715, %717[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %719 = llvm.mlir.constant(0 : index) : i64
    %720 = llvm.insertvalue %719, %718[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %721 = llvm.insertvalue %700, %720[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %722 = llvm.insertvalue %701, %721[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %723 = llvm.mlir.constant(0 : index) : i64
    %724 = llvm.mlir.constant(4 : index) : i64
    %725 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb85(%723 : i64)
  ^bb85(%726: i64):  // 2 preds: ^bb84, ^bb86
    %727 = llvm.icmp "slt" %726, %724 : i64
    llvm.cond_br %727, ^bb86, ^bb87
  ^bb86:  // pred: ^bb85
    %728 = llvm.extractvalue %37[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %729 = llvm.getelementptr %728[%726] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %730 = llvm.load %729 : !llvm.ptr<i64>
    %731 = llvm.extractvalue %685[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %732 = llvm.getelementptr %731[%726] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %733 = llvm.load %732 : !llvm.ptr<i64>
    %734 = llvm.icmp "eq" %730, %733 : i64
    %735 = llvm.extractvalue %722[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %736 = llvm.getelementptr %735[%726] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %734, %736 : !llvm.ptr<i1>
    %737 = llvm.add %726, %725  : i64
    llvm.br ^bb85(%737 : i64)
  ^bb87:  // pred: ^bb85
    %738 = llvm.mlir.constant(4 : index) : i64
    %739 = llvm.mlir.constant(1 : index) : i64
    %740 = llvm.mlir.null : !llvm.ptr<i64>
    %741 = llvm.getelementptr %740[%738] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %742 = llvm.ptrtoint %741 : !llvm.ptr<i64> to i64
    %743 = llvm.mlir.constant(16 : index) : i64
    %744 = llvm.add %742, %743  : i64
    %745 = llvm.call @malloc(%744) : (i64) -> !llvm.ptr<i8>
    %746 = llvm.bitcast %745 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %747 = llvm.ptrtoint %746 : !llvm.ptr<i64> to i64
    %748 = llvm.mlir.constant(1 : index) : i64
    %749 = llvm.sub %743, %748  : i64
    %750 = llvm.add %747, %749  : i64
    %751 = llvm.urem %750, %743  : i64
    %752 = llvm.sub %750, %751  : i64
    %753 = llvm.inttoptr %752 : i64 to !llvm.ptr<i64>
    %754 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %755 = llvm.insertvalue %746, %754[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %756 = llvm.insertvalue %753, %755[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %757 = llvm.mlir.constant(0 : index) : i64
    %758 = llvm.insertvalue %757, %756[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %759 = llvm.insertvalue %738, %758[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %760 = llvm.insertvalue %739, %759[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %761 = llvm.mlir.constant(0 : index) : i64
    %762 = llvm.mlir.constant(4 : index) : i64
    %763 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb88(%761 : i64)
  ^bb88(%764: i64):  // 2 preds: ^bb87, ^bb89
    %765 = llvm.icmp "slt" %764, %762 : i64
    llvm.cond_br %765, ^bb89, ^bb90
  ^bb89:  // pred: ^bb88
    %766 = llvm.extractvalue %722[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %767 = llvm.getelementptr %766[%764] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %768 = llvm.load %767 : !llvm.ptr<i1>
    %769 = llvm.extractvalue %654[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %770 = llvm.getelementptr %769[%764] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %771 = llvm.load %770 : !llvm.ptr<i64>
    %772 = llvm.extractvalue %55[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %773 = llvm.getelementptr %772[%764] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %774 = llvm.load %773 : !llvm.ptr<i64>
    %775 = llvm.select %768, %771, %774 : i1, i64
    %776 = llvm.extractvalue %760[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %777 = llvm.getelementptr %776[%764] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %775, %777 : !llvm.ptr<i64>
    %778 = llvm.add %764, %763  : i64
    llvm.br ^bb88(%778 : i64)
  ^bb90:  // pred: ^bb88
    %779 = llvm.mlir.constant(1 : index) : i64
    %780 = llvm.mlir.constant(2 : index) : i64
    %781 = llvm.mlir.constant(2 : index) : i64
    %782 = llvm.mlir.constant(1 : index) : i64
    %783 = llvm.mlir.constant(1 : index) : i64
    %784 = llvm.mlir.constant(4 : index) : i64
    %785 = llvm.mlir.constant(4 : index) : i64
    %786 = llvm.mlir.null : !llvm.ptr<i32>
    %787 = llvm.getelementptr %786[%785] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %788 = llvm.ptrtoint %787 : !llvm.ptr<i32> to i64
    %789 = llvm.mlir.constant(16 : index) : i64
    %790 = llvm.add %788, %789  : i64
    %791 = llvm.call @malloc(%790) : (i64) -> !llvm.ptr<i8>
    %792 = llvm.bitcast %791 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %793 = llvm.ptrtoint %792 : !llvm.ptr<i32> to i64
    %794 = llvm.mlir.constant(1 : index) : i64
    %795 = llvm.sub %789, %794  : i64
    %796 = llvm.add %793, %795  : i64
    %797 = llvm.urem %796, %789  : i64
    %798 = llvm.sub %796, %797  : i64
    %799 = llvm.inttoptr %798 : i64 to !llvm.ptr<i32>
    %800 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %801 = llvm.insertvalue %792, %800[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %802 = llvm.insertvalue %799, %801[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %803 = llvm.mlir.constant(0 : index) : i64
    %804 = llvm.insertvalue %803, %802[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %805 = llvm.insertvalue %779, %804[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %806 = llvm.insertvalue %780, %805[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %807 = llvm.insertvalue %781, %806[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %808 = llvm.insertvalue %782, %807[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %809 = llvm.insertvalue %784, %808[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %810 = llvm.insertvalue %781, %809[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %811 = llvm.insertvalue %782, %810[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %812 = llvm.insertvalue %783, %811[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %813 = llvm.mlir.constant(0 : index) : i64
    %814 = llvm.mlir.constant(1 : index) : i64
    %815 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb91(%813 : i64)
  ^bb91(%816: i64):  // 2 preds: ^bb90, ^bb101
    %817 = llvm.icmp "slt" %816, %814 : i64
    llvm.cond_br %817, ^bb92, ^bb102
  ^bb92:  // pred: ^bb91
    %818 = llvm.mlir.constant(0 : index) : i64
    %819 = llvm.mlir.constant(2 : index) : i64
    %820 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb93(%818 : i64)
  ^bb93(%821: i64):  // 2 preds: ^bb92, ^bb100
    %822 = llvm.icmp "slt" %821, %819 : i64
    llvm.cond_br %822, ^bb94, ^bb101
  ^bb94:  // pred: ^bb93
    %823 = llvm.mlir.constant(0 : index) : i64
    %824 = llvm.mlir.constant(2 : index) : i64
    %825 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb95(%823 : i64)
  ^bb95(%826: i64):  // 2 preds: ^bb94, ^bb99
    %827 = llvm.icmp "slt" %826, %824 : i64
    llvm.cond_br %827, ^bb96, ^bb100
  ^bb96:  // pred: ^bb95
    %828 = llvm.mlir.constant(0 : index) : i64
    %829 = llvm.mlir.constant(1 : index) : i64
    %830 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb97(%828 : i64)
  ^bb97(%831: i64):  // 2 preds: ^bb96, ^bb98
    %832 = llvm.icmp "slt" %831, %829 : i64
    llvm.cond_br %832, ^bb98, ^bb99
  ^bb98:  // pred: ^bb97
    %833 = llvm.extractvalue %580[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %834 = llvm.mlir.constant(4 : index) : i64
    %835 = llvm.mul %26, %834  : i64
    %836 = llvm.mlir.constant(2 : index) : i64
    %837 = llvm.mul %821, %836  : i64
    %838 = llvm.add %835, %837  : i64
    %839 = llvm.add %838, %826  : i64
    %840 = llvm.add %839, %26  : i64
    %841 = llvm.getelementptr %833[%840] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %842 = llvm.load %841 : !llvm.ptr<i32>
    %843 = llvm.extractvalue %812[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %844 = llvm.mlir.constant(4 : index) : i64
    %845 = llvm.mul %816, %844  : i64
    %846 = llvm.mlir.constant(2 : index) : i64
    %847 = llvm.mul %821, %846  : i64
    %848 = llvm.add %845, %847  : i64
    %849 = llvm.add %848, %826  : i64
    %850 = llvm.add %849, %831  : i64
    %851 = llvm.getelementptr %843[%850] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %842, %851 : !llvm.ptr<i32>
    %852 = llvm.add %831, %830  : i64
    llvm.br ^bb97(%852 : i64)
  ^bb99:  // pred: ^bb97
    %853 = llvm.add %826, %825  : i64
    llvm.br ^bb95(%853 : i64)
  ^bb100:  // pred: ^bb95
    %854 = llvm.add %821, %820  : i64
    llvm.br ^bb93(%854 : i64)
  ^bb101:  // pred: ^bb93
    %855 = llvm.add %816, %815  : i64
    llvm.br ^bb91(%855 : i64)
  ^bb102:  // pred: ^bb91
    %856 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %857 = llvm.insertvalue %421, %856[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %858 = llvm.insertvalue %812, %857[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %858 : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) attributes {input_names = ["v3_0", "v2_0"], llvm.emit_c_interface, output_names = ["v6_0", "v1_0"]} {
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
    %12 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %13 = llvm.extractvalue %12[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %14 = llvm.extractvalue %12[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %15 = llvm.extractvalue %12[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %16 = llvm.extractvalue %12[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %17 = llvm.extractvalue %12[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %18 = llvm.extractvalue %12[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.extractvalue %12[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.extractvalue %12[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %21 = llvm.extractvalue %12[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11, %13, %14, %15, %16, %17, %18, %19, %20, %21) : (!llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64, i64, i64, !llvm.ptr<i32>, !llvm.ptr<i32>, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %22, %arg0 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
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
    %47 = llvm.alloca %1 x !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    %48 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %49 = llvm.call @omTensorGetDataPtr(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %50 = llvm.bitcast %49 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %51 = llvm.insertvalue %50, %48[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %52 = llvm.insertvalue %50, %51[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %53 = llvm.mlir.constant(0 : i64) : i64
    %54 = llvm.insertvalue %53, %52[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %55 = llvm.call @omTensorGetShape(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %56 = llvm.call @omTensorGetStrides(%46) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %57 = llvm.mlir.constant(0 : i64) : i64
    %58 = llvm.getelementptr %55[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %59 = llvm.load %58 : !llvm.ptr<i64>
    %60 = llvm.insertvalue %59, %54[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %61 = llvm.getelementptr %56[%57] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %62 = llvm.load %61 : !llvm.ptr<i64>
    %63 = llvm.insertvalue %62, %60[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.mlir.constant(1 : i64) : i64
    %65 = llvm.getelementptr %55[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %66 = llvm.load %65 : !llvm.ptr<i64>
    %67 = llvm.insertvalue %66, %63[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %68 = llvm.getelementptr %56[%64] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %69 = llvm.load %68 : !llvm.ptr<i64>
    %70 = llvm.insertvalue %69, %67[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.mlir.constant(2 : i64) : i64
    %72 = llvm.getelementptr %55[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %73 = llvm.load %72 : !llvm.ptr<i64>
    %74 = llvm.insertvalue %73, %70[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %75 = llvm.getelementptr %56[%71] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %76 = llvm.load %75 : !llvm.ptr<i64>
    %77 = llvm.insertvalue %76, %74[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    llvm.store %77, %47 : !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6, %47) : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>>, !llvm.ptr<struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>>) -> ()
    %78 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %79 = llvm.extractvalue %78[0] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %80 = llvm.extractvalue %78[1] : !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %81 = llvm.mlir.constant(2 : i64) : i64
    %82 = llvm.mlir.constant(16 : i64) : i64
    %83 = llvm.call @malloc(%82) : (i64) -> !llvm.ptr<i8>
    %84 = llvm.bitcast %83 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %85 = llvm.mlir.constant(3 : i64) : i64
    %86 = llvm.call @omTensorCreateUntyped(%85) : (i64) -> !llvm.ptr<i8>
    %87 = llvm.mlir.constant(1 : i64) : i64
    %88 = llvm.extractvalue %79[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %89 = llvm.bitcast %88 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %90 = llvm.extractvalue %79[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %91 = llvm.bitcast %90 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%86, %87, %89, %91) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %92 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%86, %92) : (!llvm.ptr<i8>, i64) -> ()
    %93 = llvm.call @omTensorGetShape(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %94 = llvm.call @omTensorGetStrides(%86) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %95 = llvm.mlir.constant(0 : i64) : i64
    %96 = llvm.extractvalue %79[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %97 = llvm.getelementptr %93[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %96, %97 : !llvm.ptr<i64>
    %98 = llvm.extractvalue %79[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %99 = llvm.getelementptr %94[%95] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %98, %99 : !llvm.ptr<i64>
    %100 = llvm.mlir.constant(1 : i64) : i64
    %101 = llvm.extractvalue %79[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %102 = llvm.getelementptr %93[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %101, %102 : !llvm.ptr<i64>
    %103 = llvm.extractvalue %79[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %104 = llvm.getelementptr %94[%100] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %103, %104 : !llvm.ptr<i64>
    %105 = llvm.mlir.constant(2 : i64) : i64
    %106 = llvm.extractvalue %79[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %107 = llvm.getelementptr %93[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %106, %107 : !llvm.ptr<i64>
    %108 = llvm.extractvalue %79[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<3 x i64>, array<3 x i64>)> 
    %109 = llvm.getelementptr %94[%105] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %108, %109 : !llvm.ptr<i64>
    %110 = llvm.mlir.constant(0 : i64) : i64
    %111 = llvm.getelementptr %84[%110] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %86, %111 : !llvm.ptr<ptr<i8>>
    %112 = llvm.mlir.constant(4 : i64) : i64
    %113 = llvm.call @omTensorCreateUntyped(%112) : (i64) -> !llvm.ptr<i8>
    %114 = llvm.mlir.constant(1 : i64) : i64
    %115 = llvm.extractvalue %80[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %116 = llvm.bitcast %115 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %117 = llvm.extractvalue %80[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %118 = llvm.bitcast %117 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%113, %114, %116, %118) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %119 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%113, %119) : (!llvm.ptr<i8>, i64) -> ()
    %120 = llvm.call @omTensorGetShape(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.call @omTensorGetStrides(%113) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %122 = llvm.mlir.constant(0 : i64) : i64
    %123 = llvm.extractvalue %80[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %124 = llvm.getelementptr %120[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %123, %124 : !llvm.ptr<i64>
    %125 = llvm.extractvalue %80[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %126 = llvm.getelementptr %121[%122] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %125, %126 : !llvm.ptr<i64>
    %127 = llvm.mlir.constant(1 : i64) : i64
    %128 = llvm.extractvalue %80[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.getelementptr %120[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %128, %129 : !llvm.ptr<i64>
    %130 = llvm.extractvalue %80[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.getelementptr %121[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %130, %131 : !llvm.ptr<i64>
    %132 = llvm.mlir.constant(2 : i64) : i64
    %133 = llvm.extractvalue %80[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.getelementptr %120[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %133, %134 : !llvm.ptr<i64>
    %135 = llvm.extractvalue %80[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.getelementptr %121[%132] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %135, %136 : !llvm.ptr<i64>
    %137 = llvm.mlir.constant(3 : i64) : i64
    %138 = llvm.extractvalue %80[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.getelementptr %120[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %138, %139 : !llvm.ptr<i64>
    %140 = llvm.extractvalue %80[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %141 = llvm.getelementptr %121[%137] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %140, %141 : !llvm.ptr<i64>
    %142 = llvm.mlir.constant(1 : i64) : i64
    %143 = llvm.getelementptr %84[%142] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %113, %143 : !llvm.ptr<ptr<i8>>
    %144 = llvm.call @omTensorListCreate(%84, %81, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %144 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<138 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<138 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<137 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<137 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

