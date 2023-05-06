module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  llvm.func @strncmp(!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> i32
  llvm.mlir.global external constant @_entry_point_0("run_main_graph\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_in_sig("[    { \22type\22 : \22i1\22 , \22dims\22 : [1 , 1 , 1 , 1] , \22name\22 : \22v4_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
  llvm.mlir.global external constant @_entry_point_0_out_sig("[   { \22type\22 : \22i32\22 , \22dims\22 : [2 , 1 , 1] , \22name\22 : \22v0_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 2 , 1 , 2] , \22name\22 : \22v3_0\22 }\0A ,    { \22type\22 : \22f32\22 , \22dims\22 : [1 , 2 , 1 , 1] , \22name\22 : \22v2_0\22 }\0A\0A]\00") {addr_space = 0 : i32}
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
  llvm.mlir.global internal constant @constant_7(dense<4.3989563> : tensor<1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x f32>
  llvm.mlir.global internal constant @constant_6(dense<[[4, 6]]> : tensor<1x2xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x array<2 x i32>>
  llvm.mlir.global internal constant @constant_5(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_4(dense<-1> : tensor<i64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<1 x i64>
  llvm.mlir.global internal constant @constant_3(dense<[1, 2, 1, 2]> : tensor<4xi64>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<4 x i64>
  llvm.mlir.global internal constant @constant_1(dense<[[6.43747759], [6.56630611]]> : tensor<2x1xf32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x f32>>
  llvm.mlir.global internal constant @constant_0(dense<3> : tensor<2x1x1xi32>) {addr_space = 0 : i32, alignment = 16 : i64} : !llvm.array<2 x array<1 x array<1 x i32>>>
  llvm.func @main_graph(%arg0: !llvm.ptr<i1>, %arg1: !llvm.ptr<i1>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64, %arg9: i64, %arg10: i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0", "v2_0"]} {
    %0 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %1 = llvm.insertvalue %arg0, %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.insertvalue %arg1, %1[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.insertvalue %arg2, %2[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.insertvalue %arg3, %3[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.insertvalue %arg7, %4[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.insertvalue %arg4, %5[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.insertvalue %arg8, %6[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.insertvalue %arg5, %7[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.insertvalue %arg9, %8[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.insertvalue %arg6, %9[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %arg10, %10[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %13 = llvm.mlir.constant(1 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<2 x array<1 x array<1 x i32>>>>
    %16 = llvm.bitcast %15 : !llvm.ptr<array<2 x array<1 x array<1 x i32>>>> to !llvm.ptr<i32>
    %17 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>
    %18 = llvm.insertvalue %16, %17[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %19 = llvm.insertvalue %16, %18[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.insertvalue %20, %19[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %22 = llvm.mlir.constant(2 : index) : i64
    %23 = llvm.insertvalue %22, %21[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %24 = llvm.mlir.constant(1 : index) : i64
    %25 = llvm.insertvalue %24, %23[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %26 = llvm.mlir.constant(1 : index) : i64
    %27 = llvm.insertvalue %26, %25[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %28 = llvm.mlir.constant(1 : index) : i64
    %29 = llvm.insertvalue %28, %27[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %30 = llvm.mlir.constant(1 : index) : i64
    %31 = llvm.insertvalue %30, %29[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %32 = llvm.mlir.constant(1 : index) : i64
    %33 = llvm.insertvalue %32, %31[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %34 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<2 x array<1 x f32>>>
    %35 = llvm.bitcast %34 : !llvm.ptr<array<2 x array<1 x f32>>> to !llvm.ptr<f32>
    %36 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %37 = llvm.insertvalue %35, %36[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %38 = llvm.insertvalue %35, %37[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %39 = llvm.mlir.constant(0 : index) : i64
    %40 = llvm.insertvalue %39, %38[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %41 = llvm.mlir.constant(2 : index) : i64
    %42 = llvm.insertvalue %41, %40[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %43 = llvm.mlir.constant(1 : index) : i64
    %44 = llvm.insertvalue %43, %42[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %45 = llvm.mlir.constant(1 : index) : i64
    %46 = llvm.insertvalue %45, %44[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.mlir.constant(1 : index) : i64
    %48 = llvm.insertvalue %47, %46[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<4 x i64>>
    %50 = llvm.bitcast %49 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %52 = llvm.insertvalue %50, %51[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %54 = llvm.mlir.constant(0 : index) : i64
    %55 = llvm.insertvalue %54, %53[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %56 = llvm.mlir.constant(4 : index) : i64
    %57 = llvm.insertvalue %56, %55[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %58 = llvm.mlir.constant(1 : index) : i64
    %59 = llvm.insertvalue %58, %57[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %60 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<1 x i64>>
    %61 = llvm.bitcast %60 : !llvm.ptr<array<1 x i64>> to !llvm.ptr<i64>
    %62 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64)>
    %63 = llvm.insertvalue %61, %62[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %64 = llvm.insertvalue %61, %63[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %65 = llvm.mlir.constant(0 : index) : i64
    %66 = llvm.insertvalue %65, %64[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %67 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<4 x i64>>
    %68 = llvm.bitcast %67 : !llvm.ptr<array<4 x i64>> to !llvm.ptr<i64>
    %69 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %70 = llvm.insertvalue %68, %69[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %71 = llvm.insertvalue %68, %70[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %72 = llvm.mlir.constant(0 : index) : i64
    %73 = llvm.insertvalue %72, %71[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %74 = llvm.mlir.constant(4 : index) : i64
    %75 = llvm.insertvalue %74, %73[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %76 = llvm.mlir.constant(1 : index) : i64
    %77 = llvm.insertvalue %76, %75[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %78 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<1 x array<2 x i32>>>
    %79 = llvm.bitcast %78 : !llvm.ptr<array<1 x array<2 x i32>>> to !llvm.ptr<i32>
    %80 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)>
    %81 = llvm.insertvalue %79, %80[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %79, %81[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.mlir.constant(0 : index) : i64
    %84 = llvm.insertvalue %83, %82[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.mlir.constant(1 : index) : i64
    %86 = llvm.insertvalue %85, %84[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.mlir.constant(2 : index) : i64
    %88 = llvm.insertvalue %87, %86[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %89 = llvm.mlir.constant(2 : index) : i64
    %90 = llvm.insertvalue %89, %88[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %91 = llvm.mlir.constant(1 : index) : i64
    %92 = llvm.insertvalue %91, %90[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<1 x f32>>
    %94 = llvm.bitcast %93 : !llvm.ptr<array<1 x f32>> to !llvm.ptr<f32>
    %95 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %96 = llvm.insertvalue %94, %95[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %97 = llvm.insertvalue %94, %96[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %98 = llvm.mlir.constant(0 : index) : i64
    %99 = llvm.insertvalue %98, %97[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %100 = llvm.mlir.constant(1 : index) : i64
    %101 = llvm.insertvalue %100, %99[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %102 = llvm.mlir.constant(1 : index) : i64
    %103 = llvm.insertvalue %102, %101[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %104 = llvm.mlir.constant(1 : index) : i64
    %105 = llvm.mlir.constant(2 : index) : i64
    %106 = llvm.mlir.constant(1 : index) : i64
    %107 = llvm.mlir.constant(2 : index) : i64
    %108 = llvm.mlir.constant(1 : index) : i64
    %109 = llvm.mlir.constant(2 : index) : i64
    %110 = llvm.mlir.constant(4 : index) : i64
    %111 = llvm.mlir.constant(4 : index) : i64
    %112 = llvm.mlir.null : !llvm.ptr<i32>
    %113 = llvm.getelementptr %112[%111] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.ptrtoint %113 : !llvm.ptr<i32> to i64
    %115 = llvm.mlir.constant(16 : index) : i64
    %116 = llvm.add %114, %115  : i64
    %117 = llvm.call @malloc(%116) : (i64) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %119 = llvm.ptrtoint %118 : !llvm.ptr<i32> to i64
    %120 = llvm.mlir.constant(1 : index) : i64
    %121 = llvm.sub %115, %120  : i64
    %122 = llvm.add %119, %121  : i64
    %123 = llvm.urem %122, %115  : i64
    %124 = llvm.sub %122, %123  : i64
    %125 = llvm.inttoptr %124 : i64 to !llvm.ptr<i32>
    %126 = llvm.mlir.undef : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)>
    %127 = llvm.insertvalue %118, %126[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.insertvalue %125, %127[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %129 = llvm.mlir.constant(0 : index) : i64
    %130 = llvm.insertvalue %129, %128[2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %131 = llvm.insertvalue %104, %130[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %132 = llvm.insertvalue %105, %131[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.insertvalue %106, %132[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %134 = llvm.insertvalue %107, %133[3, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.insertvalue %110, %134[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %136 = llvm.insertvalue %109, %135[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %137 = llvm.insertvalue %107, %136[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.insertvalue %108, %137[4, 3] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %139 = llvm.mlir.constant(0 : index) : i64
    %140 = llvm.mlir.constant(1 : index) : i64
    %141 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb1(%139 : i64)
  ^bb1(%142: i64):  // 2 preds: ^bb0, ^bb11
    %143 = llvm.icmp "slt" %142, %140 : i64
    llvm.cond_br %143, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %144 = llvm.mlir.constant(0 : index) : i64
    %145 = llvm.mlir.constant(2 : index) : i64
    %146 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb3(%144 : i64)
  ^bb3(%147: i64):  // 2 preds: ^bb2, ^bb10
    %148 = llvm.icmp "slt" %147, %145 : i64
    llvm.cond_br %148, ^bb4, ^bb11
  ^bb4:  // pred: ^bb3
    %149 = llvm.mlir.constant(0 : index) : i64
    %150 = llvm.mlir.constant(1 : index) : i64
    %151 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb5(%149 : i64)
  ^bb5(%152: i64):  // 2 preds: ^bb4, ^bb9
    %153 = llvm.icmp "slt" %152, %150 : i64
    llvm.cond_br %153, ^bb6, ^bb10
  ^bb6:  // pred: ^bb5
    %154 = llvm.mlir.constant(0 : index) : i64
    %155 = llvm.mlir.constant(2 : index) : i64
    %156 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb7(%154 : i64)
  ^bb7(%157: i64):  // 2 preds: ^bb6, ^bb8
    %158 = llvm.icmp "slt" %157, %155 : i64
    llvm.cond_br %158, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %159 = llvm.extractvalue %11[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %160 = llvm.add %142, %14  : i64
    %161 = llvm.add %160, %152  : i64
    %162 = llvm.add %161, %14  : i64
    %163 = llvm.getelementptr %159[%162] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %164 = llvm.load %163 : !llvm.ptr<i1>
    %165 = llvm.extractvalue %92[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<2 x i64>, array<2 x i64>)> 
    %166 = llvm.mlir.constant(2 : index) : i64
    %167 = llvm.mul %152, %166  : i64
    %168 = llvm.add %167, %157  : i64
    %169 = llvm.getelementptr %165[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %170 = llvm.load %169 : !llvm.ptr<i32>
    %171 = llvm.extractvalue %33[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %172 = llvm.add %147, %152  : i64
    %173 = llvm.add %172, %14  : i64
    %174 = llvm.getelementptr %171[%173] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %174 : !llvm.ptr<i32>
    %176 = llvm.select %164, %170, %175 : i1, i32
    %177 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %178 = llvm.mlir.constant(4 : index) : i64
    %179 = llvm.mul %142, %178  : i64
    %180 = llvm.mlir.constant(2 : index) : i64
    %181 = llvm.mul %147, %180  : i64
    %182 = llvm.add %179, %181  : i64
    %183 = llvm.mlir.constant(2 : index) : i64
    %184 = llvm.mul %152, %183  : i64
    %185 = llvm.add %182, %184  : i64
    %186 = llvm.add %185, %157  : i64
    %187 = llvm.getelementptr %177[%186] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %176, %187 : !llvm.ptr<i32>
    %188 = llvm.add %157, %156  : i64
    llvm.br ^bb7(%188 : i64)
  ^bb9:  // pred: ^bb7
    %189 = llvm.add %152, %151  : i64
    llvm.br ^bb5(%189 : i64)
  ^bb10:  // pred: ^bb5
    %190 = llvm.add %147, %146  : i64
    llvm.br ^bb3(%190 : i64)
  ^bb11:  // pred: ^bb3
    %191 = llvm.add %142, %141  : i64
    llvm.br ^bb1(%191 : i64)
  ^bb12:  // pred: ^bb1
    %192 = llvm.mlir.constant(1 : index) : i64
    %193 = llvm.mlir.constant(2 : index) : i64
    %194 = llvm.mlir.constant(1 : index) : i64
    %195 = llvm.mlir.constant(2 : index) : i64
    %196 = llvm.mlir.constant(1 : index) : i64
    %197 = llvm.mlir.constant(2 : index) : i64
    %198 = llvm.mlir.constant(4 : index) : i64
    %199 = llvm.mlir.constant(4 : index) : i64
    %200 = llvm.mlir.null : !llvm.ptr<f32>
    %201 = llvm.getelementptr %200[%199] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %202 = llvm.ptrtoint %201 : !llvm.ptr<f32> to i64
    %203 = llvm.mlir.constant(16 : index) : i64
    %204 = llvm.add %202, %203  : i64
    %205 = llvm.call @malloc(%204) : (i64) -> !llvm.ptr<i8>
    %206 = llvm.bitcast %205 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<f32> to i64
    %208 = llvm.mlir.constant(1 : index) : i64
    %209 = llvm.sub %203, %208  : i64
    %210 = llvm.add %207, %209  : i64
    %211 = llvm.urem %210, %203  : i64
    %212 = llvm.sub %210, %211  : i64
    %213 = llvm.inttoptr %212 : i64 to !llvm.ptr<f32>
    %214 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %215 = llvm.insertvalue %206, %214[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %216 = llvm.insertvalue %213, %215[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %217 = llvm.mlir.constant(0 : index) : i64
    %218 = llvm.insertvalue %217, %216[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %219 = llvm.insertvalue %192, %218[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %220 = llvm.insertvalue %193, %219[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %221 = llvm.insertvalue %194, %220[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %222 = llvm.insertvalue %195, %221[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %223 = llvm.insertvalue %198, %222[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %224 = llvm.insertvalue %197, %223[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %225 = llvm.insertvalue %195, %224[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %226 = llvm.insertvalue %196, %225[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %227 = llvm.mlir.constant(0 : index) : i64
    %228 = llvm.mlir.constant(1 : index) : i64
    %229 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb13(%227 : i64)
  ^bb13(%230: i64):  // 2 preds: ^bb12, ^bb23
    %231 = llvm.icmp "slt" %230, %228 : i64
    llvm.cond_br %231, ^bb14, ^bb24
  ^bb14:  // pred: ^bb13
    %232 = llvm.mlir.constant(0 : index) : i64
    %233 = llvm.mlir.constant(2 : index) : i64
    %234 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb15(%232 : i64)
  ^bb15(%235: i64):  // 2 preds: ^bb14, ^bb22
    %236 = llvm.icmp "slt" %235, %233 : i64
    llvm.cond_br %236, ^bb16, ^bb23
  ^bb16:  // pred: ^bb15
    %237 = llvm.mlir.constant(0 : index) : i64
    %238 = llvm.mlir.constant(1 : index) : i64
    %239 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb17(%237 : i64)
  ^bb17(%240: i64):  // 2 preds: ^bb16, ^bb21
    %241 = llvm.icmp "slt" %240, %238 : i64
    llvm.cond_br %241, ^bb18, ^bb22
  ^bb18:  // pred: ^bb17
    %242 = llvm.mlir.constant(0 : index) : i64
    %243 = llvm.mlir.constant(2 : index) : i64
    %244 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb19(%242 : i64)
  ^bb19(%245: i64):  // 2 preds: ^bb18, ^bb20
    %246 = llvm.icmp "slt" %245, %243 : i64
    llvm.cond_br %246, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %247 = llvm.extractvalue %138[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<4 x i64>, array<4 x i64>)> 
    %248 = llvm.mlir.constant(4 : index) : i64
    %249 = llvm.mul %230, %248  : i64
    %250 = llvm.mlir.constant(2 : index) : i64
    %251 = llvm.mul %235, %250  : i64
    %252 = llvm.add %249, %251  : i64
    %253 = llvm.mlir.constant(2 : index) : i64
    %254 = llvm.mul %240, %253  : i64
    %255 = llvm.add %252, %254  : i64
    %256 = llvm.add %255, %245  : i64
    %257 = llvm.getelementptr %247[%256] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %258 = llvm.load %257 : !llvm.ptr<i32>
    %259 = llvm.sitofp %258 : i32 to f32
    %260 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %261 = llvm.mlir.constant(4 : index) : i64
    %262 = llvm.mul %230, %261  : i64
    %263 = llvm.mlir.constant(2 : index) : i64
    %264 = llvm.mul %235, %263  : i64
    %265 = llvm.add %262, %264  : i64
    %266 = llvm.mlir.constant(2 : index) : i64
    %267 = llvm.mul %240, %266  : i64
    %268 = llvm.add %265, %267  : i64
    %269 = llvm.add %268, %245  : i64
    %270 = llvm.getelementptr %260[%269] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %259, %270 : !llvm.ptr<f32>
    %271 = llvm.add %245, %244  : i64
    llvm.br ^bb19(%271 : i64)
  ^bb21:  // pred: ^bb19
    %272 = llvm.add %240, %239  : i64
    llvm.br ^bb17(%272 : i64)
  ^bb22:  // pred: ^bb17
    %273 = llvm.add %235, %234  : i64
    llvm.br ^bb15(%273 : i64)
  ^bb23:  // pred: ^bb15
    %274 = llvm.add %230, %229  : i64
    llvm.br ^bb13(%274 : i64)
  ^bb24:  // pred: ^bb13
    %275 = llvm.mlir.constant(4 : index) : i64
    %276 = llvm.mlir.constant(1 : index) : i64
    %277 = llvm.mlir.null : !llvm.ptr<i64>
    %278 = llvm.getelementptr %277[%275] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %279 = llvm.ptrtoint %278 : !llvm.ptr<i64> to i64
    %280 = llvm.mlir.constant(16 : index) : i64
    %281 = llvm.add %279, %280  : i64
    %282 = llvm.call @malloc(%281) : (i64) -> !llvm.ptr<i8>
    %283 = llvm.bitcast %282 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %284 = llvm.ptrtoint %283 : !llvm.ptr<i64> to i64
    %285 = llvm.mlir.constant(1 : index) : i64
    %286 = llvm.sub %280, %285  : i64
    %287 = llvm.add %284, %286  : i64
    %288 = llvm.urem %287, %280  : i64
    %289 = llvm.sub %287, %288  : i64
    %290 = llvm.inttoptr %289 : i64 to !llvm.ptr<i64>
    %291 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %292 = llvm.insertvalue %283, %291[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %293 = llvm.insertvalue %290, %292[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %294 = llvm.mlir.constant(0 : index) : i64
    %295 = llvm.insertvalue %294, %293[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %296 = llvm.insertvalue %275, %295[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %297 = llvm.insertvalue %276, %296[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %298 = llvm.mlir.constant(0 : index) : i64
    %299 = llvm.mlir.constant(4 : index) : i64
    %300 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb25(%298 : i64)
  ^bb25(%301: i64):  // 2 preds: ^bb24, ^bb26
    %302 = llvm.icmp "slt" %301, %299 : i64
    llvm.cond_br %302, ^bb26, ^bb27
  ^bb26:  // pred: ^bb25
    %303 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %304 = llvm.getelementptr %303[%301] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %13, %304 : !llvm.ptr<i64>
    %305 = llvm.add %301, %300  : i64
    llvm.br ^bb25(%305 : i64)
  ^bb27:  // pred: ^bb25
    %306 = llvm.mlir.constant(4 : index) : i64
    %307 = llvm.mlir.constant(1 : index) : i64
    %308 = llvm.mlir.null : !llvm.ptr<i64>
    %309 = llvm.getelementptr %308[%306] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %310 = llvm.ptrtoint %309 : !llvm.ptr<i64> to i64
    %311 = llvm.mlir.constant(16 : index) : i64
    %312 = llvm.add %310, %311  : i64
    %313 = llvm.call @malloc(%312) : (i64) -> !llvm.ptr<i8>
    %314 = llvm.bitcast %313 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %315 = llvm.ptrtoint %314 : !llvm.ptr<i64> to i64
    %316 = llvm.mlir.constant(1 : index) : i64
    %317 = llvm.sub %311, %316  : i64
    %318 = llvm.add %315, %317  : i64
    %319 = llvm.urem %318, %311  : i64
    %320 = llvm.sub %318, %319  : i64
    %321 = llvm.inttoptr %320 : i64 to !llvm.ptr<i64>
    %322 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %323 = llvm.insertvalue %314, %322[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %324 = llvm.insertvalue %321, %323[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %325 = llvm.mlir.constant(0 : index) : i64
    %326 = llvm.insertvalue %325, %324[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %327 = llvm.insertvalue %306, %326[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %328 = llvm.insertvalue %307, %327[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %329 = llvm.mlir.constant(0 : index) : i64
    %330 = llvm.mlir.constant(4 : index) : i64
    %331 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb28(%329 : i64)
  ^bb28(%332: i64):  // 2 preds: ^bb27, ^bb29
    %333 = llvm.icmp "slt" %332, %330 : i64
    llvm.cond_br %333, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    %334 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %335 = llvm.getelementptr %334[%332] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %336 = llvm.load %335 : !llvm.ptr<i64>
    %337 = llvm.extractvalue %66[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64)> 
    %338 = llvm.load %337 : !llvm.ptr<i64>
    %339 = llvm.mul %336, %338  : i64
    %340 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %341 = llvm.getelementptr %340[%332] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %339, %341 : !llvm.ptr<i64>
    %342 = llvm.add %332, %331  : i64
    llvm.br ^bb28(%342 : i64)
  ^bb30:  // pred: ^bb28
    %343 = llvm.mlir.constant(4 : index) : i64
    %344 = llvm.mlir.constant(1 : index) : i64
    %345 = llvm.mlir.null : !llvm.ptr<i1>
    %346 = llvm.getelementptr %345[%343] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %347 = llvm.ptrtoint %346 : !llvm.ptr<i1> to i64
    %348 = llvm.mlir.constant(16 : index) : i64
    %349 = llvm.add %347, %348  : i64
    %350 = llvm.call @malloc(%349) : (i64) -> !llvm.ptr<i8>
    %351 = llvm.bitcast %350 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %352 = llvm.ptrtoint %351 : !llvm.ptr<i1> to i64
    %353 = llvm.mlir.constant(1 : index) : i64
    %354 = llvm.sub %348, %353  : i64
    %355 = llvm.add %352, %354  : i64
    %356 = llvm.urem %355, %348  : i64
    %357 = llvm.sub %355, %356  : i64
    %358 = llvm.inttoptr %357 : i64 to !llvm.ptr<i1>
    %359 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)>
    %360 = llvm.insertvalue %351, %359[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %361 = llvm.insertvalue %358, %360[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %362 = llvm.mlir.constant(0 : index) : i64
    %363 = llvm.insertvalue %362, %361[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %364 = llvm.insertvalue %343, %363[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %365 = llvm.insertvalue %344, %364[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %366 = llvm.mlir.constant(0 : index) : i64
    %367 = llvm.mlir.constant(4 : index) : i64
    %368 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb31(%366 : i64)
  ^bb31(%369: i64):  // 2 preds: ^bb30, ^bb32
    %370 = llvm.icmp "slt" %369, %367 : i64
    llvm.cond_br %370, ^bb32, ^bb33
  ^bb32:  // pred: ^bb31
    %371 = llvm.extractvalue %59[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %372 = llvm.getelementptr %371[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %373 = llvm.load %372 : !llvm.ptr<i64>
    %374 = llvm.extractvalue %328[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %375 = llvm.getelementptr %374[%369] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %376 = llvm.load %375 : !llvm.ptr<i64>
    %377 = llvm.icmp "eq" %373, %376 : i64
    %378 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %379 = llvm.getelementptr %378[%369] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    llvm.store %377, %379 : !llvm.ptr<i1>
    %380 = llvm.add %369, %368  : i64
    llvm.br ^bb31(%380 : i64)
  ^bb33:  // pred: ^bb31
    %381 = llvm.mlir.constant(4 : index) : i64
    %382 = llvm.mlir.constant(1 : index) : i64
    %383 = llvm.mlir.null : !llvm.ptr<i64>
    %384 = llvm.getelementptr %383[%381] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %385 = llvm.ptrtoint %384 : !llvm.ptr<i64> to i64
    %386 = llvm.mlir.constant(16 : index) : i64
    %387 = llvm.add %385, %386  : i64
    %388 = llvm.call @malloc(%387) : (i64) -> !llvm.ptr<i8>
    %389 = llvm.bitcast %388 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %390 = llvm.ptrtoint %389 : !llvm.ptr<i64> to i64
    %391 = llvm.mlir.constant(1 : index) : i64
    %392 = llvm.sub %386, %391  : i64
    %393 = llvm.add %390, %392  : i64
    %394 = llvm.urem %393, %386  : i64
    %395 = llvm.sub %393, %394  : i64
    %396 = llvm.inttoptr %395 : i64 to !llvm.ptr<i64>
    %397 = llvm.mlir.undef : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)>
    %398 = llvm.insertvalue %389, %397[0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %399 = llvm.insertvalue %396, %398[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %400 = llvm.mlir.constant(0 : index) : i64
    %401 = llvm.insertvalue %400, %399[2] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %402 = llvm.insertvalue %381, %401[3, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %403 = llvm.insertvalue %382, %402[4, 0] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %404 = llvm.mlir.constant(0 : index) : i64
    %405 = llvm.mlir.constant(4 : index) : i64
    %406 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb34(%404 : i64)
  ^bb34(%407: i64):  // 2 preds: ^bb33, ^bb35
    %408 = llvm.icmp "slt" %407, %405 : i64
    llvm.cond_br %408, ^bb35, ^bb36
  ^bb35:  // pred: ^bb34
    %409 = llvm.extractvalue %365[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<1 x i64>, array<1 x i64>)> 
    %410 = llvm.getelementptr %409[%407] : (!llvm.ptr<i1>, i64) -> !llvm.ptr<i1>
    %411 = llvm.load %410 : !llvm.ptr<i1>
    %412 = llvm.extractvalue %297[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %413 = llvm.getelementptr %412[%407] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %414 = llvm.load %413 : !llvm.ptr<i64>
    %415 = llvm.extractvalue %77[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %416 = llvm.getelementptr %415[%407] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %417 = llvm.load %416 : !llvm.ptr<i64>
    %418 = llvm.select %411, %414, %417 : i1, i64
    %419 = llvm.extractvalue %403[1] : !llvm.struct<(ptr<i64>, ptr<i64>, i64, array<1 x i64>, array<1 x i64>)> 
    %420 = llvm.getelementptr %419[%407] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %418, %420 : !llvm.ptr<i64>
    %421 = llvm.add %407, %406  : i64
    llvm.br ^bb34(%421 : i64)
  ^bb36:  // pred: ^bb34
    %422 = llvm.mlir.constant(1 : index) : i64
    %423 = llvm.mlir.constant(2 : index) : i64
    %424 = llvm.mlir.constant(1 : index) : i64
    %425 = llvm.mlir.constant(2 : index) : i64
    %426 = llvm.mlir.constant(1 : index) : i64
    %427 = llvm.mlir.constant(2 : index) : i64
    %428 = llvm.mlir.constant(4 : index) : i64
    %429 = llvm.mlir.constant(4 : index) : i64
    %430 = llvm.mlir.null : !llvm.ptr<f32>
    %431 = llvm.getelementptr %430[%429] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %432 = llvm.ptrtoint %431 : !llvm.ptr<f32> to i64
    %433 = llvm.mlir.constant(16 : index) : i64
    %434 = llvm.add %432, %433  : i64
    %435 = llvm.call @malloc(%434) : (i64) -> !llvm.ptr<i8>
    %436 = llvm.bitcast %435 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %437 = llvm.ptrtoint %436 : !llvm.ptr<f32> to i64
    %438 = llvm.mlir.constant(1 : index) : i64
    %439 = llvm.sub %433, %438  : i64
    %440 = llvm.add %437, %439  : i64
    %441 = llvm.urem %440, %433  : i64
    %442 = llvm.sub %440, %441  : i64
    %443 = llvm.inttoptr %442 : i64 to !llvm.ptr<f32>
    %444 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %445 = llvm.insertvalue %436, %444[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %446 = llvm.insertvalue %443, %445[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %447 = llvm.mlir.constant(0 : index) : i64
    %448 = llvm.insertvalue %447, %446[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %449 = llvm.insertvalue %422, %448[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %450 = llvm.insertvalue %423, %449[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %451 = llvm.insertvalue %424, %450[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %452 = llvm.insertvalue %425, %451[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %453 = llvm.insertvalue %428, %452[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %454 = llvm.insertvalue %427, %453[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %455 = llvm.insertvalue %425, %454[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %456 = llvm.insertvalue %426, %455[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %457 = llvm.mlir.constant(0 : index) : i64
    %458 = llvm.mlir.constant(1 : index) : i64
    %459 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb37(%457 : i64)
  ^bb37(%460: i64):  // 2 preds: ^bb36, ^bb47
    %461 = llvm.icmp "slt" %460, %458 : i64
    llvm.cond_br %461, ^bb38, ^bb48
  ^bb38:  // pred: ^bb37
    %462 = llvm.mlir.constant(0 : index) : i64
    %463 = llvm.mlir.constant(2 : index) : i64
    %464 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb39(%462 : i64)
  ^bb39(%465: i64):  // 2 preds: ^bb38, ^bb46
    %466 = llvm.icmp "slt" %465, %463 : i64
    llvm.cond_br %466, ^bb40, ^bb47
  ^bb40:  // pred: ^bb39
    %467 = llvm.mlir.constant(0 : index) : i64
    %468 = llvm.mlir.constant(1 : index) : i64
    %469 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb41(%467 : i64)
  ^bb41(%470: i64):  // 2 preds: ^bb40, ^bb45
    %471 = llvm.icmp "slt" %470, %468 : i64
    llvm.cond_br %471, ^bb42, ^bb46
  ^bb42:  // pred: ^bb41
    %472 = llvm.mlir.constant(0 : index) : i64
    %473 = llvm.mlir.constant(2 : index) : i64
    %474 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb43(%472 : i64)
  ^bb43(%475: i64):  // 2 preds: ^bb42, ^bb44
    %476 = llvm.icmp "slt" %475, %473 : i64
    llvm.cond_br %476, ^bb44, ^bb45
  ^bb44:  // pred: ^bb43
    %477 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %478 = llvm.mlir.constant(4 : index) : i64
    %479 = llvm.mul %14, %478  : i64
    %480 = llvm.mlir.constant(2 : index) : i64
    %481 = llvm.mul %465, %480  : i64
    %482 = llvm.add %479, %481  : i64
    %483 = llvm.mlir.constant(2 : index) : i64
    %484 = llvm.mul %14, %483  : i64
    %485 = llvm.add %482, %484  : i64
    %486 = llvm.add %485, %475  : i64
    %487 = llvm.getelementptr %477[%486] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %488 = llvm.load %487 : !llvm.ptr<f32>
    %489 = llvm.extractvalue %456[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %490 = llvm.mlir.constant(4 : index) : i64
    %491 = llvm.mul %460, %490  : i64
    %492 = llvm.mlir.constant(2 : index) : i64
    %493 = llvm.mul %465, %492  : i64
    %494 = llvm.add %491, %493  : i64
    %495 = llvm.mlir.constant(2 : index) : i64
    %496 = llvm.mul %470, %495  : i64
    %497 = llvm.add %494, %496  : i64
    %498 = llvm.add %497, %475  : i64
    %499 = llvm.getelementptr %489[%498] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %488, %499 : !llvm.ptr<f32>
    %500 = llvm.add %475, %474  : i64
    llvm.br ^bb43(%500 : i64)
  ^bb45:  // pred: ^bb43
    %501 = llvm.add %470, %469  : i64
    llvm.br ^bb41(%501 : i64)
  ^bb46:  // pred: ^bb41
    %502 = llvm.add %465, %464  : i64
    llvm.br ^bb39(%502 : i64)
  ^bb47:  // pred: ^bb39
    %503 = llvm.add %460, %459  : i64
    llvm.br ^bb37(%503 : i64)
  ^bb48:  // pred: ^bb37
    %504 = llvm.mlir.constant(1 : index) : i64
    %505 = llvm.mlir.constant(2 : index) : i64
    %506 = llvm.mlir.constant(1 : index) : i64
    %507 = llvm.mlir.constant(1 : index) : i64
    %508 = llvm.mlir.constant(1 : index) : i64
    %509 = llvm.mlir.constant(2 : index) : i64
    %510 = llvm.mlir.null : !llvm.ptr<f32>
    %511 = llvm.getelementptr %510[%509] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %512 = llvm.ptrtoint %511 : !llvm.ptr<f32> to i64
    %513 = llvm.mlir.constant(16 : index) : i64
    %514 = llvm.add %512, %513  : i64
    %515 = llvm.call @malloc(%514) : (i64) -> !llvm.ptr<i8>
    %516 = llvm.bitcast %515 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %517 = llvm.ptrtoint %516 : !llvm.ptr<f32> to i64
    %518 = llvm.mlir.constant(1 : index) : i64
    %519 = llvm.sub %513, %518  : i64
    %520 = llvm.add %517, %519  : i64
    %521 = llvm.urem %520, %513  : i64
    %522 = llvm.sub %520, %521  : i64
    %523 = llvm.inttoptr %522 : i64 to !llvm.ptr<f32>
    %524 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %525 = llvm.insertvalue %516, %524[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %526 = llvm.insertvalue %523, %525[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %527 = llvm.mlir.constant(0 : index) : i64
    %528 = llvm.insertvalue %527, %526[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %529 = llvm.insertvalue %504, %528[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %530 = llvm.insertvalue %505, %529[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %531 = llvm.insertvalue %506, %530[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %532 = llvm.insertvalue %507, %531[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %533 = llvm.insertvalue %505, %532[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %534 = llvm.insertvalue %506, %533[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %535 = llvm.insertvalue %507, %534[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %536 = llvm.insertvalue %508, %535[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %537 = llvm.mlir.constant(1 : index) : i64
    %538 = llvm.mlir.null : !llvm.ptr<f32>
    %539 = llvm.getelementptr %538[%537] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %540 = llvm.ptrtoint %539 : !llvm.ptr<f32> to i64
    %541 = llvm.alloca %540 x f32 : (i64) -> !llvm.ptr<f32>
    %542 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64)>
    %543 = llvm.insertvalue %541, %542[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %544 = llvm.insertvalue %541, %543[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %545 = llvm.mlir.constant(0 : index) : i64
    %546 = llvm.insertvalue %545, %544[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %547 = llvm.mlir.constant(0 : index) : i64
    %548 = llvm.mlir.constant(1 : index) : i64
    %549 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb49(%547 : i64)
  ^bb49(%550: i64):  // 2 preds: ^bb48, ^bb62
    %551 = llvm.icmp "slt" %550, %548 : i64
    llvm.cond_br %551, ^bb50, ^bb63
  ^bb50:  // pred: ^bb49
    %552 = llvm.mlir.constant(0 : index) : i64
    %553 = llvm.mlir.constant(2 : index) : i64
    %554 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb51(%552 : i64)
  ^bb51(%555: i64):  // 2 preds: ^bb50, ^bb61
    %556 = llvm.icmp "slt" %555, %553 : i64
    llvm.cond_br %556, ^bb52, ^bb62
  ^bb52:  // pred: ^bb51
    %557 = llvm.mlir.constant(0 : index) : i64
    %558 = llvm.mlir.constant(1 : index) : i64
    %559 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb53(%557 : i64)
  ^bb53(%560: i64):  // 2 preds: ^bb52, ^bb60
    %561 = llvm.icmp "slt" %560, %558 : i64
    llvm.cond_br %561, ^bb54, ^bb61
  ^bb54:  // pred: ^bb53
    %562 = llvm.mlir.constant(0 : index) : i64
    %563 = llvm.mlir.constant(1 : index) : i64
    %564 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb55(%562 : i64)
  ^bb55(%565: i64):  // 2 preds: ^bb54, ^bb59
    %566 = llvm.icmp "slt" %565, %563 : i64
    llvm.cond_br %566, ^bb56, ^bb60
  ^bb56:  // pred: ^bb55
    %567 = llvm.extractvalue %546[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %12, %567 : !llvm.ptr<f32>
    %568 = llvm.mlir.constant(0 : index) : i64
    %569 = llvm.mlir.constant(2 : index) : i64
    %570 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb57(%568 : i64)
  ^bb57(%571: i64):  // 2 preds: ^bb56, ^bb58
    %572 = llvm.icmp "slt" %571, %569 : i64
    llvm.cond_br %572, ^bb58, ^bb59
  ^bb58:  // pred: ^bb57
    %573 = llvm.extractvalue %226[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %574 = llvm.mlir.constant(4 : index) : i64
    %575 = llvm.mul %550, %574  : i64
    %576 = llvm.mlir.constant(2 : index) : i64
    %577 = llvm.mul %555, %576  : i64
    %578 = llvm.add %575, %577  : i64
    %579 = llvm.mlir.constant(2 : index) : i64
    %580 = llvm.mul %560, %579  : i64
    %581 = llvm.add %578, %580  : i64
    %582 = llvm.add %581, %571  : i64
    %583 = llvm.getelementptr %573[%582] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %584 = llvm.load %583 : !llvm.ptr<f32>
    %585 = llvm.extractvalue %48[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %586 = llvm.add %571, %565  : i64
    %587 = llvm.getelementptr %585[%586] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %588 = llvm.load %587 : !llvm.ptr<f32>
    %589 = llvm.extractvalue %546[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %590 = llvm.load %589 : !llvm.ptr<f32>
    %591 = llvm.fmul %584, %588  : f32
    %592 = llvm.fadd %590, %591  : f32
    %593 = llvm.extractvalue %546[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    llvm.store %592, %593 : !llvm.ptr<f32>
    %594 = llvm.add %571, %570  : i64
    llvm.br ^bb57(%594 : i64)
  ^bb59:  // pred: ^bb57
    %595 = llvm.extractvalue %546[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64)> 
    %596 = llvm.load %595 : !llvm.ptr<f32>
    %597 = llvm.extractvalue %536[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %598 = llvm.mlir.constant(2 : index) : i64
    %599 = llvm.mul %550, %598  : i64
    %600 = llvm.add %599, %555  : i64
    %601 = llvm.add %600, %560  : i64
    %602 = llvm.add %601, %565  : i64
    %603 = llvm.getelementptr %597[%602] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %596, %603 : !llvm.ptr<f32>
    %604 = llvm.add %565, %564  : i64
    llvm.br ^bb55(%604 : i64)
  ^bb60:  // pred: ^bb55
    %605 = llvm.add %560, %559  : i64
    llvm.br ^bb53(%605 : i64)
  ^bb61:  // pred: ^bb53
    %606 = llvm.add %555, %554  : i64
    llvm.br ^bb51(%606 : i64)
  ^bb62:  // pred: ^bb51
    %607 = llvm.add %550, %549  : i64
    llvm.br ^bb49(%607 : i64)
  ^bb63:  // pred: ^bb49
    %608 = llvm.mlir.constant(1 : index) : i64
    %609 = llvm.mlir.constant(2 : index) : i64
    %610 = llvm.mlir.constant(1 : index) : i64
    %611 = llvm.mlir.constant(1 : index) : i64
    %612 = llvm.mlir.constant(1 : index) : i64
    %613 = llvm.mlir.constant(2 : index) : i64
    %614 = llvm.mlir.null : !llvm.ptr<f32>
    %615 = llvm.getelementptr %614[%613] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %616 = llvm.ptrtoint %615 : !llvm.ptr<f32> to i64
    %617 = llvm.mlir.constant(16 : index) : i64
    %618 = llvm.add %616, %617  : i64
    %619 = llvm.call @malloc(%618) : (i64) -> !llvm.ptr<i8>
    %620 = llvm.bitcast %619 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %621 = llvm.ptrtoint %620 : !llvm.ptr<f32> to i64
    %622 = llvm.mlir.constant(1 : index) : i64
    %623 = llvm.sub %617, %622  : i64
    %624 = llvm.add %621, %623  : i64
    %625 = llvm.urem %624, %617  : i64
    %626 = llvm.sub %624, %625  : i64
    %627 = llvm.inttoptr %626 : i64 to !llvm.ptr<f32>
    %628 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>
    %629 = llvm.insertvalue %620, %628[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %630 = llvm.insertvalue %627, %629[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %631 = llvm.mlir.constant(0 : index) : i64
    %632 = llvm.insertvalue %631, %630[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %633 = llvm.insertvalue %608, %632[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %634 = llvm.insertvalue %609, %633[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %635 = llvm.insertvalue %610, %634[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %636 = llvm.insertvalue %611, %635[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %637 = llvm.insertvalue %609, %636[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %638 = llvm.insertvalue %610, %637[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %639 = llvm.insertvalue %611, %638[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %640 = llvm.insertvalue %612, %639[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %641 = llvm.mlir.constant(0 : index) : i64
    %642 = llvm.mlir.constant(1 : index) : i64
    %643 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb64(%641 : i64)
  ^bb64(%644: i64):  // 2 preds: ^bb63, ^bb74
    %645 = llvm.icmp "slt" %644, %642 : i64
    llvm.cond_br %645, ^bb65, ^bb75
  ^bb65:  // pred: ^bb64
    %646 = llvm.mlir.constant(0 : index) : i64
    %647 = llvm.mlir.constant(2 : index) : i64
    %648 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb66(%646 : i64)
  ^bb66(%649: i64):  // 2 preds: ^bb65, ^bb73
    %650 = llvm.icmp "slt" %649, %647 : i64
    llvm.cond_br %650, ^bb67, ^bb74
  ^bb67:  // pred: ^bb66
    %651 = llvm.mlir.constant(0 : index) : i64
    %652 = llvm.mlir.constant(1 : index) : i64
    %653 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb68(%651 : i64)
  ^bb68(%654: i64):  // 2 preds: ^bb67, ^bb72
    %655 = llvm.icmp "slt" %654, %652 : i64
    llvm.cond_br %655, ^bb69, ^bb73
  ^bb69:  // pred: ^bb68
    %656 = llvm.mlir.constant(0 : index) : i64
    %657 = llvm.mlir.constant(1 : index) : i64
    %658 = llvm.mlir.constant(1 : index) : i64
    llvm.br ^bb70(%656 : i64)
  ^bb70(%659: i64):  // 2 preds: ^bb69, ^bb71
    %660 = llvm.icmp "slt" %659, %657 : i64
    llvm.cond_br %660, ^bb71, ^bb72
  ^bb71:  // pred: ^bb70
    %661 = llvm.extractvalue %536[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %662 = llvm.mlir.constant(2 : index) : i64
    %663 = llvm.mul %644, %662  : i64
    %664 = llvm.add %663, %649  : i64
    %665 = llvm.add %664, %654  : i64
    %666 = llvm.add %665, %659  : i64
    %667 = llvm.getelementptr %661[%666] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %668 = llvm.load %667 : !llvm.ptr<f32>
    %669 = llvm.extractvalue %103[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %670 = llvm.getelementptr %669[%659] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %671 = llvm.load %670 : !llvm.ptr<f32>
    %672 = llvm.fadd %668, %671  : f32
    %673 = llvm.extractvalue %640[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %674 = llvm.mlir.constant(2 : index) : i64
    %675 = llvm.mul %644, %674  : i64
    %676 = llvm.add %675, %649  : i64
    %677 = llvm.add %676, %654  : i64
    %678 = llvm.add %677, %659  : i64
    %679 = llvm.getelementptr %673[%678] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %672, %679 : !llvm.ptr<f32>
    %680 = llvm.add %659, %658  : i64
    llvm.br ^bb70(%680 : i64)
  ^bb72:  // pred: ^bb70
    %681 = llvm.add %654, %653  : i64
    llvm.br ^bb68(%681 : i64)
  ^bb73:  // pred: ^bb68
    %682 = llvm.add %649, %648  : i64
    llvm.br ^bb66(%682 : i64)
  ^bb74:  // pred: ^bb66
    %683 = llvm.add %644, %643  : i64
    llvm.br ^bb64(%683 : i64)
  ^bb75:  // pred: ^bb64
    %684 = llvm.mlir.undef : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    %685 = llvm.insertvalue %33, %684[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %686 = llvm.insertvalue %456, %685[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %687 = llvm.insertvalue %640, %686[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    llvm.return %687 : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, %arg1: !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) attributes {input_names = ["v4_0"], llvm.emit_c_interface, output_names = ["v0_0", "v3_0", "v2_0"]} {
    %0 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %6 = llvm.extractvalue %0[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %7 = llvm.extractvalue %0[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %8 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %9 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %10 = llvm.extractvalue %0[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.extractvalue %0[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %8, %9, %10, %11) : (!llvm.ptr<i1>, !llvm.ptr<i1>, i64, i64, i64, i64, i64, i64, i64, i64, i64) -> !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>
    llvm.store %12, %arg0 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    llvm.return
  }
  llvm.func @run_main_graph(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.call @omTensorListGetOmtArray(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.getelementptr %0[%3] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.alloca %1 x !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> : (i64) -> !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    %7 = llvm.mlir.undef : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>
    %8 = llvm.call @omTensorGetDataPtr(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %9 = llvm.bitcast %8 : !llvm.ptr<i8> to !llvm.ptr<i1>
    %10 = llvm.insertvalue %9, %7[0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %11 = llvm.insertvalue %9, %10[1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.insertvalue %12, %11[2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %14 = llvm.call @omTensorGetShape(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %15 = llvm.call @omTensorGetStrides(%5) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %16 = llvm.mlir.constant(0 : i64) : i64
    %17 = llvm.getelementptr %14[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %18 = llvm.load %17 : !llvm.ptr<i64>
    %19 = llvm.insertvalue %18, %13[3, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %20 = llvm.getelementptr %15[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %21 = llvm.load %20 : !llvm.ptr<i64>
    %22 = llvm.insertvalue %21, %19[4, 0] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.getelementptr %14[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %25 = llvm.load %24 : !llvm.ptr<i64>
    %26 = llvm.insertvalue %25, %22[3, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %27 = llvm.getelementptr %15[%23] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    %29 = llvm.insertvalue %28, %26[4, 1] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %30 = llvm.mlir.constant(2 : i64) : i64
    %31 = llvm.getelementptr %14[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %32 = llvm.load %31 : !llvm.ptr<i64>
    %33 = llvm.insertvalue %32, %29[3, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %34 = llvm.getelementptr %15[%30] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %35 = llvm.load %34 : !llvm.ptr<i64>
    %36 = llvm.insertvalue %35, %33[4, 2] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %37 = llvm.mlir.constant(3 : i64) : i64
    %38 = llvm.getelementptr %14[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %39 = llvm.load %38 : !llvm.ptr<i64>
    %40 = llvm.insertvalue %39, %36[3, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    %41 = llvm.getelementptr %15[%37] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %42 = llvm.load %41 : !llvm.ptr<i64>
    %43 = llvm.insertvalue %42, %40[4, 3] : !llvm.struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)> 
    llvm.store %43, %6 : !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>
    llvm.call @_mlir_ciface_main_graph(%2, %6) : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>, !llvm.ptr<struct<(ptr<i1>, ptr<i1>, i64, array<4 x i64>, array<4 x i64>)>>) -> ()
    %44 = llvm.load %2 : !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)>>
    %45 = llvm.extractvalue %44[0] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %46 = llvm.extractvalue %44[1] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %47 = llvm.extractvalue %44[2] : !llvm.struct<(struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)>)> 
    %48 = llvm.mlir.constant(3 : i64) : i64
    %49 = llvm.mlir.constant(24 : i64) : i64
    %50 = llvm.call @malloc(%49) : (i64) -> !llvm.ptr<i8>
    %51 = llvm.bitcast %50 : !llvm.ptr<i8> to !llvm.ptr<ptr<i8>>
    %52 = llvm.mlir.constant(3 : i64) : i64
    %53 = llvm.call @omTensorCreateUntyped(%52) : (i64) -> !llvm.ptr<i8>
    %54 = llvm.mlir.constant(0 : i64) : i64
    %55 = llvm.extractvalue %45[0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %56 = llvm.bitcast %55 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %57 = llvm.extractvalue %45[1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %58 = llvm.bitcast %57 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%53, %54, %56, %58) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %59 = llvm.mlir.constant(6 : i64) : i64
    llvm.call @omTensorSetDataType(%53, %59) : (!llvm.ptr<i8>, i64) -> ()
    %60 = llvm.call @omTensorGetShape(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %61 = llvm.call @omTensorGetStrides(%53) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %62 = llvm.mlir.constant(0 : i64) : i64
    %63 = llvm.extractvalue %45[3, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %64 = llvm.getelementptr %60[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %63, %64 : !llvm.ptr<i64>
    %65 = llvm.extractvalue %45[4, 0] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %66 = llvm.getelementptr %61[%62] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %65, %66 : !llvm.ptr<i64>
    %67 = llvm.mlir.constant(1 : i64) : i64
    %68 = llvm.extractvalue %45[3, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %69 = llvm.getelementptr %60[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %68, %69 : !llvm.ptr<i64>
    %70 = llvm.extractvalue %45[4, 1] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %71 = llvm.getelementptr %61[%67] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %70, %71 : !llvm.ptr<i64>
    %72 = llvm.mlir.constant(2 : i64) : i64
    %73 = llvm.extractvalue %45[3, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %74 = llvm.getelementptr %60[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %73, %74 : !llvm.ptr<i64>
    %75 = llvm.extractvalue %45[4, 2] : !llvm.struct<(ptr<i32>, ptr<i32>, i64, array<3 x i64>, array<3 x i64>)> 
    %76 = llvm.getelementptr %61[%72] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %75, %76 : !llvm.ptr<i64>
    %77 = llvm.mlir.constant(0 : i64) : i64
    %78 = llvm.getelementptr %51[%77] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %53, %78 : !llvm.ptr<ptr<i8>>
    %79 = llvm.mlir.constant(4 : i64) : i64
    %80 = llvm.call @omTensorCreateUntyped(%79) : (i64) -> !llvm.ptr<i8>
    %81 = llvm.mlir.constant(1 : i64) : i64
    %82 = llvm.extractvalue %46[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %83 = llvm.bitcast %82 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %84 = llvm.extractvalue %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %85 = llvm.bitcast %84 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%80, %81, %83, %85) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %86 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%80, %86) : (!llvm.ptr<i8>, i64) -> ()
    %87 = llvm.call @omTensorGetShape(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %88 = llvm.call @omTensorGetStrides(%80) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %89 = llvm.mlir.constant(0 : i64) : i64
    %90 = llvm.extractvalue %46[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %91 = llvm.getelementptr %87[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %90, %91 : !llvm.ptr<i64>
    %92 = llvm.extractvalue %46[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %93 = llvm.getelementptr %88[%89] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %92, %93 : !llvm.ptr<i64>
    %94 = llvm.mlir.constant(1 : i64) : i64
    %95 = llvm.extractvalue %46[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %96 = llvm.getelementptr %87[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %95, %96 : !llvm.ptr<i64>
    %97 = llvm.extractvalue %46[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %98 = llvm.getelementptr %88[%94] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %97, %98 : !llvm.ptr<i64>
    %99 = llvm.mlir.constant(2 : i64) : i64
    %100 = llvm.extractvalue %46[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %101 = llvm.getelementptr %87[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %100, %101 : !llvm.ptr<i64>
    %102 = llvm.extractvalue %46[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %103 = llvm.getelementptr %88[%99] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %102, %103 : !llvm.ptr<i64>
    %104 = llvm.mlir.constant(3 : i64) : i64
    %105 = llvm.extractvalue %46[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %106 = llvm.getelementptr %87[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %105, %106 : !llvm.ptr<i64>
    %107 = llvm.extractvalue %46[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %108 = llvm.getelementptr %88[%104] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %107, %108 : !llvm.ptr<i64>
    %109 = llvm.mlir.constant(1 : i64) : i64
    %110 = llvm.getelementptr %51[%109] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %80, %110 : !llvm.ptr<ptr<i8>>
    %111 = llvm.mlir.constant(4 : i64) : i64
    %112 = llvm.call @omTensorCreateUntyped(%111) : (i64) -> !llvm.ptr<i8>
    %113 = llvm.mlir.constant(1 : i64) : i64
    %114 = llvm.extractvalue %47[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %115 = llvm.bitcast %114 : !llvm.ptr<f32> to !llvm.ptr<i8>
    %116 = llvm.extractvalue %47[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %117 = llvm.bitcast %116 : !llvm.ptr<f32> to !llvm.ptr<i8>
    llvm.call @omTensorSetDataPtr(%112, %113, %115, %117) : (!llvm.ptr<i8>, i64, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %118 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @omTensorSetDataType(%112, %118) : (!llvm.ptr<i8>, i64) -> ()
    %119 = llvm.call @omTensorGetShape(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %120 = llvm.call @omTensorGetStrides(%112) : (!llvm.ptr<i8>) -> !llvm.ptr<i64>
    %121 = llvm.mlir.constant(0 : i64) : i64
    %122 = llvm.extractvalue %47[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %123 = llvm.getelementptr %119[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %122, %123 : !llvm.ptr<i64>
    %124 = llvm.extractvalue %47[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %125 = llvm.getelementptr %120[%121] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %124, %125 : !llvm.ptr<i64>
    %126 = llvm.mlir.constant(1 : i64) : i64
    %127 = llvm.extractvalue %47[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %128 = llvm.getelementptr %119[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %127, %128 : !llvm.ptr<i64>
    %129 = llvm.extractvalue %47[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %130 = llvm.getelementptr %120[%126] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %129, %130 : !llvm.ptr<i64>
    %131 = llvm.mlir.constant(2 : i64) : i64
    %132 = llvm.extractvalue %47[3, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %133 = llvm.getelementptr %119[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %132, %133 : !llvm.ptr<i64>
    %134 = llvm.extractvalue %47[4, 2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %135 = llvm.getelementptr %120[%131] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %134, %135 : !llvm.ptr<i64>
    %136 = llvm.mlir.constant(3 : i64) : i64
    %137 = llvm.extractvalue %47[3, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %138 = llvm.getelementptr %119[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %137, %138 : !llvm.ptr<i64>
    %139 = llvm.extractvalue %47[4, 3] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<4 x i64>, array<4 x i64>)> 
    %140 = llvm.getelementptr %120[%136] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %139, %140 : !llvm.ptr<i64>
    %141 = llvm.mlir.constant(2 : i64) : i64
    %142 = llvm.getelementptr %51[%141] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %112, %142 : !llvm.ptr<ptr<i8>>
    %143 = llvm.call @omTensorListCreate(%51, %48, %1) : (!llvm.ptr<ptr<i8>>, i64, i64) -> !llvm.ptr<i8>
    llvm.return %143 : !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_in_sig : !llvm.ptr<array<71 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<71 x i8>> to !llvm.ptr<i8>
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
    %7 = llvm.mlir.addressof @_entry_point_0_out_sig : !llvm.ptr<array<207 x i8>>
    %8 = llvm.bitcast %7 : !llvm.ptr<array<207 x i8>> to !llvm.ptr<i8>
    llvm.return %8 : !llvm.ptr<i8>
  ^bb2:  // pred: ^bb0
    %9 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %9 : !llvm.ptr<i8>
  }
}

